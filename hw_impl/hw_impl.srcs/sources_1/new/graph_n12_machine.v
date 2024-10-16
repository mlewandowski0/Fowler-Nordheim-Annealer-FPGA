`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 04:11:45 PM
// Design Name: 
// Module Name: graph_n12_machine
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


module graph_n12_machine
      #(
          parameter NEURON_SEL_LFSR_WIDTH=3,
          parameter MEMBRANE_WIDTH=16,
          parameter NOISE_SOURCE_WIDTH=6,
          parameter COUNTER_WIDTH=40,
          parameter TEMP_INC_WIDTH=16,
          parameter NO_CLK_CYCLES_AFTER_UPDATE=3,
          parameter SOLUTION_WIDTH=16
      )
                        (input                              clk, 
                         input                              reset,
                         input                              halt,
                         input [2:0]                        write_ensemble_seed, 
                         input [2:0]                        write_flipping_seed,
                         input [NEURON_SEL_LFSR_WIDTH-1:0]  ensemble_seed,
                         input [NOISE_SOURCE_WIDTH-1:0]     flipping_seed,
                         input [MEMBRANE_WIDTH-1:0]         membrane_data_in,
                         input [3:0]                        neuron_state_in,
                         input [2:0]                        write_neuron_states

                         );

    

    localparam GRAPH_WIDTH = 12;
    localparam GRAPH_DISTRIB_FILE_0 = "adj_matrix_distributed0.mif";
    localparam GRAPH_DISTRIB_FILE_1 = "adj_matrix_distributed1.mif";
    localparam GRAPH_DISTRIB_FILE_2 = "adj_matrix_distributed2.mif";

    localparam UNITS = 3;
    localparam UNIT_WIDTH=2;
    localparam NEURON_NUM_WIDTH=2;
    localparam LUT_FLIPPING_WIDTH=16;
    localparam LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif";
    localparam TEMPERATURE_LUT_FILENAME="temperature_LUT.mif";
    localparam TEMPERATURE_LUT_WIDTH=7;
    localparam PIPELINED_ROMs=1;
    localparam PIPELINED_ENSEMBLE_STORAGE=1;
    localparam IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH);



    wire [IDX_THAT_FIRED_WIDTH-1:0]         idx_that_fired;
    wire                                    reset_module, update_memory, should_increment;
    wire                                     decrease_temp;

    // Instantiate the ensemble
    wire [UNITS-1:0]                        spikes;
    wire [UNITS*UNIT_WIDTH-1:0]             all_unit_numbers;
    wire [UNITS * NEURON_NUM_WIDTH-1:0]     offsets;
    wire [UNITS * MEMBRANE_WIDTH-1:0]       all_membranes;
    wire [UNITS-1:0]                        add_mems;


    wire                                    spiked; 
    wire [UNIT_WIDTH-1:0]                   unit_numb;
    wire [NEURON_NUM_WIDTH-1:0]             offset;
    wire [MEMBRANE_WIDTH-1:0]               membrane;
    wire                                    add_mem;

    neuron_ensemble_with_memory 
    #(.UNIT_NO(0),
      .GRAPH_WIDTH(GRAPH_WIDTH),
      .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE_0),
      .UNIT_WIDTH(UNIT_WIDTH),
      .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
      .NEURON_WIDTH(NEURON_NUM_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
      .LUT_FLIPPING_WIDTH(LUT_FLIPPING_WIDTH),
      .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
      .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
      .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
      .PIPELINED_ROMs(PIPELINED_ROMs),
      .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE))
    
    unit0(
        .clk(clk),
        .index_of_neuron_that_fired(idx_that_fired),
        .reset_module(reset_module),
        .halt(halt),
        .update_memory(update_memory),
        .should_increment(should_increment),
        
        .write_ensemble_seed(write_ensemble_seed[0]),
        .ensemble_seed(ensemble_seed),

        .write_flipping_seed(write_flipping_seed[0]),
        .flipping_seed(flipping_seed),

        .decrease_temp(decrease_temp),

        .write_neuron_state(write_neuron_states[0]),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .spike(spikes[0]),
        .unit_number(all_unit_numbers[UNIT_WIDTH-1 -: UNIT_WIDTH]),
        .offset(offsets[NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH]),
        .membrane(all_membranes[MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH]),
        .add_mem(add_mems[0])
    );


    neuron_ensemble_with_memory 
    #(.UNIT_NO(1),
      .GRAPH_WIDTH(GRAPH_WIDTH),
      .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE_1),
      .UNIT_WIDTH(UNIT_WIDTH),
      .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
      .NEURON_WIDTH(NEURON_NUM_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
      .LUT_FLIPPING_WIDTH(LUT_FLIPPING_WIDTH),
      .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
      .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
      .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
      .PIPELINED_ROMs(PIPELINED_ROMs),
      .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE))
    
    unit1(
        .clk(clk),
        .index_of_neuron_that_fired(idx_that_fired),
        .reset_module(reset_module),
        .halt(halt),
        .update_memory(update_memory),
        .should_increment(should_increment),
        
        .write_ensemble_seed(write_ensemble_seed[1]),
        .ensemble_seed(ensemble_seed),

        .write_flipping_seed(write_flipping_seed[1]),
        .flipping_seed(flipping_seed),

        .decrease_temp(decrease_temp),

        .write_neuron_state(write_neuron_states[1]),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .spike(spikes[1]),
        .unit_number(all_unit_numbers[2 * UNIT_WIDTH-1 -: UNIT_WIDTH]),
        .offset(offsets[2*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH]),
        .membrane(all_membranes[2*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH]),
        .add_mem(add_mems[1])
    );  

    neuron_ensemble_with_memory 
    #(.UNIT_NO(2),
      .GRAPH_WIDTH(GRAPH_WIDTH),
      .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE_1),
      .UNIT_WIDTH(UNIT_WIDTH),
      .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
      .NEURON_WIDTH(NEURON_NUM_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
      .LUT_FLIPPING_WIDTH(LUT_FLIPPING_WIDTH),
      .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
      .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
      .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
      .PIPELINED_ROMs(PIPELINED_ROMs),
      .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE))
    
    unit2(
        .clk(clk),
        .index_of_neuron_that_fired(idx_that_fired),
        .reset_module(reset_module),
        .halt(halt),
        .update_memory(update_memory),
        .should_increment(should_increment),
        
        .write_ensemble_seed(write_ensemble_seed[2]),
        .ensemble_seed(ensemble_seed),

        .write_flipping_seed(write_flipping_seed[2]),
        .flipping_seed(flipping_seed),

        .decrease_temp(decrease_temp),

        .write_neuron_state(write_neuron_states[2]),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .spike(spikes[2]),
        .unit_number(all_unit_numbers[3 * UNIT_WIDTH-1 -: UNIT_WIDTH]),
        .offset(offsets[3*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH]),
        .membrane(all_membranes[3*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH]),
        .add_mem(add_mems[2])
    );  

    simple_priority_selector 
    #(
        .UNITS(UNITS),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH)
    )
    selector(
        .spikes(spikes),
        .all_unit_numbers(all_unit_numbers),
        .offsets(offsets),
        .all_membranes(all_membranes),
        .add_mems(add_mems),
        .spiked(spiked),
        .unit_numb(unit_numb),
        .offset(offset),
        .membrane(membrane),
        .add_mem(add_mem)
    );


  scheduler 
    #(.UNIT_WIDTH(UNIT_WIDTH),
      .GRAPH_WIDTH(GRAPH_WIDTH),
      .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .COUNTER_WIDTH(COUNTER_WIDTH),
      .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
      .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
      .SOLUTION_WIDTH(SOLUTION_WIDTH))

    scheduler_instance(
      .clk(clk),
      .reset(reset),
      .flip(spiked),
      .unit_number(unit_numb),
      .offset(offset),
      .membrane(membrane),
      .add_membrane(add_mem),

      .index_of_neuron_that_fired(idx_that_fired),
      .reset_modules(reset_module),
      .halt_modules(halt),
      .update_memories(update_memory),
      .should_increment(should_increment),
      .decrease_temp(decrease_temp)
    );




endmodule
