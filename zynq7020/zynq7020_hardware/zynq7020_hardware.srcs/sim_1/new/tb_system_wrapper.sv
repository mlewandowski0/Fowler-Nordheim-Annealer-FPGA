`timescale 1ns/1ps
//---------------------------------------------------------------------
// 1.  Import the two packages Vivado generated for the VIP
//---------------------------------------------------------------------
import axi_vip_pkg::*;                         // common to every VIP  :contentReference[oaicite:3]{index=3}
import design_1_N_eq_800_axi_vip_0_0_pkg::*;  // your instance pkg

module tb_system_wrapper;
  //-------------------------------------------------------------------
  // 2.  Instantiate the BD wrapper - no PS pins driven in this PL-only run
  //-------------------------------------------------------------------
  design_1_N_eq_800_wrapper dut ();            // Vivado made this file

  //-------------------------------------------------------------------
  // 3.  Simple PL clock & reset that feed Smart-Connect and the VIP
  //-------------------------------------------------------------------
  bit aclk = 0;
  bit aresetn = 0;
  always  #5 aclk = ~aclk;                     // 100 MHz
  initial begin
      repeat (20) @(posedge aclk); aresetn = 1;
  end

  //-------------------------------------------------------------------
  // 4.  AXI-VIP master agent handle + start-up ("must-have" per PG267)
  //-------------------------------------------------------------------
  axi_vip_mst_mp m;
  initial begin
      // Path to the VIP interface appears in Sources → Hierarchy
      m = new("master vip",
               dut.design_1_N_eq_800_i.axi_vip_mst.inst.IF);
      m.start_master();                        //  compulsory :contentReference[oaicite:5]{index=5}

      //----------------------------------------------------------------
      // 5.  Example register sequence - REPLACE with your real pattern
      //----------------------------------------------------------------
      //logic [31:0] read_data;
      //logic [31:0] ensemble_seed [0:24];       // UNITS = 25
      //logic [31:0] flipping_seed [0:24];

      // a. CTRL = reset de-assert
      write_data(32'h4000_0000, 4, 32'h0000_0001);

      // b. seed programming loop (simple example)
      //foreach (ensemble_seed[i]) begin
      //   write_data(32'h4000_0004, 4, ensemble_seed[i]);
      //   write_data(32'h4000_0008, 4, flipping_seed [i]);
      //end

      // c. start annealer
      write_data(32'h4000_0000, 4, 32'h0000_0003);

      // d. optional read-back
      read_data(32'h4000_000C, 4, read_data);

      // e. let it run for 50 ms @100 MHz
      repeat (5_000_000) @(posedge aclk);
      $finish;
  end
endmodule
