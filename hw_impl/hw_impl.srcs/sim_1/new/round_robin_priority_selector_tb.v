`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 03:42:12 PM
// Design Name: 
// Module Name: round_robin_priority_selector_tb
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


module round_robin_priority_selector_tb(

    );


        // Parameters
    parameter UNITS = 4;
    parameter UNIT_WIDTH=2;
    parameter NEURON_NUM_WIDTH = 2;
    parameter MEMBRANE_WIDTH=16;
    parameter HALF_CLK = 5;
    parameter CLK = 2 * HALF_CLK;


    // Input arrays (for ease of assignment)
    reg                             reset;
    reg                             clk;
    reg                             spikes_array [0:UNITS-1];
    reg [UNIT_WIDTH-1:0]            all_unit_numbers_array [0:UNITS-1];
    reg [NEURON_NUM_WIDTH-1:0]      offsets_array [0:UNITS-1];
    reg [MEMBRANE_WIDTH-1:0]        all_membranes_array [0:UNITS-1];
    reg                             all_add_mems_array [0:UNITS-1];


    // Packed input vectors to connect to the module under test
    wire [UNITS-1:0]                      spikes_w;
    wire [UNITS*UNIT_WIDTH-1:0]           all_unit_numbers_w;
    wire [UNITS * NEURON_NUM_WIDTH-1:0]   offsets_w;
    wire [UNITS * MEMBRANE_WIDTH-1:0]     all_membranes_w;
    wire [UNITS-1:0]                      add_mems_w;

    // Outputs from the module under test
    wire                           spiked;
    wire [UNIT_WIDTH-1:0]          unit_numb;
    wire [NEURON_NUM_WIDTH-1:0]    offset;
    wire [MEMBRANE_WIDTH-1:0]      membrane;
    wire                           add_mem;

    // Pack the arrays into vectors
    genvar i;
    generate
        for (i = 0; i < UNITS; i = i + 1) begin : pack_inputs
            assign spikes_w[i] = spikes_array[i];
            assign all_unit_numbers_w[(i+1)*UNIT_WIDTH-1 -: UNIT_WIDTH] = all_unit_numbers_array[i];
            assign offsets_w[(i+1)*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH] = offsets_array[i];
            assign all_membranes_w[(i+1)*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH] = all_membranes_array[i];
            assign add_mems_w[i] = all_add_mems_array[i];
        end
    endgenerate

    initial
    begin
        clk = 0;
        forever 
        begin
            #HALF_CLK clk = ~clk;
        end
    end


    round_robin_priority_selector #(.UNITS(UNITS),
                               .UNIT_WIDTH(UNIT_WIDTH),
                               .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
                               .MEMBRANE_WIDTH(MEMBRANE_WIDTH))
                            
                                round_robin_priority_selector
                                (
                                    .reset(reset),
                                    .clk(clk),
                                    .spikes(spikes_w),
                                    .all_unit_numbers(all_unit_numbers_w),
                                    .offsets(offsets_w),
                                    .all_membranes(all_membranes_w),
                                    .add_mems(add_mems_w),
                                    .spiked(spiked),
                                    .unit_numb(unit_numb),
                                    .offset(offset),
                                    .membrane(membrane),
                                    .add_mem(add_mem)
                                );

    integer idx, j;
    
    // Stimulus block
    initial 
    begin
        // Initialize all inputs to zero
        for (idx = 0; idx < UNITS; idx = idx + 1) begin
            spikes_array[idx] = 0;
            all_unit_numbers_array[idx] = 0;
            offsets_array[idx] = 0;
            all_membranes_array[idx] = 0;
            all_add_mems_array[idx] = 0;
        end
        reset = 0;
        
        #CLK;
        reset = 1;

        // Wait for 10 ns
        #CLK;
        reset = 0;

        // First test case: Spike from unit 0
        spikes_array[0] = 1;
        all_unit_numbers_array[0] = 2'b01;
        offsets_array[0] = 2'b10;
        all_membranes_array[0] = 16'hABCD;
        all_add_mems_array[0] = 1;

        #CLK;

        // Second test case: Spike from unit 2
        spikes_array[0] = 0;
        spikes_array[2] = 1;
        all_unit_numbers_array[2] = 2'b11;
        offsets_array[2] = 2'b01;
        all_membranes_array[2] = 16'h1234;
        all_add_mems_array[2] = 1;

        #CLK;

        // Third test case: Multiple spikes (units 1 and 3)
        spikes_array[2] = 0;
        spikes_array[1] = 1;
        spikes_array[3] = 1;
        all_unit_numbers_array[1] = 2'b10;
        all_unit_numbers_array[3] = 2'b00;
        offsets_array[1] = 2'b11;
        offsets_array[3] = 2'b00;
        all_membranes_array[1] = 16'h5678;
        all_membranes_array[3] = 16'h9ABC;
        all_add_mems_array[1] = 1;
        all_add_mems_array[3] = 1;

        #CLK;

        // iterate through all cominbations of spikes
        all_unit_numbers_array[0] = 2'b00;
        all_unit_numbers_array[1] = 2'b01;
        all_unit_numbers_array[2] = 2'b10;
        all_unit_numbers_array[3] = 2'b11;

        offsets_array[0] = 2'b00;
        offsets_array[1] = 2'b01;
        offsets_array[2] = 2'b10;
        offsets_array[3] = 2'b11;

        all_membranes_array[0] = 16'hDEAD;
        all_membranes_array[1] = 16'hBEEF;
        all_membranes_array[2] = 16'hCAFE;
        all_membranes_array[3] = 16'hBABE;     

        all_add_mems_array[0] = 0;
        all_add_mems_array[1] = 1;
        all_add_mems_array[2] = 0;
        all_add_mems_array[3] = 1;

        for (idx = 0; idx < (1 << UNITS); idx = idx + 1)
        begin
            for (j = 0; j < UNITS; j = j + 1)
            begin
                spikes_array[j] = (idx & (1 << j)) > 0;
            end
            #(UNITS * CLK);
        end

        #CLK;

        // End simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | spikes=%b | spiked=%b | unit_numb=%b | offset=%b | membrane=%h | add_mem=%b",
                 $time, spikes_w, spiked, unit_numb, offset, membrane, add_mem);
    end


endmodule
