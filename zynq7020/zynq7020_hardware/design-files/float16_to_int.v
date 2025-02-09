module float16_to_int (input [15:0] fp16, output reg signed [15:0] int_out);

    // extract sign, exponent, and mantissa
    wire sign = fp16[15];
    wire [4:0] exponent = fp16[14:10];
    wire [9:0] mantissa = fp16[9:0];


    // constants 
    parameter BIAS = 15;

    // Intermediate variables
    reg [4:0] actual_exponent;
    reg [25:0] significand;
    reg [31:0] result;


    always @(*)
    begin
        // initialize the result 
        result = 0;

        // handle special cases 
        if (exponent == 5'b11111)
        begin
            // NAN 
            if (mantissa != 0)
            begin
                // NaN represented as large negative number
                result = 32'h80000000;
            end
            else 
            begin
                // infinity represented as the maximum integer
                result = 32'h7fffffff;
            end
        end
        else if (exponent == 5'b00000)
        begin
                // zero or subnormal
                if (mantissa == 0)
                begin
                    // zero
                    result = 0;
                end
                else
                begin
                    // subnormal number
                    actual_exponent = 1 - BIAS;
                    significand = {1'b0, mantissa};
                    result = significand >> (BIAS - 1);
                end
        end
        else 
        begin
                // normalized number
                actual_exponent = exponent - BIAS;
                significand = {1'b1, mantissa};

                if (actual_exponent >= 10)
                begin
                    // if the exponent is too large to  fit in the 16-bit output, we need to shift left
                    result = significand << (actual_exponent - 10);
                end
                else 
                begin
                    result = significand >> (10 - actual_exponent);
                end
        end

        // apply the sign
        if (sign)
        begin
            result = -result;
        end

        // assign to output with appropriate bit-width truncation
        int_out = result[15:0];
    end


endmodule