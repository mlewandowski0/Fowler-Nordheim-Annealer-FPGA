module flipping_unit_tb;


parameter HALF_PERIOD = 1;
parameter CLOCK_PERIOD = 2 * HALF_PERIOD;
parameter NOISE_SOURCE_WIDTH = 7;
parameter LUT_WIDTH = 16;
parameter LOG_NOISE_LUT_FILENAME = "log_noise_LUT.mif";
parameter TEMPERATURE_LUT_FILENAME = "temperature_LUT.mif";
parameter TEMPERATURE_WIDTH = 7;
parameter PIPELINED_ROMs = 0;


reg clk, CE, write_seed, decrease_temp, reset;
reg [NOISE_SOURCE_WIDTH-1:0] seed;
wire [LUT_WIDTH-1:0] flipping_output;

flipping_unit #(.NOISE_SOURCE_WIDTH(NOISE_SOURCE_WIDTH), 
                       .LUT_WIDTH(LUT_WIDTH),
                       .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
                       .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
                        .TEMPERATURE_WIDTH(TEMPERATURE_WIDTH),
                         .PIPELINED_ROMs(PIPELINED_ROMs))

                    flipping_unit_inst
                    (.clk(clk), 
                     .CE(CE),
                     .write_seed(write_seed), 
                     .seed(seed),
                     .decrease_temp(decrease_temp),
                     .reset(reset),
                     .flipping_output(flipping_output));


    initial begin
        clk = 0;
        forever begin
            #HALF_PERIOD clk = ~clk;
        end

    end

    initial begin
        CE = 0;
        write_seed = 0;
        seed = 0;
        decrease_temp = 0;
        reset = 0;
        wait (clk == 1);

        #CLOCK_PERIOD ;
        CE = 1;
        write_seed = 1;
        seed = 0;
        reset = 1;
        #CLOCK_PERIOD;
        write_seed = 0;
        reset = 0;

        #(10 * CLOCK_PERIOD)


        $finish;
    end


endmodule