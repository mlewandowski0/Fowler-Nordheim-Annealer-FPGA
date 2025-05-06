`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 09:29:19 PM
// Design Name: 
// Module Name: log_noise_generator
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


module log_noise_generator #(parameter NOISE_SOURCE_WIDTH  = 16,            // LFSR WIDTH
                             parameter LUT_BIT_SIZE        = 8,             // address bit into ROM
                             parameter LUT_WIDTH           = 18,            // data-width from ROM
                             parameter FILENAME            ="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif") // path to ROM hex file
                             (
                                input wire clk,
                                input wire reset,       // reset both LFSR  + ROM
                                input wire CE,          // enable both LFSR + ROM
                                input wire write_seed,  // 
                                input wire [NOISE_SOURCE_WIDTH-1:0] seed,
                                output wire [LUT_WIDTH-1:0] noise_out);
                                

    // parameter guard
    initial 
    begin
        if (LUT_BIT_SIZE > NOISE_SOURCE_WIDTH)
          $error("log_noise_generator: LUT_BIT_SIZE(%0d) > NOISE_SOURCE_WIDTH(%0d)", LUT_BIT_SIZE, NOISE_SOURCE_WIDTH);
    end


    // LFSR 
    wire [LUT_BIT_SIZE-1:0] random_address_from_lfsr;
    
    LFSR_inout #(.LFSR_BITS(NOISE_SOURCE_WIDTH),
                 .OUT_BITS(LUT_BIT_SIZE))
                 u_src(.clk(clk),
                       .reset(reset),
                       .chip_enable(CE),
                       .write_seed(write_seed),
                       .seed(seed),
                       .out_trunc(random_address_from_lfsr));
    
    
    // LOG LUT - synthesized as synchronous BRAM, one-cycle latency (ROM memory, initialized by FILENAME)
    log_LUT  #(.NOISE_SOURCE_WIDTH(LUT_BIT_SIZE),
               .LUT_WIDTH(LUT_WIDTH),
               .FILENAME(FILENAME))
               u_lut(.clk(clk),
                     .reset(reset),
                     .CE(CE),
                     .noise_source(random_address_from_lfsr),
                     .distribution_output(noise_out));

endmodule                                