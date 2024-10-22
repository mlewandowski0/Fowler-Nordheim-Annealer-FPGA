
module mulBITSxBITS#(parameter BITS = 16, parameter USE_VEDIC=0) (input wire signed [BITS-1:0] a, input wire signed [BITS-1:0] b, output wire signed [2*BITS-1:0] c);

generate
    if (USE_VEDIC == 1)
    begin
        if (BITS == 16)
        begin
            vedic_mul16x16 mul(.a(a), .b(b), .c(c));
        end
        else if (BITS == 8)
        begin
            vedic_mul8x8 mul(.a(a), .b(b), .c(c));
        end
        else if (BITS == 4)
        begin
            vedic_mul4x4 mul(.a(a), .b(b), .c(c));
        end
        else if (BITS == 2)
        begin
            vedic_mul2x2 mul(.a(a), .b(b), .c(c));
        end
    end
    else 
    begin
        wire [2*BITS-1:0] tmp;
        assign tmp = $signed(a) * $signed(b);
        assign c = tmp;
    end


endgenerate

endmodule