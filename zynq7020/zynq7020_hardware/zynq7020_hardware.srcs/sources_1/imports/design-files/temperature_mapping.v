`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 05:33:52 PM
// Design Name: 
// Module Name: temperature_mapping
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


module temperature_mapping #(parameter N = 7,
                             parameter OUT_WIDTH = 18,
                             parameter LUT_FILE = "temperature_LUT_fixed_N9.mif")
                             (
                             input wire clk,
                             input wire reset,                      // synchronous active high
                             input wire CE,                         // chip enable
                             input wire [N-1:0] x,                  // input addresss
                             output reg [OUT_WIDTH-1:0] y          // registered data
                             );
                             


// parameter check
initial 
begin
    if (N < 1)
        $error("temperature mapping: N must be >= 1");
end

localparam LUT_SIZE = 1 << N;


// ROM declaration 
(* ram_style = "block", rom_init_file = LUT_FILE *)
reg [OUT_WIDTH-1:0] rom [0:(LUT_SIZE-1)];

initial $readmemb(LUT_FILE, rom);


// registered synchronous read 
always @(posedge clk)
begin
    if (reset)
        y <= {OUT_WIDTH{1'b0}};
    else if (CE)
        y <= rom[x];
end

endmodule                            