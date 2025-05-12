`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 05:20:09 PM
// Design Name: 
// Module Name: neuroSA_comm_wrapper_large_problem
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 05:19:34 PM
// Design Name: 
// Module Name: neuroSA_comm_wrapper
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


module neuroSA_comm_wrapper_large_problem   #(parameter USE_ROUND_ROBIN=0,
                                              parameter NEURON_SEL_LFSR_WIDTH=9,
                                              parameter MEMBRANE_WIDTH=10,
                                              parameter LOG_NOISE_SOURCE_WIDTH = 16,
                                              parameter LOG_LUT_BIT_SIZE = 8, 
                                              parameter COUNTER_WIDTH=40,
                                              parameter TEMP_INC_WIDTH=12,
                                              parameter NO_CLK_CYCLES_AFTER_UPDATE=4,
                                              parameter SOLUTION_WIDTH=16,
                                              parameter USE_FLOAT_POINT=0,
                                              parameter REAL_WIDTH=18,
                                              parameter FLIPPING_OUTPUT_WIDTH=16,
                                              parameter FRACTIONAL_PART=9,
                                              parameter LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif",
                                              parameter TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif",
                                              parameter GRAPH_WIDTH = 800,
                                              parameter UNITS = 25,
                                              parameter UNIT_WIDTH = $clog2(UNITS),
                                              parameter NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS, // Example value
                                              parameter NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT),
                                              parameter TEMPERATURE_LUT_WIDTH=9,
                                              parameter PIPELINED_ROMs=1,
                                              parameter PIPELINED_ENSEMBLE_STORAGE=1,
                                              parameter IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH),
                                              parameter USE_TRANSMIT_WITH_BUFF=1,
                                              parameter NO_OF_CLK_CYCLES_TO_PROPAGATE=1,
                                              parameter NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=3)
                
                                                            (input clk,
                                                             input [1:0]                                            reg1,
                                                             input [UNITS-1:0]                                      reg2,
                                                             input [UNITS-1:0]                                      reg3,
                                                             input [LOG_NOISE_SOURCE_WIDTH-1:0]                     reg4,
                                                             input [NEURON_SEL_LFSR_WIDTH-1:0]                      reg5,
                                                             input [(MEMBRANE_WIDTH+3):0]                           reg6,
                                                             input [NEURON_NUM_WIDTH-1:0]                           reg7,
                                                             output [(SOLUTION_WIDTH-1):0]                          reg8);
                
            
 wire                                  reset;
 wire                                  halt;
 wire [UNITS-1:0]                      write_ensemble_seed; 
 wire [UNITS-1:0]                      write_flipping_seed;
 wire [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed;
 wire [LOG_NOISE_SOURCE_WIDTH-1:0]     flipping_seed;
 wire [MEMBRANE_WIDTH-1:0]             membrane_data_in;
 wire [3:0]                            neuron_state_in;
 wire [NEURON_NUM_WIDTH-1:0]           idx_to_write;
 wire [UNITS-1:0]                      write_neuron_states;        
 wire [SOLUTION_WIDTH-1:0]            found_solution_value;
 
 assign reset = ~reg1[0];
 assign halt = ~reg1[1];
 
 assign write_ensemble_seed = reg2;
 assign write_flipping_seed = reg2;
 assign write_neuron_states = reg3;
 
 assign ensemble_seed = reg4;
 assign flipping_seed = reg5;

 assign membrane_data_in = reg6[MEMBRANE_WIDTH-1:0];
 assign neuron_state_in = reg6[MEMBRANE_WIDTH+3:MEMBRANE_WIDTH];

 assign idx_to_write = reg7;
 
assign reg8 = found_solution_value;


neuroSA_machine#(.USE_ROUND_ROBIN(USE_ROUND_ROBIN),
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
                 .UNIT_WIDTH(UNIT_WIDTH),
                 .NEURONS_PER_UNIT(NEURONS_PER_UNIT), // Example value
                 .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
                 .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
                 .PIPELINED_ROMs(PIPELINED_ROMs),
                 .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
                 .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH),
                 .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
                 .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
                 .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE))                  
                 NEURO_SA(.clk(clk), 
                          .reset(reset),
                          .halt(halt),
                          .write_ensemble_seed(write_ensemble_seed), 
                          .write_flipping_seed(write_flipping_seed),
                          .ensemble_seed(ensemble_seed),
                          .flipping_seed(flipping_seed),
                          .membrane_data_in(membrane_data_in),
                          .neuron_state_in(neuron_state_in),
                          .idx_to_write(idx_to_write),
                          .write_neuron_states(write_neuron_states),         
                          .found_solution_value(found_solution_value));



endmodule
