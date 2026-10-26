`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2025 03:57:58 PM
// Design Name: 
// Module Name: scheduler_2
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


module scheduler_2
#(
    parameter UNIT_WIDTH = 2,
    parameter GRAPH_WIDTH = 12,
    parameter NEURON_NUM_WIDTH = 2,
    parameter MEMBRANE_WIDTH = 16,
    parameter COUNTER_WIDTH = 40,
    parameter TEMP_INC_WIDTH = 16,
    parameter NO_CLK_CYCLES_AFTER_UPDATE = 3,
    parameter SOLUTION_WIDTH = 16
)
(
    // control signals 
    input wire                                 clk,
    input wire                                 reset,
    input wire                                 halt_scheduler,
    input wire [31:0]                          cooling_period,
    
    // the interconnect 
    input wire                                 flip, 
    input wire [UNIT_WIDTH-1:0]                unit_number,
    input wire [NEURON_NUM_WIDTH-1:0]          offset,
    input wire signed [MEMBRANE_WIDTH-1:0]     membrane,
    input wire                                 add_membrane,

    // scheduler outputs 
    output [$clog2(GRAPH_WIDTH)-1:0]           index_of_neuron_that_fired,
    output reg                                 reset_modules, 
    output wire                                halt_modules,
    output reg                                 update_memories,
    output reg                                 should_increment,
    output wire                                decrease_temp, 
    output wire signed [SOLUTION_WIDTH-1:0]    cuts_best_transmit,
    output wire [31:0]                         flips_cnt,
    output wire [31:0]                         cycle_count,
    output reg [GRAPH_WIDTH-1:0]               best_assignment
);

    // State Definitions
    localparam           S_RESET     = 2'd0;
    localparam           S_WAIT      = 2'd1;
    localparam           S_CAPTURE   = 2'd2;
    localparam           S_HALT      = 2'd3;
    localparam IDX_WIDTH = $clog2(GRAPH_WIDTH);



    // Registers
    reg [1:0] state;
    reg [1:0] next_state;
    reg [$clog2(NO_CLK_CYCLES_AFTER_UPDATE+1)-1:0] halt_counter;
    reg [$clog2(NO_CLK_CYCLES_AFTER_UPDATE+1)-1:0] halt_cnt;
    reg [COUNTER_WIDTH-1:0] step_cnt;
    reg [31:0] cooling_count;
    reg [31:0] cooling_terminal;
    // Configuration changes are accepted while reset/paused. Keep the 32-bit
    // subtraction out of the running comparator -> temperature enable path.
    always @(posedge clk)
        if (reset || halt_modules)
            cooling_terminal <= (cooling_period == 0 ? (32'd1 << TEMP_INC_WIDTH) : cooling_period) - 1;
    
    // captured spike data 
    reg                        flip_r;
    reg [UNIT_WIDTH-1:0]       unit_r;
    reg [NEURON_NUM_WIDTH-1:0] off_r;
    reg signed [MEMBRANE_WIDTH-1:0]   mem_r;
    reg                        add_r;
    
    // tracking of the best-cut solution
    reg signed [SOLUTION_WIDTH-1:0] cuts_cur, cuts_best;
    reg [31:0] flips;
    reg [GRAPH_WIDTH-1:0] assignment;
    
    wire [$clog2(GRAPH_WIDTH)-1:0] idx_comb = {unit_r, off_r};
    assign index_of_neuron_that_fired = idx_comb;
    
    assign decrease_temp = !halt_modules && (cooling_count == cooling_terminal);
    assign cuts_best_transmit = cuts_best;
    // Drain a captured update before honoring a host pause.
    assign halt_modules = halt_scheduler && (state == S_WAIT || state == S_RESET);
    assign flips_cnt = flips;
    assign cycle_count = step_cnt[31:0];
    
    
   // next potential cost
    wire signed [SOLUTION_WIDTH-1:0] cuts_next = add_r ? (cuts_cur - mem_r) : (cuts_cur + mem_r);
    
    
    // FSM : sequential part 

    always @(posedge clk)
    begin
        if (reset)
        begin
            state      <= S_RESET;
            halt_cnt   <= 0;
            step_cnt   <= 0;
            cooling_count <= 0;
            flip_r     <= 0;
            unit_r     <= 0;
            off_r      <= 0;
            mem_r      <= 0;
            add_r      <= 0;
            cuts_cur   <= 0;
            cuts_best  <= 0;
            flips      <= 0;
            assignment <= {GRAPH_WIDTH{1'b1}};
            best_assignment <= {GRAPH_WIDTH{1'b1}};
        end
        else
        begin
            state <= next_state;
            if (!halt_modules) begin
                step_cnt <= step_cnt + 1;
                cooling_count <= decrease_temp ? 0 : cooling_count + 1;
            end
            
            case(state)
                S_WAIT:
                begin
                    if (flip && !halt_scheduler)
                    begin
                        flip_r <= 1;
                        unit_r <= unit_number;
                        off_r <= offset;
                        mem_r <= membrane;
                        add_r <= add_membrane;
                    end
                end
                S_CAPTURE:
                begin
                    flips <= flips + 1;
                    assignment[idx_comb] <= ~assignment[idx_comb];
                    cuts_cur <= cuts_next;
                    if (cuts_next > cuts_best)
                    begin
                        cuts_best <= cuts_next;
                        best_assignment <= assignment ^ ({{(GRAPH_WIDTH-1){1'b0}},1'b1} << idx_comb);
                    end 
                    flip_r <= 0;
                    halt_cnt <= 0;
                end            
                S_HALT:
                begin
                    halt_cnt <= halt_cnt + 1;
                end
            endcase
        end    
    end
    
    
    // FSM : combinational next-state + output decode
    
    always @(*)
    begin
        // defaults outputs 
        reset_modules = 1'b0;
        update_memories = 1'b0;
        should_increment = 1'b0;
        next_state = state;
            
            
       case (state)
            S_RESET:
            begin
                reset_modules = 1;
                next_state = S_WAIT;
            end
            S_WAIT:
            begin
                if (flip && !halt_scheduler)
                    next_state = S_CAPTURE;
            end
            S_CAPTURE:
            begin
                update_memories = 1;
                should_increment = add_r;
                next_state = S_HALT;
            end
            S_HALT:
            begin
                if (halt_cnt == NO_CLK_CYCLES_AFTER_UPDATE)
                    next_state = S_WAIT;
            end       
       endcase
    end
    
endmodule
