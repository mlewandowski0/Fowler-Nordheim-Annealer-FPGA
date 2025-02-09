`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 05:07:44 PM
// Design Name: 
// Module Name: adder
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


module adder  #(parameter bits=4, parameter USE_CLA=0)  (
                                       input [bits-1:0] a,
                                       input [bits-1:0] b,
                                       input cin,
                                       output wire [bits-1:0] sum,
                                       output wire cout);
                                       
    generate
        if (USE_CLA)
        begin
            cla_nbit #(.n(bits)) cla(.a(a), .b(b), .ci(cin), .s(sum), .co(cout));
        end
        else 
        begin
                wire [bits:0] im;
                assign im   = a + b + cin;
                assign sum  = im[bits-1:0];
                assign cout = im[bits];        
        end
    endgenerate
                                       
endmodule
