`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 05:12:36 PM
// Design Name: 
// Module Name: neuroSA_machine
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


module neuroSA_machine
#(
    parameter int USE_ROUND_ROBIN=1,
    parameter int NEURON_SEL_LFSR_WIDTH=3,
    parameter int MEMBRANE_WIDTH=10,
    parameter int LOG_NOISE_SOURCE_WIDTH = 16,
    parameter int LOG_LUT_BIT_SIZE = 7, 
    parameter int COUNTER_WIDTH=40,
    parameter int TEMP_INC_WIDTH=16,
    parameter int NO_CLK_CYCLES_AFTER_UPDATE=3,
    parameter int SOLUTION_WIDTH=16,
    parameter int USE_FLOAT_POINT=0,
    parameter int REAL_WIDTH=18,
    parameter int FLIPPING_OUTPUT_WIDTH=10,
    parameter int FRACTIONAL_PART=8,
    parameter string LOG_NOISE_LUT_FILENAME="log_noise_LUT_fixed.mif",
    parameter string TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed.mif",
    parameter int GRAPH_WIDTH = 800,
    parameter int UNITS = 25,
    parameter int UNIT_WIDTH = $clog2(UNITS),
    parameter int NEURONS_PER_UNIT = GRAPH_WIDTH / UNIT_WIDTH, // Example value
    parameter int NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT),
    parameter int TEMPERATURE_LUT_WIDTH=7,
    parameter int PIPELINED_ROMs=1,
    parameter int PIPELINED_ENSEMBLE_STORAGE=1,
    parameter int IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH)
)
(input                                  clk, 
 input                                  reset,
 input                                  halt,
 input [UNITS-1:0]                      write_ensemble_seed, 
 input [UNITS-1:0]                      write_flipping_seed,
 input [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed,
 input [LOG_NOISE_SOURCE_WIDTH-1:0]     flipping_seed,
 input [MEMBRANE_WIDTH-1:0]             membrane_data_in,
 input [3:0]                            neuron_state_in,
 input [UNITS-1:0]                      write_neuron_states,         
 output [SOLUTION_WIDTH-1:0]            found_solution_value);


// Signals for interaction with units
wire                                      halt_modules;
wire [IDX_THAT_FIRED_WIDTH-1:0]           idx_that_fired;
wire                                      reset_module, update_memory, should_increment;
wire                                      decrease_temp;

// Arrays for units
wire [UNITS-1:0]                          spikes;
wire [UNITS*UNIT_WIDTH-1:0]               all_unit_numbers;
wire [UNITS*NEURON_NUM_WIDTH-1:0]         offsets;
wire [UNITS*MEMBRANE_WIDTH-1:0]           all_membranes;
wire [UNITS-1:0]                          add_mems;

// Outputs from selector
wire                                      spiked;
wire [UNIT_WIDTH-1:0]                     unit_numb;
wire [NEURON_NUM_WIDTH-1:0]               offset;
wire [MEMBRANE_WIDTH-1:0]                 membrane;
wire                                      add_mem;


// Generate the Units using generate block
genvar i;

generate
    for (i = 0; i < UNITS; i = i + 1)
    begin : unit_gen

        localparam int UNIT_NO = i;
        localparam string GRAPH_DISTRIB_FILE = $sformatf("adj_matrix_N%0d_A%0d_distributed%0d.mif", GRAPH_WIDTH, UNITS,  UNIT_NO);

        neuron_ensemble_with_memory 
        #(
            .UNIT_NO(UNIT_NO),
            .GRAPH_WIDTH(GRAPH_WIDTH),
            .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE),
            .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
            .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE), 
            .UNIT_WIDTH(UNIT_WIDTH),
            .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
            .NEURON_WIDTH(NEURON_NUM_WIDTH),
            .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
            .REAL_WIDTH(REAL_WIDTH),
            .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
            .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
            .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
            .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
            .PIPELINED_ROMs(PIPELINED_ROMs),
            .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
            .USE_FLOAT_POINT(USE_FLOAT_POINT),
            .FRACTIONAL_PART(FRACTIONAL_PART)
        )

            unit_inst(
                .clk(clk),
                .reset_module(reset_module),
                .halt(halt_modules),
                .update_memory(update_memory),
                .should_increment(should_increment),
                .index_of_neuron_that_fired(idx_that_fired),
                .write_ensemble_seed(write_ensemble_seed[i]),
                .ensemble_seed(ensemble_seed),

                .write_flipping_seed(write_flipping_seed[i]),
                .flipping_seed(flipping_seed),

                .decrease_temp(decrease_temp),

                .write_neuron_state(write_neuron_states[i]),
                .membrane_data_in(membrane_data_in),
                .neuron_state_in(neuron_state_in),

                .spike_reg(spikes[i]),
                .unit_number(all_unit_numbers[((i+1)*UNIT_WIDTH)-1 -: UNIT_WIDTH]),
                .offset_reg(offsets[((i+1)*NEURON_NUM_WIDTH)-1 -: NEURON_NUM_WIDTH]),
                .membrane_reg(all_membranes[((i+1)*MEMBRANE_WIDTH)-1 -: MEMBRANE_WIDTH]),
                .add_mem_reg(add_mems[i])
            );
    end
endgenerate


if (USE_ROUND_ROBIN == 1)
begin
    round_robin_priority_selector #(.UNITS(UNITS),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH))
        selector(
                .reset(reset),
                .clk(clk),
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
end
else 
begin
    simple_priority_selector
        #(.UNITS(UNITS),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH))
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
end

scheduler 
#(
    .UNIT_WIDTH(UNIT_WIDTH),
    .GRAPH_WIDTH(GRAPH_WIDTH),
    .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
    .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
    .COUNTER_WIDTH(COUNTER_WIDTH),
    .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
    .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
    .SOLUTION_WIDTH(SOLUTION_WIDTH)
)
scheduler_instance(
    .clk(clk),
    .reset(reset),
    .halt_scheduler(halt),

    .flip(spiked),
    .unit_number(unit_numb),
    .offset(offset),
    .membrane(membrane),
    .add_membrane(add_mem),

    .index_of_neuron_that_fired(idx_that_fired),
    .reset_modules(reset_module),
    .halt_modules(halt_modules),
    .update_memories(update_memory),
    .should_increment(should_increment),
    .decrease_temp(decrease_temp),
    .cuts_best_transmit(found_solution_value)
);



endmodule
