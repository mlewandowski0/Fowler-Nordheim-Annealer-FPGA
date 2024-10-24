`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 06:45:07 PM
// Design Name: 
// Module Name: LFSR_with_adv
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


module LFSR_with_adv #(parameter LFSR_BITS=7, parameter OUT_BITS=6) 
(
    input wire clk,
    input wire adv,

    // seed 
    input wire write_seed,
    input wire [LFSR_BITS:1] seed,
    output wire [OUT_BITS:1] out 
);




endmodule
