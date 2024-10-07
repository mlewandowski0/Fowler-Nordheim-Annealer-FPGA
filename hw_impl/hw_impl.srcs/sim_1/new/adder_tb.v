`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 05:24:45 PM
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;


	// Parameter 
	parameter bits = 4;


	// testbench signals 
	reg [bits-1:0] a, b;
	reg cin;

	wire [bits-1:0] sum0, sum1;
	wire cout0, cout1;


	// Instantiate the adder module with the USE_CLA = 0
	adder #(.bits(bits), .USE_CLA(0)) dut0(.a(a), .b(b), .cin(cin), .sum(sum0), .cout(cout0));
	adder #(.bits(bits), .USE_CLA(1)) dut1(.a(a), .b(b), .cin(cin), .sum(sum1), .cout(cout1));



	// Task to apply test vectors and check outputs
	task test_adder;

		input [bits-1:0] ta;
		input [bits-1:0] tb;
		input tcin;
		reg [bits:0] expected;

		begin 
			a = ta;
			b = tb; 
			cin = tcin;

			// wait for the output
			#1; 

			// get the expected value 
			expected = ta + tb + tcin;

			// Check outputs for USE_CLA = 0
            if ({cout0, sum0} !== expected)
            begin
                $display("ERROR (USE_CLA=0): a=%h, b=%h, cin=%b | Expected sum=%h, cout=%b | Got sum=%h, cout=%b",
                         a, b, cin, expected[bits-1:0], expected[bits], sum0, cout0);
                $stop;
            end
            // Check outputs for USE_CLA = 1
            if ({cout1, sum1} !== expected)
            begin
                $display("ERROR (USE_CLA=1): a=%h, b=%h, cin=%b | Expected sum=%h, cout=%b | Got sum=%h, cout=%b",
                         a, b, cin, expected[bits-1:0], expected[bits], sum1, cout1);
                $stop;
            end
            // If both are correct
            if (({cout0, sum0} === expected) && ({cout1, sum1} === expected))
                $display("PASS: a=%h, b=%h, cin=%b | sum=%h, cout=%b",
                         a, b, cin, sum0, cout0);

		end
	endtask


	// Generate test vectors 
	integer i, j, k;

	initial 
	begin 

		// Apply test vectors 
		for (i = 0 ; i < (1 << bits); i = i + 1)
		begin
			for (j = 0; j < (1 << bits); j = j + 1)
			begin
					test_adder(i[bits-1:0], j[bits-1:0], 0);
					test_adder(i[bits-1:0], j[bits-1:0], 1);
			end
		end

	end
endmodule
