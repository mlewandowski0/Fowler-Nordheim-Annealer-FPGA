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

/*
*       The following FSM is defined as below
*    
*       RESET 
*       - should reset the  
*      
*       GENERATE 1 : 
*       GENERATE 2 :
*       HOLD :
*       FETCH_Q : 
*       UPDATE : 
*/


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
parameter REAL_WIDTH=16,
parameter FLIPPING_OUTPUT_WIDTH=16,
parameter LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif",
parameter TEMPERATURE_LUT_FILENAME="temperature_LUT.mif",
parameter TEMPERATURE_LUT_WIDTH=7,
parameter PIPELINED_ROMs=1,
parameter PIPELINED_ENSEMBLE_STORAGE=1,
parameter USE_FLOAT_POINT=1,
parameter FIXED_TOTAL_WIDTH=18,
parameter FRACTIONAL_PART=8
)
(

    input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,

    input wire reset_module,
    input wire halt,
    input wire update_memory, 
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
    output wire [NEURON_WIDTH-1:0]               offset,
    output wire [MEMBRANE_WIDTH-1:0]             membrane,
    output wire                                  add_mem
);


    reg  [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired_reg;
    reg  [2:0] current_state;
    reg  [2:0] next_state;

    wire spike_out;



    localparam NUMBER_OF_NEURONS = (1 << NEURON_WIDTH) - 1;
    
    localparam ENSEMBLE_GENERATE_STATE    =  2'b00;
    localparam ENSEMBLE_RESET_STATE       =  2'b01;
    localparam ENSEMBLE_INC_STATE         =  2'b10;
    localparam ENSEMBLE_SUB_STATE         =  2'b11;
    

    localparam ENSEMBLE_WITH_MEM_RESET          = 3'b000;
    localparam ENSEMBLE_WITH_MEM_GENERATE_1     = 3'b001;
    localparam ENSEMBLE_WITH_MEM_GENERATE_2     = 3'b010;
    localparam ENSEMBLE_WITH_MEM_HOLD           = 3'b011;
    localparam ENSEMBLE_WITH_MEM_FETCH_Q        = 3'b100;
    localparam ENSEMBLE_WITH_MEM_UPDATE         = 3'b101;


    // for the internal FSM
    reg storage_CE, flipping_CE, reset_flipping;
    reg [1:0] neuron_ensemble_control;
    reg CE_output_from_distributed_graph, incrementing_reg;
    
    assign update_membranes = neuron_ensemble_control[1];


    reg  [NUMBER_OF_NEURONS:0] Q_out_reg;
    wire [NUMBER_OF_NEURONS:0] Q_out;


    // Assuming everything is in power of 2's, check whether the neuron that fired 
    // belongs to the membrane is quite easy. The index that fired is of size ceil[GRAPH_WIDTH]
    // so assuming that the graph size is 12, and it is separated into three units, each containing 4 neurons
    // index_that_fired =  {which_unit_fired}{offset_ofspike}
    wire [NEURON_WIDTH-1:0]             offset_of_spike;
    wire [UNIT_WIDTH-1:0]               which_unit_fired;
    wire                                update_ds;


    assign offset_of_spike          = index_of_neuron_that_fired_reg[NEURON_WIDTH-1:0];
    assign which_unit_fired         = index_of_neuron_that_fired_reg[$clog2(GRAPH_WIDTH)-1 -:UNIT_WIDTH];
    assign update_ds                = UNIT_NO == which_unit_fired;
    

    distributed_graph_memory #(.NEURON_WIDTH(NEURON_WIDTH),
                               .GRAPH_WIDTH(GRAPH_WIDTH),
                               .MEM_FILE(GRAPH_DISTRIB_FILE)) 
                               
                               G_memory(.index_of_neuron_that_fired(index_of_neuron_that_fired_reg),
                                        .enable(CE_output_from_distributed_graph),
                                        .Q_out(Q_out));




    neuron_ensemble     #(.UNIT_WIDTH(UNIT_WIDTH),
                          .UNIT_NO(UNIT_NO),
                          .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
                          .NEURON_WIDTH(NEURON_WIDTH),
                          .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                          .NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH),
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
        .Q_inp(Q_out_reg),

        .update_ds(update_ds),
        .idx_offset_to_update(offset_of_spike),

        .spike(spike_out),
        .unit_number(unit_number),
        .offset(offset),
        .membrane(membrane),
        .add_mem(add_mem)

    );


    always @(*)
    begin
        if (reset_module)
        begin
            next_state = ENSEMBLE_WITH_MEM_RESET;
        end
        else if (halt)
        begin
            next_state = ENSEMBLE_WITH_MEM_HOLD;
        end
        else if (update_memory)
        begin
            next_state = ENSEMBLE_WITH_MEM_FETCH_Q;
        end
        else 
        begin
            case (current_state)
                ENSEMBLE_WITH_MEM_RESET:
                begin
                    next_state = ENSEMBLE_WITH_MEM_GENERATE_1; 
                end
                ENSEMBLE_WITH_MEM_GENERATE_1:
                begin
                    next_state = ENSEMBLE_WITH_MEM_GENERATE_2;
                end
                ENSEMBLE_WITH_MEM_GENERATE_2:
                begin
                    next_state = ENSEMBLE_WITH_MEM_GENERATE_2;
                end
                ENSEMBLE_WITH_MEM_HOLD:
                begin
                    next_state = ENSEMBLE_WITH_MEM_HOLD;
                end
                ENSEMBLE_WITH_MEM_FETCH_Q:
                begin
                    next_state = ENSEMBLE_WITH_MEM_UPDATE;
                end
                ENSEMBLE_WITH_MEM_UPDATE:
                begin
                    next_state = ENSEMBLE_WITH_MEM_GENERATE_1;
                end
                default:
                begin
                    next_state = ENSEMBLE_RESET_STATE;
                end
            endcase
        end
    end    

    always @(posedge clk)
    begin
        current_state <= next_state;

        if (update_memory)
            index_of_neuron_that_fired_reg <= index_of_neuron_that_fired;

        incrementing_reg <= should_increment;
    end

    always @(*)
    begin
            case(current_state)
            ENSEMBLE_WITH_MEM_RESET:
            begin
                storage_CE = 1;
                flipping_CE = 0;
                reset_flipping = 1;
                CE_output_from_distributed_graph = 0;
                neuron_ensemble_control = ENSEMBLE_RESET_STATE;
                Q_out_reg = {NEURON_WIDTH{1'bX}};
            end
            ENSEMBLE_WITH_MEM_GENERATE_1:
            begin 
                storage_CE = 1;
                flipping_CE = 1;
                reset_flipping = 0;
                CE_output_from_distributed_graph = 0;
                neuron_ensemble_control <= ENSEMBLE_GENERATE_STATE;
                Q_out_reg = {NEURON_WIDTH{1'bX}};
            end
            ENSEMBLE_WITH_MEM_GENERATE_2:
            begin
                storage_CE = 1;
                flipping_CE = 1;
                reset_flipping = 0;
                CE_output_from_distributed_graph = 0;
                neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
                Q_out_reg = {NEURON_WIDTH{1'bX}};

            end
            ENSEMBLE_WITH_MEM_HOLD:
            begin 
                storage_CE = 0;
                flipping_CE = 0;
                reset_flipping = 0;
                CE_output_from_distributed_graph = 0;
                neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
                Q_out_reg = {NEURON_WIDTH{1'bX}};
            end
            ENSEMBLE_WITH_MEM_FETCH_Q:
            begin
                storage_CE = 0;
                flipping_CE = 0;
                reset_flipping = 0;
                CE_output_from_distributed_graph = 1;
                neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
                Q_out_reg = {NEURON_WIDTH{1'bX}};
            end
            ENSEMBLE_WITH_MEM_UPDATE:
            begin
                Q_out_reg = Q_out;
                storage_CE = 1;
                flipping_CE = 0;
                reset_flipping = 0;
                CE_output_from_distributed_graph = 1;
                if (incrementing_reg)
                begin
                    neuron_ensemble_control = ENSEMBLE_INC_STATE;
                end
                else
                begin
                    neuron_ensemble_control = ENSEMBLE_SUB_STATE;
                end
            end
            default:
            begin
                Q_out_reg = {NEURON_WIDTH{1'bX}};
                storage_CE = 0;
                flipping_CE = 0;
                reset_flipping = 1;
                CE_output_from_distributed_graph = 0;
                neuron_ensemble_control = ENSEMBLE_RESET_STATE;
            end
        endcase
    end


    assign  spike = current_state == ENSEMBLE_WITH_MEM_GENERATE_2 ? spike_out : 1'b0;


endmodule
