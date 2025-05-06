`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 05:59:02 PM
// Design Name: 
// Module Name: tb_neuron_ensemble
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


module tb_neuron_ensemble();
    //
    localparam NW = 2, MW = 16, UW = 2;
    localparam CLK_T = 10;
    localparam VECT  = 32;          // number of spikes to feed

    // clock and reset
    reg clk = 0, rst = 1;
    always #(CLK_T / 2) clk = ~clk;

    // stimuli toward DUT 
    reg storage_CE = 0, adv = 0;
    reg flip_CE = 0, dec_t = 0;
    reg wr_seed_s = 0, wr_seed_f = 0;


    // write port to storage 
    reg wr_ext = 0;
    reg [NW-1:0] idx_wr = 0;
    reg [MW-1:0] mem_wr = 16'sd20;
    reg [3:0] st_wr = 4'b0001;


    // outputs 
    wire spike ;
    wire [UW-1:0] unit;
    wire [NW-1:0] off;
    wire [MW-1:0] mem;
    wire          add;
    
    
    localparam NUMBER_OF_MEMBRANES = 1 << NW;


    // Initialize ata arrays (membrane voltages)
    reg [31:0] data_arrays [0:NUMBER_OF_MEMBRANES-1];        
    initial 
    begin
        $readmemh("membrane_data_N8.mif", data_arrays);
    end



    // DUT 
    neuron_ensemble #(
        .UNIT_WIDTH(UW), .UNIT_NO(1),               // any
        .PIPELINED_ENSEMBLE_STORAGE(1)
    ) dut (
        .clk(clk), .reset(rst),
        .storage_CE(storage_CE), .advance_index(adv),
        .write_ensemble_seed(wr_seed_s), .ensemble_seed(5),
        .write(wr_ext), .idx_to_write(idx_wr),
        .membrane_data_in(mem_wr), .neuron_state_in(st_wr),
        .control(2'b00), .Q_inp(0), .update_ds(0), .idx_offset_to_update(0),
        .flipping_CE(flip_CE), .write_flipping_seed(wr_seed_f),
        .flipping_seed(16'hb33f), .decrease_temp(dec_t),
        .reset_flipping(rst),
        .spike(spike), .unit_number(unit),
        .offset(off), .membrane(mem), .add_mem(add)
    );

    reg [31:0] seed = 32'habcdabcd;
    integer i;

    initial
    begin 
        #100;
        
        repeat (4) @(posedge clk); 
        
        rst <= 0;

        // enable sub-blocks
        storage_CE <= 0;
        adv <= 0;
        wr_seed_s <= 1;
        wr_ext <= 0;
        @(posedge clk);
        wr_ext <= 1;
        wr_seed_s <= 0;
 
        for (i = 0; i < NUMBER_OF_MEMBRANES; i = i + 1)
        begin
            idx_wr <= i;
            mem_wr <= data_arrays[i];
            st_wr <= 4'b0010;
            @(posedge clk);
            #1;
        end
        wr_ext <= 0;
        flip_CE <= 1;
              
        repeat(3)  @(posedge clk);
        
        for (i = 0; i < 5; i = i + 1)
        begin
            repeat (16) @(posedge clk);
            dec_t <= 1;
            @ (posedge clk);
            dec_t <= 0;
        end
        
        
        storage_CE <= 1;
        
        repeat (5) @(posedge clk);
        adv <= 1;
        for (i = 0; i < 200; i = i + 1)
        begin
            repeat (16) @(posedge clk);
            dec_t <= 1;
            @ (posedge clk);
            dec_t <= 0;
        end
        
        
        
        
        
        $finish;
    end

    
endmodule
