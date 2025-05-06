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


module neuroSA_machine_N12_U3_tb();


    //    
    parameter string FILE_TO_SAVE                   = "neuroSA_machine_N=8_A2_tb.txt";
    parameter string PLOT_FIG_SAVE                  = "neuroSA_machine_N=8_A2_tb_sol_vs_clk.txt";
    parameter string SPIKE_DEBUGGING                = "neuroSA_machine_N=8_A2_tb_spikes.txt";

    // Parameters for the problem
    parameter int GRAPH_WIDTH                       = 8;
    parameter int UNITS                             = 2;
    parameter int NEURONS_PER_UNIT                  = GRAPH_WIDTH / UNITS;
    parameter int UNIT_WIDTH                        = $clog2(UNITS);
    parameter int NEURON_NUM_WIDTH                  = $clog2(NEURONS_PER_UNIT);
    parameter int PIPELINED_ROMs                    = 1;
    parameter int PIPELINED_ENSEMBLE_STORAGE        = 1;
    parameter int IDX_THAT_FIRED_WIDTH              = $clog2(GRAPH_WIDTH);
    parameter int USE_ROUND_ROBIN                   = 1;

    // Parameters (adjust these as needed for your tests)
    parameter int TEMP_INC_WIDTH                    = 12;
    parameter int MEMBRANE_WIDTH                    = 16;
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

    // buffer parameters
    parameter int USE_TRANSMIT_WITH_BUFF                = 1;
    parameter int NO_OF_CLK_CYCLES_TO_PROPAGATE         = 1;
    parameter int NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE   = 3;
    
    // Clock paramaters
    parameter int HALF_CLK_PERIOD = 10;
    parameter int CLK_PERIOD = 2 * HALF_CLK_PERIOD;



    // values helpful for simulation
    logic                             SIMULATION_RUNNING;   
    integer                           decrease_temperature_no;
    integer                           fd, fd2, fd3;  
    integer                           SPIKES_CNT = 0;
 

    // clock and reset singlas 
    logic clk;
    logic reset;
    logic halt;

    // Input stimuli
    logic [UNITS-1:0] write_ensemble_seed;
    logic [UNITS-1:0] write_flipping_seed;
    logic [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;
    logic [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seed;
    logic [MEMBRANE_WIDTH-1:0] membrane_data_in;
    logic [3:0] neuron_state_in;
    logic [UNITS-1:0] write_neuron_states;
    logic [NEURON_NUM_WIDTH-1:0] idx_to_write;

    // Output
    logic [SOLUTION_WIDTH-1:0] found_solution_value;

    // Instantiate the module under test (MUT)
    neuroSA_machine_verilog_wrapper_N8_A2 #(
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
        .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH),
        .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
        .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
        .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)
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
        .idx_to_write(idx_to_write),
        .found_solution_value(found_solution_value)
    );


    // Initialize ata arrays (membrane voltages)
    reg [31:0] data_arrays [0:GRAPH_WIDTH-1];
    reg [31:0] best_cut [0:0];
    reg        best_solution [0:GRAPH_WIDTH-1];
    
    int clk_counter = 0;
        
    initial 
    begin
        $readmemh("membrane_data_N8.mif", data_arrays);
        $readmemh("best_cut_N8.mif", best_cut);
        $readmemh("best_assignment_N8.mif", best_solution);
    end

    // Clock generation
    initial begin
        clk = 0;
        forever 
        begin
            #(HALF_CLK_PERIOD) clk = ~clk;
        end
    end

    always @(posedge clk)
    begin
        clk_counter = clk_counter + 1;
    end

    always @(found_solution_value)
    begin
        $fdisplay(fd2, "%d,%d", clk_counter, found_solution_value);
    end

    integer val;
    integer neuron_idx;

    // Initial block to drive inputs 
    initial
    begin
        neuron_idx = 0;

        fd  = $fopen(FILE_TO_SAVE, "w");
        fd2 = $fopen(PLOT_FIG_SAVE, "w");
        fd3 = $fopen(SPIKE_DEBUGGING,"w");

        decrease_temperature_no = 0;
        reset = 0;
        halt = 0;
        write_ensemble_seed = '0;
        write_flipping_seed = '0;
        write_neuron_states = '0;
        neuron_state_in     = 4'b0010;
        
        #200;

        #(2 * CLK_PERIOD);
        reset = 1;
        #CLK_PERIOD;
        reset = 0;
        halt = 1;

        #(2 * CLK_PERIOD);
        write_ensemble_seed     = '1; // Write to all units
        write_flipping_seed     = '1;
        

        for (int unit = 0; unit < UNITS; unit++)
        begin
            write_ensemble_seed = '0;
            write_ensemble_seed[unit] = 1;
            
            write_flipping_seed = '0;
            write_flipping_seed[unit] = 1;
            
            ensemble_seed = 1 + unit;
            flipping_seed = 1 + unit;
                
            for (int i = 0; i < 2; i++)
            begin
                //ensemble_seed = $urandom_range((1 << NEURON_SEL_LFSR_WIDTH) - 1, 0);
                //flipping_seed = $urandom_range((1 << NOISE_SOURCE_WIDTH) - 1, 0);

            end
            #CLK_PERIOD;
            
        end

        neuron_state_in         = 4'b0010;   

        ensemble_seed           = {NEURON_SEL_LFSR_WIDTH{1'b0}};
        flipping_seed           = {LOG_NOISE_SOURCE_WIDTH{1'b0}};

        // program the membranes
        #CLK_PERIOD;
        write_ensemble_seed = '0;
        write_flipping_seed = '0;
        neuron_idx = 0;

        for (int unit = 0; unit < UNITS; unit++)
        begin
            // set write_neuron_States to target the current unit
            write_neuron_states = {UNITS{1'b0}};
            write_neuron_states[unit] = 1;

            // write neuron states to the unit
            for (int i = 0; i < NEURONS_PER_UNIT; ++i)
            begin
                    membrane_data_in = data_arrays[neuron_idx];
                    neuron_idx = neuron_idx + 1;
                    idx_to_write = i;
                    #CLK_PERIOD;
            end
        end

        #CLK_PERIOD;
        write_neuron_states = {UNITS{1'b0}};
        halt = 0;
        SIMULATION_RUNNING = 1;

        // #(10_000_000 * CLK_PERIOD);
        //#(100_000 * CLK_PERIOD);
        #(5_0 * CLK_PERIOD);
        $fclose(fd);
        $fclose(fd2);
        $finish;
    end

    /*
    // Monitor decrease_temp signal
    always @(posedge DUT.NEURO_SA.decrease_temp) begin
        decrease_temperature_no = decrease_temperature_no + 1;
    end

    // Monitor update_memory signal

    always @(posedge DUT.NEURO_SA.update_memory) begin
        if (DUT.NEURO_SA.scheduler_instance.should_increment)
            $fdisplay(fd, "%d, %d, %d", DUT.NEURO_SA.idx_that_fired, -$signed(DUT.NEURO_SA.scheduler_instance.membrane_reg), DUT.NEURO_SA.scheduler_instance.curr_cuts);
        else 
            $fdisplay(fd, "%d, %d, %d", DUT.NEURO_SA.idx_that_fired, $signed(DUT.NEURO_SA.scheduler_instance.membrane_reg), DUT.NEURO_SA.scheduler_instance.curr_cuts);
        
        $display("%d, %d, %d", DUT.NEURO_SA.idx_that_fired, $signed(DUT.NEURO_SA.scheduler_instance.membrane_reg), DUT.NEURO_SA.scheduler_instance.curr_cuts);
    end

    always @(DUT.NEURO_SA.spikes)
    begin
        $fdisplay(fd3, "%d : %b", $time, DUT.NEURO_SA.spikes );
    end

    always @(posedge DUT.NEURO_SA.spiked)
    begin
        SPIKES_CNT = SPIKES_CNT + 1;
    end
    */

endmodule
