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


module flipping_unit #(parameter LOG_NOISE_SOURCE_WIDTH = 16,
                       parameter LOG_LUT_BIT_SIZE = 8, 
                       parameter REAL_WIDTH=16,
                       parameter FLIPPING_OUTPUT_WIDTH=16,
                       parameter LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif",
                       parameter TEMPERATURE_LUT_FILENAME="temperature_LUT.mif",
                       parameter TEMPERATURE_LUT_WIDTH=7,
                       parameter PIPELINED_ROMs=1,
                       parameter USE_FLOAT_POINT=0,
                       parameter FRACTIONAL_PART=8)

                    (input wire clk, 
                     input wire CE,
                     input wire reset,
                     input wire write_seed, 
                     input wire [LOG_NOISE_SOURCE_WIDTH-1:0] seed,
                     input wire decrease_temp,
                     output wire [FLIPPING_OUTPUT_WIDTH -1:0] flipping_output);

    wire [REAL_WIDTH-1:0] noise_out, temperature_multiplier_out;

    log_noise_generator #(.NOISE_SOURCE_WIDTH (LOG_NOISE_SOURCE_WIDTH),
                          .LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
                            .LUT_WIDTH(REAL_WIDTH),
                             .filename(LOG_NOISE_LUT_FILENAME))

                             noise_generator
                             (
                                .clk(clk),
                                .CE(CE), 
                                .write_seed(write_seed),
                                .seed(seed), 
                                .noise_out(noise_out)
                             );


    temperature_module #(.N(TEMPERATURE_LUT_WIDTH), 
                         .OUT_WIDTH(REAL_WIDTH), 
                         .LUT_FILE(TEMPERATURE_LUT_FILENAME))

                         temperature_module_inst
                         (.clk(clk), 
                          .decrease_temp(decrease_temp),
                          .reset(reset),
                          .temp(temperature_multiplier_out));
                              

    // TODO : wire error;
    wire [REAL_WIDTH-1:0] noise_times_temp;

    if (PIPELINED_ROMs == 1)
    begin
        wire [REAL_WIDTH-1:0] flipping_output_int;
        reg [REAL_WIDTH-1:0] noise_out_reg, temperature_multiplier_out_reg, flipping_output_reg;
        wire error;

        assign flipping_output = flipping_output_reg;

        if (USE_FLOAT_POINT == 1)
        begin 
            float16_mult mult(.a(noise_out_reg), .b(temperature_multiplier_out_reg), .c(noise_times_temp), .error(error));
            float16_to_int float16_to_integer_inst(.fp16(noise_times_temp), .int_out(flipping_output_int));
        end
        else if (USE_FLOAT_POINT == 0)
        begin 
            fixed_mult #(.BITS(REAL_WIDTH), .FRAC_BITS(FRACTIONAL_PART)) mult(.a(noise_out_reg), .b(temperature_multiplier_out_reg), .product(noise_times_temp), .overflow(error));
            fixed_to_int #(.TOTAL_BITS(REAL_WIDTH), .FRAC_BITS(FRACTIONAL_PART)) fixed_to_int(.fixed_val(noise_times_temp), .int_fixed_val(flipping_output_int));
        end

        always @(posedge clk)
        begin
            if (reset)
            begin
                noise_out_reg <= {REAL_WIDTH{1'b0}};
                temperature_multiplier_out_reg <= {REAL_WIDTH{1'b0}};
                flipping_output_reg <= {REAL_WIDTH{1'b0}};
            end
            else if (CE == 1)
            begin
                noise_out_reg <= noise_out;
                temperature_multiplier_out_reg <= temperature_multiplier_out;
                flipping_output_reg <= flipping_output_int;
            end
        end

        always @(posedge clk)
        begin
            if (reset)
            begin
            end
        end
            
    end    
    else
    begin

        if (USE_FLOAT_POINT == 1)
        begin 
            float16_mult mult(.a(noise_out), .b(temperature_multiplier_out), .c(noise_times_temp), .error(error));
            float16_to_int float16_to_integer_inst(.fp16(noise_times_temp), .int_out(flipping_output));
        end
        else if (USE_FLOAT_POINT == 0)
        begin
            fixed_mult mult(.a(noise_out), .b(temperature_multiplier_out), .product(noise_times_temp), .overflow(error));
            fixed_to_int #(.TOTAL_BITS(REAL_WIDTH), .FRAC_BITS(FRACTIONAL_PART)) fixed_to_int(.fixed_val(noise_times_temp), .int_fixed_val(flipping_output));

        end
    end


endmodule
