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


// -----------------------------------------------------------------------------
//  fixed_to_int
//      • signed fixed-point  ->  signed integer
//      • Q format: TOTAL_BITS wide, FRAC_BITS fractional
//      • saturation when |value| exceeds INT_MAX
// -----------------------------------------------------------------------------
module fixed_to_int
#(
    parameter TOTAL_BITS = 18,
    parameter FRAC_BITS  = 8,
    parameter OUT_WIDTH  = 16
)
(
    input  wire signed [TOTAL_BITS-1:0] fixed_val,
    output reg  signed [OUT_WIDTH-1:0]  int_fixed_val   // ← signed
);

    initial
        if (FRAC_BITS >= TOTAL_BITS-1)
            $error("fixed_to_int: FRAC_BITS must be < TOTAL_BITS-1");

    localparam signed [OUT_WIDTH-1:0] INT_MAX =  (1<<(OUT_WIDTH-1)) - 1;
    localparam signed [OUT_WIDTH-1:0] INT_MIN = -(1<<(OUT_WIDTH-1));

    wire signed [TOTAL_BITS-1:0] int_part = fixed_val >>> FRAC_BITS;

    always @* begin
        if (int_part > INT_MAX)
            int_fixed_val = INT_MAX;
        else if (int_part < INT_MIN)
            int_fixed_val = INT_MIN;
        else
            int_fixed_val = int_part[OUT_WIDTH-1:0];
    end
endmodule
