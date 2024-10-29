`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 07:23:52 PM
// Design Name: 
// Module Name: neuroSA_top_record_numbers
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


module neuroSA_top_record_numbers(  input                                  clk, 
                                    input                                  reset,
                                    input                                  halt,
                                    input [UNITS-1:0]                      write_ensemble_seed, 
                                    input [UNITS-1:0]                      write_flipping_seed,
                                    input [MEMBRANE_WIDTH-1:0]             membrane_data_in,
                                    input [3:0]                            neuron_state_in,
                                    input [UNITS-1:0]                      write_neuron_states,         
                                    output [SOLUTION_WIDTH-1:0]            found_solution_value);


    wire [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed;
    wire [LOG_NOISE_SOURCE_WIDTH-1:0]         flipping_seed;
    
    
    assign ensemble_seed = {NEURON_SEL_LFSR_WIDTH{1'b0}};
    assign flipping_seed = {(LOG_NOISE_SOURCE_WIDTH-1){1'b0}};
    
    // Parameters for the problem
    parameter int GRAPH_WIDTH                       = 800;
    parameter int UNITS                             = 25;
    parameter int NEURONS_PER_UNIT                  = GRAPH_WIDTH / UNITS;
    parameter int UNIT_WIDTH                        = $clog2(UNITS);
    parameter int NEURON_NUM_WIDTH                  = $clog2(NEURONS_PER_UNIT);
    parameter int PIPELINED_ROMs                    = 1;
    parameter int PIPELINED_ENSEMBLE_STORAGE        = 1;
    parameter int IDX_THAT_FIRED_WIDTH              = $clog2(GRAPH_WIDTH);
    parameter int USE_ROUND_ROBIN                   = 0;

    // Parameters (adjust these as needed for your tests)
    parameter int TEMP_INC_WIDTH                    = 16;
    parameter int MEMBRANE_WIDTH                    = 10;
    parameter int COUNTER_WIDTH                     = 40;
    parameter int NO_CLK_CYCLES_AFTER_UPDATE        = 4;
    parameter int SOLUTION_WIDTH                    = 16;

    parameter int USE_FLOAT_POINT                   = 0;
    parameter int REAL_WIDTH                        = 18;
    parameter int FRACTIONAL_PART                   = 8;

    parameter int NEURON_SEL_LFSR_WIDTH             = 5;
    parameter int LOG_NOISE_SOURCE_WIDTH            = 16;
    parameter int LOG_LUT_BIT_SIZE                  = 7; 

    
    parameter string LOG_NOISE_LUT_FILENAME         = "log_noise_LUT_fixed_7bit.mif";
    parameter int TEMPERATURE_LUT_WIDTH             = 9;
    parameter string TEMPERATURE_LUT_FILENAME       = "temperature_LUT_fixed_N9.mif";

    parameter int FLIPPING_OUTPUT_WIDTH             = 16;
 

    // Instantiate the module under test (MUT)
    neuroSA_machine #(
        .USE_ROUND_ROBIN(USE_ROUND_ROBIN),
        .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
        .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
        .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
        .COUNTER_WIDTH(COUNTER_WIDTH),
        .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
        .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
        .SOLUTION_WIDTH(SOLUTION_WIDTH),
        .USE_FLOAT_POINT(USE_FLOAT_POINT),
        .REAL_WIDTH(REAL_WIDTH),
        .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
        .FRACTIONAL_PART(FRACTIONAL_PART),
        .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
        .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
        .GRAPH_WIDTH(GRAPH_WIDTH),
        .UNITS(UNITS),
        .NEURONS_PER_UNIT(NEURONS_PER_UNIT),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
        .PIPELINED_ROMs(PIPELINED_ROMs),
        .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
        .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH)
    ) DUT (
        .clk(clk),
        .reset(reset),
        .halt(halt),
        .write_ensemble_seed(write_ensemble_seed),
        .write_flipping_seed(write_flipping_seed),
        .ensemble_seed(ensemble_seed),
        .flipping_seed(flipping_seed),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),
        .write_neuron_states(write_neuron_states),
        .found_solution_value(found_solution_value)
    );


endmodule
