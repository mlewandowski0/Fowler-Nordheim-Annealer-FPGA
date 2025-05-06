`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 12:27:27 PM
// Design Name: 
// Module Name: tb_LFSR_inout
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


module tb_LFSR_inout();

    // LFSR parameters
    localparam LFSR_BITS = 8;
    localparam OUT_BITS  = 6; // <= LFSR_BITS
    localparam CLK_T     = 10; // 100 MHz clock
    localparam SAMPLES   = 4096;    // has to be bigger then 2**OUT_BITS
    localparam UNIQUE_VALUES = 1 << OUT_BITS;
    
    
    // DUT signals 
    reg                     clk = 1'b0;
    reg                     reset = 1'b1;
    reg                     chip_enable = 1'b0;
    reg                     write_seed = 1'b0;
    reg [LFSR_BITS-1:0]     seed  = {LFSR_BITS{1'b0}};
    
    wire [OUT_BITS-1:0]     out_trunc;    



    // DUT instantiation
    LFSR_inout #(.LFSR_BITS(LFSR_BITS),
                 .OUT_BITS(OUT_BITS))

                dut(.clk(clk),
                    .reset(reset),
                    .chip_enable(chip_enable),
                    .write_seed(write_seed),
                    .seed(seed),
                    .out_trunc(out_trunc));

    // Clock Generation
    always 
        #(CLK_T /2) clk = ~clk;
    


   integer log_fh;
   initial begin
      log_fh = $fopen("lfsr_out.log", "w");   // "w" = truncate/create
      if (log_fh == 0) begin
         $display("%0t ns  ERROR: could not open lfsr_out.log", $time);
         $finish;
      end
   end

    // note the LFSR values, for later comaprison
   always @(out_trunc) begin
      $fdisplay(log_fh,"%0t ns : lfsr_out changed to 0x%0h (%0b)", $time, out_trunc, out_trunc);
   end

    
   // testbench signals
    integer                 idx;
    integer                 count;
    reg [OUT_BITS -1:0]     last_sample;
    reg                     all_ones_flag = 1'b1;
    reg                     stuck_flag = 1'b0;
    reg [SAMPLES-1:0]       visited = {SAMPLES{1'b0}};   // works for OUT_BITS <= 12
    
    initial 
    begin
            $display("\n--- LFSR_inout %0d/%0d-bit test ---", LFSR_BITS, OUT_BITS);
            
            // wait until the postsynthesis reset 
            #100;
            
            // reset for two clocks
            repeat (2) @(posedge clk);
            reset <= 0;

            // load seed 
            @(posedge clk);
            write_seed <= 1'b1;
            
            
            @(posedge clk);
            write_seed <= 1'b0;
            chip_enable <= 1'b1;
            
            // capture the requested number of samples
            last_sample = out_trunc;
            
            for (idx = 0; idx < SAMPLES; idx = idx + 1)
            begin
                @(posedge clk);
                
                // check the that output changes
                if (out_trunc == last_sample)
                    stuck_flag = 1'b1;
                    
                last_sample = out_trunc;
                
                // track all-ones occurences
                if (out_trunc != {OUT_BITS{1'b1}})
                    all_ones_flag = 1'b0;
                
                
                // uniqueness tracker 
                if (UNIQUE_VALUES < SAMPLES)
                begin
                    visited[out_trunc] = 1'b1;
                end
            end 

            //------------------  evaluate results  -----------------------
            $fclose(log_fh);
            if (stuck_flag)
                $display("FAIL: output stuck on cycle %0d", idx);
    
            if (all_ones_flag)
                $display("FAIL: never left all-zero state");
    
            if (OUT_BITS <= 8) begin
                count = 0;
                for (idx = 0; idx < UNIQUE_VALUES; idx = idx + 1)
                    if (visited[idx]) count = count + 1;
                $display("INFO: different truncated values seen = %0d / %0d", count, UNIQUE_VALUES);
            end
    
            if (!stuck_flag && !all_ones_flag) begin
                $display("PASS: basic functionality OK.");
            end else begin
                $display("TEST FAILED.");
            end
            $finish;
    end                
endmodule
