`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 12:27:54 AM
// Design Name: 
// Module Name: neuron_ensemble_storage_tb
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


module neuron_ensemble_storage_tb;

    localparam LFSR_WIDTH   = 3;
    localparam NEURON_WIDTH = 2;
    localparam MEMBRANE_WIDTH = 16;
    localparam HALF_CLK_PERIOD = 1;
    localparam CLK_PERIOD = 2 * HALF_CLK_PERIOD;
    localparam CLK_PERIODS = 10 * (1<< NEURON_WIDTH);

    reg clk, CE, write_seed, write;
    
    reg [LFSR_WIDTH-1:0] seed;
    reg [MEMBRANE_WIDTH-1:0] membrane_data_in;
    reg [3:0] neuron_state_in;

    reg [1:0] control;
    reg [(1 << NEURON_WIDTH)-1:0] Q_inp;

    wire [NEURON_WIDTH-1:0]         idx_offset;
    wire [MEMBRANE_WIDTH-1:0]       membrane;
    wire [3:0]                      neuron_state;


    neuron_ensemble_storage #(.LFSR_WIDTH(LFSR_WIDTH),
                              .NEURON_WIDTH(NEURON_WIDTH), 
                              .MEMBRANE_WIDTH(MEMBRANE_WIDTH))

                                DUT(.clk(clk),
                                    .CE(CE),
                                    .write_seed(write_seed),
                                    .seed(seed),
                                    .write(write),
                                    .membrane_data_in(membrane_data_in),
                                    .neuron_state_in(neuron_state_in),
                                    .control(control),
                                    .Q_inp(Q_inp),
                                    .selected_idx_offset(idx_offset),
                                    .selected_membrane(membrane),
                                    .neuron_state(neuron_state));


    initial 
    begin
        clk = 0;
        forever 
        begin
            #HALF_CLK_PERIOD clk = !clk;    
        end
    end

    initial
    begin
        CE = 0;
        write_seed = 0;
        write = 0;
        seed = 0;
        membrane_data_in = 16'bXXXX_XXXX_XXXX_XXXX;
        neuron_state_in = 4'bXXXX;
        control = ENSEMBLE_GENERATE_STATE;

        wait(clk);
        # (2 * CLK_PERIOD);
        CE = 1;
        write_seed = 1;
        control = ENSEMBLE_RESET_STATE;

        #(HALF_CLK_PERIOD);
        write_seed = 0;

        #(HALF_CLK_PERIOD);
        control = ENSEMBLE_GENERATE_STATE;
        write_seed = 0;
        write = 1;
        membrane_data_in = 16'b0000_0000_0000_0000;
        neuron_state_in = 4'b0010;
        #(CLK_PERIOD);
        membrane_data_in = 16'b0000_0000_0000_0001;

        #(CLK_PERIOD);
        membrane_data_in = 16'b0000_0000_0000_0010;

        #(CLK_PERIOD);
        membrane_data_in = 16'b0000_0000_0000_0100;

        #(CLK_PERIOD);
        write = 0;
        
        #(CLK_PERIODS * CLK_PERIOD);

        $finish;
    end

endmodule
