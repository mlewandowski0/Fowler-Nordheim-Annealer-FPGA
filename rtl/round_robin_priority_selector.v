`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:57:07 PM
// Design Name: 
// Module Name: round_robin_priority_selector
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


module round_robin_priority_selector
#(

    parameter UNITS = 4, 
    parameter UNIT_WIDTH=2,
    parameter NEURON_NUM_WIDTH = 2,
    parameter MEMBRANE_WIDTH=16
) 

(
    input wire                                  reset,
    input wire                                  clk,
    
    input wire [UNITS-1:0]                      spikes,
    input wire [UNITS*UNIT_WIDTH-1:0]           all_unit_numbers,
    input wire [UNITS * NEURON_NUM_WIDTH-1:0]   offsets,
    input wire [UNITS * MEMBRANE_WIDTH-1:0]     all_membranes,
    input wire [UNITS-1:0]                      add_mems, 

    output reg                                 spiked, 
    output reg [UNIT_WIDTH-1:0]                unit_numb,
    output reg [NEURON_NUM_WIDTH-1:0]          offset,
    output reg [MEMBRANE_WIDTH-1:0]            membrane,
    output reg                                 add_mem
);


    localparam priority_width =  $clog2(UNITS)-1;

    integer i, idx, selected;
    
    reg [priority_width:0] priority_index; // Current priority_index index

    // Update priority_index on each positive clock edge
    always @(posedge clk) 
    begin
        if (reset)
            priority_index <= {priority_width{1'b0}};
        else 
        begin    
            if (priority_index == UNITS-1)
                priority_index <= {priority_width{1'b0}};
            else
                priority_index <= priority_index + 1;
        end 
    end
 
   

always @(*) begin
  // 1) default everything once
  spiked    = 1'b0;
  unit_numb = {UNIT_WIDTH{1'bX}};
  offset    = {NEURON_NUM_WIDTH{1'bX}};
  membrane  = {MEMBRANE_WIDTH{1'bX}};
  add_mem   = 1'bX;

  // 2) then scan exactly once
  for (i = 0; i < UNITS; i = i + 1) begin
    idx = (priority_index + i) % UNITS;
    if (!spiked && spikes[idx]) begin
      spiked    = 1;
      unit_numb = all_unit_numbers[(idx+1)*UNIT_WIDTH-1 -: UNIT_WIDTH];
      offset    = offsets[(idx+1)*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH];
      membrane  = all_membranes[(idx+1)*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH];
      add_mem   = add_mems[idx];
    end
  end
end


endmodule