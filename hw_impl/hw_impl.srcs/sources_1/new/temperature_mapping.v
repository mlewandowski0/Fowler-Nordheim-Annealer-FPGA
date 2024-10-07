`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 05:33:52 PM
// Design Name: 
// Module Name: temperature_mapping
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


module temperature_mapping #(parameter N=7, parameter OUT_WIDTH=16, parameter LUT_FILE="temperature_LUT.mif")
(
    input wire clk,
    input wire [N-1: 0] x,
    output wire [OUT_WIDTH-1: 0] y
);
    parameter LUT_SIZE = 1 << N;
    reg [OUT_WIDTH:1] distribution [0:LUT_SIZE-1];
    
    initial 
    begin
        $readmemb(LUT_FILE, distribution);
    end
    
    assign y = distribution[x];
    
endmodule