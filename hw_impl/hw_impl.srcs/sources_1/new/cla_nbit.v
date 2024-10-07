`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 05:17:03 PM
// Design Name: 
// Module Name: cla_nbit
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


module cla_nbit #(parameter n=4) (  input [n-1:0]       a,
                                    input [n-1:0]       b,
                                    input               ci,
                                    output [n-1:0]      s, 
                                    output              co);

    wire [n-1 : 0]  g, p;
    wire [n:0]      c;

    assign c[0] = ci;
    assign co   = c[n];

    genvar i;

    generate 
        for (i = 0; i < n; i = i + 1)
        begin : addbit 
            assign s[i] = a[i] ^ b[i] ^ c[i];
            assign g[i] = a[i] & b[i];
            assign p[i] = a[i] | b[i];
            assign c[i+1] = g[i] | (p[i] & c[i]);
        end

    endgenerate

endmodule
