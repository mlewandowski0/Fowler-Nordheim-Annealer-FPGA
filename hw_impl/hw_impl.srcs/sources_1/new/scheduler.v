`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 04:09:10 PM
// Design Name: 
// Module Name: scheduler
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
    If a spike is detected, we need to do a couple of things :
    - 

*/

module scheduler
#(
    parameter UNIT_WIDTH = 2,
    parameter GRAPH_WIDTH = 12,
    parameter NEURON_NUM_WIDTH = 2,
    parameter MEMBRANE_WIDTH = 16,
    parameter COUNTER_WIDTH = 40,
    parameter TEMP_INC_WIDTH = 16,                  // decrease temperature every 65536 steps
    parameter NO_CLK_CYCLES_AFTER_UPDATE = 3,
    parameter SOLUTION_WIDTH = 16
)
(
    input wire                                 clk,
    input wire                                 reset,
    input wire                                 halt_scheduler,

    input wire                                 flip, 
    input wire [UNIT_WIDTH-1:0]                unit_number,
    input wire [NEURON_NUM_WIDTH-1:0]          offset,
    input wire [MEMBRANE_WIDTH-1:0]            membrane,
    input wire                                 add_membrane,

    output reg [$clog2(GRAPH_WIDTH)-1:0]       index_of_neuron_that_fired,
    output reg                                 reset_modules, 
    output wire                                halt_modules,
    output reg                                 update_memories,
    output reg                                 should_increment,
    output wire                                decrease_temp, 
    output wire [SOLUTION_WIDTH-1:0]           cuts_best_transmit
);

    // State Definitions
    localparam STATE_RESETED        = 2'b00;
    localparam STATE_ACCEPTING      = 2'b01;
    localparam STATE_DATA_CAPTURED  = 2'b11;
    localparam STATE_HALTED         = 2'b10;

    localparam IDX_WIDTH = $clog2(GRAPH_WIDTH);

    // Registers
    reg [1:0] current_state, next_state;
    reg [$clog2(NO_CLK_CYCLES_AFTER_UPDATE+1)-1:0] halt_counter;

    reg [SOLUTION_WIDTH-1:0]    curr_cuts, cuts_best;
    reg [GRAPH_WIDTH-1:0]       best_solution, curr_solution;

    reg [COUNTER_WIDTH-1:0]     counter;

    wire [IDX_WIDTH-1:0] unit_idx;

    assign unit_idx = {unit_number_reg, offset_reg};

    // Registers to store the associated data
    reg [UNIT_WIDTH-1:0]            unit_number_reg;
    reg [NEURON_NUM_WIDTH-1:0]      offset_reg;
    reg [MEMBRANE_WIDTH-1:0]        membrane_reg;


    assign halt_modules = halt_scheduler;
    assign decrease_temp = &counter[TEMP_INC_WIDTH-1:0];
    
    
    // transmit the value of the best solution found
    assign cuts_best_transmit = cuts_best;


    // TODO : transmit the best solution found

    // Sequential Logic for State Transitions and Outputs
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            current_state        <= STATE_RESETED;
            halt_counter         <= 0;
            update_memories      <= 0;
            reset_modules        <= 1;
            index_of_neuron_that_fired <= {IDX_WIDTH{1'bX}};

            // Reset the data registers
            unit_number_reg      <= 0;
            offset_reg           <= 0;
            membrane_reg         <= 0;
            curr_cuts            <= 0;
            cuts_best            <= 0;
            curr_solution        <= {GRAPH_WIDTH{1'b1}};  
            best_solution        <= {GRAPH_WIDTH{1'b1}};
            counter              <= 0;   
        end 
        else if (!halt_modules)
        begin
            counter       <= counter + 1;
            current_state <= next_state;

            // Update outputs and capture data based on the current state
            case (current_state)
                STATE_RESETED: begin
                    reset_modules        <= 1;
                    update_memories      <= 0;
                   index_of_neuron_that_fired <= {IDX_WIDTH{1'bX}};
                    // No data capture in reset state
                end

                STATE_ACCEPTING: begin
                    reset_modules        <= 0;
                    update_memories      <= 0; // Will be asserted in the next state
                    index_of_neuron_that_fired <= {IDX_WIDTH{1'bX}};
                     if (flip) 
                     begin
                        // Capture the associated data when flip is asserted
                        unit_number_reg <= unit_number;
                        offset_reg      <= offset;
                        membrane_reg    <= membrane;
                        should_increment     <= add_membrane;

                    end
                end

                STATE_DATA_CAPTURED: 
                begin
                    reset_modules        <= 0;
                    update_memories      <= 1; // Assert update_memories
                    // Output the index of the neuron that fired
                    index_of_neuron_that_fired <= unit_idx;

                    // implements the following
                    // d_cuts = (ds_p[p] - ds_n[p]) * vmem[p]
                    // curr_cuts -= d_cuts
                    if (should_increment)
                        curr_cuts  <= curr_cuts - membrane_reg;
                    else
                        curr_cuts  <= curr_cuts + membrane_reg;


                    curr_solution[unit_idx] <= ~curr_solution[unit_idx];

                end

                STATE_HALTED: begin
                    reset_modules        <= 0;
                    update_memories      <= 0;
                    index_of_neuron_that_fired <= {IDX_WIDTH{1'bX}};
                    // No data capture in halted state
                    // Update the best solution if the current solution is better
                    if (cuts_best < curr_cuts)
                    begin
                        cuts_best <= curr_cuts;
                        best_solution <= curr_solution;
                    end

                end

                default: begin
                    reset_modules        <= 0;
                    update_memories      <= 0;
                    index_of_neuron_that_fired <= {IDX_WIDTH{1'bX}};
                 end
            endcase

            // Handle the HALT counter
            if (current_state == STATE_HALTED) begin
                halt_counter <= halt_counter + 1;
            end else begin
                halt_counter <= 0;
            end
        end
    end

    // Combinational Logic for Next State
    always @(*) begin
        next_state = current_state;

        case (current_state)
            STATE_RESETED: begin
                next_state = STATE_ACCEPTING;
            end

            STATE_ACCEPTING: begin
                if (flip) begin
                    next_state = STATE_DATA_CAPTURED;
                end
            end

            STATE_DATA_CAPTURED: begin
                // After data is captured and update_memories is asserted
                next_state = STATE_HALTED;
            end

            STATE_HALTED: begin
                if (halt_counter >= NO_CLK_CYCLES_AFTER_UPDATE) begin
                    next_state = STATE_ACCEPTING;
                end
            end

            default: begin
                next_state = STATE_RESETED;
            end
        endcase
    end

endmodule
