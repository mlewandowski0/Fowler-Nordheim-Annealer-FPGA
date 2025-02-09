`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 09:29:49 PM
// Design Name: 
// Module Name: log_noise_generator_tb
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


module log_noise_generator_tb;

    UTIL utils();


    parameter NOISE_SOURCE_WIDTH = 6;
    parameter LUT_WIDTH = 16;
    parameter FILENAME="log_noise_LUT.mif";
    parameter HALF_CLK_PERIOD = 1;
    parameter CLK_PERIOD = 2 * HALF_CLK_PERIOD;
    parameter NUMBER_OF_VALUES = 1 << NOISE_SOURCE_WIDTH;
    parameter NUMBER_OF_LFSR_CYCLES = 5;

    reg clk;
    reg CE;
    reg write_seed;
    reg [NOISE_SOURCE_WIDTH-1:0] seed;
    wire [LUT_WIDTH-1:0] noise_out;

    log_noise_generator #(.NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH), .LUT_WIDTH(LUT_WIDTH), .filename(FILENAME)) DUT(.clk(clk), .CE(CE), .write_seed(write_seed), .seed(seed), .noise_out(noise_out));

    initial
    begin
        clk = 0;
        forever begin
            #HALF_CLK_PERIOD clk = ~clk;
        end
    end

    real noise_out_as_real;
    integer fd;

    always @(posedge clk)
    begin
        if (CE)
        begin
            utils.float16_to_real(noise_out, noise_out_as_real);
            $fwrite(fd, "%f\n", noise_out_as_real);
        end
    end

    initial 
    begin
        fd = $fopen("log_noise_generator.txt", "w");
        CE = 0;
        write_seed = 0;
        seed = 1;
        wait (clk);
        CE = 1;
        write_seed = 1;
        #CLK_PERIOD;
        write_seed = 0;
        #CLK_PERIOD;

        #(NUMBER_OF_LFSR_CYCLES * NUMBER_OF_VALUES * CLK_PERIOD);

        $fclose(fd);
        $finish;
    end


endmodule
