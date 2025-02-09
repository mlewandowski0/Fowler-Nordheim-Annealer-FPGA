`include "UTIL.v"
`timescale 1ns / 100ps

module fixed_add_tb;


    UTIL utils();

    // Parameters
    parameter BITS = 16;
    parameter FRACTIONAL = 8;
    
    // Inputs to the DUT (device Under Test)
    reg signed [BITS-1:0] a;
    reg signed [BITS-1:0] b;
       
    // output from the DUT
    wire signed [BITS-1:0] sum;
    wire overflow;
    
    // create the Device Under Test
    fixed_add #(.BITS(BITS), .FRACTIONAL(FRACTIONAL)) dut(.a(a), .b(b), .sum(sum), .overflow(overflow));
    
    
    integer i, fd;
    real real_a, real_b, scaling_factor;
    
    
    initial 
    begin
        fd = $fopen("fixed_addition_tb.txt", "w");


        scaling_factor = 1 << FRACTIONAL;
        
        // Test Case 1 : 1.5 + 2.25 = 3.75
        a = $signed(1.5 * scaling_factor);
        b = $signed(2.25 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        
        // Test Case 2 : -1.5 + 2.0 = 0.5
        a = $signed(-1.5 * scaling_factor);
        b = $signed(2.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 3 : -2.5 - 1.25 = -3.75
        a = $signed(-2.5 * scaling_factor);
        b = $signed(-1.25 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 4: 0.0 + 0.0 = 0.0
        a = $signed(0.0 * scaling_factor);
        b = $signed(0.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 5 : Adding zero to a number
        a = $signed(5.5 * scaling_factor);
        b = $signed(0.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        
        // Test Case 6: Adding numbers resulting in maximum positive value
        a = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor); // Max positive value
        b = $signed(0.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 7: Adding numbers resulting in maximum negative value
        a = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor); // Max negative value
        b = $signed(0.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 8: Adding two maximum positive values (should test overflow behavior)
        a = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor);
        b = $signed((2**(BITS - FRACTIONAL - 1) - 1) * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 9: Adding two maximum negative values (should test underflow behavior)
        a = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor);
        b = $signed(-2**(BITS - FRACTIONAL - 1) * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 10: Smallest positive number addition
        a = $signed(1); // Smallest positive fixed-point number
        b = $signed(1);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 11: Smallest negative number addition
        a = $signed(-1); // Smallest negative fixed-point number
        b = $signed(-1);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 12: Crossing zero
        a = $signed(0.5 * scaling_factor);
        b = $signed(-1.0 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
            
        // Test Case 13: Large positive and small negative
        a = $signed(100.0 * scaling_factor);
        b = $signed(-0.5 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 14: Large negative and small positive
        a = $signed(-100.0 * scaling_factor);
        b = $signed(0.5 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 15: Fractional precision test
        a = $signed(0.00390625 * scaling_factor); // 1 LSB in fractional part
        b = $signed(0.00390625 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
        #1;
        
        // Test Case 16: Negative fractional precision test
        a = $signed(-0.00390625 * scaling_factor);
        b = $signed(-0.00390625 * scaling_factor);
        #1;
        utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
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
            utils.display_result_fixed_16bits_with_overflow(a, b, sum, overflow, FRACTIONAL, fd);
            #1;
        end

       $fclose(fd);
        $finish;

    end
endmodule