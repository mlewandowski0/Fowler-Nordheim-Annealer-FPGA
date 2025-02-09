`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 05:34:53 PM
// Design Name: 
// Module Name: temperature_mapping_tb
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


module temperature_mapping_tb;

    UTIL utils();

    // Parameters
    parameter N = 7;
    parameter OUT_WIDTH = 16;
    parameter CLK_HALF_PERIOD = 1;
    parameter CLK_PERIOD = 2 * CLK_HALF_PERIOD;
    parameter PERIODS_PER_STEP = 5;

    parameter ALL_VALUES = 1 << N;

    integer i, fd;

    reg clk;
    reg [N-1:0] x;
    wire [OUT_WIDTH-1:0] y;

    real y_as_real;


    temperature_mapping #(.N(N), .OUT_WIDTH(OUT_WIDTH)) DUT(.clk(clk), .x(x), .y(y));


    initial
    begin
        x = 0;
        clk = 0;
        forever begin
            #CLK_HALF_PERIOD clk = ~clk; 
        end 
    end

    always @(posedge clk)
    begin
        utils.float16_to_real(y, y_as_real);
        $fwrite(fd,"x=%d, y=%f\n", x, y_as_real);
    end


    initial 
    begin
		fd = $fopen("temperature_mapping_tb.txt", "w");
        for (i = 0; i < ALL_VALUES; i = i + 1)
        begin
            x = i;
            #(PERIODS_PER_STEP * CLK_PERIOD);
        end

        $fclose(fd);
        $finish;
    end

endmodule
