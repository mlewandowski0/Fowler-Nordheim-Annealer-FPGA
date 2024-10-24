`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 07:10:33 PM
// Design Name: 
// Module Name: integration_transmit_buffer_selection_tb
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


module integration_transmit_buffer_selection_tb();

    localparam UNIT_WIDTH=5;
    localparam UNIT_NO=0;
    localparam NEURON_SEL_LFSR_WIDTH=5;
    localparam LOG_NOISE_SOURCE_WIDTH = 16;
    localparam LOG_LUT_BIT_SIZE = 7;
    localparam REAL_WIDTH=18;
    localparam FLIPPING_OUTPUT_WIDTH=16;
    localparam LOG_NOISE_LUT_FILENAME="log_noise_LUT_fixed_7bit.mif";
    localparam TEMPERATURE_LUT_WIDTH=9;
    localparam TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif";
    localparam PIPELINED_ROMs=1;
    localparam PIPELINED_ENSEMBLE_STORAGE=1;
    localparam USE_FLOAT_POINT=0;
    localparam FRACTIONAL_PART=8;
    localparam NEURON_WIDTH                     = 5;
    localparam MEMBRANE_WIDTH                   = 10;
    localparam NO_OF_CLK_CYCLES_TO_PROPAGATE    = 2;
    localparam HALF_CLK_CYCLE                   = 5;
    localparam CLK_CYCLE                        = 2 * HALF_CLK_CYCLE;


    reg                             clk;
    reg                             updating_membranes;
    reg                             reset;
    reg                             flipping_CE;

    reg                             write_ensemble_seed;
    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;;

    reg                             write_flipping_seed;
    reg [FLIPPING_OUTPUT_WIDTH-1:0] flipping_seed;

    reg                             decrease_temp;
    reg                             reset_flipping;
    reg                             write_neuron_state;
    reg [MEMBRANE_WIDTH-1:0]        membrane_data_in;
    reg [3:0]                       neuron_state_in;
    reg [1:0]                       neuron_ensemble_control;
    reg [(1 << NEURON_WIDTH)-1:0]   Q_out;
    reg                             update_ds;
    reg [NEURON_WIDTH-1:0]          offset_of_spike;

    wire                            ensemble_spike_out;
    wire [UNIT_WIDTH-1:0]           ensemble_unit_number;
    wire [NEURON_WIDTH-1:0]         ensemble_offset;
    wire [MEMBRANE_WIDTH-1:0]       ensemble_membrane;
    wire                            ensemble_add_mem;




    neuron_ensemble     #(.UNIT_WIDTH(UNIT_WIDTH),
                          .UNIT_NO(UNIT_NO),
                          .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
                          .NEURON_WIDTH(NEURON_WIDTH),
                          .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                          .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                          .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE), 
                          .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
                          .REAL_WIDTH(REAL_WIDTH),
                          .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
                          .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
                          .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
                          .PIPELINED_ROMs(PIPELINED_ROMs),
                          .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
                          .USE_FLOAT_POINT(USE_FLOAT_POINT),
                          .FRACTIONAL_PART(FRACTIONAL_PART))
    
    neuron_ensemble_inst
    (
        .clk(clk), 
        .storage_CE(new_sample),
        .flipping_CE(flipping_CE),
        
        .write_ensemble_seed(write_ensemble_seed),
        .ensemble_seed(ensemble_seed),

        .write_flipping_seed(write_flipping_seed),
        .flipping_seed(flipping_seed),

        .decrease_temp(decrease_temp),
        .reset_flipping(reset_flipping),

        .write(write_neuron_state),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .control(neuron_ensemble_control),
        .Q_inp(Q_out),

        .update_ds(update_ds),
        .idx_offset_to_update(offset_of_spike),

        .spike(ensemble_spike_out),
        .unit_number(ensemble_unit_number),
        .offset(ensemble_offset),
        .membrane(ensemble_membrane),
        .add_mem(ensemble_add_mem)

    );
    
    transmit_buffer #(.NEURON_WIDTH(NEURON_WIDTH),
                      .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                      .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE)) 
                      DUT
                      (.clk(clk),
                       .reset(reset),
                       .updating_membranes(updating_membranes),
                       .spike(ensemble_spike_out),
                       .idx_offset(ensemble_offset),
                       .membrane(ensemble_membrane),
                       .add_mem(ensemble_add_mem),
                       .new_sample(new_sample),
                       .spike_reg(spike_reg),
                       .offset_reg(offset_reg),
                       .membrane_reg(membrane_reg),
                       .add_mem_reg(add_mem_reg));


    localparam ENSEMBLE_GENERATE_STATE    =  2'b00;
    localparam ENSEMBLE_RESET_STATE       =  2'b01;
    localparam ENSEMBLE_INC_STATE         =  2'b10;
    localparam ENSEMBLE_SUB_STATE         =  2'b11;


    always
    begin
        #HALF_CLK_CYCLE clk = ~clk;
    end


    initial
    begin
        clk = 0;
        updating_membranes = 0;
        reset = 0;
        flipping_CE = 1;

        write_ensemble_seed = 0;
        ensemble_seed = 0;
        write_flipping_seed = 0;  
        flipping_seed = 0;
        decrease_temp = 0;
        reset_flipping = 0;
        write_neuron_state = 0;
        membrane_data_in = 0;
        neuron_state_in = 0;
        neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
        Q_out = 0;
        update_ds = 0;
        offset_of_spike = 0;

        #CLK_CYCLE;
        reset = 1;
        neuron_ensemble_control = ENSEMBLE_RESET_STATE;
        #CLK_CYCLE;

        flipping_CE = 0;
        reset_flipping = 1;

        #CLK_CYCLE;
        write_ensemble_seed = 1;
        write_flipping_seed = 1;
        ensemble_seed       = 0;
        flipping_seed       = 0;


        write_neuron_state = 1;
        neuron_state_in     = 4'b0010;
        membrane_data_in = 78; 

        #CLK_CYCLE;
        membrane_data_in = 86;
 
        #CLK_CYCLE;
        membrane_data_in = 89;
 
        #CLK_CYCLE;
        membrane_data_in = 121;
 
        #CLK_CYCLE;
        membrane_data_in = 120;
 
        #CLK_CYCLE;
        membrane_data_in = 153;
 
        #CLK_CYCLE;
        membrane_data_in = 43;
 
        #CLK_CYCLE;
        membrane_data_in = 83;
 
        #CLK_CYCLE;
        membrane_data_in = 57;
 
        #CLK_CYCLE;
        membrane_data_in = 51;
 
        #CLK_CYCLE;
        membrane_data_in = 44;
 
        #CLK_CYCLE;
        membrane_data_in = 15;
 
        #CLK_CYCLE;
        membrane_data_in = 18;
 
        #CLK_CYCLE;
        membrane_data_in = 73;
        
        #CLK_CYCLE;
        membrane_data_in = 59;
 
        #CLK_CYCLE;
        membrane_data_in = 55;

        #CLK_CYCLE;
        membrane_data_in = 56;
        
        #CLK_CYCLE;
        membrane_data_in = 61;
        
        #CLK_CYCLE;
        membrane_data_in = 60;

        #CLK_CYCLE;
        membrane_data_in = 20;
 
        #CLK_CYCLE;
        membrane_data_in = 25;
 
        #CLK_CYCLE;
        membrane_data_in = 53;
 
        #CLK_CYCLE;
        membrane_data_in = 44;
 
        #CLK_CYCLE;
        membrane_data_in = 35;
 
        #CLK_CYCLE;
        membrane_data_in = 38;
 
        #CLK_CYCLE;
        membrane_data_in = 32;
 
        #CLK_CYCLE;
        membrane_data_in = 19;
 
        #CLK_CYCLE;
        membrane_data_in = 25;
 
        #CLK_CYCLE;
        membrane_data_in = 19;
 
        #CLK_CYCLE;
        membrane_data_in = 20;
 
        #CLK_CYCLE;
        membrane_data_in = 21;
 
        #CLK_CYCLE;
        membrane_data_in = 30;

        #CLK_CYCLE;
        reset = 0;
        write_neuron_state = 0;
        neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
        reset_flipping = 0;
        write_ensemble_seed = 0;
        write_flipping_seed = 0;
        #(50 * CLK_CYCLE);
        $finish;
    end


endmodule
