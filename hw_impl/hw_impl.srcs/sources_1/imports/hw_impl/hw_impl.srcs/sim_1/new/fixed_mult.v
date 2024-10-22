module fixed_mult #(
    parameter BITS=16,
    parameter FRAC_BITS=8
) (
    input wire  signed   [BITS-1:0] a,
    input wire  signed   [BITS-1:0] b,
    output wire signed  [BITS-1:0] product,
    output wire overflow
);

    // Intermediate product with double the bit width to handle overflow
    wire signed [(2*BITS)-1:0] full_product;

    // Perform the multiplication
    assign full_product = a * b;

    // Adjust the result by shifting to account for fractional bits
    assign product = full_product[(BITS-1+FRAC_BITS):FRAC_BITS];

    // Check for overflow by comparing the upper bits that are shifted out
    assign overflow = |full_product[(2*BITS-1):(BITS+FRAC_BITS)];

endmodule
