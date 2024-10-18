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


    localparam GRAPH_WIDTH = 800;
    localparam NEURON_SEL_LFSR_WIDTH=4;
    localparam NEURON_WIDTH=2;           // 4 units


    localparam GRAPH_DISTRIB_FILE = "G15distr_N=800_A=16_0.mif";
    localparam UNIT_WIDTH=2;
    localparam UNIT_NO=0;
    localparam MEMBRANE_WIDTH=16;
    localparam NOISE_SOURCE_WIDTH=6;
    localparam LUT_FLIPPING_WIDTH=16;
    localparam LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif";
    localparam TEMPERATURE_LUT_FILENAME="temperature_LUT.mif";
    localparam TEMPERATURE_LUT_WIDTH=7;
    localparam PIPELINED_ROMs=1;
    localparam PIPELINED_ENSEMBLE_STORAGE=1;

neuron_ensemble_with_memory
#(.GRAPH_WIDTH(GRAPH_WIDTH),
  .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE),
  .UNIT_WIDTH(UNIT_WIDTH),
  .UNIT_NO(UNIT_NO),
  .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
  .NEURON_WIDTH(NEURON_WIDTH),
  .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
  .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
  .LUT_FLIPPING_WIDTH(LUT_FLIPPING_WIDTH),
  .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
  .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
  .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
  .PIPELINED_ROMs(PIPELINED_ROMs),
  .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE))

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
