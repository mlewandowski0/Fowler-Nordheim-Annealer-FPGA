`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 01:13:30 PM
// Design Name: 
// Module Name: LFSR_inout
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
// this module is a wrapper around LFSR : it instantiates LFSR with higher width
// and returns the ""upper" OUT_BITS of its state

module LFSR_inout #(parameter LFSR_BITS = 7,    // width of internal LFSR (3 ... 32)
                    parameter OUT_BITS = 6)     // number of bits returned (<= LFSR_BITS)
                    
                    (input wire                     clk,
                     input wire                     reset,
                     input wire                     chip_enable,
                     
                     input wire                     write_seed,
                     input wire [LFSR_BITS-1:0]     seed,
                     
                     output wire [OUT_BITS-1:0]     out_trunc);
                     

    // Parameter-time sanity checks
    initial 
    begin
        if (OUT_BITS > LFSR_BITS)
            $error("LFSR_inout : OUT BITS (%0d) must be <= LFSR_BITS (%0d)", OUT_BITS, LFSR_BITS);
        
        if (LFSR_BITS < 3 || LFSR_BITS > 32)
            $error("LFSR_inout: LFSR_BITS=%0d is outside 3-32", LFSR_BITS);
    end
                         
    
    // Instantiat ethe cleaned-up LFSR
    
    wire [LFSR_BITS-1:0] lfsr_state;
    
    LFSR #(.BITS(LFSR_BITS)) u_lfsr (
            .clk         (clk),
            .reset       (reset),
            .chip_enable (chip_enable),
            .write_seed  (write_seed),
            .seed        (seed),
            .out         (lfsr_state));
    
    // return the MSBs 
     assign out_trunc = lfsr_state[LFSR_BITS-1 -: OUT_BITS];
     
 endmodule