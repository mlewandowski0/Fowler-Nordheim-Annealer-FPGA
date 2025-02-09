`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 12:32:01 PM
// Design Name: 
// Module Name: transmit_buffer_tb
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


module transmit_buffer_tb();

    localparam NEURON_WIDTH                     = 5;
    localparam MEMBRANE_WIDTH                   = 10;
    localparam NO_OF_CLK_CYCLES_TO_PROPAGATE    = 2;
    localparam HALF_CLK_CYCLE                   = 5;
    localparam CLK_CYCLE                        = 2 * HALF_CLK_CYCLE;

    reg clk;
    reg updating_membranes;
    reg reset;
    reg spike;
    reg [NEURON_WIDTH-1:0]  idx_offset;
    reg [MEMBRANE_WIDTH-1:0] membrane;
    reg add_mem;


    wire new_sample, spike_reg;
    wire [NEURON_WIDTH-1:0] offset_reg;
    wire [MEMBRANE_WIDTH-1:0] membrane_reg;
    wire add_mem_reg;
    
    transmit_buffer #(.NEURON_WIDTH(NEURON_WIDTH),
                      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                      .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE)) 
                      DUT
                      (.clk(clk),
                       .reset(reset),
                       .updating_membranes(updating_membranes),
                       .spike(spike),
                       .idx_offset(idx_offset),
                       .membrane(membrane),
                       .add_mem(add_mem),
                       .new_sample(new_sample),
                       .spike_reg(spike_reg),
                       .offset_reg(offset_reg),
                       .membrane_reg(membrane_reg),
                       .add_mem_reg(add_mem_reg));


    always
    begin
        #HALF_CLK_CYCLE clk = ~clk;
    end


    initial 
    begin
        clk = 0;
        updating_membranes = 0;
        reset = 0;
        spike = 0;
        idx_offset = {NEURON_WIDTH{1'bX}};
        membrane = {MEMBRANE_WIDTH{1'bX}};
        add_mem = 1'bX;

        wait (clk);
        reset = 1;

        #CLK_CYCLE;
        reset       = 0;
        spike       = 0;
        idx_offset  = 5'b11100;
        membrane    = 10'b1100000000;
        add_mem     = 1'b1;

        #(10 * CLK_CYCLE)
        spike      = 0;
        idx_offset = 5'b00000;
        membrane   = 10'b0000000011;
        add_mem    = 1'b0;

        #(10 * CLK_CYCLE)
        spike      = 1;
        idx_offset = 5'b11111;
        membrane   = 10'b1111111111;
        add_mem    = 1'b1;
        
        #(5 * CLK_CYCLE)
        spike      = 1;
        idx_offset = {NEURON_WIDTH{1'bX}};
        membrane   = {MEMBRANE_WIDTH{1'bX}};
        add_mem    = 1'bX;

        #(20 * CLK_CYCLE);
        spike      = 1'bX;
        idx_offset = {NEURON_WIDTH{1'bX}};
        membrane   = {MEMBRANE_WIDTH{1'bX}};
        add_mem    = 1'bX;

        #(20*CLK_CYCLE);
        updating_membranes = 1;
        #CLK_CYCLE;
        updating_membranes = 0;
        spike      = 1'b0;
        
        #(10 * CLK_CYCLE);

        $finish;
    end


endmodule
