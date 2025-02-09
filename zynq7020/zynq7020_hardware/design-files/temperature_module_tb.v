`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 06:22:14 PM
// Design Name: 
// Module Name: temperature_module_tb
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


module temperature_module_tb;


    UTIL utils();

    parameter N = 7;
    parameter OUT_WIDTH = 16;
    parameter LUT_FILE = "temperature_LUT.mif";
    parameter CLK_HALF_PERIOD = 1;
    parameter CLK_PERIOD = 2 * CLK_HALF_PERIOD;
    parameter ALL_VALUES = 1 << N;

    integer fd;
    real temp_as_real;

    reg clk;
    reg decrease_temp;
    reg reset;
    wire [OUT_WIDTH-1:0] temp;

    temperature_module #(.N(N), .OUT_WIDTH(OUT_WIDTH), .LUT_FILE(LUT_FILE)) DUT(.clk(clk), .decrease_temp(decrease_temp), .reset(reset), .temp(temp));

    initial
    begin
        clk = 0;
        forever 
        begin
            #CLK_HALF_PERIOD clk = ~clk; 
        end
    end

    always @(posedge clk)
    begin
        utils.float16_to_real(temp, temp_as_real);
        $fwrite(fd, "Time=%0t, temp=%f\n", $time, temp_as_real);
    end

    initial
    begin
        fd = $fopen("temperature_module_tb.txt", "w");

        reset = 0;
        decrease_temp = 0;
        
        wait (clk );
        # (2 * CLK_PERIOD);

        // reset the device
        reset = 1;
        #CLK_PERIOD;
           
        // check that the temperature is fixed
        reset = 0;
        #(10 * CLK_PERIOD);

        // decrease temperature
        decrease_temp = 1;
        #CLK_PERIOD;

        // check whether that temperature is fixed
        decrease_temp = 0;
        #(10 * CLK_PERIOD);

        // ramp temperature to as little as possbile (check that )
        decrease_temp = 1;
        #(2 * ALL_VALUES * CLK_PERIOD);
        
        
        $fclose(fd);
        $finish;
    end

endmodule
