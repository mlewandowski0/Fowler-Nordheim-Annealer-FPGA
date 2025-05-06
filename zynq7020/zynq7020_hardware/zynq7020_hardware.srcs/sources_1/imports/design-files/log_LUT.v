module log_LUT #(parameter NOISE_SOURCE_WIDTH = 8,          // address bits
                 parameter LUT_WIDTH = 18,                  // data bits
                 parameter FILENAME = "log_noise_fixed_width=18_frac_bits=10_nbits_of_lut=8.mif")  // plain-text hex file storing the mapping
                 (
                 input wire                                  clk,
                 input wire                                 reset,          // synchronous
                 input wire                                 CE,             // chip enable
                 input wire [NOISE_SOURCE_WIDTH-1:0]        noise_source,
                 output reg [LUT_WIDTH-1:0]                 distribution_output);
                 
                 
// parameter-time sanity check
    initial  
    begin
        if (NOISE_SOURCE_WIDTH < 1)
            $error("log_LUT: NOISE_SOURCE_WIDTH must be >= 1");
    end
    
    localparam LUT_SIZE = 1 << NOISE_SOURCE_WIDTH;
    
    // memory declaration
    // (* ram_style="block", rom_init_file = FILENAME *)
    reg [LUT_WIDTH-1:0] rom [0:LUT_SIZE-1];
  
    initial $readmemb(FILENAME, rom);
  
   // registered, synchronous read
   always @(posedge clk)
   begin
        if (reset)
            distribution_output <= {LUT_WIDTH{1'b0}};
        else if (CE)
            distribution_output <= rom[noise_source];
    
   end


endmodule               