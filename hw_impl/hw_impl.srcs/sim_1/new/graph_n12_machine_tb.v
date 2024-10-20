`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 11:36:14 AM
// Design Name: 
// Module Name: graph_n12_machine_tb
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


module graph_n12_machine_tb();

    localparam FILE_TO_SAVE     =   "graph_n12_machine_tb.txt";
    localparam NEURON_SEL_LFSR_WIDTH=3;
    localparam MEMBRANE_WIDTH=16;
    localparam NOISE_SOURCE_WIDTH=6;
    localparam COUNTER_WIDTH=40;
    localparam TEMP_INC_WIDTH=16;
    localparam NO_CLK_CYCLES_AFTER_UPDATE=3;
    localparam SOLUTION_WIDTH=16;
    localparam HALF_CLK_PERIOD  = 5;
    localparam CLK_PERIOD       = 2 * HALF_CLK_PERIOD;
    localparam USE_FLOAT_POINT              = 0;
    localparam FIXED_TOTAL_WIDTH            = 18;
    localparam FRACTIONAL_PART              = 8;
    localparam LOG_NOISE_LUT_FILENAME       = "log_noise_LUT.mif";
    localparam TEMPERATURE_LUT_FILENAME     = "temperature_LUT.mif";
    
    reg                             clk, reset, halt;
    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;
    reg [NOISE_SOURCE_WIDTH-1:0]    flipping_seed;

    reg [2:0]                       write_neuron_states;    
    reg [2:0]                       write_ensemble_seed, write_flipping_seed;
    reg [MEMBRANE_WIDTH-1:0]        membrane_data_in;
    reg [3:0]                       neuron_state_in;

    integer                         fd;


    graph_n12_machine 
    #(.NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
      .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
      .COUNTER_WIDTH(COUNTER_WIDTH),
      .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
      .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
      .SOLUTION_WIDTH(SOLUTION_WIDTH),
      .USE_FLOAT_POINT(USE_FLOAT_POINT),
      .FIXED_TOTAL_WIDTH(FIXED_TOTAL_WIDTH),
      .FRACTIONAL_PART(FRACTIONAL_PART),
      .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
      .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME))

    DUT(.clk(clk),
        .reset(reset),
        .halt(halt),
        .write_ensemble_seed(write_ensemble_seed),
        .write_flipping_seed(write_flipping_seed),
        .ensemble_seed(ensemble_seed),
        .flipping_seed(flipping_seed),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),
        .write_neuron_states(write_neuron_states)
    );

    initial
    begin
        clk = 0;
    end

    always
    begin
        #HALF_CLK_PERIOD clk = ~clk;
    end

    initial 
    begin
        fd = $fopen(FILE_TO_SAVE, "w");
        reset = 0;
        halt = 0;
        write_ensemble_seed = 0;
        write_flipping_seed = 0;
        write_neuron_states = 3'b000;
        neuron_state_in     = 4'b0010;

        #(2 * CLK_PERIOD);
        reset = 1;
        #CLK_PERIOD;

        // Vmem :  [3. 8. 7. 6. 5. 9. 6. 7. 9. 8. 7. 5.]

        reset = 0;
        halt = 1;

        # (2 * CLK_PERIOD);
        write_ensemble_seed     = 3'b111;
        write_flipping_seed     = 3'b111;

        neuron_state_in         = 4'b0010;   

        ensemble_seed           = 3'b000;
        flipping_seed           = 6'b000000;

        write_neuron_states     = 3'b001;
        membrane_data_in        = 16'd3;

        #CLK_PERIOD;
        membrane_data_in        = 16'd8;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        membrane_data_in        = 16'd6;

        #CLK_PERIOD;
        write_neuron_states     = 3'b010;
        membrane_data_in        = 16'd5;

        #CLK_PERIOD;
        membrane_data_in        = 16'd9;

        #CLK_PERIOD;
        membrane_data_in        = 16'd6;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        write_neuron_states     = 3'b100;
        membrane_data_in        = 16'd9;

        #CLK_PERIOD;
        membrane_data_in        = 16'd8;

        #CLK_PERIOD;
        membrane_data_in        = 16'd7;

        #CLK_PERIOD;
        membrane_data_in        = 16'd5;

        #CLK_PERIOD;
        write_neuron_states     = 3'b000;
        write_ensemble_seed     = 3'b000;
        write_flipping_seed     = 3'b000;
        membrane_data_in        = {MEMBRANE_WIDTH{1'bX}};
        neuron_state_in         = {4{1'bX}};

        # CLK_PERIOD;
        halt = 0;

        #(500 * CLK_PERIOD);
        $fclose(fd);
        $finish;
    end

    always @(posedge DUT.update_memory)
    begin
        if (DUT.scheduler_instance.should_increment)
            $fdisplay(fd,"%d, %d, %d", DUT.idx_that_fired, -$signed(DUT.scheduler_instance.membrane_reg), DUT.scheduler_instance.curr_cuts);
        else 
            $fdisplay(fd,"%d, %d, %d", DUT.idx_that_fired, $signed(DUT.scheduler_instance.membrane_reg), DUT.scheduler_instance.curr_cuts);
    end

    
endmodule
