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

    input wire [$clog2(GRAPH_WIDTH)-1:0]        index_of_neuron_that_fired,
    input wire                                  reset_module,
    input wire                                  halt,
    input wire                                  update_memory, 
    input wire                                  should_increment,
    input wire                                  clk, 
    
    input wire                                  write_ensemble_seed,
    input wire [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed,

    input wire                                  write_flipping_seed,
    input wire [LOG_NOISE_SOURCE_WIDTH-1:0]     flipping_seed,

    input wire                                  decrease_temp,

    input wire                                  write_neuron_state,
    input wire [MEMBRANE_WIDTH-1:0]             membrane_data_in,
    input wire [3:0]                            neuron_state_in,

    output wire                                  spike_reg,
    output wire [NEURON_NUM_WIDTH-1:0]           offset_reg,
    output wire [MEMBRANE_WIDTH-1:0]             membrane_reg,
    output wire                                  add_mem_reg,
    output wire [UNIT_WIDTH-1:0]                unit_number
);

    // Parameters for the problem
    localparam GRAPH_WIDTH                       = 800;
    localparam UNITS                             = 100;
    localparam NEURONS_PER_UNIT                  = GRAPH_WIDTH / UNITS;
    localparam UNIT_WIDTH                        = $clog2(UNITS);
    localparam NEURON_NUM_WIDTH                  = $clog2(NEURONS_PER_UNIT);
    localparam PIPELINED_ROMs                    = 1;
    localparam PIPELINED_ENSEMBLE_STORAGE        = 1;
    localparam IDX_THAT_FIRED_WIDTH              = $clog2(GRAPH_WIDTH);
    localparam USE_ROUND_ROBIN                   = 0;

    // Parameters (adjust these as needed for your tests)
    localparam TEMP_INC_WIDTH                    = 12;
    localparam MEMBRANE_WIDTH                    = 12;
    localparam COUNTER_WIDTH                     = 40;
    localparam NO_CLK_CYCLES_AFTER_UPDATE        = 4;
    localparam SOLUTION_WIDTH                    = 16;



    localparam NEURON_SEL_LFSR_WIDTH             = 8;
    localparam LOG_NOISE_SOURCE_WIDTH            = 8;


    localparam USE_FLOAT_POINT                   = 0;
    localparam REAL_WIDTH                        = 18;
    localparam FRACTIONAL_PART                   = 8;
        
    localparam LOG_LUT_BIT_SIZE                  = 7; 
    localparam LOG_NOISE_LUT_FILENAME         = "log_noise_fixed_width=18_frac_bits=8_nbits_of_lut=7.mif";
    
    
    localparam TEMPERATURE_LUT_WIDTH             = 7;
    localparam TEMPERATURE_LUT_FILENAME       = "temperature_fixed_width=18_frac_bits=8_nbits_of_lut=7.mif";

    localparam FLIPPING_OUTPUT_WIDTH             = 16;


    localparam UNIT_NO                               = 0;
    localparam GRAPH_DISTRIB_FILE                    = "adj_matrix_N800_A50_distributed0.mif";


    // Parameters (adjust these as needed for your tests)
    localparam USE_TRANSMIT_WITH_BUFF                = 1;
    localparam NO_OF_CLK_CYCLES_TO_PROPAGATE         = 1;
    localparam NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE   = 3;


        neuron_ensemble_with_memory_with_buff 
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
            .FRACTIONAL_PART(FRACTIONAL_PART),
            .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
            .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)
        )

            unit_inst(
                .clk(clk),
                .reset_module(reset_module),
                .halt(halt),
                .update_memory(update_memory),
                .should_increment(should_increment),
                .index_of_neuron_that_fired(index_of_neuron_that_fired),
                .write_ensemble_seed(write_ensemble_seed),
                .ensemble_seed(ensemble_seed),

                .write_flipping_seed(write_flipping_seed),
                .flipping_seed(flipping_seed),

                .decrease_temp(decrease_temp),

                .write_neuron_state(write_neuron_state),
                .membrane_data_in(membrane_data_in),
                .neuron_state_in(neuron_state_in),

                .spike_out(spike_reg),
                .unit_number(unit_number),
                .offset_out(offset_reg),
                .membrane_out(membrane_reg),
                .add_mem_out(add_mem_reg)
            );
endmodule
