`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 13:38:34
// Design Name: 
// Module Name: LFSR_tb
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


`define BITS_NUM 7
`define HALF_PERIOD 5
`define CLOCK_CYCLE 2*`HALF_PERIOD
`define ELEMENTS (1 << `BITS_NUM)
`define LFSR_CYCLES 20

module LFSR_TB;

    reg clk;
    reg chip_enable;
        
    // seed 
    reg write_seed;
    reg [`BITS_NUM:1] seed;
    wire [`BITS_NUM:1] out;

    integer file; // file descriptor


    LFSR #(.BITS(`BITS_NUM)) lfsr(.clk(clk), .chip_enable(chip_enable), .write_seed(write_seed), .seed(seed), .out(out));


    initial 
    begin
        clk = 0;

        file = $fopen("LFSR_tb_monitor.txt", "w");

        if (file == 0 )
        begin
            $display("Error : could not open output file.");
            $finish;
        end

        // monitor signals and write to the file
        $fmonitor(file, "[$monitor] time=%0t,LFSR_out=%0d", $time, out);

        forever #(`CLOCK_CYCLE / 2) clk = ~clk;
    end


    // generate the clock signal

    // initialize and drive the inputs 
    initial 
    begin
        chip_enable = 0;
        write_seed = 0;

        #(`CLOCK_CYCLE)
        seed = 0;
        chip_enable = 1;
        write_seed = 1;
        #(`CLOCK_CYCLE)
        write_seed = 0;


        #(`LFSR_CYCLES * `ELEMENTS * `CLOCK_CYCLE)

        $fclose(file);
        $stop;
    end

    
endmodule