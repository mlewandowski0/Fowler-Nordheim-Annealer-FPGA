`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 06:21:55 PM
// Design Name: 
// Module Name: temperature_module
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


module temperature_module #(parameter N=7, 
                            parameter OUT_WIDTH=16, 
                            parameter LUT_FILE="temperature_LUT.mif")
                         (input wire clk, 
                          input wire decrease_temp,
                          input wire reset,
                          output wire [OUT_WIDTH-1:0] temp);   


    reg [N-1:0] x;
    
    temperature_mapping #(.N(N), .OUT_WIDTH(OUT_WIDTH), .LUT_FILE(LUT_FILE)) DUT(.clk(clk), .x(x), .y(temp));

    always @(posedge clk)
    begin
        if (reset == 1)
        begin
            x <= {N{1'b0}};
        end
        else if (decrease_temp == 1 && ~(&x) )
        begin
            x <= x + 1;
        end
    end

    
endmodule
