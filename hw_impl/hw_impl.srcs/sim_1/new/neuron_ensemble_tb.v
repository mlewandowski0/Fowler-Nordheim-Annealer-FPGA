`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 12:27:54 AM
// Design Name: 
// Module Name: neuron_ensemble_tb
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


module neuron_ensemble_tb();

    localparam UNIT_WIDTH=2;
    localparam UNIT_NO=0;
    localparam NEURON_SEL_LFSR_WIDTH=3;
    localparam NEURON_WIDTH=2;
    localparam MEMBRANE_WIDTH=16;
    localparam NOISE_SOURCE_WIDTH=6;
    localparam LUT_FLIPPING_WIDTH=16;
    localparam LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif";
    localparam TEMPERATURE_LUT_FILENAME="temperature_LUT.mif";
    localparam TEMPERATURE_LUT_WIDTH=7;
    localparam PIPELINED_ROMs=1;
    localparam PIPELINED_ENSEMBLE_STORAGE=1;

    localparam HALF_CLK_PERIOD = 1;
    localparam CLK_PERIOD = 2 * HALF_CLK_PERIOD;
    
    // 0: GENERATE_STATE, 1: INC_STATE, 2: SUB_STATE, 3: RESET_STATE
    localparam ENSEMBLE_GENERATE_STATE  = 2'b00;
    localparam ENSEMBLE_INC_STATE       = 2'b01;
    localparam ENSEMBLE_SUB_STATE       = 2'b10;
    localparam ENSEMBLE_RESET_STATE     = 2'b11;
    


    reg clk, storage_CE, flipping_CE, write_ensemble_seed, write_flipping_seed, decrease_temp, reset_flipping, write_mem_state_data;
    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;
    reg [NOISE_SOURCE_WIDTH-1:0] flipping_seed;
    reg [MEMBRANE_WIDTH-1:0] membrane_data_in;
    reg [3:0] neuron_state_in;
    reg [1:0] control;
    reg [(1 << NEURON_WIDTH)-1:0] Q_inp;

    wire spike;
    wire [UNIT_WIDTH-1:0] unit_number;
    wire [NEURON_WIDTH-1:0] offset;

    neuron_ensemble #(.UNIT_WIDTH(UNIT_WIDTH), .UNIT_NO(UNIT_NO),
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

                    DUT(.clk(clk),
                        .storage_CE(storage_CE),
                        .flipping_CE(flipping_CE),
                        .write_ensemble_seed(write_ensemble_seed),
                        .ensemble_seed(ensemble_seed),
                        .write_flipping_seed(write_flipping_seed),
                        .flipping_seed(flipping_seed),
                        .decrease_temp(decrease_temp),
                        .reset_flipping(reset_flipping),
                        .write(write_mem_state_data),
                        .membrane_data_in(membrane_data_in),
                        .neuron_state_in(neuron_state_in),
                        .control(control),
                        .Q_inp(Q_inp),
                        .spike(spike),
                        .unit_number(unit_number),
                        .offset(offset));
    
    initial 
    begin
        clk = 0;
        forever #HALF_CLK_PERIOD clk = ~clk;
    end


    initial
    begin 
        // disable everything 
        storage_CE = 0;
        flipping_CE = 0;

        write_ensemble_seed = 0;
        write_flipping_seed = 0;
        decrease_temp = 0;
        reset_flipping = 0;
        write_mem_state_data = 0;
        ensemble_seed = 0;
        flipping_seed = 0;
        membrane_data_in = 0;
        neuron_state_in = 0;
        control = ENSEMBLE_GENERATE_STATE;
        Q_inp = 0;

        wait (clk);
        storage_CE = 1;
        flipping_CE = 1;
        // enable storage and flipping units
        write_ensemble_seed = 1;
        write_flipping_seed = 1;
        
        // reset the temperature
        reset_flipping = 1;

        // reset the index for writing
        control = ENSEMBLE_RESET_STATE;

        #CLK_PERIOD;

        // without writing the memory, the output will be garbage. Turn off the elements
        storage_CE = 0;
        flipping_CE = 0;


        control = ENSEMBLE_GENERATE_STATE;
        write_ensemble_seed = 0;
        write_flipping_seed = 0;
        reset_flipping = 0;
        write_mem_state_data = 1;
        membrane_data_in = {16{1'b0}};
        neuron_state_in = 4'b0010;



        #CLK_PERIOD;
        membrane_data_in[0] = 1'b1;

        #CLK_PERIOD;
        membrane_data_in[0] = 1'b0;
        membrane_data_in[1] = 1'b1;

        #CLK_PERIOD;
        membrane_data_in[1] = 1'b0;
        membrane_data_in[2] = 1'b1;
        
        # CLK_PERIOD;
        // after this point the output will start making sense
        storage_CE = 1;
        flipping_CE = 1;
        write_mem_state_data = 0;

        #(5 * CLK_PERIOD);

        $finish;
    end
    

endmodule
