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


// wraps temperaure_mapping ROM
// internal index 'x' increments when decrease temp = 1
// tops incremening when it reaches the top address
// output is registered and reset-clean

module temperature_module #(parameter N = 9,
                             parameter OUT_WIDTH = 18,
                             parameter LUT_FILE = "temperature_LUT_fixed_N9.mif")
                             (
                             input wire clk,                        
                             input wire reset,                              // synchornous, active-high
                             input wire decrease_temp,                      // pulse = advance index
                             output wire [OUT_WIDTH-1:0] temp);             // output temperature value 
                             
          
          // index register
          reg [N-1:0] x;
          
          
          // synchronous counter with saturation
          always @(posedge clk)
          begin
            if (reset)
            begin
                x <= {N{1'b0}};
            end
            else if (decrease_temp && (x != {N{1'b1}}))
                x <= x + 1'b1;
          end    
                             
    // ROM lookup (1-clock latency, CE tied high)
    temperature_mapping #(
        .N         (N),
        .OUT_WIDTH (OUT_WIDTH),
        .LUT_FILE  (LUT_FILE)
    ) u_rom (
        .clk   (clk),
        .reset (reset),
        .CE    (1'b1),
        .x     (x),
        .y     (temp)
    );


endmodule                              