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
  parameter NO_OF_CLK_CYCLES_TO_PROPAGATE=2)
(input wire clk,
 input wire reset,
 input wire spike,
 input wire [NEURON_WIDTH-1:0] idx_offset,
 input wire [MEMBRANE_WIDTH-1:0] membrane,
 input wire add_mem,
 output reg                                  new_sample,
 output reg                                  spike_reg,
 output reg [NEURON_WIDTH-1:0]               offset_reg,
 output reg [MEMBRANE_WIDTH-1:0]             membrane_reg,
 output reg                                  add_mem_reg
);


localparam WAIT_FOR_PROPAGATION     = 2'b00;
localparam ACCEPTING                = 2'b01;
localparam GOOD_SAMPLE              = 2'b10;

localparam CNT_SIZE = $clog2(NO_OF_CLK_CYCLES_TO_PROPAGATE+1); 
reg [CNT_SIZE-1:0] cnt;

reg spike_input, add_mem_input;
reg [NEURON_WIDTH-1:0] idx_offset_input;
reg [MEMBRANE_WIDTH-1:0] membrane_input;


wire [CNT_SIZE-1:0] cnt_next;
assign cnt_next = cnt + 1;


reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk)
begin
    if (reset == 1)
    begin
        spike_reg           <= 0;
        offset_reg          <= {NEURON_WIDTH{1'bX}};
        membrane_reg        <= {MEMBRANE_WIDTH{1'bX}};
        add_mem_reg         <= 1'bX;
        cnt                 <= 0;
        next_state          <= WAIT_FOR_PROPAGATION;
        new_sample          <= 0;
    
        spike_input         <= 0;
        add_mem_input       <= 0;
        idx_offset_input    <= 0;
        membrane_input      <= 0;
    end
    else 
    begin
        if (state == ACCEPTING)
        begin
          spike_input       <= spike;
          add_mem_input     <= add_mem;
          idx_offset_input  <= idx_offset;
          membrane_input    <= membrane;
        end
        else if (state == WAIT_FOR_PROPAGATION)
        begin
          cnt               <= cnt_next;
        end

        state <= next_state;
    end
end


always @(*)
begin
  case(state)
    WAIT_FOR_PROPAGATION:
    begin
        new_sample = 0;
        if (cnt == NO_OF_CLK_CYCLES_TO_PROPAGATE)
        begin
          next_state = ACCEPTING;
        end
    end
    ACCEPTING:
    begin
        if (spike_input == 1)
        begin
          next_state = GOOD_SAMPLE;
        end
        else 
        begin
          next_state = WAIT_FOR_PROPAGATION;
          new_sample = 1;
        end
    end
    GOOD_SAMPLE:
    begin
        spike_reg = spike_input;
        offset_reg = idx_offset_input;
        membrane_reg = membrane_input;
        add_mem_reg = add_mem_input;
        next_state = GOOD_SAMPLE;
    end
    default:
    begin
      
    end
  endcase
end

endmodule
