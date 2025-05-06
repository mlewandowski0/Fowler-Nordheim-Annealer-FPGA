`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 09:20:48 PM
// Design Name: 
// Module Name: tb_temperature_module
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


module tb_temperature_module;

    localparam N = 7;
    localparam OUT_WIDTH = 18;
    localparam MEMFILE = "temperature_LUT_fixed_N9.mif";
    localparam CLK_T = 10;
    localparam FRAC_BITS = 9;
    localparam EXTRA_PULSES = 20;
    
    localparam ROM_SIZE = 1 << N;
    
    
    // DUT signals 
    reg clk = 1'b0;
    reg reset = 1'b1;
    reg decrease_temp = 1'b0;
    wire [OUT_WIDTH-1:0] temp;
    
    
    function real q_to_real;
            input [OUT_WIDTH-1:0] fx;
            reg   signed [OUT_WIDTH-1:0] sfx;   // local signed copy
        begin
            sfx       = fx;                     // interpret as two's-complement
            q_to_real = $itor(sfx) / (1<<FRAC_BITS);
        end
   endfunction

    
    // -------- DUT ------------------------------------------------------------
    temperature_module #(
        .N         (N),
        .OUT_WIDTH (OUT_WIDTH),
        .LUT_FILE  (MEMFILE)
    ) dut (
        .clk          (clk),
        .reset        (reset),
        .decrease_temp(decrease_temp),
        .temp         (temp)
    );


    // -------- reference ROM --------------------------------------------------
    reg [OUT_WIDTH-1:0] rom_ref [0:ROM_SIZE-1];
    initial $readmemb(MEMFILE, rom_ref);

    // 1-cycle latency aligner
    reg [OUT_WIDTH-1:0] ref_d;
    reg [N-1:0]         addr_cnt = {N{1'b0}};
    always @(posedge clk) ref_d <= rom_ref[addr_cnt];

    // clock 
    always #(CLK_T/2) clk = ~clk;

    // -------- open log file --------------------------------------------------
    integer fh;
    initial fh = $fopen("temp_capture.txt","w");

    // -------- stimulus / scoreboard -----------------------------------------
    integer cycle;
    initial begin
        #150;
        $display("\n--- temperature_module TB ---");

        // 1) release synchronous reset after two clocks
        repeat (2) @(posedge clk);
        reset <= 1'b0;

        // 2) iterate through every address + saturation pulses
        for (cycle = 0; cycle < ROM_SIZE + EXTRA_PULSES; cycle = cycle + 1) begin
            // issue a single-cycle decrease_temp pulse
            @(posedge clk);
            decrease_temp <= 1'b1;
            @(posedge clk);
            decrease_temp <= 1'b0;

            // advance reference address until it hits max
            if (addr_cnt != {N{1'b1}})
                addr_cnt <= addr_cnt + 1'b1;

            // wait one more clock for ROM latency
            @(posedge clk);

            // log and compare
            $fdisplay(fh, "%0d, %f", cycle, q_to_real(temp));   // cycle index, value
            if (temp !== ref_d) begin
                $display("FAIL @cycle %0d : exp %h  got %h", cycle, ref_d, temp);
                $stop;
            end
        end

        $fclose(fh);
        $display("PASS: all %0d+%0d cycles matched, capture saved to temp_capture.txt",
                 ROM_SIZE, EXTRA_PULSES);
        $finish;
    end


endmodule
