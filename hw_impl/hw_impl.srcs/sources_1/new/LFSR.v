`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 13:33:35
// Design Name: 
// Module Name: LFSR
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


module LFSR #(parameter BITS=6) (
        input wire clk,
        input wire chip_enable,
        
        // seed 
        input wire write_seed,
        input wire [BITS:1] seed, 
        output wire [BITS:1] out
 );
   
        reg [BITS:1] state;
        reg XNORed;

  always @(*)
    begin
      case (BITS)
        3: begin
            XNORed =   state[3] ^~   state[2];
        end
        4: begin
            XNORed =   state[4] ^~   state[3];
        end
        5: begin
            XNORed =   state[5] ^~   state[3];
        end
        6: begin
            XNORed =   state[6] ^~   state[5];
        end
        7: begin
            XNORed =   state[7] ^~   state[6];
        end
        8: begin
            XNORed =   state[8] ^~   state[6] ^~   state[5] ^~   state[4];
        end
        9: begin
            XNORed =   state[9] ^~   state[5];
        end
        10: begin
            XNORed =   state[10] ^~   state[7];
        end
        11: begin
            XNORed =   state[11] ^~   state[9];
        end
        12: begin
            XNORed =   state[12] ^~   state[6] ^~   state[4] ^~   state[1];
        end
        13: begin
            XNORed =   state[13] ^~   state[4] ^~   state[3] ^~   state[1];
        end
        14: begin
            XNORed =   state[14] ^~   state[5] ^~   state[3] ^~   state[1];
        end
        15: begin
            XNORed =   state[15] ^~   state[14];
        end
        16: begin
            XNORed =   state[16] ^~   state[15] ^~   state[13] ^~   state[4];
          end
        17: begin
            XNORed =   state[17] ^~   state[14];
        end
        18: begin
            XNORed =   state[18] ^~   state[11];
        end
        19: begin
            XNORed =   state[19] ^~   state[6] ^~   state[2] ^~   state[1];
        end
        20: begin
            XNORed =   state[20] ^~   state[17];
        end
        21: begin
            XNORed =   state[21] ^~   state[19];
        end
        22: begin
            XNORed =   state[22] ^~   state[21];
        end
        23: begin
            XNORed =   state[23] ^~   state[18];
        end
        24: begin
            XNORed =   state[24] ^~   state[23] ^~   state[22] ^~   state[17];
        end
        25: begin
            XNORed =   state[25] ^~   state[22];
        end
        26: begin
            XNORed =   state[26] ^~   state[6] ^~   state[2] ^~   state[1];
        end
        27: begin
            XNORed =   state[27] ^~   state[5] ^~   state[2] ^~   state[1];
        end
        28: begin
            XNORed =   state[28] ^~   state[25];
        end
        29: begin
            XNORed =   state[29] ^~   state[27];
        end
        30: begin
            XNORed =   state[30] ^~   state[6] ^~   state[4] ^~   state[1];
        end
        31: begin
            XNORed =   state[31] ^~   state[28];
        end
        32: begin
            XNORed =   state[32] ^~   state[22] ^~   state[2] ^~   state[1];
        end
    endcase // case (NUM_BITS)
end // always @ (*)

endmodule