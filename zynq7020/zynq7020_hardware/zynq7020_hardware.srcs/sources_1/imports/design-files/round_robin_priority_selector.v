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
    
    reg [priority_width:0] priority; // Current priority index

    // Update priority on each positive clock edge
    always @(posedge clk) 
    begin
        if (reset)
            priority <= {priority_width{1'b0}};
        else 
        begin    
            if (priority == UNITS-1)
                priority <= {priority_width{1'b0}};
            else
                priority <= priority + 1;
        end 
    end
 
   

    always @(*) 
    begin
        spiked = 1'b0;
        unit_numb     = {UNIT_WIDTH{1'bX}};

        for (i = 0; i < UNITS; i = i + 1) 
        begin
            idx = (priority + i) % UNITS;
            
            if (!spiked && spikes[idx]) 
            begin
                spiked = 1;
                unit_numb     = all_unit_numbers[(idx+1)*UNIT_WIDTH-1 -: UNIT_WIDTH];
                offset        = offsets[(idx+1)*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH];
                membrane      = all_membranes[(idx+1)*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH];
                add_mem       = add_mems[idx];
                selected     = idx;  // Store the selected index (useful for debugging)
            end
        end
    end

endmodule