module fixed_add #(parameter BITS=16, parameter FRACTIONAL=8) (input 	wire signed [BITS-1:0] a,
															input 	wire signed [BITS-1:0] b,
															output 	wire signed [BITS-1:0] sum,
															output wire overflow);

	assign sum = a + b;
	assign overflow = (a[BITS-1] == b[BITS-1] && sum[BITS-1] != a[BITS-1]);

endmodule