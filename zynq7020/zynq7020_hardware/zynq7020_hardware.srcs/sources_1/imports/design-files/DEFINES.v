`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 06:49:50 PM
// Design Name: 
// Module Name: DEFINES
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


`define ENSEMBLE_GENERATE_STATE     2'b00
`define ENSEMBLE_RESET_STATE        2'b01
`define ENSEMBLE_INC_STATE          2'b10
`define ENSEMBLE_SUB_STATE          2'b11

`define ENSEMBLE_WITH_MEM_GENERATE  2'b00
`define ENSEMBLE_WITH_MEM_HALT      2'b01
`define ENSEMBLE_WITH_MEM_UPDATE    2'b10
`define ENSEMBLE_WITH_MEM_RESET     2'b11