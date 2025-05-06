`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 10:56:40 AM
// Design Name: 
// Module Name: tb_simple_priority_selector
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


module tb_simple_priority_selector();

    localparam UNITS = 4; 
    localparam UNIT_WIDTH=2;
    localparam NEURON_NUM_WIDTH = 2;
    localparam MEMBRANE_WIDTH=16;

    // DUT I/O
    reg [UNITS-1:0]                             spikes;
    reg [UNITS*UNIT_WIDTH-1:0]                  all_units;
    reg [UNITS*NEURON_NUM_WIDTH-1:0]            offsets;
    reg [UNITS*MEMBRANE_WIDTH-1:0]              membranes;
    reg [UNITS-1:0]                             add_mems;
    
    
    wire                                        spiked;
    wire [UNIT_WIDTH-1:0]                       unit_n;
    wire [NEURON_NUM_WIDTH-1:0]                 offset_n;
    wire [MEMBRANE_WIDTH-1:0]                   mem_n;
    wire                                        add_mem_n;

    
    simple_priority_selector #(
        .UNITS(UNITS),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH)
    ) dut (
        .spikes(spikes),
        .all_unit_numbers(all_units),
        .offsets(offsets),
        .all_membranes(membranes),
        .add_mems(add_mems),
        .spiked(spiked),
        .unit_numb(unit_n),
        .offset(offset_n),
        .membrane(mem_n),
        .add_mem(add_mem_n)
    );
    
    // stimulus
    integer i, idx, errs;


    function integer first_one;
        input [UNITS-1:0] vec;
        integer j;
        begin
            first_one = -1;
            for (j = 0; j < UNITS; j = j+1)
                if (vec[j] && first_one == -1)
                    first_one = j;
        end
    endfunction


    initial 
    begin
        
        #120;
    
        // preload data arrays with unique values
        for (i = 0; i < UNITS; i = i + 1)
        begin
            all_units [(i+1) * UNIT_WIDTH-1 -: UNIT_WIDTH] = i;
            offsets[(i+1) * NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH] = i;
            membranes [(i+1)*MEMBRANE_WIDTH-1   -: MEMBRANE_WIDTH] = (i+1)*16'h1111;
            add_mems  [i]                  = i & 1;

        end
        
        // move around a single-bit spike 
        
        for (i = 0; i < UNITS; i = i + 1)
        begin
            spikes = 1 << i;
            #1;
            $display("received %b and idx that fired was %d", spikes, unit_n);
                   
            if (!spiked || unit_n !== i[UNIT_WIDTH-1:0])
            begin
                $display("single bit %0d", i);
            end
        end
        
        // multi-bit patterns
        spikes = 4'b1011; #1;
        $display("received %b and idx that fired was %d", spikes, unit_n);
        
        #5;
        spikes = 4'b0000; #10;
         $display("received %b and idx that fired was %d", spikes, unit_n);
       
        $finish;


    end
endmodule
