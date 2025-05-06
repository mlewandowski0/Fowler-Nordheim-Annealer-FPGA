`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 04:45:01 PM
// Design Name: 
// Module Name: tb_log_noise
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
//`define USE_CHECK 0


module tb_log_noise();
    
    // parameters 
    localparam NOISE_SOURCE_WIDTH = 16;
    localparam LUT_BIT_SIZE       = 8;
    localparam LUT_WIDTH          = 18;   // signed Q9.9  (1 sign, 8 int, 9 frac)
    localparam FRAC_BITS          = 9;    // fractional bits
    localparam MEMFILE            = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
    localparam CLK_T              = 10;           // 100 MHz
    localparam N_SAMPLES          = 500;
    
    // DUT signals 
    reg tb_clk = 1'b0;
    reg reset = 1'b1;
    reg CE = 1'b0;
    reg write_seed = 1'b0;
    reg [NOISE_SOURCE_WIDTH-1:0] seed = {NOISE_SOURCE_WIDTH{1'b0}};
    wire [LUT_WIDTH-1:0] noise_out;
    
`ifdef USE_CHECK
     wire [LUT_BIT_SIZE-1:0]       lfsr_out;
    // for comparison 
    LFSR_inout #(
        NOISE_SOURCE_WIDTH,
        LUT_BIT_SIZE
    ) lfsr_for_comparison (
        tb_clk,
        reset,
        CE,
        write_seed,
        seed,
        lfsr_out
    );
      // reference values for comparison 
      integer i;
      reg [LUT_WIDTH-1:0] lut_ref [0:(1<<LUT_BIT_SIZE)-1];

      // there is a bit of mismatch in terms of latency : it takes 2 clock cycles for the module to propgate, while here one. so we need to delay a bit
      wire [LUT_WIDTH-1:0] _lut_ref;
      reg [LUT_WIDTH-1:0] lut_ref_val;


      
      always @(posedge tb_clk)
      begin
        lut_ref_val <= _lut_ref;
      end
      
      initial $readmemb(MEMFILE, lut_ref);
      assign _lut_ref= lut_ref[lfsr_out];

`endif

        function real q_to_real;
            input [LUT_WIDTH-1:0] fx;
            reg   signed [LUT_WIDTH-1:0] sfx;   // local signed copy
        begin
            sfx       = fx;                     // interpret as two's-complement
            q_to_real = $itor(sfx) / (1<<FRAC_BITS);
        end
        endfunction
        
    
    
    // instantiate DUT 
      log_noise_generator #(
          .NOISE_SOURCE_WIDTH (NOISE_SOURCE_WIDTH),
          .LUT_BIT_SIZE       (LUT_BIT_SIZE),
          .LUT_WIDTH          (LUT_WIDTH),
          .FILENAME           (MEMFILE)
      ) dut (
          .clk        (tb_clk),
          .reset      (reset),
          .CE         (CE),
          .write_seed (write_seed),
          .seed       (seed),
          .noise_out  (noise_out)
      );
      
    
      // clock 
      always #(CLK_T/2) tb_clk = ~tb_clk;
      
      integer cycles;

      // open file for I/O
      integer fh;
      initial fh = $fopen("noise_capture.txt", "w");
      
      initial 
      begin
        #100;
        $display("\n--- log_noise_generator TB ---");
        
        // hold reset 2 clocks
        repeat (2) @(posedge tb_clk);
        reset <= 1'b0;
        
        // load seed 
        @(posedge tb_clk);
        write_seed <= 1'b1;
        
        @(posedge tb_clk);
        write_seed <= 1'b0;
        CE <= 1'b1;
        
        // wait one latency cylce (ROM outpu)
        @(posedge tb_clk);
        
        // run 512 cycles, compare each
        for (cycles = 0; cycles < N_SAMPLES; cycles = cycles + 1)
        begin
            $fdisplay(fh, "%0d, %f", cycles, q_to_real(noise_out));   // cycle index, value
            
            `ifdef USE_CHECK
            $fdisplay(fh, "%0d,%0h, %f", cycles, lfsr_out, q_to_real(noise_out));   // cycle index, value
             if (noise_out !== lut_ref_val) 
                begin
                  $display("FAIL @cycle %0d   exp=%h  got=%h as double %f",
                           cycles, lut_ref[lfsr_out], noise_out, q_to_real(noise_out));
                  $stop;
                end 
              `endif
            @(posedge tb_clk);
        end

        $fclose(fh);
        $display("Captured %0d samples in noise_capture.txt", N_SAMPLES);
        $finish;      
      end
endmodule
