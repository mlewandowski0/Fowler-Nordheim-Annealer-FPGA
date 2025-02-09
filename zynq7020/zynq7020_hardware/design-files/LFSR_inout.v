`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 01:13:30 PM
// Design Name: 
// Module Name: LFSR_inout
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


module LFSR_inout #(parameter LFSR_BITS=7, OUT_BITS=6)  
(
    input wire clk,
    input wire chip_enable,

    // seed
    input wire write_seed,
    input wire [LFSR_BITS:1] seed,
    output wire [OUT_BITS:1] out_trunc

);

wire [LFSR_BITS:1] out_full;


LFSR #(.BITS(LFSR_BITS)) lfsr(.clk(clk), 
                              .chip_enable(chip_enable),
                              .write_seed(write_seed), 
                              .seed(seed), 
                              .out(out_full));


    assign out_trunc = out_full[OUT_BITS:1];


endmodule
