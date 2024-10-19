`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 04:43:39 PM
// Design Name: 
// Module Name: scheduler2_tb
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


module scheduler2_tb();


    localparam UNIT_WIDTH=2;
    localparam GRAPH_WIDTH=12;
    localparam NEURON_NUM_WIDTH=2;
    localparam MEMBRANE_WIDTH=16;
    localparam COUNTER_WIDTH=40;
    localparam TEMP_INC_WIDTH=2;
    localparam NO_CLK_CYCLES_AFTER_UPDATE=0;
    localparam SOLUTION_WIDTH=16;

    localparam HALF_CLK_PERIOD = 5;
    localparam CLK_PERIOD = 2 * HALF_CLK_PERIOD;

    reg                             clk, reset, flip, halt_scheduler;
    reg [UNIT_WIDTH-1:0]            unit_number;
    reg [NEURON_NUM_WIDTH-1:0]      offset;
    reg [MEMBRANE_WIDTH-1:0]        membrane;
    reg                             add_membrane;


    wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired;
    wire reset_modules, halt_modules, update_memories, should_increment;
    wire decrease_temp; 
    wire [SOLUTION_WIDTH-1:0]       cuts_best_transmit;

    scheduler
    #(.UNIT_WIDTH(UNIT_WIDTH),
      .GRAPH_WIDTH(GRAPH_WIDTH),
      .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .COUNTER_WIDTH(COUNTER_WIDTH),
      .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
      .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE))

      DUT(
            .clk(clk),
            .reset(reset),
            .flip(flip),
            .unit_number(unit_number),
            .halt_scheduler(halt_scheduler),
            .offset(offset),
            .membrane(membrane),
            .add_membrane(add_membrane),
            .index_of_neuron_that_fired(index_of_neuron_that_fired),
            .reset_modules(reset_modules),
            .halt_modules(halt_modules),
            .update_memories(update_memories),
            .should_increment(should_increment),
            .decrease_temp(decrease_temp),
            .cuts_best_transmit(cuts_best_transmit)
      );

    always
    begin
        #HALF_CLK_PERIOD clk = ~clk;
    end

    // send the data
    task send_the_flip_worst;
        input [UNIT_WIDTH-1:0]                  inp_unit_number;
        input [NEURON_NUM_WIDTH-1:0]            inp_offset;
        input signed [MEMBRANE_WIDTH-1:0]       inp_membrane;
        input                                   inp_add_membrane;

    begin
        // simulate generating a flip/spike
        flip                 = 1;
        unit_number          = inp_unit_number;
        offset               = inp_offset;
        membrane             = inp_membrane;
        add_membrane         = inp_add_membrane; 
        # CLK_PERIOD;
        unit_number = {UNIT_WIDTH{1'bX}};
        offset = {NEURON_NUM_WIDTH{1'bX}};
        membrane = {MEMBRANE_WIDTH{1'bX}};
        add_membrane = 1'bX;
        #CLK_PERIOD;
        flip = 0;
        #(2*CLK_PERIOD);    

    end

    endtask



    initial
    begin
        clk = 0;
        reset = 0;
        flip = 0;
        halt_scheduler = 0;
        unit_number = {UNIT_WIDTH{1'b0}};
        offset = {NEURON_NUM_WIDTH{1'b0}};
        membrane = {MEMBRANE_WIDTH{1'b0}};
        add_membrane = 1'b0;

        wait (clk);

        #CLK_PERIOD;
        reset = 1;

        # CLK_PERIOD;
        reset = 0;

        # (5 * CLK_PERIOD);
        // reset counter
        reset = 1;

        #CLK_PERIOD;
        reset = 0;

        #CLK_PERIOD;
        // simulate generating a flip/spike
        send_the_flip_worst(2'b00,2'b01,8,0);
        send_the_flip_worst(2'b00,2'b11,6,0);
        send_the_flip_worst(2'b00,2'b11,6,1);
        send_the_flip_worst(2'b00,2'b11,6,0);
        send_the_flip_worst(2'b01,2'b01,7,0); 
        send_the_flip_worst(2'b01,2'b11,5,0); 
        send_the_flip_worst(2'b01,2'b11,5,1);
        send_the_flip_worst(2'b01,2'b11,5,0);
        send_the_flip_worst(2'b10,2'b01,2,0);
        send_the_flip_worst(2'b10,2'b11,-1,0);

        #(40 * CLK_PERIOD);
        $finish;
    end

endmodule
