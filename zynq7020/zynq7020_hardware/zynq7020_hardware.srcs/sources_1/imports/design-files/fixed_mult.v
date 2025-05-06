module fixed_mult #(
    parameter BITS = 16,
    parameter FRAC_BITS = 8
) (
    input  wire [BITS-1:0] a,
    input  wire [BITS-1:0] b,
    output wire [BITS-1:0] product,
    output wire          overflow
);

    // parameter check
    initial
    begin
        if (FRAC_BITS >= BITS - 1)
            $error("fixed mult: FRAC_BITS must be < BITS - 1");
    end

    // Convert the inputs to signed numbers.
    wire signed [BITS-1:0] a_s = a;
    wire signed [BITS-1:0] b_s = b;
    
    // Multiply the signed numbers.
    // The result is 2*BITS bits wide.
    wire signed [2*BITS-1:0] mult = a_s * b_s;
    
    // To get the product in the same fixed-point format, we must
    // shift the intermediate result right by FRAC_BITS.
    // (Since a and b are Q((BITS-FRAC_BITS).FRAC_BITS) numbers,
    // their product is Q(2*(BITS-FRAC_BITS)).(2*FRAC_BITS) and we need
    // to shift right by FRAC_BITS to get back to Q((BITS-FRAC_BITS)).(FRAC_BITS).)
    localparam SHIFTED_WIDTH = 2*BITS - FRAC_BITS;
    wire signed [SHIFTED_WIDTH-1:0] shifted = mult >>> FRAC_BITS;  // arithmetic shift
    
    // The final product is to be BITS bits wide.
    // For a valid two's complement number in BITS bits, the extra
    // high bits (from SHIFTED_WIDTH-1 down to BITS) must be all equal
    // to the sign bit (which is shifted[BITS-1]).
    localparam HIGH_WIDTH = SHIFTED_WIDTH - BITS;
    wire [HIGH_WIDTH-1:0] high_bits = shifted[SHIFTED_WIDTH-1:BITS];
    wire sign_bit = shifted[BITS-1];
    
    // If the high bits are not all equal to the sign bit, then overflow.
    assign overflow = (high_bits != {HIGH_WIDTH{sign_bit}});
    
    // The final product is the lower BITS bits of the shifted result.
    assign product = shifted[BITS-1:0];

endmodule
