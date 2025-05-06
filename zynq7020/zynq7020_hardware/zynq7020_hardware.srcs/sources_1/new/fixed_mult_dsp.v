`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 09:45:23 AM
// Design Name: 
// Module Name: fixed_mult_dsp
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


module fixed_mult_dsp #(parameter BITS = 18,
                        parameter FRAC_BITS = 8)
                       (input wire clk, 
                        input wire [BITS-1:0] a,
                        input wire [BITS-1:0] b,
                        output reg [BITS-1:0] product,
                        output reg overflow);
    
    
    // parameter check
    initial 
    begin
        if (FRAC_BITS >= BITS-1)
            $error("fixed_mult: FRAC_BITS must be < BITS-1");
    end                        
    
    // pipeline state 0, register inptus
    (* use_dsp="yes" *)  
    reg signed [BITS-1:0] a_r, b_r;
    
    
    always @(posedge clk)
    begin
        a_r <= a;
        b_r <= b;
    end                          
                  
    // stage 1 : DSP does multiply    
    wire signed [2*BITS-1:0] mult = a_r * b_r; // DSP48 will be inferred
    
    // transform back the fractional standard
    localparam SH_W =2 * BITS - FRAC_BITS;
    
    wire signed [SH_W-1:0] shifted = mult >>> FRAC_BITS;
    
    
    //overflow deteciton
    localparam HI_W = SH_W - BITS;
    wire signbit = shifted[BITS-1]; // take the MSB
    wire [HI_W-1:0] hibits = shifted[SH_W-1:BITS];
    wire ovf_comb  = |(hibits ^ {HI_W{signbit}});
               

     // ---- stage 1 registers ---------------------------------------------------
    always @(posedge clk) begin
        product  <= shifted[BITS-1:0];
        overflow <= ovf_comb;
    end              
                        
endmodule
