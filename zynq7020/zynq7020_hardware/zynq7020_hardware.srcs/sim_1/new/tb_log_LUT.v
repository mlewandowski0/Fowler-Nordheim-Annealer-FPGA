`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 03:35:57 PM
// Design Name: 
// Module Name: tb_log_LUT
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


module tb_log_LUT();

    // local parameters
    localparam NOISE_SOURCE_WIDTH           = 8;
    localparam LUT_WIDTH                    = 18;
    localparam MEMFILE                      = "log_noise_fixed_width=18_frac_bits=10_nbits_of_lut=8.mif";
    localparam CLK_T                        = 10;
    
    localparam LUT_SIZE                     = 1 << NOISE_SOURCE_WIDTH;

    // DUT signals 
    reg clk = 1'b0;
    reg reset = 1'b1;
    reg CE = 1'b0;
    reg [NOISE_SOURCE_WIDTH-1:0] addr = {NOISE_SOURCE_WIDTH{1'b0}};
    wire [LUT_WIDTH-1:0] q;
    
    // instantiate the DUT
    log_LUT #(
        .NOISE_SOURCE_WIDTH (NOISE_SOURCE_WIDTH),
        .LUT_WIDTH          (LUT_WIDTH),
        .FILENAME           (MEMFILE)
    ) dut (
        .clk                (clk),
        .reset              (reset),
        .CE                 (CE),
        .noise_source       (addr),
        .distribution_output(q)
    );

    reg [LUT_WIDTH-1:0] rom_ref [0:LUT_SIZE-1];
    initial $readmemb(MEMFILE, rom_ref);


    // Clock generator
    always #(CLK_T / 2) clk = ~clk;
    
    integer i; 
    reg [LUT_WIDTH-1:0] last_q;
    
    initial begin
        
        $display("\n--- log_LUT %0d-entry self-test with memory %s ---", LUT_SIZE, MEMFILE);
        
        // wait for reset
        #100;
        
        // synchronous reset
        repeat (2) @(posedge clk);
        reset <= 1'b0;     
        
        // walk through every address 
        CE <= 1'b1;
        for (i = 0; i < LUT_SIZE; i = i + 1)
        begin
            addr <= i[NOISE_SOURCE_WIDTH-1:0];
            @(posedge clk);
            @(posedge clk);
            
            if (q !== rom_ref[i])
            begin
                $display("FAIL: addr=%0d expected = %b got =%b", i, rom_ref[i], q);   
                $stop;
            end
            $display("addr=%0d expected = %b got =%b", i, rom_ref[i], q);   
        end
        
        $display("INFO: all %0d address matched", LUT_SIZE);
        
        // test CE hold feature
        CE <= 1'b0;
        last_q = q;
        addr <= {NOISE_SOURCE_WIDTH{1'b1}}; // change adddress
        
        @(posedge clk);
        
        if (q !== last_q) begin
            $display("FAIL: CE low - output changed (was %h now %h)", last_q, q);
            $stop;
        end

        $display("PASS: log_LUT behavioural test completed successfully.");
        $finish;

        
    end
    

endmodule
