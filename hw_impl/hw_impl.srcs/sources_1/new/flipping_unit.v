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


module flipping_unit #(parameter NOISE_SOURCE_WIDTH=7, 
                       parameter LUT_WIDTH=16,
                       parameter LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif",
                       parameter TEMPERATURE_LUT_FILENAME="temperature_LUT.mif",
                       parameter TEMPERATURE_WIDTH=7,
                       parameter PIPELINED_ROMs=1)

                    (input wire clk, 
                     input wire CE,
                     input wire write_seed, 
                     input wire [NOISE_SOURCE_WIDTH-1:0] seed,
                     input wire decrease_temp,
                     input wire reset,
                     output wire [LUT_WIDTH -1:0] flipping_output);

    wire [LUT_WIDTH-1:0] noise_out, temperature_multiplier_out;

    log_noise_generator #(.NOISE_SOURCE_WIDTH (NOISE_SOURCE_WIDTH),
                            .LUT_WIDTH(LUT_WIDTH),
                             .filename(LOG_NOISE_LUT_FILENAME))

                             noise_generator
                             (
                                .clk(clk),
                                .CE(CE), 
                                .write_seed(write_seed),
                                .seed(seed), 
                                .noise_out(noise_out)
                             );


    temperature_module #(.N(TEMPERATURE_WIDTH), 
                         .OUT_WIDTH(LUT_WIDTH), 
                         .LUT_FILE(TEMPERATURE_LUT_FILENAME))

                         temperature_module_inst
                         (.clk(clk), 
                          .decrease_temp(decrease_temp),
                          .reset(reset),
                          .temp(temperature_multiplier_out));
                              


    if (PIPELINED_ROMs == 1)
    begin
        reg [LUT_WIDTH-1:0] noise_out_reg, temperature_multiplier_out_reg;
        wire [LUT_WIDTH-1:0] noise_times_temp;
        wire error;

        float16_mult mult(.a(noise_out_reg), .b(temperature_multiplier_out_reg), .c(noise_times_temp), .error(error));
        float16_to_int float16_to_integer_inst(.fp16(noise_times_temp), .int_out(flipping_output));

        always @(posedge clk)
        begin
            if (CE == 1)
            begin
                noise_out_reg <= noise_out;
                temperature_multiplier_out_reg <= temperature_multiplier_out;
            end
        end
            
    end    
    else
    begin

        wire [LUT_WIDTH-1:0] noise_times_temp;
        wire error;

        float16_mult mult(.a(noise_out), .b(temperature_multiplier_out), .c(noise_times_temp), .error(error));
        float16_to_int float16_to_integer_inst(.fp16(noise_times_temp), .int_out(flipping_output));

    end


endmodule
