`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 11:45:13 PM
// Design Name: 
// Module Name: tb_neuron_ensemble_with_memory_with_buff
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


`timescale 1ns/1ps
module tb_neuron_ensemble_with_buff;


    // module parameters
     localparam GRAPH_WIDTH= 8;
     localparam UNIT_WIDTH = 1;
     localparam UNIT_NO = 0;
     localparam NEURON_WIDTH=2;
     localparam GRAPH_DISTRIB_FILE= "adj_matrix_N8_A2_distributed0.mif";
    
     localparam NEURON_SEL_LFSR_WIDTH=3;
     localparam MEMBRANE_WIDTH=16;
     localparam LOG_NOISE_SOURCE_WIDTH = 16;
     localparam LOG_LUT_BIT_SIZE = 8;
     localparam REAL_WIDTH=18;
     localparam FLIPPING_OUTPUT_WIDTH=16;
     localparam LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
     localparam TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif";

     localparam TEMPERATURE_LUT_WIDTH=9;
     localparam PIPELINED_ROMs=1;
     localparam PIPELINED_ENSEMBLE_STORAGE=1;
     localparam USE_FLOAT_POINT=1;
     localparam FIXED_TOTAL_WIDTH=18;
     localparam FRACTIONAL_PART=9;

     // buff parameters
     localparam NO_OF_CLK_CYCLES_TO_PROPAGATE=1;
     localparam NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=2;

    // simulation parameters
    localparam CLK_T = 10;
    localparam NUMBER_OF_MEMBRANES = 1 << NEURON_WIDTH;


    // global signal interface
    reg                                  clk=0;
    reg                                  reset_module=1;
    reg                                  halt =0 ;
    reg                                  update_memory= 0;
    reg                                  should_increment= 0;

    // output coming from scheduler 
    reg [$clog2(GRAPH_WIDTH)-1:0]        index_of_neuron_that_fired=0;
    reg                                  decrease_temp =0;
    
    // writing
    reg                                  write_ensemble_seed=0;
    reg [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed =0;

    reg                                  write_flipping_seed=0;
    reg [LOG_NOISE_SOURCE_WIDTH-1:0]     flipping_seed=0;

    // membrane data programming
    reg                                  write_neuron_state=0;
    reg [NEURON_WIDTH-1:0]               idx_to_write=0;
    reg [MEMBRANE_WIDTH-1:0]             membrane_data_in=0;
    reg [3:0]                            neuron_state_in=0;

    // outputs
    wire                                  spike_out;
    wire [NEURON_WIDTH-1:0]               offset_out;
    wire [MEMBRANE_WIDTH-1:0]             membrane_out;
    wire                                  add_mem_out;
    wire [UNIT_WIDTH-1:0]                 unit_number;


    // some simulation flags
    integer decreased_temp_counter = 0;
    integer PROGRAMMING = 0;
    integer SEEING_OUTPUTS = 0;
    integer UPDATING_MEMBRANES = 0;


    // DUT -------------------------------------------------------------------
    neuron_ensemble_with_memory_with_buff #(
        .GRAPH_WIDTH(GRAPH_WIDTH),
        .UNIT_WIDTH(UNIT_WIDTH),
        .UNIT_NO(UNIT_NO),
        .NEURON_WIDTH(NEURON_WIDTH),
        .GRAPH_DISTRIB_FILE(GRAPH_DISTRIB_FILE),
        
        .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
        .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
        .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
        .REAL_WIDTH(REAL_WIDTH),
        .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
        .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
        .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
   
        .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
        .PIPELINED_ROMs(PIPELINED_ROMs),
        .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
        .USE_FLOAT_POINT(USE_FLOAT_POINT),
        .FIXED_TOTAL_WIDTH(FIXED_TOTAL_WIDTH),
        .FRACTIONAL_PART(FRACTIONAL_PART),
        .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
        .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)) 
        dut (
        .clk(clk), 
        .reset_module(reset_module), 
        .halt(halt),
        .update_memory(update_memory),
        .should_increment(should_increment),

        .index_of_neuron_that_fired(index_of_neuron_that_fired), 

        .write_ensemble_seed(write_ensemble_seed),
        .ensemble_seed(ensemble_seed), 

        .write_flipping_seed(write_flipping_seed),
        .flipping_seed(flipping_seed),

        .decrease_temp(decrease_temp),

        .write_neuron_state(write_neuron_state),
        .idx_to_write(idx_to_write), 
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .spike_out(spike_out),
        .offset_out(offset_out),
        .membrane_out(membrane_out),
        .add_mem_out(add_mem_out),
        .unit_number(unit_number)
    );

    always 
    begin
        #(CLK_T / 2) clk = ~clk;
    end


    // Initialize ata arrays (membrane voltages)
    reg [31:0] data_arrays [0:NUMBER_OF_MEMBRANES-1];        
    initial 
    begin
        $readmemh("membrane_data_N8.mif", data_arrays);
    end


    integer i;
    
    reg [MEMBRANE_WIDTH-1:0] membranes [0:NUMBER_OF_MEMBRANES-1];   
    reg [0:0] states[0:NUMBER_OF_MEMBRANES-1];     
  
  
  integer j = 0;
  
  // Task: drives the increment flag, neuron index, pulses update_memory, then waits
  task drive_mem_update;
    input                               should_increment_i;
    input [$clog2(GRAPH_WIDTH)-1:0]     index_of_neuron_i;
    begin
    
        for (j = 0; j < NUMBER_OF_MEMBRANES; j = j + 1)
        begin
            membranes[j] = {MEMBRANE_WIDTH{1'bx}};
            states[j] = 1'bx;
        end
        
      // Apply inputs
      should_increment          = should_increment_i;
      index_of_neuron_that_fired= index_of_neuron_i;

      // Strobe the update signal for one clock
      update_memory = 1;
      @(posedge clk);
      update_memory = 0;
      
      // wait few cycles for changes to propagate 
      repeat(5) @(posedge clk);
      
      // capture the data 
      for (j = 0; j < 50; j = j + 1)
      begin
        membranes[offset_out]   = membrane_out;
        states[offset_out]      = add_mem_out;
        @(posedge clk);
      end
      
      
      $display("---------------------------------------------------------------------------------------");
      $display("MEMORY STATES\n");
      for (j = 0; j < NUMBER_OF_MEMBRANES; j = j + 1)
      begin
        $display("membrane[%d] = %d ; state[%d] = %b", j, membranes[j], j, states[j]);
      end
      $display("---------------------------------------------------------------------------------------\n");
      
    end
  endtask

    initial 
    begin
        // wait 150ns for global reset
        #150;

        // remove the global lock
        reset_module <= 0;

        // start writing the values 
        halt <= 1;
        repeat(3) @(posedge clk);

        // write the seed 
        write_ensemble_seed <= 1;
        write_flipping_seed <= 1;
        ensemble_seed <= 3'b101;
        flipping_seed <= 16'hb33f;

        repeat(3) @(posedge clk);
        write_ensemble_seed <= 0;
        write_flipping_seed <= 0;

        // program the membranes 

        PROGRAMMING = 1;
        for (i = 0; i < NUMBER_OF_MEMBRANES; i = i + 1)
        begin
            write_neuron_state <= 1;
            neuron_state_in <= 4'b0010;
            idx_to_write <= i;
            membrane_data_in <= data_arrays[i];
            @(posedge clk);            
        end
        PROGRAMMING = 0;


        write_neuron_state <= 0;
        // unhalt the machine 
        halt <= 0;

        SEEING_OUTPUTS = 1;
        for (i = 0; i < 20; i = i + 1)
        begin
            // wait some clock cycles to see the outputs 
            repeat(100) @(posedge clk);
            
            // decrease the temperature
            decrease_temp <= 1;
            @(posedge clk);
            decrease_temp <= 0;
        end
        SEEING_OUTPUTS = 0;
        

        // TEST updating the membranes
        UPDATING_MEMBRANES = 0;
        update_memory <= 1;

        @(posedge clk);
        update_memory <= 0;


        drive_mem_update(.should_increment_i(0),
                         .index_of_neuron_i(0));
        
        // wait a bit 
        repeat(10) @(posedge clk);
        

        drive_mem_update(.should_increment_i(0),
                         .index_of_neuron_i(1));
        
        // wait a bit 
        repeat(10) @(posedge clk);
        


        drive_mem_update(.should_increment_i(1),
                         .index_of_neuron_i(2));
        
        // wait a bit 
        repeat(10) @(posedge clk);
        


        drive_mem_update(.should_increment_i(1),
                         .index_of_neuron_i(3));
        
        // wait a bit 
        repeat(10) @(posedge clk);
        


        // stop the simulation
        $finish;
    end 


endmodule

