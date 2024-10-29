`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 06:45:07 PM
// Design Name: 
// Module Name: transmit_buffer
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
                spike_reg                       <= 0;
                offset_reg                      <= {NEURON_WIDTH{1'bX}};
                membrane_reg                    <= {MEMBRANE_WIDTH{1'bX}};
                add_mem_reg                     <= 1'bX;
*/

module transmit_buffer
#(parameter NEURON_WIDTH=5,
  parameter MEMBRANE_WIDTH=16,
  parameter NO_OF_CLK_CYCLES_TO_PROPAGATE=1,
  parameter NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=2)
(input wire                                  clk,
 input wire                                  reset,
 input wire                                  updating_membranes,
 input wire                                  update_ds,  
 input wire                                  spike,
 input wire [NEURON_WIDTH-1:0]               idx_offset,
 input wire [MEMBRANE_WIDTH-1:0]             membrane,
 input wire                                  add_mem,
 output reg                                  new_sample,
 output reg                                  spike_reg,
 output reg [NEURON_WIDTH-1:0]               offset_reg,
 output reg [MEMBRANE_WIDTH-1:0]             membrane_reg,
 output reg                                  add_mem_reg
);

// State encoding
localparam WAIT_FOR_PROPAGATION     = 3'b000;
localparam ACCEPTING                = 3'b001;
localparam GOOD_SAMPLE              = 3'b010;
localparam MEMBRANE_UPDATING        = 3'b011;
localparam WAIT_FOR_UPDATES         = 3'b100;

// counter size 
localparam CNT_SIZE = $clog2(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE + 1);
reg [CNT_SIZE-1:0] cnt; 

// state register
reg [2:0] state, next_state; 

// input latches 
reg spike_input, add_mem_input;
reg [NEURON_WIDTH-1:0] idx_offset_input;
reg [MEMBRANE_WIDTH-1:0] membrane_input;

// Sequential logic 

always @(posedge clk)
begin
  if (reset)
  begin
    state         <= WAIT_FOR_PROPAGATION;
    cnt           <= 0;
    new_sample    <= 0;
    spike_reg     <= 0;
    spike_input   <= 0;
    offset_reg    <= {NEURON_WIDTH{1'bX}};
    membrane_reg  <= {MEMBRANE_WIDTH{1'bX}};
    add_mem_reg   <= 1'bX;
    add_mem_input <= 1'bX;
    idx_offset_input <= {NEURON_WIDTH{1'bX}};
    membrane_input <= {MEMBRANE_WIDTH{1'bX}};
  end
  else if (updating_membranes)
  begin
      state           <= MEMBRANE_UPDATING;

      // TODO: if latched the membrane state, and compare it within this module
      // we can perhaps not generate a new_sample signal
      new_sample      <= 1;
      cnt             <= 0;

      // reset outputs and input latches 
      spike_reg       <= 0;
      spike_input     <= 0;
      offset_reg      <= {NEURON_WIDTH{1'bX}};
      membrane_reg    <= {MEMBRANE_WIDTH{1'bX}};
      add_mem_reg     <= 1'bX;
      add_mem_input   <= 1'bX;
      idx_offset_input <= {NEURON_WIDTH{1'bX}};
      membrane_input <= {MEMBRANE_WIDTH{1'bX}};
  end
  else
  begin
      // Stat etransition
      state <= next_state;

      // State-based actions
      case (state)
        WAIT_FOR_PROPAGATION:
        begin
            cnt <= cnt + 1;
        end

        WAIT_FOR_UPDATES:
        begin
            cnt <= cnt + 1;
        end

        ACCEPTING:
        begin
            cnt <= 0;
            spike_input <= spike;
            add_mem_input <= add_mem;
            idx_offset_input <= idx_offset;
            membrane_input <= membrane;
        end

        GOOD_SAMPLE:
        begin
            spike_reg <= spike_input;
            offset_reg <= idx_offset_input;
            membrane_reg <= membrane_input;
            add_mem_reg <= add_mem_input;
        end

        default:
        begin

        end
      endcase 


      // Handle new_sample signal
      if (new_sample == 0 && ((state == ACCEPTING && spike == 0 && next_state == WAIT_FOR_PROPAGATION) || (state == MEMBRANE_UPDATING)))
      begin
          new_sample <= 1;  // Request a new sample
      end 
      else 
      begin
          new_sample <= 0;
      end
  end
end


// Combinatorial logic for next state

always @(*)
begin

    // default assignment
    next_state = state;

    case (state)
        WAIT_FOR_PROPAGATION: begin
            if (cnt == NO_OF_CLK_CYCLES_TO_PROPAGATE) begin
                next_state = ACCEPTING;
            end
        end

        WAIT_FOR_UPDATES:
        begin
            if (cnt == NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)
            begin
                next_state = ACCEPTING;
            end
        end

        ACCEPTING: 
        begin
            if (spike == 1) 
            begin
                next_state = GOOD_SAMPLE;
            end 
            else 
            begin
                next_state = WAIT_FOR_PROPAGATION;
            end
        end

        GOOD_SAMPLE: 
        begin
            next_state = GOOD_SAMPLE;
        end

        MEMBRANE_UPDATING: 
        begin
            next_state = WAIT_FOR_UPDATES;
        end

        default: 
        begin
            next_state = WAIT_FOR_PROPAGATION;
        end
    endcase
end


endmodule
