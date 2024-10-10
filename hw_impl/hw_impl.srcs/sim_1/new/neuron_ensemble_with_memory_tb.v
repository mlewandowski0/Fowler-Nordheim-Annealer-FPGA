`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 11:25:00 AM
// Design Name: 
// Module Name: neuron_ensemble_with_memory_tb
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


module neuron_ensemble_with_memory_tb;

localparam GRAPH_WIDTH = 12;
localparam GRAPH_DISTRIB_FILE = "adj_matrix_distributed0.mif";
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


localparam ENSEMBLE_WITH_MEM_GENERATE =  2'b00;
localparam ENSEMBLE_WITH_MEM_HALT     =  2'b01;
localparam ENSEMBLE_WITH_MEM_UPDATE   =  2'b10;
localparam ENSEMBLE_WITH_MEM_RESET    =  2'b11;

localparam GRAPH_WIDTH_LINE = $clog2(GRAPH_WIDTH);


localparam HALF_CLK_PERIOD = 1;
localparam CLK_PERIOD = 2 * HALF_CLK_PERIOD;


reg [GRAPH_WIDTH_LINE-1:0] index_of_neuron_that_fired;
reg should_increment, reset_module, halt, update_memory;
reg clk;
reg write_ensemble_seed;
reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed;
reg write_flipping_seed;
reg [NOISE_SOURCE_WIDTH-1:0] flipping_seed;
reg decrease_temp;
reg write_neuron_state;
reg [MEMBRANE_WIDTH-1:0] membrane_data_in;
reg [3:0] neuron_state_in;

wire                            spike;
wire [UNIT_WIDTH-1:0]           unit_number;
wire [NEURON_WIDTH-1:0]         selected_idx_offset;


neuron_ensemble_with_memory #(.GRAPH_WIDTH(GRAPH_WIDTH),
                              .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE),
                              .UNIT_WIDTH(UNIT_WIDTH),
                              .UNIT_NO(UNIT_NO),
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
                              DUT(
                                .reset_module(reset_module),
                                .halt(halt),
                                .update_memory(update_memory),
                                .should_increment(should_increment),

                                .index_of_neuron_that_fired(index_of_neuron_that_fired),

                                .clk(clk),

                                .write_ensemble_seed(write_ensemble_seed),
                                .ensemble_seed(ensemble_seed),

                                .write_flipping_seed(write_flipping_seed),
                                .flipping_seed(flipping_seed),

                                .decrease_temp(decrease_temp),
                                
                                .write_neuron_state(write_neuron_state),
                                .membrane_data_in(membrane_data_in),
                                .neuron_state_in(neuron_state_in),

                                .spike(spike),
                                .unit_number(unit_number),
                                .offset(selected_idx_offset)
                             );

    initial
    begin
        clk = 0;
        forever #HALF_CLK_PERIOD clk = ~clk;
    end
     

    initial
    begin
            
            reset_module = 0;
            halt = 0;
            update_memory = 0;

            wait (clk);
            #(2 * CLK_PERIOD); // wait for 2 clock cycles
            #(CLK_PERIOD - 1);
            
            // disable everything
            index_of_neuron_that_fired = {GRAPH_WIDTH_LINE{1'bX}};
            should_increment = 0;
            write_ensemble_seed = 1;
            ensemble_seed = 0;
            write_flipping_seed = 1;
            flipping_seed = 0;
            decrease_temp = 0;
            write_neuron_state = 0;
            membrane_data_in = 0;
            neuron_state_in = 0;
            reset_module = 1;

            #(2*CLK_PERIOD);
            reset_module = 0;
            halt = 1;

            write_ensemble_seed = 0;
            write_flipping_seed = 0;

            # CLK_PERIOD;
            write_neuron_state = 1;
            membrane_data_in = 16'd6;
            neuron_state_in = 4'b0010;

            #CLK_PERIOD;

            membrane_data_in = 16'd7;

            #CLK_PERIOD;

            membrane_data_in = 16'd8;

            #CLK_PERIOD;

            membrane_data_in = 16'd3;

            #(CLK_PERIOD);
            halt = 0;
            write_neuron_state = 0;
            index_of_neuron_that_fired = 'd1;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;
 
            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd3;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd3;
            should_increment = 1;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;            

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd3;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd5;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd7;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd7;
            should_increment = 1;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;
            
            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd7;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd9;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(3 * CLK_PERIOD);
            index_of_neuron_that_fired = 'd11;
            should_increment = 0;
            update_memory = 1;
            #(CLK_PERIOD);
            update_memory = 0;

            #(40 * CLK_PERIOD);

            $finish;
    end


endmodule
