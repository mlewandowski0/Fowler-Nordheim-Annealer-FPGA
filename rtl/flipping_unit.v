`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 11:44:17 PM
// Design Name: 
// Module Name: flipping_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flipping_unit
#(
    parameter LOG_NOISE_SOURCE_WIDTH = 16,
    parameter LOG_LUT_BIT_SIZE       = 8,
    parameter REAL_WIDTH             = 18,   // 16 or 18 bits for fixed path
    parameter FLIP_OUT_WIDTH         = 16,
    parameter LOG_LUT_FILE           = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif",
    parameter TEMP_LUT_FILE          = "temperature_LUT_fixed_N9.mif",
    parameter TEMP_LUT_WIDTH         = 9,
    parameter PIPELINED_ROMs         = 1,    // 0 = comb, 1 = +1 reg
    parameter USE_FLOAT_POINT        = 0,    // 0 = fixed, 1 = FP16
    parameter FRAC_BITS              = 9
)
(
    input  wire                      clk,
    input  wire                      reset,          // synchronous
    input  wire                      CE,             // enable new sample
    input  wire                      write_seed,
    input  wire [LOG_NOISE_SOURCE_WIDTH-1:0] seed,
    input  wire                      decrease_temp,
    output wire signed [FLIP_OUT_WIDTH-1:0] flipping_output
);

                        
   // core multiplier (combinational)
   wire signed  [REAL_WIDTH-1:0] mul_fp, noise_fp, temp_fp;
   wire mul_err;
    
    
    // sub-blocks - always enabled
    
    log_noise_generator #(.NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                          .LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
                          .LUT_WIDTH(REAL_WIDTH),
                          .FILENAME(LOG_LUT_FILE))
                          u_noise(.clk(clk),
                           .reset(reset),
                           .CE(CE),
                           .write_seed(write_seed),
                           .seed(seed),
                           .noise_out(noise_fp));

   temperature_module #(.N(TEMP_LUT_WIDTH),
                        .OUT_WIDTH(REAL_WIDTH),
                        .LUT_FILE(TEMP_LUT_FILE))
                        u_temp(.clk(clk),
                               .reset(reset),
                               .decrease_temp(decrease_temp),
                               .temp(temp_fp)
                        );

   
   
   // make the DSP selectable : fp16 was useful for comaprison to python, but is big in comparison
   // to fixed_mult (single DSP48 and few luts)
   generate 
    if (USE_FLOAT_POINT) begin : FP_PATH
        float16_mult u_fmul(.a(noise_fp),
                            .b(temp_fp),
                            .c(mul_fp),
                            .error(mul_err));
    end else begin : FX_PATH
        fixed_mult #(.BITS(REAL_WIDTH),
                         .FRAC_BITS(FRAC_BITS))
                       u_fmul (.a(noise_fp),
                               .b(temp_fp),
                               .product(mul_fp),
                               .overflow(mul_err));
    end   
   endgenerate                         
   
   // optional pipeline
   wire signed [REAL_WIDTH-1:0] mul_fp_d;
   reg signed [REAL_WIDTH-1:0] stage1_r;
   
   always @(posedge clk) begin
        if (reset)
            stage1_r <= {REAL_WIDTH{1'b0}};
        else if (CE)
            stage1_r <= mul_fp;
    end
    assign mul_fp_d = (PIPELINED_ROMs) ? stage1_r : mul_fp;


    generate
        if (USE_FLOAT_POINT) begin : FP_OUT
            float16_to_int u_conv (.fp16 (mul_fp_d),
                                   .int_out (flipping_output));
        end else begin : FX_OUT
            fixed_to_int #(.TOTAL_BITS (REAL_WIDTH),
                           .FRAC_BITS  (FRAC_BITS),
                           .OUT_WIDTH  (FLIP_OUT_WIDTH))
                         u_conv (.fixed_val (mul_fp_d),
                                 .int_fixed_val (flipping_output));
        end
    endgenerate
            
endmodule
