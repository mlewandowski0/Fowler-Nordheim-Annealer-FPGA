module temperature_mapping #(parameter N=7, parameter OUT_WIDTH=16)
(
    input wire clk,
    input wire [N-1: 0] x,
    output wire [OUT_WIDTH-1: 0] y
);
    parameter LUT_SIZE = 1 << N;
    reg [OUT_WIDTH:1] distribution [0:LUT_SIZE-1];
    
    initial 
    begin
        $readmemb("temperature_LUT.mif", distribution);
    end
    
    assign y = distribution[x];
    
endmodule