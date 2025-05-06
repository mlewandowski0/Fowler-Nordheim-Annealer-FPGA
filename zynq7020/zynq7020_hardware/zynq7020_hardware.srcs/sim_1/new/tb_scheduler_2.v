`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 02:28:51 PM
// Design Name: 
// Module Name: tb_scheduler_2
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


module tb_scheduler_2();

    localparam UW = 2;
    localparam NW = 2;
    localparam MW = 16;
    localparam GW = 12;
    localparam CLK_T = 10;
    localparam VECT  = 20+5;                     // number of test spikes

    reg clk = 0, reset = 1, halt = 0;
    reg flip = 0;
    reg [UW-1:0] un = 0;
    reg [NW-1:0] off = 0;
    reg [MW-1:0] mem = 0;
    reg add = 0;

    wire upd, inc, sp_halt;
    wire [$clog2(GW)-1:0] idx;
    wire [15:0] best;
    wire reset_modules;
    wire decrease_temp;


    scheduler_2 #(
        .UNIT_WIDTH(UW),
        .GRAPH_WIDTH(GW),
        .NEURON_NUM_WIDTH(NW),
        .MEMBRANE_WIDTH(MW),
        .COUNTER_WIDTH(40),
        .TEMP_INC_WIDTH(16),                  // decrease temperature every 65536 steps
        .NO_CLK_CYCLES_AFTER_UPDATE(3),
        .SOLUTION_WIDTH(16)) 
        dut (
        .clk(clk), .reset(reset), .halt_scheduler(halt),
        .flip(flip), .unit_number(un), .offset(off), .membrane(mem), .add_membrane(add),
        .index_of_neuron_that_fired(idx),
        .reset_modules(reset_modules), .halt_modules(sp_halt),
        .update_memories(upd), .should_increment(inc),
        .decrease_temp(decrease_temp), .cuts_best_transmit(best)
    );
    
    // deterministic stimulus vectors
    reg [UW-1:0]  unit_v [0:VECT-1];
    reg [NW-1:0]  off_v  [0:VECT-1];
    reg [MW-1:0]  mem_v  [0:VECT-1];
    reg           add_v  [0:VECT-1];

    // build the tables once using a fixed seed ------------------------
    integer seed = 32'h1A2B3C4D, i;
    initial begin
        for (i = 0; i < VECT; i = i+1) begin
            unit_v[i] = $urandom(seed+i) % (1<<UW);
            off_v [i] = $urandom(seed+i) % (1<<NW);
            mem_v [i] = $urandom(seed+i) % 200;       
            
            // test tracking the best
            if (i % 3 == 1)
                add_v [i] = $urandom(seed+i) & 1;
            else
                add_v[i] = 0;
        end
                
        
    end


    integer cyc;
    always 
    begin
        #(CLK_T / 2) clk = ~clk;
    end

    task send_spike( input [UW-1:0] unit,
                     input [NW-1:0] o, 
                     input signed [MW-1:0] m,
                     input addm);

        begin
            @(posedge clk);
            flip <= 1;
            un <= unit;
            off <= o; 
            mem <= m;
            add <= addm;
            @(posedge clk);
            flip <= 0;
        end
    endtask                    
    
    
    initial 
    begin
        #150;
        repeat (3) @(posedge clk);
        reset <= 0;


        // play the pre-generated spike sequence
        for (i = 0; i < VECT; i = i+1) begin
            $display("TB vector %0d  ->  unit=%0d off=%0d mem=%0d add=%0d",
                     i, unit_v[i], off_v[i], mem_v[i], add_v[i]);

            send_spike(unit_v[i], off_v[i], mem_v[i], add_v[i]);

            // wait until the scheduler asserts update_memories
            repeat (5) @(posedge clk);   // worst-case latency = 5 clks
        end 
    
        $display("DONE");
        $finish;
    end


endmodule
