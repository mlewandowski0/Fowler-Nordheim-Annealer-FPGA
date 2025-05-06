`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 07:53:50 PM
// Design Name: 
// Module Name: tb_temperature_mapping
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


module tb_temperature_mapping();

    localparam N = 7;
    localparam OUT_WIDTH = 18;
    localparam MEMFILE = "temperature_LUT_fixed_N9.mif";
    localparam CLK_T = 10;
    localparam FRAC_BITS = 9;
    
    reg clk = 0, reset = 1, CE = 0;
    reg [N-1:0] addr = 0;
    wire [OUT_WIDTH-1:0] data;
    
   // DUT
   temperature_mapping #(.N(N), .OUT_WIDTH(OUT_WIDTH), .LUT_FILE(MEMFILE)) dut (
      .clk   (clk), .reset(reset), .CE(CE), .x(addr), .y(data)
   );


    function real q_to_real;
            input [OUT_WIDTH-1:0] fx;
            reg   signed [OUT_WIDTH-1:0] sfx;   // local signed copy
        begin
            sfx       = fx;                     // interpret as two's-complement
            q_to_real = $itor(sfx) / (1<<FRAC_BITS);
        end
   endfunction

   // reference
   reg [OUT_WIDTH-1:0] rom [0:(1<<N)-1];
   initial $readmemb(MEMFILE, rom);
   reg [OUT_WIDTH-1:0] ref_d;

      // open file for I/O
      integer fh;
      initial fh = $fopen("temperature_mapping.txt", "w");

    
      // clock
   always #(CLK_T/2) clk = ~clk;
   always @(posedge clk) ref_d <= rom[addr];

   integer i;
   initial begin
       // wait for global reset
       #150;
   
       repeat (2) @(posedge clk);
       reset <= 0;  CE <= 1;

       for (i = 0; i < (1<<N); i = i + 1) begin
           addr <= i[N-1:0];
           @(posedge clk);        // pipeline latency
           @(posedge clk);
           $fdisplay(fh, "%0d, %f", i, q_to_real(data));   // cycle index, value
 
           if (data !== ref_d) begin
               $display("Mismatch addr=%0d  exp=%h  got=%h", i, ref_d, data);
               $stop;
           end
       end
       $fclose(fh);
       $display("PASS: all %0d addresses matched.", 1<<N);
       $finish;
   end

    

endmodule
