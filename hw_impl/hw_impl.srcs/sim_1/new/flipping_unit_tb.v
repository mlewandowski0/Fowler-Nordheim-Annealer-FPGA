module flipping_unit_tb;


UTIL utils();

parameter HALF_PERIOD = 1;
parameter CLOCK_PERIOD = 2 * HALF_PERIOD;
parameter NOISE_SOURCE_WIDTH = 6;
parameter LUT_WIDTH = 16;
parameter LOG_NOISE_LUT_FILENAME = "log_noise_LUT.mif";
parameter TEMPERATURE_LUT_FILENAME = "temperature_LUT.mif";
parameter TEMPERATURE_WIDTH = 7;
parameter PIPELINED_ROMs = 1;


parameter CLOCK_PERIODS_PER_TEMP = 256;
parameter TEMP_VALUES = 1 << TEMPERATURE_WIDTH;

reg clk, CE, write_seed, decrease_temp, reset;
reg [NOISE_SOURCE_WIDTH-1:0] seed;
wire signed [LUT_WIDTH-1:0] flipping_output;

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



    wire [LUT_WIDTH-1:0] noise_out, temperature_multiplier_out, noise_times_temp;
    integer distributions, distributions_real, calculation;
 
    assign noise_out = flipping_unit_inst.noise_out;
    assign temperature_multiplier_out = flipping_unit_inst.temperature_multiplier_out;
    assign noise_times_temp = flipping_unit_inst.noise_times_temp;


    real noise_out_as_real, temperature_mult_out_as_real, noise_times_temp_as_real;

    initial begin
        clk = 0;
        forever begin
            #HALF_PERIOD clk = ~clk;
        end

    end

    always @(posedge clk)
    begin
        if (CE)
        begin
            utils.float16_to_real(noise_out, noise_out_as_real);
            utils.float16_to_real(temperature_multiplier_out, temperature_mult_out_as_real);
            utils.float16_to_real(noise_times_temp, noise_times_temp_as_real);
            $fwrite(calculation, "%f, %f ,%f, %d\n", noise_out_as_real, temperature_mult_out_as_real, noise_times_temp_as_real, flipping_output);
            $fwrite(distributions_real, "%d,%f\n", i, noise_times_temp_as_real);
        end
    end

    always @(posedge clk)
    begin
        if (CE)
        begin
            $fwrite(distributions, "%d,%d\n", i, flipping_output);
        end
    end

    integer i = 0;
    initial begin
 
        distributions = $fopen("FUN_distribution.txt", "w");
        calculation   = $fopen("FUN_calculations.txt", "w");
        distributions_real = $fopen("FUN_distribution_real.txt", "w");

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


        for (i = 0; i < TEMP_VALUES; i = i + 1)
        begin 

            #(CLOCK_PERIODS_PER_TEMP * CLOCK_PERIOD)
            decrease_temp = 1;
            #(CLOCK_PERIOD);
            decrease_temp = 0;

        end



        $fclose(distributions);
        $fclose(calculation);
        $fclose(distributions_real);
        $finish;
    end


endmodule