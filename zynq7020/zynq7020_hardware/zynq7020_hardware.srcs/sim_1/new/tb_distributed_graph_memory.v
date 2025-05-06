`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 10:10:03 PM
// Design Name: 
// Module Name: tb_distributed_graph_memory
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


module tb_distributed_graph_memory();

    localparam NEURON_WIDTH=2;
    localparam GRAPH_WIDTH=8;
    localparam MEM_FILE= "adj_matrix_N8_A2_distributed0.mif";
    localparam CLK_T = 10;

    
    reg clk = 0, reset = 1, EN = 0;
    reg [$clog2(GRAPH_WIDTH)-1:0] addr = 0;
    wire [(1 << NEURON_WIDTH)-1:0] Q;
    
    // DUT
    distributed_graph_memory #(
        .NEURON_WIDTH (NEURON_WIDTH),
        .GRAPH_WIDTH  (GRAPH_WIDTH),
        .MEM_FILE     (MEM_FILE)
    ) dut (
        .clk  (clk),
        .reset(reset),
        .enable(EN),
        .index_of_neuron_that_fired(addr),
        .Q_out(Q)
    );
    
        // golden ROM
    reg [(1<<NEURON_WIDTH)-1:0] rom [0:GRAPH_WIDTH-1];
    initial $readmemb(MEM_FILE, rom);

    
    // clock 
    always #(CLK_T/2) clk = ~clk;
    
    // reference pipeline (1 - clock latency)
    reg [(1 << NEURON_WIDTH) -1:0] ref_d;
    always @(posedge clk) ref_d <= rom[addr];
    
    integer i;
    
    initial
    begin
        
        #200;
        // release reset
        repeat (2) @(posedge clk);
        reset <= 0;
        EN <= 1;
        
        // walk through every row 
        for (i = 0; i < GRAPH_WIDTH; i = i + 1)
        begin
            addr <= i[$clog2(GRAPH_WIDTH)-1:0];
            @(posedge clk);
            @(posedge clk);
            $display("mem[%0d] = %b", i, Q);
            
            if (Q !== ref_d)
            begin
                $display("FAIL addr=%0d  exp=%b got=%b", i, ref_d, Q);
                $stop;
            end
        end
        $display("PASS: all %0d addresses matched.", GRAPH_WIDTH);
        $finish;
    end
            
    
endmodule
