`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 01:01:45 AM
// Design Name: 
// Module Name: neuroSA_machine_N800_U25_tb
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


module neuroSA_machine_N800_U25_tb();


    //    
    parameter string FILE_TO_SAVE                   = "neuroSA_machine_N=800_A25_tb.txt";
    parameter string PLOT_FIG_SAVE                  = "neuroSA_machine_N=800_A25_tb_sol_vs_clk.txt";

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
    parameter int TEMP_INC_WIDTH                    = 18;
    parameter int NEURON_SEL_LFSR_WIDTH             = 5;
    parameter int MEMBRANE_WIDTH                    = 16;
    parameter int COUNTER_WIDTH                     = 40;
    parameter int NO_CLK_CYCLES_AFTER_UPDATE        = 4;
    parameter int SOLUTION_WIDTH                    = 16;

    parameter int USE_FLOAT_POINT                   = 0;
    parameter int REAL_WIDTH                        = 18;
    parameter int FRACTIONAL_PART                   = 8;

    parameter int NOISE_SOURCE_WIDTH                = 7;
    parameter string LOG_NOISE_LUT_FILENAME         = "log_noise_LUT_fixed_7bit.mif";

    parameter int TEMPERATURE_LUT_WIDTH             = 7;
    parameter string TEMPERATURE_LUT_FILENAME       = "temperature_LUT_fixed_N7.mif";

    parameter int FLIPPING_OUTPUT_WIDTH             = 16;
    
    // Clock paramaters
    parameter int HALF_CLK_PERIOD = 10;
    parameter int CLK_PERIOD = 2 * HALF_CLK_PERIOD;



    // values helpful for simulation
    logic                             SIMULATION_RUNNING;   
    integer                           decrease_temperature_no;
    integer                           fd, fd2;  
    integer                           SPIKES_CNT = 0;
 

    // clock and reset singlas 
    logic clk;
    logic reset;
    logic halt;

    // Input stimuli
    logic [UNITS-1:0] write_ensemble_seed;
    logic [UNITS-1:0] write_flipping_seed;
    logic [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;
    logic [NOISE_SOURCE_WIDTH-1:0] flipping_seed;
    logic [MEMBRANE_WIDTH-1:0] membrane_data_in;
    logic [3:0] neuron_state_in;
    logic [UNITS-1:0] write_neuron_states;

    // Output
    logic [SOLUTION_WIDTH-1:0] found_solution_value;

    // Instantiate the module under test (MUT)
    neuroSA_machine #(
        .USE_ROUND_ROBIN(USE_ROUND_ROBIN),
        .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
        .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
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


    // Initialize ata arrays (membrane voltages)
    int data_arrays [0:24][0:31];
        
    

    initial 
    begin
        data_arrays[0]  = {78,86,89,121,120,153,43,83,57,51,44,15,18,73,59,55,56,61,60,20,25,53,44,35,38,32,19,25,19,20,21,30};
        data_arrays[1]  = {33,17,40,33,14,36,28,25,22,14,24,32,25,43,29,31,34,17,26,19,21,16,20,27,21,35,42,28,12,15,17,33};
        data_arrays[2]  = {17,10,21,22,28,16,32,28,20,18,7,10,15,33,27,19,16,20,20,26,25,16,26,26,11,17,16,20,17,31,18,24};
        data_arrays[3]  = {18,10,25,23,13,12,12,13,14,21,14,15,19,9,13,12,19,11,11,8,17,17,26,21,11,14,10,20,9,11,23,16};
        data_arrays[4]  = {9,11,17,9,16,13,14,14,12,8,23,16,21,11,14,18,17,14,17,10,18,11,19,16,9,9,13,8,9,18,19,8};
        data_arrays[5]  = {8,7,10,9,10,10,11,13,12,10,12,22,10,8,16,20,13,15,7,20,12,27,13,10,12,13,13,10,12,7,17,10};
        data_arrays[6]  = {15,12,9,11,8,7,9,14,11,13,15,13,8,11,11,12,10,10,13,10,12,12,9,10,13,5,11,11,20,11,14,10};
        data_arrays[7]  = {11,13,13,13,7,13,13,13,6,12,9,9,11,7,9,11,14,11,11,7,15,11,16,10,13,8,11,10,9,12,6,8};
        data_arrays[8]  = {9,11,9,9,8,7,12,9,15,12,8,16,9,11,15,7,10,10,14,8,10,10,10,8,7,8,10,9,8,10,12,14};
        data_arrays[9]  = {14,10,10,9,6,9,13,9,9,10,6,9,10,11,12,12,17,11,8,14,10,12,8,11,8,8,15,6,8,11,9,12};
        data_arrays[10] = {8,11,9,11,7,14,12,11,10,11,8,10,7,8,7,7,9,7,7,8,12,7,7,8,7,10,6,6,10,8,7,9};
        data_arrays[11] = {10,7,9,10,7,8,9,11,10,7,6,11,6,9,6,6,7,8,7,7,7,8,10,12,12,7,7,15,8,8,6,12};
        data_arrays[12] = {13,8,7,9,10,9,9,7,9,8,7,7,6,8,6,12,10,6,8,11,12,9,6,6,10,7,11,8,7,6,6,7};
        data_arrays[13] = {12,13,6,8,8,11,9,8,13,9,10,9,8,8,7,8,10,8,10,9,7,7,6,8,7,7,7,7,10,7,10,8};
        data_arrays[14] = {6,6,7,7,6,9,7,6,9,7,8,9,6,10,6,7,6,5,10,7,6,9,8,6,8,7,13,6,7,10,8,7};
        data_arrays[15] = {9,9,6,6,8,7,9,8,13,5,7,7,6,7,9,6,9,6,10,6,9,8,9,6,6,7,8,7,8,8,7,6};
        data_arrays[16] = {6,6,6,9,7,6,6,8,7,7,9,8,8,6,6,7,6,8,8,6,8,6,7,9,7,8,6,8,7,6,6,9};
        data_arrays[17] = {7,7,6,7,9,5,6,6,9,7,6,7,7,7,8,8,6,7,7,6,9,8,7,7,7,6,7,5,6,9,6,6};
        data_arrays[18] = {7,6,6,8,6,10,5,7,7,7,6,7,7,6,6,8,7,7,8,8,6,6,5,6,7,6,7,6,7,8,6,5};
        data_arrays[19] = {9,9,7,7,6,7,6,11,6,6,6,7,6,6,7,8,6,8,5,6,6,6,6,7,4,6,7,6,7,8,7,6};
        data_arrays[20] = {6,6,6,10,10,6,7,6,7,6,5,6,7,8,6,6,6,5,8,6,7,6,6,6,6,6,7,8,6,6,6,7};
        data_arrays[21] = {7,8,6,7,6,6,8,7,7,5,6,6,7,6,7,6,6,6,6,7,6,6,5,7,6,7,6,6,8,7,6,5};
        data_arrays[22] = {6,8,6,7,6,7,6,6,6,6,6,9,6,6,6,6,8,6,7,6,6,6,7,6,6,6,6,6,6,6,6,6};
        data_arrays[23] = {6,7,5,6,6,6,7,6,6,6,6,6,6,6,7,6,6,6,7,7,6,6,6,6,6,6,7,6,6,5,5,6};
        data_arrays[24] = {6,6,6,6,6,6,6,6,6,6,6,6,6,5,6,6,7,7,6,6,6,6,6,6,7,6,6,6,6,6,6,6};        
    end

    // Clock generation
    initial begin
        clk = 0;
    end

    always 
    begin 
        #HALF_CLK_PERIOD clk = ~clk;
    end
    
    int clk_counter = 0;

    always @(posedge clk)
    begin
        clk_counter = clk_counter + 1;
    end

    always @(found_solution_value)
    begin
        $fdisplay(fd2, "%d,%d", clk_counter, found_solution_value);
    end

    integer val;
    // Initial block to drive inputs 
    initial
    begin

        fd  = $fopen(FILE_TO_SAVE, "w");
        fd2 = $fopen(PLOT_FIG_SAVE, "w");

        decrease_temperature_no = 0;
        reset = 0;
        halt = 0;
        write_ensemble_seed = '0;
        write_flipping_seed = '0;
        write_neuron_states = '0;
        neuron_state_in     = 4'b0010;

        #(2 * CLK_PERIOD);
        reset = 1;
        #CLK_PERIOD;
        reset = 0;
        halt = 1;

        #(2 * CLK_PERIOD);
        write_ensemble_seed     = '1; // Write to all units
        write_flipping_seed     = '1;
        

        for (int unit = 0; unit < 25; unit++)
        begin
            write_ensemble_seed = '0;
            write_ensemble_seed[unit] = 1;
            
            write_flipping_seed = '0;
            write_flipping_seed[unit] = 1;
            
            for (int i = 0; i < 2; i++)
            begin
                ensemble_seed = $urandom_range((1 << NEURON_SEL_LFSR_WIDTH) - 1, 0);
                flipping_seed = $urandom_range((1 << NOISE_SOURCE_WIDTH) - 1, 0);
            end
            #CLK_PERIOD;
            
        end

        neuron_state_in         = 4'b0010;   

        ensemble_seed           = {NEURON_SEL_LFSR_WIDTH{1'b0}};
        flipping_seed           = {NOISE_SOURCE_WIDTH{1'b0}};

        // program the membranes
        #CLK_PERIOD;
        write_ensemble_seed = '0;
        write_flipping_seed = '0;

        for (int unit = 0; unit < 25; unit++)
        begin
            // set write_neuron_States to target the current unit
            write_neuron_states = {UNITS{1'b0}};
            write_neuron_states[unit] = 1;

            // write neuron states to the unit
            for (int i = 0; i < 32; ++i)
            begin
                    membrane_data_in = data_arrays[unit][i];
                    #CLK_PERIOD;
            end
        end

        #CLK_PERIOD;
        write_neuron_states = {UNITS{1'b0}};
        halt = 0;
        SIMULATION_RUNNING = 1;

        // #(10_000_000 * CLK_PERIOD);
        #(100_000 * CLK_PERIOD);
        $fclose(fd);
        $fclose(fd2);
        $finish;
    end

    // Monitor decrease_temp signal
    always @(posedge DUT.decrease_temp) begin
        decrease_temperature_no = decrease_temperature_no + 1;
    end

    // Monitor update_memory signal

    always @(posedge DUT.update_memory) begin
        if (DUT.scheduler_instance.should_increment)
            $fdisplay(fd, "%d, %d, %d", DUT.idx_that_fired, -$signed(DUT.scheduler_instance.membrane_reg), DUT.scheduler_instance.curr_cuts);
        else 
            $fdisplay(fd, "%d, %d, %d", DUT.idx_that_fired, $signed(DUT.scheduler_instance.membrane_reg), DUT.scheduler_instance.curr_cuts);
    end

    /*

    */

    always @(posedge DUT.spiked)
    begin
        SPIKES_CNT = SPIKES_CNT + 1;
    end


endmodule
