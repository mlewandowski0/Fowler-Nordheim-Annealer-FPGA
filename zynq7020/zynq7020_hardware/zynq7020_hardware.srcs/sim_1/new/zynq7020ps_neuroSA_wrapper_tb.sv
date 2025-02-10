`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 10:36:25 PM
// Design Name: 
// Module Name: zynq7020ps_neuroSA_wrapper_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module zynq7020ps_neuroSA_wrapper_tb();
    ////////////////////////////////////////////////////////////////////////////////
    // Parameters
    ////////////////////////////////////////////////////////////////////////////////
    parameter int GRAPH_WIDTH                       = 800;
    parameter int UNITS                             = 25;
    parameter int PIPELINED_ROMs                    = 1;
    parameter int PIPELINED_ENSEMBLE_STORAGE        = 1;
    parameter int USE_ROUND_ROBIN                   = 1;

    // Parameters (adjust these as needed for your tests)
    parameter int TEMP_INC_WIDTH                    = 12;
    parameter int MEMBRANE_WIDTH                    = 16;
    parameter int COUNTER_WIDTH                     = 40;
    parameter int NO_CLK_CYCLES_AFTER_UPDATE        = 4;
    parameter int SOLUTION_WIDTH                    = 16;



    parameter int NEURON_SEL_LFSR_WIDTH             = 24;
    parameter int LOG_NOISE_SOURCE_WIDTH            = 24;


    parameter int USE_FLOAT_POINT                   = 0;
    parameter int REAL_WIDTH                        = 18;
    parameter int FRACTIONAL_PART                   = 8;
        
    parameter int LOG_LUT_BIT_SIZE                  = 8;
    parameter string LOG_NOISE_LUT_FILENAME         = "log_noise_fixed_width=18_frac_bits=8_nbits_of_lut=8.mif";
    
    
    parameter int TEMPERATURE_LUT_WIDTH             = 8;
    parameter string TEMPERATURE_LUT_FILENAME       = "temperature_fixed_width=18_frac_bits=8_nbits_of_lut=8.mif";

    parameter int FLIPPING_OUTPUT_WIDTH             = 16;

    // buffer parameters
    parameter int USE_TRANSMIT_WITH_BUFF                = 1;
    parameter int NO_OF_CLK_CYCLES_TO_PROPAGATE         = 1;
    parameter int NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE   = 3;

    
    parameter string FILE_TO_SAVE      = "neuroSA_machine_N=800_A25_tb.txt";
    parameter string PLOT_FIG_SAVE     = "zynq7020_wrapper_clk_and_sol.txt";


    parameter int NEURONS_PER_UNIT     = GRAPH_WIDTH / UNITS; // 32
    parameter int UNIT_WIDTH           = $clog2(UNITS);
    parameter int NEURON_NUM_WIDTH     = $clog2(NEURONS_PER_UNIT); // 5

    // Clock parameters
    parameter int HALF_CLK_PERIOD      = 20;
    parameter int CLK_PERIOD           = 2 * HALF_CLK_PERIOD;
    
    
    int CLK_CNT = 0;
    int MACHINE_RUNNING  = 0;
 


    ////////////////////////////////////////////////////////////////////////////////
    // Signals
    ////////////////////////////////////////////////////////////////////////////////
    logic                clk;
    logic [31:0]         pl_config;  // 32-bit configuration word
    logic [31:0]         data;       // 32-bit data bus
    wire [31:0]        output_data;
    wire               interrupt;

    // For display purposes.
    integer            clk_counter = 0;

    zynq7020ps_neuroSA_wrapper #(.GRAPH_WIDTH(GRAPH_WIDTH),
    .UNITS(UNITS),
    .PIPELINED_ROMs(PIPELINED_ROMs),
    .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
    .USE_ROUND_ROBIN(USE_ROUND_ROBIN),

    // Parameters (adjust these as needed for your tests)
    .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
    .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
    .COUNTER_WIDTH(COUNTER_WIDTH),
    .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
    .SOLUTION_WIDTH(SOLUTION_WIDTH),

    .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
    .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),


    .USE_FLOAT_POINT(USE_FLOAT_POINT),
    .REAL_WIDTH(REAL_WIDTH),
    .FRACTIONAL_PART(FRACTIONAL_PART),
        
    .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
    .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
    
    
    .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
    .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),

    .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),

    // buffer parameters
    .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
    .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
    .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE))
    
         DUT (
        .clk        (clk),
        .pl_config  (pl_config),
        .data       (data),
        .output_data(output_data),
        .interrupt  (interrupt)
    );

    ////////////////////////////////////////////////////////////////////////////////
    // Clock Generation
    ////////////////////////////////////////////////////////////////////////////////
    initial begin
        clk = 0;
        forever #(HALF_CLK_PERIOD) clk = ~clk;
    end

    always @(posedge clk) begin
        clk_counter = clk_counter + 1;
    end

    ////////////////////////////////////////////////////////////////////////////////
    // Helper Task: Build pl_config
    ////////////////////////////////////////////////////////////////////////////////
    // The configuration word is built as follows:
    //   bit 31       : reset
    //   bit 30       : halt
    //   bit 29       : put data into ensemble seed
    //   bit 28       : put data into flipping seed
    //   bit 27       : put data into membrane data
    //   bits [26:22]: target unit (0 means "do nothing" - otherwise use unit+1)
    //   bits [21:17]: target neuron (idx_to_write)
    //   bits [16:0] : not used (set to 0)
    task set_config(input bit reset_val,
                    input bit halt_val,
                    input bit put_ens,
                    input bit put_flip,
                    input bit put_mem,
                    input [4:0] unit,      // note: 0 means "no write"; use unit+1 when programming a unit
                    input [4:0] neuron_idx);
    begin
        pl_config = {reset_val, halt_val, put_ens, put_flip, put_mem,
                     unit,          // bits [26:22]
                     neuron_idx,    // bits [21:17]
                     17'b0};      // remaining bits
    end
    endtask

     ////////////////////////////////////////////////////////////////////////////////
    // Task: Write Ensemble Seed
    ////////////////////////////////////////////////////////////////////////////////
    // Writes an 8-bit ensemble seed into the specified unit.
    task write_ensemble_seed(input int unit, input logic seed);
    begin
        // For a write operation, assert put_data_into_ensemble_seed (bit29).
        // Note: In the wrapper, the unit field is interpreted as (value-1) so we use unit+1.
        set_config(1'b0, 1'b1, 1'b1, 1'b0, 1'b0, unit+1, 5'd0);
        data[NEURON_SEL_LFSR_WIDTH-1:0] = seed;  // Only the lower 8 bits will be used.
        @(posedge clk);
        // Clear the config & data after one cycle.
        pl_config = 32'b0;
        data = 32'b0;
        @(posedge clk);
    end
    endtask

    ////////////////////////////////////////////////////////////////////////////////
    // Task: Write Flipping Seed
    ////////////////////////////////////////////////////////////////////////////////
    // Writes an 8-bit flipping seed into the specified unit.
    task write_flipping_seed(input int unit, input logic seed);
    begin
        set_config(1'b0, 1'b1, 1'b0, 1'b1, 1'b0, unit+1, 5'd0);
        data[LOG_NOISE_SOURCE_WIDTH-1:0] = seed;
        @(posedge clk);
        pl_config = 32'b0;
        data = 32'b0;
        @(posedge clk);
    end
    endtask


    ////////////////////////////////////////////////////////////////////////////////
    // Task: Write Membrane Data
    ////////////////////////////////////////////////////////////////////////////////
    // Writes a 12-bit membrane value and a 4-bit neuron state to the specified unit 
    // and neuron index. (Data is packed into the lower 16 bits of the 32-bit data bus.)
    task write_membrane_data(input int unit, input int neuron_idx,
                            input int membrane_val, input int neuron_state);
    begin
        // Set the configuration: note that unit+1 converts unit 0 into config value 1.
        set_config(1'b0, 1'b1, 1'b0, 1'b0, 1'b1, unit+1, neuron_idx[4:0]);
        // Pack the membrane data: lower 12 bits for the membrane value, next 4 for neuron state.
        data = {12'd0, neuron_state[3:0], membrane_val[15:0]};
        
        // Wait for a couple of clock edges so the wrapper can sample pl_config & data.
        @(posedge clk);
        @(posedge clk);
        
        // Now clear the configuration and data.
        pl_config = 32'b0;
        data = 32'b0;
        
        // Wait a couple more cycles for good measure.
        @(posedge clk);
        @(posedge clk);
    end
    endtask



    ////////////////////////////////////////////////////////////////////////////////
    // Task: Do Reset
    ////////////////////////////////////////////////////////////////////////////////
    task do_reset;
    begin
        // Assert reset for one clock cycle.
        set_config(1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 5'd0, 5'd0);
        data = 32'b0;
        @(posedge clk);
        // Then deassert reset.
        set_config(1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 5'd0, 5'd0);
        data = 32'b0;
        @(posedge clk);
    end
    endtask


    // Initialize ata arrays (membrane voltages)
    int data_arrays [0:24][0:31];
    logic [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed [0:24] = '{10'b1001100100,
                                                               10'b0000001000,
                                                               10'b0010101101,
                                                               10'b1010000100,
                                                               10'b1000001000,
                                                               10'b1000011001,
                                                               10'b0000000011,
                                                               10'b0111011100,
                                                               10'b0101111011,
                                                               10'b0101000110,
                                                               10'b1011000010,
                                                               10'b1010001101,
                                                               10'b1100010001,
                                                               10'b1111001110,
                                                               10'b0111110000,
                                                               10'b1010011000,
                                                               10'b1010110111,
                                                               10'b0101011101,
                                                               10'b1100011111,
                                                               10'b1001000001,
                                                               10'b1111100001,
                                                               10'b0111010001,
                                                               10'b0101010101,
                                                               10'b0001111001,
                                                               10'b1010100001};

    logic [NEURON_SEL_LFSR_WIDTH-1:0] flipping_seed [0:24] = {10'b0111011110,
                                                              10'b1110111000,
                                                              10'b1100010000,
                                                              10'b1100000111,
                                                              10'b1010001000,
                                                              10'b1010011001,
                                                              10'b1001111001,
                                                              10'b0111011100,
                                                              10'b0011110011,
                                                              10'b0010111001,
                                                              10'b0001011000,
                                                              10'b0011111000,
                                                              10'b0111000011,
                                                              10'b1010000010,
                                                              10'b1100111010,
                                                              10'b0111110111,
                                                              10'b0011000010,
                                                              10'b0010010111,
                                                              10'b0001011001,
                                                              10'b0110010101,
                                                              10'b1000011110,
                                                              10'b0010101000,
                                                              10'b1010100011,
                                                              10'b0000000110,
                                                              10'b0111010111};

    
    initial 
    begin
        data_arrays[0]  = {78,86,89,121,120,153,43,83,57,51,44,15,18,73,59,55,56,61,60,20,25,53,44,35,38,32,19,25,19,20,21,30};
        data_arrays[1]  = {33,17,40,33,14,36,28,25,22,14,24,32,25,43,29,31,34,17,26,19,21,16,20,27,21,35,42,28,12,15,17,33};
        data_arrays[2]  = {17,10,21,22,28,16,32,28,20,18,7,10,15,33,27,19,16,20,20,26,25,16,26,26,11,17,16,20,17,31,18,24};
        data_arrays[3]  = {18,10,25,23,13,12,12,13,14,21,14,15,19,9,13,12,19,11,11,8,17,17,26,21,11,14,10,20,9,11,23,16};
        data_arrays[4]  = {9,11,17,9,16,13,14,14,12,8,23,16,21,11,14,18,17,14,17,10,18,11,19,16,9,9,13,8,9,18,19,8};
        data_arrays[5]  = {8,7,10,9,10,10,11,13,12,10,12,22,10,8,16,20,13,15,7,20,12,27,13,10,12,13,13,10,12,7,17,10};
        data_arrays[6]  = {15,12,9,11,8,7,9,14,11,13,15,13,8,11,11,12,10,10,13,10,12,12,9,10,13,5,11,11,20,11,14,10};
        data_arrays[7]  = {11,13,13,13,7,13,13,13,6,12,9,9,11,7,9,11,14,11,11,7,15,11,16,10,13,8,11,10,9,12,6,8};
        data_arrays[8]  = {9,11,9,9,8,7,12,9,15,12,8,16,9,11,15,7,10,10,14,8,10,10,10,8,7,8,10,9,8,10,12,14};
        data_arrays[9]  = {14,10,10,9,6,9,13,9,9,10,6,9,10,11,12,12,17,11,8,14,10,12,8,11,8,8,15,6,8,11,9,12};
        data_arrays[10] = {8,11,9,11,7,14,12,11,10,11,8,10,7,8,7,7,9,7,7,8,12,7,7,8,7,10,6,6,10,8,7,9};
        data_arrays[11] = {10,7,9,10,7,8,9,11,10,7,6,11,6,9,6,6,7,8,7,7,7,8,10,12,12,7,7,15,8,8,6,12};
        data_arrays[12] = {13,8,7,9,10,9,9,7,9,8,7,7,6,8,6,12,10,6,8,11,12,9,6,6,10,7,11,8,7,6,6,7};
        data_arrays[13] = {12,13,6,8,8,11,9,8,13,9,10,9,8,8,7,8,10,8,10,9,7,7,6,8,7,7,7,7,10,7,10,8};
        data_arrays[14] = {6,6,7,7,6,9,7,6,9,7,8,9,6,10,6,7,6,5,10,7,6,9,8,6,8,7,13,6,7,10,8,7};
        data_arrays[15] = {9,9,6,6,8,7,9,8,13,5,7,7,6,7,9,6,9,6,10,6,9,8,9,6,6,7,8,7,8,8,7,6};
        data_arrays[16] = {6,6,6,9,7,6,6,8,7,7,9,8,8,6,6,7,6,8,8,6,8,6,7,9,7,8,6,8,7,6,6,9};
        data_arrays[17] = {7,7,6,7,9,5,6,6,9,7,6,7,7,7,8,8,6,7,7,6,9,8,7,7,7,6,7,5,6,9,6,6};
        data_arrays[18] = {7,6,6,8,6,10,5,7,7,7,6,7,7,6,6,8,7,7,8,8,6,6,5,6,7,6,7,6,7,8,6,5};
        data_arrays[19] = {9,9,7,7,6,7,6,11,6,6,6,7,6,6,7,8,6,8,5,6,6,6,6,7,4,6,7,6,7,8,7,6};
        data_arrays[20] = {6,6,6,10,10,6,7,6,7,6,5,6,7,8,6,6,6,5,8,6,7,6,6,6,6,6,7,8,6,6,6,7};
        data_arrays[21] = {7,8,6,7,6,6,8,7,7,5,6,6,7,6,7,6,6,6,6,7,6,6,5,7,6,7,6,6,8,7,6,5};
        data_arrays[22] = {6,8,6,7,6,7,6,6,6,6,6,9,6,6,6,6,8,6,7,6,6,6,7,6,6,6,6,6,6,6,6,6};
        data_arrays[23] = {6,7,5,6,6,6,7,6,6,6,6,6,6,6,7,6,6,6,7,7,6,6,6,6,6,6,7,6,6,5,5,6};
        data_arrays[24] = {6,6,6,6,6,6,6,6,6,6,6,6,6,5,6,6,7,7,6,6,6,6,6,6,7,6,6,6,6,6,6,6};        
    end
   
    
    /*
    task set_config(input bit reset_val,
                    input bit halt_val,
                    input bit put_ens,
                    input bit put_flip,
                    input bit put_mem,
                    input [4:0] unit,      // note: 0 means "no write"; use unit+1 when programming a unit
                    input [4:0] neuron_idx);
    */

	integer fd;


    initial begin
        MACHINE_RUNNING = 0;
        fd = $fopen(PLOT_FIG_SAVE, "a");

         set_config(0, 0, 0, 0, 0, 0, 0);  
         data = 0;
         
         #(2 * CLK_PERIOD);
             set_config(1, 0, 0, 0, 0, 0, 0);  
         #CLK_PERIOD;
             set_config(0, 1, 0, 0, 0, 0, 0);  
         
         #(2 * CLK_PERIOD);
        
        for (int i = 0; i < UNITS; ++i)
        begin
            write_ensemble_seed(i, ensemble_seed[i]);
        end
        
        for (int i = 0; i < UNITS; ++i)
        begin
            write_flipping_seed(i, flipping_seed[i]);
        end
        
        set_config(0, 1, 0, 0, 0, 0, 0);  
        #(2 * CLK_PERIOD);              
          
        for (int unit = 0; unit < 25; unit++)
        begin
            for (int i = 0; i < 32; ++i)
            begin
                write_membrane_data(unit, i, data_arrays[unit][i], 4'b0010);
            end
        end
        #(CLK_PERIOD); 
        set_config(0, 0, 0, 0, 0, 0, 0);
        
        #(CLK_PERIOD); 
        set_config(1, 0, 0, 0, 0, 0, 0);
        
        #(CLK_PERIOD); 
        MACHINE_RUNNING =1;
        set_config(0, 0, 0, 0, 0, 0, 0);
        #(10_000_000 * CLK_PERIOD);

        $finish;
    end

    always @(posedge clk)
    begin
        CLK_CNT += 1;
    end

    ////////////////////////////////////////////////////////////////////////////////
    // Monitor Output (Optional)
    ////////////////////////////////////////////////////////////////////////////////
    always @(output_data) 
    begin
          $display("%d, %d", CLK_CNT, output_data);
          $fdisplay(fd,"%d, %d", CLK_CNT, output_data);
    end

endmodule
