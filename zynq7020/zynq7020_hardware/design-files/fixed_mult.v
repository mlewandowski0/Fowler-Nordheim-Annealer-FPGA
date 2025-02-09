module fixed_mult #(
    parameter BITS=16,
    parameter FRAC_BITS=8
) (
    input wire   [BITS-1:0] a,
    input wire   [BITS-1:0] b,
    output wire  [BITS-1:0] product,
    output wire  overflow
);

    parameter INTEGER_BITS = BITS - FRAC_BITS;
    
    // Temporary product with double bit width to handle overflow
    wire signed [2 * BITS - 1 : 0] full_product;


    // do multiplication
    mulBITSxBITS #(.BITS(BITS), .USE_VEDIC(0)) mult(a, b, full_product);

    // assign the product
    assign product[BITS-2:0] = full_product[BITS-2 + FRAC_BITS:FRAC_BITS];
    assign product[BITS-1] = a[BITS-1] ^ b[BITS-1];
    
    
    // Extract the upper 16 bits (overflow bits)
    wire [(INTEGER_BITS-1):0] upper_bits = full_product[(2*BITS-1):(BITS + INTEGER_BITS)];

    // Expected sign extension based on the sign of the product
    wire [(INTEGER_BITS-1):0] expected_sign_extension = {INTEGER_BITS{product[BITS-1]}};

    // Detect overflow
    assign overflow = (upper_bits != expected_sign_extension);


endmodule