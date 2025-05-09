`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 10:49:31 AM
// Design Name: 
// Module Name: tb_neuroSA_machine_verilog_wrapper_N8_A2
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


module tb_neuroSA_machine_verilog_wrapper_N8_A2();


localparam  USE_ROUND_ROBIN=0;
localparam  NEURON_SEL_LFSR_WIDTH=5;
localparam  MEMBRANE_WIDTH=10;
localparam  LOG_NOISE_SOURCE_WIDTH = 16;
localparam  LOG_LUT_BIT_SIZE = 8;
localparam  COUNTER_WIDTH=40;
localparam  TEMP_INC_WIDTH=12;
localparam  NO_CLK_CYCLES_AFTER_UPDATE=4;
localparam  SOLUTION_WIDTH=16;
localparam  USE_FLOAT_POINT=0;
localparam  REAL_WIDTH=18;
localparam  FLIPPING_OUTPUT_WIDTH=16;
localparam  FRACTIONAL_PART=9;
localparam  LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
localparam  TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif";
localparam  GRAPH_WIDTH = 8;
localparam  UNITS = 2;
localparam  UNIT_WIDTH = $clog2(UNITS);
localparam  NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS; // Example value
localparam  NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT);
localparam  TEMPERATURE_LUT_WIDTH=9;
localparam  PIPELINED_ROMs=1;
localparam  PIPELINED_ENSEMBLE_STORAGE=1;
localparam  IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH);
localparam  USE_TRANSMIT_WITH_BUFF=1;
localparam  NO_OF_CLK_CYCLES_TO_PROPAGATE=1;
localparam  NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=3;

localparam CLK_T = 10;

reg clk = 0;
reg reset = 1;
reg halt = 0;
reg [UNITS-1:0] write_ensemble_seed = 0;
reg [UNITS-1:0] write_flipping_seed = 0;
reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed = 0;
reg [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seed = 0;
reg [MEMBRANE_WIDTH-1:0] membrane_data_in = 0;
reg [3:0] neuron_state_in = 0;
reg [NEURON_NUM_WIDTH-1:0] idx_to_write = 0;
reg [UNITS-1:0] write_neuron_states = 0;
wire [SOLUTION_WIDTH-1:0] found_solution_value; 

neuroSA_machine_verilog_wrapper_N8_A2 #(.USE_ROUND_ROBIN(USE_ROUND_ROBIN),
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
                                        .NEURONS_PER_UNIT(NEURONS_PER_UNIT), 
                                        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
                                        .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
                                        .PIPELINED_ROMs(PIPELINED_ROMs),
                                        .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
                                        .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH),
                                        .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
                                        .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
                                        .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE))
                                        DUT
                                            (.clk(clk), 
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
                                             

    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seeds [0 : UNITS-1];
    reg [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seeds [0 : UNITS-1];

    integer fd;

    // Initialize ata arrays (membrane voltages)
    reg [MEMBRANE_WIDTH-1:0] membranes[0:GRAPH_WIDTH-1];       

    initial 
    begin
        $readmemh("membrane_data_N8.mif", membranes);
        $readmemb("ensemble_seeds.mif", ensemble_seeds);        
        $readmemb("noise_seeds.mif", flipping_seeds);
        fd = $fopen("verilog_simulation_results", "w");
    end
                                             

    always 
    begin
        #(CLK_T / 2) clk = ~clk;
    end

    integer i = 0, j= 0;
    initial 
    begin
        // wait 150ns for global reset 
        #150;

        // remove the global reset 
        reset <= 0;

        // start writing the values 
        halt <= 1;
        repeat (3) @(posedge clk); 

        // write the seed 
        for (i = 0; i < UNITS; i = i + 1)
        begin
            write_ensemble_seed <= 0;
            write_ensemble_seed[i] <= 1;
            write_flipping_seed <= 0;
            write_flipping_seed[i] <= 1;

            ensemble_seed <= ensemble_seeds[i];
            flipping_seed <= flipping_seeds[i];
            @(posedge clk);
        end
        
        // program the membrane data 

        for (i = 0; i < UNITS; i = i + 1)
        begin
            write_neuron_states <= 0;
            write_neuron_states[i] <= 1;

            for (j = 0; j < NEURONS_PER_UNIT; j = j + 1)
            begin
                idx_to_write <= j;
                membrane_data_in <= membranes[i * NEURONS_PER_UNIT + j];
                neuron_state_in <= 4'b0010;
                @(posedge clk);
            end
        end
        
        // unhalt the machine
        write_neuron_states <= 0;
        halt <= 0;

        repeat (50) @(posedge clk);
        $fclose(fd);
        $finish;
    end



endmodule
