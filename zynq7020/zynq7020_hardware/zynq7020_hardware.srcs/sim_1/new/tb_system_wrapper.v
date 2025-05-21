`timescale 1ns/1ps
import axi_vip_pkg::*;                         // global VIP defs
import design_1_N_eq_800_axi_vip_mst_pkg::*;   // <- exact name in your run

module tb_system_wrapper;
  // no clocks to PS pins required for PL-only sim
  design_1_N_eq_800_wrapper dut();             // DUT = BD wrapper

  // ------------------------------------------------------------------
  // Clock/reset for the PL domain driven by SmartConnect & VIP
  // ------------------------------------------------------------------
  bit aclk  = 0;
  bit aresetn = 0;
  always #5 aclk = ~aclk;                      // 100 MHz
  initial begin
        repeat(20) @(posedge aclk); aresetn = 1;  // de-assert reset after 0.2 µs
  end

  // ------------------------------------------------------------------
  // Create and start the AXI-VIP master agent
  // ------------------------------------------------------------------
  axi_vip_mst_mp master;                       // class handle
  initial begin
      master = new("master vip",
                   dut.design_1_N_eq_800_i.axi_vip_mst.inst.IF); // path printed in BD
      master.start_master();                   // PG267 "Must-have" step :contentReference[oaicite:2]{index=2}

      //---------------------------------------------------------------
      //  Register sequence - replace the $reg <= in your old test-bench
      //---------------------------------------------------------------
      write_data(32'h4000_0000, 4, 32'h0000_0001); // CTRL: release reset
      foreach (int i,i_seed) begin
         write_data(32'h4000_0004, 4, ensemble_seed[i]); // seed registers
         write_data(32'h4000_0008, 4, flipping_seed[i]);
      end
      write_data(32'h4000_0000, 4, 32'h0000_0003); // CTRL: start annealer

      // Optional read-back
      logic [31:0] read_data;
      read_data(32'h4000_000C, 4, read_data);

      // let the design run for 50 ms @100 MHz
      repeat (5_000_000) @(posedge aclk);
      $finish;
  end
endmodule
