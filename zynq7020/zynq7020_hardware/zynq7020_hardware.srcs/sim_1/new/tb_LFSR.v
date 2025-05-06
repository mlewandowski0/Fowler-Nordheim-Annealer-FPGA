`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 11:16:19 AM
// Design Name: 
// Module Name: tb_LFSR
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


module tb_LFSR();

    // Test parameters
    localparam BITS = 7;            // width under test
    localparam CLK_PERIOD = 10;     // 100 MHz
    
    // DUT signals 
    reg clk                     = 1'b0;
    reg reset                   = 1'b1;
    reg chip_enable             = 1'b0;
    reg write_seed              = 1'b0;
    reg [BITS-1:0] seed         = {BITS{1'b0}};
    wire [BITS-1:0] lfsr_out;
    
    // DUT Instantiation 
    LFSR #(.BITS(BITS)) dut ( .clk(clk),    
                              .reset(reset),
                              .chip_enable(chip_enable),
                              .write_seed(write_seed),
                              .seed(seed),
                              .out(lfsr_out));

    // Cock generator 
    always #(CLK_PERIOD/2) clk = ~clk;
    
    integer cycle_cnt = 0;
    reg [BITS-1:0] start_state;
    reg test_passed = 1'b0;
    
    
      always @(lfsr_out) begin
        $display("%0t ns : lfsr_out changed to 0x%0h (%0b)",
                 $time, lfsr_out, lfsr_out);
      end

    
    
    initial begin
        $display("\n--- LFSR %0d-bit self-test -------------------------", BITS);
        
        // Apply synchronous reset for two clocks
        #100;
        repeat (2) @(posedge clk);
        reset <= 1'b0; // release reset
        
        // Load seed on the next clock
        @(posedge clk);
        write_seed  <= 1'b1;
        chip_enable <= 1'b0; // ignore enable while loading
        
        @(posedge clk);
        write_seed  <= 1'b0;
        chip_enable <= 1'b1;
        
        // record the value (should be the seed)
        @(posedge clk);
        start_state = lfsr_out;  
        
        cycle_cnt = 0;
        forever begin
          @(posedge clk);
          cycle_cnt = cycle_cnt + 1;
    
          if (lfsr_out == start_state) begin
            if (cycle_cnt == (1<<BITS)-1) begin
              $display("PASS: period = %0d", cycle_cnt);
              $finish;
            end else begin
              $display("FAIL: repeats early after %0d cycles", cycle_cnt);
              $finish;
            end
          end
          if (cycle_cnt > (1<<BITS)) begin
            $display("FAIL: exceeded expected period - stuck?");
            $finish;
          end
        end
      end        

endmodule
