`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:01:24 PM
// Design Name: 
// Module Name: ensemble_unit_top_for_record_numbers
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


module ensemble_unit_top_for_record_numbers(

    input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,

    input wire reset_module,
    input wire halt,
    input wire update_memory, 
    input wire should_increment,

    input wire clk, 
    
    input wire write_ensemble_seed,
    input wire [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed,

    input wire write_flipping_seed,
    input wire [NOISE_SOURCE_WIDTH-1:0] flipping_seed,

    input wire decrease_temp,

    input wire write_neuron_state,
    input wire [MEMBRANE_WIDTH-1:0] membrane_data_in,
    input wire [3:0] neuron_state_in,

    output wire                                  spike,
    output wire [UNIT_WIDTH-1:0]                 unit_number,
    output wire [NEURON_WIDTH-1:0]               offset,
    output wire [MEMBRANE_WIDTH-1:0]             membrane,
    output wire                                  add_mem
);

// modifying these parameters should reproduce the numbers from figure 2 from publication
localparam GRAPH_WIDTH = 800;
localparam NEURON_SEL_LFSR_WIDTH=5;
localparam NEURON_WIDTH=5;

// Change REAL_WIDTH=16 when using USE_FLOAT_POINT=1, 
// or REAL_WIDTH=18 when USE_FLOAT_POINT=0
localparam USE_FLOAT_POINT=0;
localparam REAL_WIDTH=18;


localparam GRAPH_DISTRIB_FILE = "adj_matrix_distributed0.mif";
localparam UNIT_WIDTH=2;
localparam UNIT_NO=0;
localparam MEMBRANE_WIDTH=16;
localparam NOISE_SOURCE_WIDTH=7;
localparam FLIPPING_OUTPUT_WIDTH=16;
localparam LOG_NOISE_LUT_FILENAME="log_noise_LUT_fixed.mif";
localparam TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed.mif";
localparam TEMPERATURE_LUT_WIDTH=7;
localparam PIPELINED_ROMs=1;
localparam PIPELINED_ENSEMBLE_STORAGE=1;
localparam FIXED_TOTAL_WIDTH=18;
localparam FRACTIONAL_PART=8;


neuron_ensemble_with_memory
#(.GRAPH_WIDTH(GRAPH_WIDTH),
    .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE),
    .UNIT_WIDTH(UNIT_WIDTH),
    .UNIT_NO(UNIT_NO),
    .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
    .NEURON_WIDTH(NEURON_WIDTH),
    .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
    .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
    .REAL_WIDTH(REAL_WIDTH),
    .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
    .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
    .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
    .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
    .PIPELINED_ROMs(PIPELINED_ROMs),
    .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
    .USE_FLOAT_POINT(USE_FLOAT_POINT),
    .FIXED_TOTAL_WIDTH(FIXED_TOTAL_WIDTH),
    .FRACTIONAL_PART(FRACTIONAL_PART)
    )
    dut
    (.index_of_neuron_that_fired(index_of_neuron_that_fired),
        .reset_module(reset_module),
        .halt(halt),
        .update_memory(update_memory),
        .should_increment(should_increment),
        .clk(clk),
        .write_ensemble_seed(write_ensemble_seed),
        .ensemble_seed(ensemble_seed),
        .write_flipping_seed(write_flipping_seed),
        .flipping_seed(flipping_seed),
        .decrease_temp(decrease_temp),
        .write_neuron_state(write_neuron_state),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),
        .spike(spike),
        .unit_number(unit_number),
        .offset(offset),
        .membrane(membrane),
        .add_mem(add_mem)
    );


endmodule
