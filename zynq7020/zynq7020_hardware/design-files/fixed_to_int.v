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


module fixed_to_int #(parameter TOTAL_BITS=18, 
                      parameter FRAC_BITS=8,
                      parameter OUT_WIDTH=16) 
                        (input [TOTAL_BITS-1:0] fixed_val, 
                         output wire signed [OUT_WIDTH-1:0] int_fixed_val);

    localparam NO_OF_ZEROS_PADDED = OUT_WIDTH - (TOTAL_BITS - FRAC_BITS);

    assign int_fixed_val[TOTAL_BITS-FRAC_BITS-1:0] = fixed_val[TOTAL_BITS-1] ? fixed_val[TOTAL_BITS-1 -: (TOTAL_BITS-FRAC_BITS)] + 1 : fixed_val[TOTAL_BITS-1 -: (TOTAL_BITS-FRAC_BITS)];
    assign int_fixed_val[OUT_WIDTH-1:TOTAL_BITS-FRAC_BITS] = {NO_OF_ZEROS_PADDED{1'b0}};


endmodule
