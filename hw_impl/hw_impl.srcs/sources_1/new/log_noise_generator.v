`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 09:29:19 PM
// Design Name: 
// Module Name: log_noise_generator
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


module log_noise_generator #(parameter NOISE_SOURCE_WIDTH = 8,
                             parameter LUT_WIDTH = 16,
                             parameter filename="log_noise_LUT.mif")
                             (
                                input wire clk,
                                input wire CE, 
                                input wire write_seed,
                                input wire [NOISE_SOURCE_WIDTH-1:0] seed, 
                                output wire [LUT_WIDTH-1:0] noise_out
                             );

    wire [NOISE_SOURCE_WIDTH-1:0] LFSR_OUT;


    LFSR #(.BITS(NOISE_SOURCE_WIDTH)) noise_source(.clk(clk), .chip_enable(CE), .write_seed(write_seed),
                                                    .seed(seed), .out(LFSR_OUT));

    log_LUT #(.NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH), .LUT_WIDTH(LUT_WIDTH), .filename(filename)) LUT_transform(.CE(CE), .noise_source(LFSR_OUT), .distribution_output(noise_out));

endmodule
