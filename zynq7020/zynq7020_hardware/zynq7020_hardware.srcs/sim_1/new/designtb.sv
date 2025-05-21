`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 03:11:57 PM
// Design Name: 
// Module Name: designtb
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


import axi_vip_pkg::*;          // package exported by the core
import design_1_N_eq_800_axi_vip_mst_pkg::*;  // auto-generated names

module tb_axivip;
  logic aclk, aresetn;
  // Clock gen @100 MHz
  always #5 aclk = ~aclk;
  initial begin
    aclk = 0; aresetn = 0;
    #200ns aresetn = 1;                // match reset release in your RTL

    axi_vip_mst_mp m;                  // Master agent handle
    m = new("master vip", DUT);        // DUT is auto-instantiated VIP
    m.start_master();                  // handshake with checker

    // --- AXI-Lite register sequence (replaces your $reg <=)
    write_data(32'h4000_0000, 32'h0000_0001);          // CTRL reset off
    foreach (int i = 0; i < UNITS; i++) begin
       write_data(32'h4000_0004, ensemble_seed[i]);
       write_data(32'h4000_0008, flipping_seed[i]);
    end
    write_data(32'h4000_0000, 32'h0000_0003);          // CTRL run

    repeat (5_000_000) @(posedge aclk); // ≈50 ms @100 MHz
    $finish;
  end
endmodule
