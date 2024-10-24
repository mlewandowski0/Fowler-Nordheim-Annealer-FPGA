`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 12:32:01 PM
// Design Name: 
// Module Name: transmit_buffer_tb
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


module transmit_buffer_tb();

    localparam NEURON_WIDTH = 5;
    localparam MEMBRANE_WIDTH = 16;


    reg clk;
    reg reset;
    reg spike;
    reg [NEURON_WIDTH-1:0]  idx_offset;
    reg [MEMBRANE_WIDTH-1:0] membrane;
    reg add_mem;


    wire new_sample, spike_reg;
    wire [NEURON_WIDTH-1:0] offset_reg;
    wire [MEMBRANE_WIDTH-1:0] membrane_reg;
    wire add_mem_reg;
    
    


endmodule
