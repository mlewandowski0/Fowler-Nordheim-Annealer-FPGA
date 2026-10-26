
`timescale 1ns / 1ps

// Fibonacci form, MSB feedback LFSR
// Synchronous clear (active-high)
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 13:33:35
// Design Name: 
// Module Name: LFSR
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


module LFSR #(
              parameter BITS = 7 // 3 - 32 supported
              )
              (
                input wire                  clk,
                input wire                  reset, // synchronous, active-high
                input wire                  chip_enable,
                
                // optional parallel seed load
                input wire                  write_seed,
                input wire [BITS-1:0]       seed,
                output wire [BITS-1:0]      out
              
              );

// Parameter Sanity check 
initial 
    if (BITS < 3 || BITS > 32)
        $error("LFSR: BITS=%0d is outside supported range 3-32", BITS);


    // 2) state register + output 
    // (* keep = "true" *) 
    reg [BITS-1:0] state;
    assign out = state;
    
    // Combinational feedback XNOR network
    
    reg fb;
    
    always @*
    
    begin
        fb = 1'b0;
        case (BITS)
          3 :  fb = state[2]  ^~ state[1];
          4 :  fb = state[3]  ^~ state[2];
          5 :  fb = state[4]  ^~ state[2];
          6 :  fb = state[5]  ^~ state[4];
          7 :  fb = state[6]  ^~ state[5];
          8 :  fb = state[7]  ^~ state[5] ^~ state[4] ^~ state[3];
          9 :  fb = state[8]  ^~ state[4];
          10:  fb = state[9]  ^~ state[6];
          11:  fb = state[10] ^~ state[8];
          12:  fb = state[11] ^~ state[5] ^~ state[3] ^~ state[0];
          13:  fb = state[12] ^~ state[3] ^~ state[2] ^~ state[0];
          14:  fb = state[13] ^~ state[4] ^~ state[2] ^~ state[0];
          15:  fb = state[14] ^~ state[13];
          16:  fb = state[15] ^~ state[14] ^~ state[12] ^~ state[3];
          17:  fb = state[16] ^~ state[13];
          18:  fb = state[17] ^~ state[10];
          19:  fb = state[18] ^~ state[5] ^~ state[1] ^~ state[0];
          20:  fb = state[19] ^~ state[16];
          21:  fb = state[20] ^~ state[18];
          22:  fb = state[21] ^~ state[20];
          23:  fb = state[22] ^~ state[17];
          24:  fb = state[23] ^~ state[22] ^~ state[21] ^~ state[16];
          25:  fb = state[24] ^~ state[21];
          26:  fb = state[25] ^~ state[5] ^~ state[1] ^~ state[0];
          27:  fb = state[26] ^~ state[4] ^~ state[1] ^~ state[0];
          28:  fb = state[27] ^~ state[24];
          29:  fb = state[28] ^~ state[26];
          30:  fb = state[29] ^~ state[5] ^~ state[3] ^~ state[0];
          31:  fb = state[30] ^~ state[27];
          32:  fb = state[31] ^~ state[21] ^~ state[1] ^~ state[0];
        endcase
    end
    
    // sequential update 
    
    always @(posedge clk)
    begin
        if (reset) 
        begin
            state <= {BITS{1'b1}};
        end
        else if (write_seed)
        begin
            // avoid lock-up on all-zero seed
            state <= (seed == {BITS{1'b1}}) ? {BITS{1'b0}} : seed;
        end
        else if (chip_enable)
        begin
            // shift left, feedback into LSB
            state <= {state[BITS-2:0], fb};
        end
    end


    
endmodule