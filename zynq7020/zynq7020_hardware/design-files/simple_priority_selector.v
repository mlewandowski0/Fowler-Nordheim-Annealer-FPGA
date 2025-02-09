`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:24:28 PM
// Design Name: 
// Module Name: simple_priority_selector
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




module simple_priority_selector 
#(

    parameter UNITS = 4, 
    parameter UNIT_WIDTH=2,
    parameter NEURON_NUM_WIDTH = 2,
    parameter MEMBRANE_WIDTH=16
) 

(
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

    integer i;

    always @(*) 
    begin
        // initialize everything to nones
        spiked     = 1'b0;
        unit_numb  = {UNIT_WIDTH{1'bX}};
        offset     = {NEURON_NUM_WIDTH{1'bX}};
        membrane   = {MEMBRANE_WIDTH{1'bX}};
        add_mem    = 1'bX;

        for (i = 0; i < UNITS; i = i + 1) begin
            if (!spiked && spikes[i]) begin
                spiked = 1;
                unit_numb     = all_unit_numbers[(i+1)*UNIT_WIDTH-1 -: UNIT_WIDTH];
                offset        = offsets[(i+1)*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH];
                membrane      = all_membranes[(i+1)*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH];
                add_mem       = add_mems[i];
            end
        end
    end

endmodule


/*


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:24:28 PM
// Design Name: 
// Module Name: simple_priority_selector
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




module simple_priority_selector 
#(

    parameter UNITS = 4, 
    parameter UNIT_WIDTH=2,
    parameter NEURON_NUM_WIDTH = 2,
    parameter MEMBRANE_WIDTH=16
) 

(
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

    integer i;

    always @(*) 
    begin
        spiked = 1'b0;
        unit_numb     = {UNIT_WIDTH{1'bX}};

        for (i = 0; i < UNITS; i = i + 1) begin
            if (!spiked && spikes[i]) begin
                spiked = 1;
                unit_numb     = all_unit_numbers[(i+1)*UNIT_WIDTH-1 -: UNIT_WIDTH];
                offset        = offsets[(i+1)*NEURON_NUM_WIDTH-1 -: NEURON_NUM_WIDTH];
                membrane      = all_membranes[(i+1)*MEMBRANE_WIDTH-1 -: MEMBRANE_WIDTH];
                add_mem       = add_mems[i];
            end
        end
    end

endmodule

*/