`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 03:53:51 PM
// Design Name: 
// Module Name: tb_flipping_unit
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

//`define BEHAVIORAL


module tb_flipping_unit();

    localparam LOG_NOISE_SOURCE_WIDTH = 16;
    localparam LOG_LUT_BIT_SIZE       = 8;
    localparam REAL_WIDTH             = 18;   // 16 or 18 bits for fixed path
    localparam FLIP_OUT_WIDTH         = 16;
    localparam LOG_LUT_FILE           = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
    localparam TEMP_LUT_FILE          = "temperature_LUT_fixed_N9.mif";
    localparam TEMP_LUT_WIDTH         = 9;
    localparam PIPELINED_ROMs         = 1;    // 0 = comb, 1 = +1 reg
    localparam USE_FLOAT_POINT        = 0;    // 0 = fixed, 1 = FP16
    localparam FRAC_BITS              = 9;

    localparam SAMPLES_PER_EPOCH = 1000;
    
    localparam CLK_T = 10; // 100 MHz
    localparam VECTORS = 5000;
    
    
    reg clk = 0;
    reg reset = 1;
    reg CE = 0;
    reg dec_t = 0;
    reg wr_sd = 0;
    reg [LOG_NOISE_SOURCE_WIDTH-1:0] seed = 16'hbeef;
    
    real dut_out_as_fp;
    real noise_fp_inside;
    real temp_fp_inside;
    real mul_fp_inside;

    always #(CLK_T / 2) clk = ~clk;

    wire signed [FLIP_OUT_WIDTH-1:0] dut_out;
    flipping_unit #(
                .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
                .REAL_WIDTH(REAL_WIDTH),   // 16 or 18 bits for fixed path
                .FLIP_OUT_WIDTH(FLIP_OUT_WIDTH),
                .LOG_LUT_FILE(LOG_LUT_FILE),
                .TEMP_LUT_FILE(TEMP_LUT_FILE),
                .TEMP_LUT_WIDTH(TEMP_LUT_WIDTH),
                .PIPELINED_ROMs(PIPELINED_ROMs),    // 0 = comb, 1 = +1 reg
                .USE_FLOAT_POINT(USE_FLOAT_POINT),    // 0 = fixed, 1 = FP16
                .FRAC_BITS(FRAC_BITS)) 
                dut (.clk          (clk),
                    .reset        (reset),
                    .CE           (CE),
                    .write_seed   (wr_sd),
                    .seed         (seed),
                    .decrease_temp(dec_t),
                    .flipping_output(dut_out));
    
    integer fh, epoch, s, i;
    initial fh = $fopen("flip_samples.csv","w");
    initial $fdisplay(fh,"epoch,cycle,value_hex");
    
 
    
    function real q_to_real;
        input signed [REAL_WIDTH-1:0] q;
        reg   signed [REAL_WIDTH-1:0] s;
    begin
        s = q;
        q_to_real = $itor(s) / (1<<FRAC_BITS);
    end
    endfunction


`ifdef BEHAVIORAL
    always @(dut_out)
    begin
        dut_out_as_fp = q_to_real(dut_out);
    end
    
    always @(dut.mul_fp)
    begin
        mul_fp_inside = q_to_real(dut.mul_fp); 
    end

    always @(dut.temp_fp)
    begin
        temp_fp_inside = q_to_real(dut.temp_fp); 
    end


    always @(dut.noise_fp)
    begin
        noise_fp_inside = q_to_real(dut.noise_fp); 
    end
`endif
    
    initial begin
        // wait at least 100 ns for FPGA reset
        #200;
        
        // release reset
        repeat (2) @(posedge clk);
        reset <= 0;
        wr_sd <= 1;
        @(posedge clk);
        wr_sd <= 0;
        CE <= 1;
        dec_t <= 0;
        
       for (i = 0; i < (1 << TEMP_LUT_WIDTH); i = i + 1)
       begin
            for (s = 0; s < SAMPLES_PER_EPOCH; s = s + 1)
            begin
                @(posedge clk)
                $fdisplay(fh,"%0d,%0d,%0h, %d",i,s,dut_out, dut_out);
            end
            dec_t <= 1;
            @(posedge clk);
            dec_t <= 0;
            @(posedge clk);
       end
        
       $fclose(fh);
       $display("DONE");
       $finish;
        
    end


endmodule
