`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 12:58:45 PM
// Design Name: 
// Module Name: fixed_mult_tb
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


module fixed_mult_tb;

    UTIL utils();

    // Parameters
    parameter BITS = 16;
    parameter FRACTIONAL = 8;

    // Inputs to the DUT (device under test)
    reg signed [BITS-1:0] a;
    reg signed [BITS-1:0] b;

    // output from the DUT
    wire signed [BITS-1:0] product;
    wire overflow;

    // create the device under test 

    fixed_mult #(.BITS(BITS), .FRAC_BITS(FRACTIONAL)) dut(.a(a), .b(b), .product(product), .overflow(overflow));
    
    integer i, fd;
    real scaling_factor, real_a, real_b;
    
    
        
    initial 
    begin
        fd = $fopen("fixed_multiplication_tb.txt", "w");
    
        scaling_factor = 1 << FRACTIONAL;
        
        // Test Case : 1.5 * 2.25 ~ 3.375
        a = $signed(1.5 * scaling_factor);
        b = $signed(2.25 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        
        // Test Case : -1.5 * 2.0 = -3.0
        a = $signed(-1.5 * scaling_factor);
        b = $signed(2.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case  : -2.5 - 1.25 = -3.125
        a = $signed(-2.5 * scaling_factor);
        b = $signed(-1.25 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case : 0.0 * 42.0 = 0.0
        a = $signed(0.0 * scaling_factor);
        b = $signed(42.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(5.5 * scaling_factor);
        b = $signed(0.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        
        // Test Case 
        a = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor); // Max positive value
        b = $signed(1.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 
        a = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor); // Max negative value
        b = $signed(1.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor);
        b = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor);
        b = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(1); // Smallest positive fixed-point number
        b = $signed(1);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(-1); // Smallest negative fixed-point number
        b = $signed(-1);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
                
        // Test Case
        a = $signed(0.5 * scaling_factor);
        b = $signed(-1.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
            
        // Test Case
        a = $signed(100.0 * scaling_factor);
        b = $signed(-0.5 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(-100.0 * scaling_factor);
        b = $signed(0.5 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(0.00390625 * scaling_factor); // 1 LSB in fractional part
        b = $signed(0.00390625 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case
        a = $signed(-0.00390625 * scaling_factor);
        b = $signed(-0.00390625 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
        #1;
        
        // Randomized Testing
        for (i = 0; i < 20; i = i + 1) begin
            // Generate random real numbers within representable range
            real_a = ($urandom_range(-2**(BITS - FRACTIONAL - 1), 2**(BITS - FRACTIONAL - 1) - 1)) + ($urandom() % (1 << FRACTIONAL)) / scaling_factor;
            real_b = ($urandom_range(-2**(BITS - FRACTIONAL - 1), 2**(BITS - FRACTIONAL - 1) - 1)) + ($urandom() % (1 << FRACTIONAL)) / scaling_factor;
            // Scale to fixed-point representation
            a = $signed(real_a * scaling_factor);
            b = $signed(real_b * scaling_factor);
            #1;
            utils.display_result_fixed_16bits_with_overflow(a, b, product, overflow, FRACTIONAL, fd);
            #1;
        end
        
        $fclose(fd);
        $finish;

    end
    

endmodule
