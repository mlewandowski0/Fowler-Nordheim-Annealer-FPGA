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


module selector_units_eq_3 
#(parameter UNITS = 3,
  parameter UNIT_WIDTH=2)
(
    input wire [UNITS-1:0] spikes,
    output wire [UNIT_WIDTH-1:0] unit[:0],
    output wire [UNITS-1:0] selected_unit  
);


endmodule