`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 07:03:46 PM
// Design Name: 
// Module Name: tb_neuron_ensemble_storage
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


module tb_neuron_ensemble_storage();

    localparam LFSR_W   = 3;
    localparam N_W      = 2;            // 2-bit index → 4 neurons
    localparam MEM_W    = 16;
    localparam DEPTH    = 1 << N_W;
    localparam CLK_T    = 10;
    
    // DUT IO
    
    reg  clk   = 0, reset = 1;
    reg  advance_idx = 0, write_seed = 0;
    reg  [LFSR_W-1:0] seed = 3'b101;   
    reg  write = 0;
    reg  [N_W-1:0] idx_to_wr = 0;
    reg  [MEM_W-1:0] mem_in  = 0;
    reg  [3:0] state_in = 0;
    reg  [1:0] control = 2'b00;
    reg  [DEPTH-1:0] Q_inp = 0;
    reg  update_ds = 0;
    reg  [N_W-1:0] idx_upd = 0;

    wire [N_W-1:0] sel_idx;
    wire signed [MEM_W-1:0] sel_mem;
    wire [3:0] sel_state;
    
    
    // DUT
    neuron_ensemble_storage #(
        .LFSR_WIDTH  (LFSR_W),
        .NEURON_WIDTH(N_W),
        .MEMBRANE_W  (MEM_W)
    ) dut (
        .clk(clk), .reset(reset),
        .advance_index(advance_idx),
        .write_seed(write_seed), .seed(seed),
        .write(write), .idx_to_write(idx_to_wr),
        .membrane_data_in(mem_in), .neuron_state_in(state_in),
        .control(control), .Q_inp(Q_inp),
        .update_ds(update_ds), .idx_offset_to_update(idx_upd),
        .selected_idx_offset(sel_idx),
        .selected_membrane(sel_mem),
        .neuron_state(sel_state)
    );
    
    // clock 
    always #(CLK_T/2) clk = ~clk;
    
   integer i, errs;
   
   reg [MEM_W-1:0] mem_capture [0:DEPTH-1];
   reg [3:0]       states_capture [0:DEPTH-1];
   
   initial 
   begin
        // wait for global FPGA reset (at least 100 ns)
        #200;
        
        repeat (3) @(posedge clk);
        reset <= 0;
        
        // -------- 1. preload all locations via write interface -----------
        for (i = 0; i < DEPTH; i = i+1) begin
            @(posedge clk);
            write      <= 1;
            idx_to_wr  <= i[N_W-1:0];
            mem_in     <= 16'sd10 * i;
            state_in   <= i;
        end
        
        @(posedge clk);
        write <= 0;
        
        // read back using LFSR indexes
        write_seed <= 1;
        
        @(posedge clk);
        write_seed <= 0;
        advance_idx <= 1;
        errs = 0;
        
        
        for (i = 0; i < 8; i = i + 1)
        begin
            @(posedge clk);
            //$display("READ idx=%0d got %0d", sel_idx, sel_mem);
            mem_capture[sel_idx] = sel_mem;
            states_capture[sel_idx] = sel_state;
        end
        advance_idx <= 0;
        
        $display("SECOND TEST : State of the memory (program)");
        for (i = 0; i < 4; i = i + 1)
        begin
            $display("mem[%0d] = %0d ; state[%0d] = %b", i, mem_capture[i], i, states_capture[i]);
            mem_capture[i] = {MEM_W{1'bx}};
        end
        $display("\n");
        
        repeat(4) @(posedge clk);
        
        // add 2 to some of the membranes
        @(posedge clk);
        Q_inp    <= 4'b0101;          // neurons 0 and 2
        control  <= 2'b10;            // ENSEMBLE_INC
        @(posedge clk);
        control  <= 2'b00;            // idle
        
        advance_idx <= 1'b1;
                
        repeat(2) @(posedge clk);
        
        for (i = 0; i < 8; i = i + 1)
        begin
            @(posedge clk);
            //$display("READ idx=%0d got %0d", sel_idx, sel_mem);
            mem_capture[sel_idx] = sel_mem;
            states_capture[sel_idx] = sel_state;
        end
        advance_idx <= 0;
        
        $display("SECOND TEST : State of the memory (increment)");
        for (i = 0; i < 4; i = i + 1)
        begin
            $display("mem[%0d] = %0d ; state[%0d] = %b", i, mem_capture[i], i, states_capture[i]);
            mem_capture[i] = {MEM_W{1'bx}};
        end
        $display("\n");

        
        Q_inp      <= 4'b0111;        // neurons 0 and 1
        control    <= 2'b11;          // ENSEMBLE_SUB
        update_ds  <= 1;
        idx_upd    <= 1;              // toggle neuron 1 state
        @(posedge clk);
        
        control <= 2'b00;
        update_ds <= 0;
        
        
        advance_idx <= 1'b1;
        
        @(posedge clk)

        for (i = 0; i < 8; i = i + 1)
        begin
            @(posedge clk);
            //$display("READ idx=%0d got %0d", sel_idx, sel_mem);
            mem_capture[sel_idx] = sel_mem;
            states_capture[sel_idx] = sel_state;
        end
        advance_idx <= 0;
        
        $display("SECOND TEST : State of the memory (sub)");
        for (i = 0; i < 4; i = i + 1)
        begin
            $display("mem[%0d] = %0d ; state[%0d] = %b", i, mem_capture[i], i, states_capture[i]);
            mem_capture[i] = {MEM_W{1'bx}};
        end
        $display("\n");


        
        $finish;
   end


endmodule
