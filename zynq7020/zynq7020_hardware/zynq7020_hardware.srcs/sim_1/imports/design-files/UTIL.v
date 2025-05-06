`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 12:52:51 PM
// Design Name: 
// Module Name: UTIL
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


module UTIL;

    task float16_to_real(input [15:0] y, output real y_as_real);
            reg sign;
            reg [4:0] exponent;
            reg [9:0] mantissa;
            reg [10:0] mantissa_extended;
            integer exponent_shift;
            begin
                sign = y[15];
                exponent = y[14:10];
                mantissa = y[9:0];
                mantissa_extended = {1'b1, mantissa};
                exponent_shift = exponent - 15;
                y_as_real =  mantissa_extended * (2.0 ** (exponent_shift - 10));
                if (sign)
                    y_as_real = -y_as_real;
            end
    endtask

        task sfixed_16_to_real(input signed [15:0] y, input integer FRAC_BITS, output real y_as_real);

                real fractional;

                begin
                        fractional = 1.0 / (1 << FRAC_BITS);
                        y_as_real = $itor(y) * fractional;

                end

        endtask

    // Task to display the results in readable format
    task display_result_fixed_16bits;
        input signed [15:0] a_in;
        input signed [15:0] b_in;
        input signed [15:0] sum_in;
        input integer FRACTIONAL;
        input integer file;
        
        real a_real;
        real b_real;
        real sum_real;
        
    
        begin
            float16_to_real(a_in, a_real);
            float16_to_real(b_in, b_real);
            float16_to_real(sum_in, sum_real);
            

            $fwrite(file, "Time %0t : ", $time);
            $fwrite(file, "a = %f, b = %f, sum = %f\n", a_real, b_real, sum_real);
        end
    endtask
    
    
    // Task to display the results in readable format
    task display_result_fixed_16bits_with_overflow;
        input signed [15:0] a_in;
        input signed [15:0] b_in;
        input signed [15:0] sum_in;
        input overflow;
        input integer FRACTIONAL;
        input integer file;
        
        real a_real;
        real b_real;
        real sum_real;
        
    
        begin
            sfixed_16_to_real(a_in, FRACTIONAL, a_real);
            sfixed_16_to_real(b_in, FRACTIONAL, b_real);
            sfixed_16_to_real(sum_in, FRACTIONAL, sum_real);
            

            $fwrite(file, "Time %0t : ", $time);
            if (overflow)
            begin           
                $fwrite(file, "a = %f, b = %f, sum = %f, detected overflow \n", a_real, b_real, sum_real);
            end
            else 
            begin
                $fwrite(file, "a = %f, b = %f, sum = %f, no overflow \n", a_real, b_real, sum_real);                
            end
        end
    endtask

    // Task to display the results in readable format
    task display_result_float16;
        input [15:0] a_in;
        input [15:0] b_in;
        input [15:0] result_in;
        input integer file;
        
        real a_real;
        real b_real;
        real result_real;
        
    
        begin
            float16_to_real(a_in, a_real);
            float16_to_real(b_in, b_real);
            float16_to_real(result_in, result_real);
            

            $fwrite(file, "Time %0t : ", $time);
            $fwrite(file, "a = %f, b = %f, sum = %f \n", a_real, b_real, result_real);

        end
    endtask


    task display_float16_to_int;
        input [15:0] inp;
        input signed [15:0] out;
        input integer file;

        real inp_real;

        begin
            float16_to_real(inp, inp_real);
            $fwrite(file, "Input: %f, Output: %d", inp_real, out);
        end


    endtask



endmodule