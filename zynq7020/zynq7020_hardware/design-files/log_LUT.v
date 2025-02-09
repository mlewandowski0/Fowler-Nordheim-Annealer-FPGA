module log_LUT #(parameter NOISE_SOURCE_WIDTH = 8, parameter LUT_WIDTH = 16, parameter filename="log_noise_LUT.mif") (
    input wire CE,
    input wire [NOISE_SOURCE_WIDTH:1] noise_source,
    output wire [LUT_WIDTH:1] distribution_output
);

    localparam LUT_SIZE = 1 << NOISE_SOURCE_WIDTH;
    reg [LUT_WIDTH:1] distribution [0:LUT_SIZE-1];

    assign distribution_output = CE ? distribution[noise_source] : 0;

    initial begin
        $readmemb(filename, distribution);
    end

endmodule