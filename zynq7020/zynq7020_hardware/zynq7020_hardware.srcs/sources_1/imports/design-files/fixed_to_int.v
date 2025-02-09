`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 11:21:29 AM
// Design Name: 
// Module Name: fixed_to_int
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


module fixed_to_int #(
    parameter TOTAL_BITS = 18,  // total number of bits in the fixed-point value
    parameter FRAC_BITS  = 8,   // number of fractional bits (the scaling factor is 2^FRAC_BITS)
    parameter OUT_WIDTH  = 16   // width of the output (should be wide enough to hold the integer part)
) (
    input  wire [TOTAL_BITS-1:0] fixed_val,
    output wire signed [OUT_WIDTH-1:0] int_fixed_val
);

    wire signed [TOTAL_BITS-1:0] s_fixed_val = $signed(fixed_val);
    wire signed [TOTAL_BITS-1:0] abs_val = (s_fixed_val < 0) ? -s_fixed_val : s_fixed_val;
    wire signed [TOTAL_BITS-1:0] abs_int = abs_val >>> FRAC_BITS;
    wire signed [TOTAL_BITS-1:0] result = (s_fixed_val < 0) ? -abs_int : abs_int;
    assign int_fixed_val = result;

endmodule
