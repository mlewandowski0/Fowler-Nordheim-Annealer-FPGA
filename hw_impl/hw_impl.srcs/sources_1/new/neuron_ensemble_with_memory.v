`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 10:06:11 AM
// Design Name: 
// Module Name: neuron_ensemble_with_memory
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


module neuron_ensemble_with_memory

#(
parameter GRAPH_WIDTH = 12,
parameter GRAPH_DISTRIB_FILE = "adj_matrix_distributed0.mif",
parameter UNIT_WIDTH=2,
parameter UNIT_NO=0,
parameter NEURON_SEL_LFSR_WIDTH=3,
parameter NEURON_WIDTH=2,
parameter MEMBRANE_WIDTH=16,
parameter NOISE_SOURCE_WIDTH=6,
parameter LUT_FLIPPING_WIDTH=16,
parameter LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif",
parameter TEMPERATURE_LUT_FILENAME="temperature_LUT.mif",
parameter TEMPERATURE_LUT_WIDTH=7,
parameter PIPELINED_ROMs=1,
parameter PIPELINED_ENSEMBLE_STORAGE=1)
(
    input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,

    input wire [1:0] control,
    input wire should_increment,

    input wire clk, 
    
    input wire write_ensemble_seed,
    input wire [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed,

    input wire write_flipping_seed,
    input wire [NOISE_SOURCE_WIDTH-1:0] flipping_seed,

    input wire decrease_temp,

    input wire write_neuron_state,
    input wire [MEMBRANE_WIDTH-1:0] membrane_data_in,
    input wire [3:0] neuron_state_in,

    output wire                                  spike,
    output wire [UNIT_WIDTH-1:0]                 unit_number,
    output wire [NEURON_WIDTH-1:0]               offset

);

    localparam NUMBER_OF_NEURONS = (1 << NEURON_WIDTH) - 1;
    
    localparam ENSEMBLE_GENERATE_STATE    =  2'b00;
    localparam ENSEMBLE_RESET_STATE       =  2'b01;
    localparam ENSEMBLE_INC_STATE         =  2'b10;
    localparam ENSEMBLE_SUB_STATE         =  2'b11;
    
    localparam ENSEMBLE_WITH_MEM_GENERATE =  2'b00;
    localparam ENSEMBLE_WITH_MEM_HALT     =  2'b01;
    localparam ENSEMBLE_WITH_MEM_UPDATE   =  2'b10;
    localparam ENSEMBLE_WITH_MEM_RESET    =  2'b11;
    
    // for the internal FSM

    reg storage_CE, storage_CE_next, flipping_CE, flipping_CE_next, reset_flipping, reset_flipping_next;
    reg [1:0] neuron_ensemble_control, neuron_ensemble_control_next;
    wire update_membranes;
    
    assign update_membranes = neuron_ensemble_control[1];


    wire [NUMBER_OF_NEURONS:0] Q_out;


    distributed_graph_memory #(.NEURON_WIDTH(UNIT_WIDTH),
                               .GRAPH_WIDTH(GRAPH_WIDTH),
                               .MEM_FILE(GRAPH_DISTRIB_FILE)) 
                               
                               G_memory(.index_of_neuron_that_fired(index_of_neuron_that_fired),
                                        .enable(update_membranes),
                                        .Q_out(Q_out)
);


    neuron_ensemble     #(.UNIT_WIDTH(UNIT_WIDTH),
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
    
    neuron_ensemble_inst
    (
        .clk(clk), 
        .storage_CE(storage_CE),
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

        .spike(spike),
        .unit_number(unit_number),
        .offset(offset)

    );


    always @(*)
    begin
        case (control)
            ENSEMBLE_WITH_MEM_GENERATE:
            begin
                storage_CE_next = 1;
                flipping_CE_next = 1;
                reset_flipping_next = 0;
                neuron_ensemble_control_next = ENSEMBLE_GENERATE_STATE;

            end
            ENSEMBLE_WITH_MEM_HALT:
            begin
                storage_CE_next = 0;
                flipping_CE_next = 0;
                reset_flipping_next = 0;
                neuron_ensemble_control_next = ENSEMBLE_GENERATE_STATE;
            end
            ENSEMBLE_WITH_MEM_UPDATE:
            begin
                storage_CE_next = 1;
                flipping_CE_next = 0;
                reset_flipping_next = 0;

                if (should_increment)
                begin
                    neuron_ensemble_control_next = ENSEMBLE_INC_STATE;
                end
                else
                begin
                    neuron_ensemble_control_next = ENSEMBLE_SUB_STATE;
                end
            end
            ENSEMBLE_WITH_MEM_RESET:
            begin
                storage_CE_next = 1;
                flipping_CE_next = 1;
                reset_flipping_next = 1;
                neuron_ensemble_control_next = ENSEMBLE_RESET_STATE;
            end
            default:
            begin
                neuron_ensemble_control_next = ENSEMBLE_GENERATE_STATE;
                storage_CE_next = 0;
                flipping_CE_next = 0;
                reset_flipping_next = 0;
            end
        endcase

    end    

    always @(posedge clk)
    begin
        storage_CE <= storage_CE_next;
        flipping_CE <= flipping_CE_next;
        reset_flipping <= reset_flipping_next;
        neuron_ensemble_control <= neuron_ensemble_control_next;
    end


endmodule
