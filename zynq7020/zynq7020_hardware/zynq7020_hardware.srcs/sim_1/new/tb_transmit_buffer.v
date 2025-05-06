`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 11:42:33 PM
// Design Name: 
// Module Name: tb_transmit_buffer
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


module tb_transmit_buffer();

    localparam NW = 5;
    localparam MW = 16;
    localparam CLK_T = 10;
    
    reg clk = 0, reset = 1;
    reg updating = 0, upd_ds = 0;
    reg spike = 0;
    reg [NW-1:0] idx = 0;
    reg [MW-1:0] mem = 0;
    reg add_mem = 0;
    
    wire new_sample, spike_reg;
    wire [NW-1:0] idx_o;
    wire [MW-1:0] mem_o;
    wire add_o;
    
    transmit_buffer #(
        .NEURON_WIDTH(NW),
        .MEMBRANE_WIDTH(MW),
        .NO_CLK_CYCLES_TO_PROPAGATE(2),
        .NO_CLK_CYCLES_TO_UPDATE_MEMBRANE(3)
    ) dut (
        .clk(clk), .reset(reset),
        .updating_membranes(updating), .update_ds(upd_ds),
        .spike(spike), .idx_offset(idx),
        .membrane(mem), .add_mem(add_mem),
        .new_sample(new_sample), .spike_reg(spike_reg),
        .offset_reg(idx_o), .membrane_reg(mem_o), .add_mem_reg(add_o)
    );


    always #(CLK_T / 2) clk = ~clk;
    
    initial
    begin
        // wait for global FPGA reset
        #200;
        
        // release reset
        repeat (2) @(posedge clk);
        reset <= 0;
        
        // send a non-spike sample 
        @(posedge clk);
        idx <= 3;
        mem <= 16'hx;
        add_mem <= 1'bx;
        spike <= 0;
        @(posedge clk);
        if (!new_sample)
            $error("new sample should be 1 after reject");
        @(posedge clk);
        if (!new_sample)
            $error("new sample should be 1 after reject");
        @(posedge clk);
        if (!new_sample)
            $error("new sample should be 1 after reject");

          
        // 2) send a spike sample
        idx<=4; mem<=16'h2222; add_mem<=1; spike<=1;
        @(posedge clk); // GOOD_SAMPLE
        if (!spike_reg) $error("spike_reg should pulse 1");

        // 3) Scheduler starts update
        updating<=1; @(posedge clk); updating<=0;

        // outputs must clear
        if (spike_reg | add_o) $error("outputs not cleared on updating");

        $display("PASS transmit_buffer basic test");
        $finish;

        
        
    end
endmodule
