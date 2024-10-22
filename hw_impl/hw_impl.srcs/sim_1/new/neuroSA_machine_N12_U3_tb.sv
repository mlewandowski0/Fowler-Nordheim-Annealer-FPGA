`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 06:08:42 PM
// Design Name: 
// Module Name: neuroSA_machine_N12_U3_tb
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
    parameter string FILE_TO_SAVE                   = "neuroSA_machine_N=12_tb.txt";

    // Parameters for the problem
    parameter int GRAPH_WIDTH                       = 12;
    parameter int UNITS                             = 3;
    parameter int NEURONS_PER_UNIT                  = GRAPH_WIDTH / UNITS;
    parameter int UNIT_WIDTH                        = $clog2(UNITS);
    parameter int NEURON_NUM_WIDTH                  = $clog2(NEURONS_PER_UNIT);
    parameter int TEMPERATURE_LUT_WIDTH             = 7;
    parameter int PIPELINED_ROMs                    = 1;
    parameter int PIPELINED_ENSEMBLE_STORAGE        = 1;
    parameter int IDX_THAT_FIRED_WIDTH              = $clog2(GRAPH_WIDTH);

    // Parameters (adjust these as needed for your tests)
    parameter int TEMP_INC_WIDTH                    = 6;
    parameter int NEURON_SEL_LFSR_WIDTH             = 3;
    parameter int MEMBRANE_WIDTH                    = 16;
    parameter int NOISE_SOURCE_WIDTH                = 6;
    parameter int COUNTER_WIDTH                     = 40;
    parameter int NO_CLK_CYCLES_AFTER_UPDATE        = 3;
    parameter int SOLUTION_WIDTH                    = 16;

    parameter int USE_FLOAT_POINT                   = 0;
    parameter int REAL_WIDTH                        = 18;
    parameter int FRACTIONAL_PART                   = 8;
   parameter string LOG_NOISE_LUT_FILENAME          = "log_noise_LUT_fixed.mif";
    parameter string TEMPERATURE_LUT_FILENAME       = "temperature_LUT_fixed.mif";

    parameter int FLIPPING_OUTPUT_WIDTH             = 16;
 
    // Clock paramaters
    parameter int HALF_CLK_PERIOD = 10;
    parameter int CLK_PERIOD = 2 * HALF_CLK_PERIOD;



    // values helpful for simulation
    logic                             SIMULATION_RUNNING;   
    integer                           decrease_temperature_no;
    integer                           fd;


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


    // Clock generation
    initial begin
        clk = 0;
    end

    always 
    begin 
        #HALF_CLK_PERIOD clk = ~clk;
    end

    // Initial block to drive inputs 
    initial
    begin
        fd = $fopen(FILE_TO_SAVE, "w");
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

        // Vmem :  [3, 8, 7, 6, 5, 9, 6, 7, 9, 8, 7, 5]

        reset = 0;
        halt = 1;

        #(2 * CLK_PERIOD);
        write_ensemble_seed     = '1; // Write to all units
        write_flipping_seed     = '1;

        neuron_state_in         = 4'b0010;   

        ensemble_seed           = 3'b000;
        flipping_seed           = 6'b000000;

        // Write neuron states to units
        // For unit 0
        write_neuron_states     = 3'b001; // Binary for unit 0
        membrane_data_in        = 16'd3;

        #CLK_PERIOD;
        membrane_data_in        = 16'd8;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        membrane_data_in        = 16'd6;

        #CLK_PERIOD;
        // For unit 1
        write_neuron_states     = 3'b010; // Binary for unit 1
        membrane_data_in        = 16'd5;

        #CLK_PERIOD;
        membrane_data_in        = 16'd9;

        #CLK_PERIOD;
        membrane_data_in        = 16'd6;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        // For unit 2
        write_neuron_states     = 3'b100; // Binary for unit 2
        membrane_data_in        = 16'd9;

        #CLK_PERIOD;
        membrane_data_in        = 16'd8;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        membrane_data_in        = 16'd5;

        #CLK_PERIOD;
        // Finish writing neuron states
        write_neuron_states     = '0;
        write_ensemble_seed     = '0;
        write_flipping_seed     = '0;
        membrane_data_in        = 'x;
        neuron_state_in         = 'x;

        #CLK_PERIOD;
        halt = 0;
        SIMULATION_RUNNING = 1;

        #(50000 * CLK_PERIOD);
        $fclose(fd);
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



endmodule
