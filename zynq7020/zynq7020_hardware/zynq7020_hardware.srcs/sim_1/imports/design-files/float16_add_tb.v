`timescale 1ns / 100ps

module float16_add_tb;


    UTIL utils();

    // Parameters
    parameter BITS = 16;
     
    // Inputs to the DUT (device Under Test)
    reg  [BITS-1:0] a;
    reg  [BITS-1:0] b;
    reg   [BITS-1:0] expected;
       
    // output from the DUT
    wire [BITS-1:0] sum;
    
    // create the Device Under Test
    float16_add dut(.a(a), .b(b), .c(sum));
    
    
    integer i, fd;    
    
    initial 
    begin
			fd = $fopen("float16_add_tb.txt", "w");


			// TC 1 : 1.5 + 2.25 \approx 3.75  
			a = 16'b0011111000000000; // 1.5 
			b = 16'b0100000010000000; // 2.25 
			expected = 16'b0100001110000000; // 3.75 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 2 : 2.0 + 0.199951171875 \approx 2.19921875  
			a = 16'b0100000000000000; // 2.0 
			b = 16'b0011001001100110; // 0.199951171875 
			expected = 16'b0100000001100110; // 2.19921875 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 3 : -4.0 + 2.0 \approx -2.0  
			a = 16'b1100010000000000; // -4.0 
			b = 16'b0100000000000000; // 2.0 
			expected = 16'b1100000000000000; // -2.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 4 : -4.0 + -1.25 \approx -5.25  
			a = 16'b1100010000000000; // -4.0 
			b = 16'b1011110100000000; // -1.25 
			expected = 16'b1100010101000000; // -5.25 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 5 : 0.0 + 0.0 \approx 0.0  
			a = 16'b0000000000000000; // 0.0 
			b = 16'b0000000000000000; // 0.0 
			expected = 16'b0000000000000000; // 0.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 6 : 100.0 + 27.0 \approx 127.0  
			a = 16'b0101011001000000; // 100.0 
			b = 16'b0100111011000000; // 27.0 
			expected = 16'b0101011111110000; // 127.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 7 : 42.0 + 0.419921875 \approx 42.40625  
			a = 16'b0101000101000000; // 42.0 
			b = 16'b0011011010111000; // 0.419921875 
			expected = 16'b0101000101001101; // 42.40625 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 8 : 42.0 + 0.0419921875 \approx 42.03125  
			a = 16'b0101000101000000; // 42.0 
			b = 16'b0010100101100000; // 0.0419921875 
			expected = 16'b0101000101000001; // 42.03125 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 9 : -100.0 + 100.0 \approx 0.0  
			a = 16'b1101011001000000; // -100.0 
			b = 16'b0101011001000000; // 100.0 
			expected = 16'b0000000000000000; // 0.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 10 : 400.0 + 0.5 \approx 400.5  
			a = 16'b0101111001000000; // 400.0 
			b = 16'b0011100000000000; // 0.5 
			expected = 16'b0101111001000010; // 400.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 11 : -479.5 + 378.0 \approx -101.5  
			a = 16'b1101111101111110; // -479.5 
			b = 16'b0101110111101000; // 378.0 
			expected = 16'b1101011001011000; // -101.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 12 : 62.3125 + -721.0 \approx -658.5  
			a = 16'b0101001111001010; // 62.3125 
			b = 16'b1110000110100010; // -721.0 
			expected = 16'b1110000100100101; // -658.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 13 : -472.75 + -651.0 \approx -1124.0  
			a = 16'b1101111101100011; // -472.75 
			b = 16'b1110000100010110; // -651.0 
			expected = 16'b1110010001100100; // -1124.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 14 : -50.09375 + 568.0 \approx 518.0  
			a = 16'b1101001001000011; // -50.09375 
			b = 16'b0110000001110000; // 568.0 
			expected = 16'b0110000000001100; // 518.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 15 : -916.5 + 313.0 \approx -603.5  
			a = 16'b1110001100101001; // -916.5 
			b = 16'b0101110011100100; // 313.0 
			expected = 16'b1110000010110111; // -603.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 16 : 999.0 + -347.75 \approx 651.0  
			a = 16'b0110001111001110; // 999.0 
			b = 16'b1101110101101111; // -347.75 
			expected = 16'b0110000100010110; // 651.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 17 : 365.0 + 934.0 \approx 1299.0  
			a = 16'b0101110110110100; // 365.0 
			b = 16'b0110001101001100; // 934.0 
			expected = 16'b0110010100010011; // 1299.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 18 : -652.5 + -274.75 \approx -927.0  
			a = 16'b1110000100011001; // -652.5 
			b = 16'b1101110001001011; // -274.75 
			expected = 16'b1110001100111110; // -927.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 19 : -373.0 + 1.0458984375 \approx -372.0  
			a = 16'b1101110111010100; // -373.0 
			b = 16'b0011110000101111; // 1.0458984375 
			expected = 16'b1101110111010000; // -372.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 20 : 401.75 + 55.78125 \approx 457.5  
			a = 16'b0101111001000111; // 401.75 
			b = 16'b0101001011111001; // 55.78125 
			expected = 16'b0101111100100110; // 457.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 21 : 910.5 + -122.8125 \approx 787.5  
			a = 16'b0110001100011101; // 910.5 
			b = 16'b1101011110101101; // -122.8125 
			expected = 16'b0110001000100111; // 787.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 22 : -954.5 + 30.671875 \approx -924.0  
			a = 16'b1110001101110101; // -954.5 
			b = 16'b0100111110101011; // 30.671875 
			expected = 16'b1110001100111000; // -924.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 23 : -894.5 + 366.5 \approx -528.0  
			a = 16'b1110001011111101; // -894.5 
			b = 16'b0101110110111010; // 366.5 
			expected = 16'b1110000000100000; // -528.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 24 : -239.875 + 908.0 \approx 668.0  
			a = 16'b1101101101111111; // -239.875 
			b = 16'b0110001100011000; // 908.0 
			expected = 16'b0110000100111000; // 668.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 25 : -865.0 + 204.625 \approx -660.5  
			a = 16'b1110001011000010; // -865.0 
			b = 16'b0101101001100101; // 204.625 
			expected = 16'b1110000100101001; // -660.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 26 : -705.5 + -771.5 \approx -1477.0  
			a = 16'b1110000110000011; // -705.5 
			b = 16'b1110001000000111; // -771.5 
			expected = 16'b1110010111000101; // -1477.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 27 : -496.0 + 737.0 \approx 241.0  
			a = 16'b1101111111000000; // -496.0 
			b = 16'b0110000111000010; // 737.0 
			expected = 16'b0101101110001000; // 241.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 28 : 199.375 + 182.125 \approx 381.5  
			a = 16'b0101101000111011; // 199.375 
			b = 16'b0101100110110001; // 182.125 
			expected = 16'b0101110111110110; // 381.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 29 : -405.25 + -405.75 \approx -811.0  
			a = 16'b1101111001010101; // -405.25 
			b = 16'b1101111001010111; // -405.75 
			expected = 16'b1110001001010110; // -811.0 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;
			// TC 30 : 92.875 + -642.5 \approx -549.5  
			a = 16'b0101010111001110; // 92.875 
			b = 16'b1110000100000101; // -642.5 
			expected = 16'b1110000001001011; // -549.5 
			#1;
			utils.display_result_float16(a, b, sum, fd); 
			#1;


			$fclose(fd);
			$finish;

    end
endmodule