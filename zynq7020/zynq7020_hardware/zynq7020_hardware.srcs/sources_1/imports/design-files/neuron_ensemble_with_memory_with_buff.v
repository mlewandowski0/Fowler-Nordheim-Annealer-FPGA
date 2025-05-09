`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/25/2024 01:04:45 PM
// Design Name:
// Module Name: neuron_ensemble_with_memory_with_buff
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


module neuron_ensemble_with_memory_with_buff
  #(
     parameter GRAPH_WIDTH= 8,
     parameter UNIT_WIDTH = 1,
     parameter UNIT_NO = 0,
     parameter NEURON_WIDTH=2,
     parameter GRAPH_DISTRIB_FILE= "adj_matrix_N8_A2_distributed0.mif",
     
     parameter NEURON_SEL_LFSR_WIDTH=3,
     parameter MEMBRANE_WIDTH=16,
     parameter LOG_NOISE_SOURCE_WIDTH = 16,
     parameter LOG_LUT_BIT_SIZE = 8,
     parameter REAL_WIDTH=18,
     parameter FLIPPING_OUTPUT_WIDTH=16,
     parameter LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif",
     parameter TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif",

     parameter TEMPERATURE_LUT_WIDTH=9,
     parameter PIPELINED_ROMs=1,
     parameter PIPELINED_ENSEMBLE_STORAGE=1,
     parameter USE_FLOAT_POINT=1,
     parameter FIXED_TOTAL_WIDTH=18,
     parameter FRACTIONAL_PART=9,

     // buff parameters
     parameter NO_OF_CLK_CYCLES_TO_PROPAGATE=1,
     parameter NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=2
   )
   // ports
   (
     input wire                                  clk,
     input wire                                  reset_module,
     input wire                                  halt,
     input wire                                  update_memory,
     input wire                                  should_increment,


     input wire [$clog2(GRAPH_WIDTH)-1:0]        index_of_neuron_that_fired,
     
     input wire                                  write_ensemble_seed,
     input wire [NEURON_SEL_LFSR_WIDTH-1:0]      ensemble_seed,

     input wire                                  write_flipping_seed,
     input wire [LOG_NOISE_SOURCE_WIDTH-1:0]     flipping_seed,

     input wire                                  decrease_temp,

     input wire                                  write_neuron_state,
     input wire [NEURON_WIDTH-1:0]               idx_to_write,
     input wire [MEMBRANE_WIDTH-1:0]             membrane_data_in,
     input wire [3:0]                            neuron_state_in,

     output wire                                  spike_out,
     output wire [NEURON_WIDTH-1:0]               offset_out,
     output wire [MEMBRANE_WIDTH-1:0]             membrane_out,
     output wire                                  add_mem_out,
     output wire [UNIT_WIDTH-1:0]                 unit_number
   );

  reg [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired_reg;
  reg [2:0] state, next_state;
  localparam S_RST = 3'd0, S_GEN1 = 3'd1, S_GEN2 = 3'd2,
             S_HOLD= 3'd3, S_FETCH=3'd4, S_UPDATE=3'd5;


   localparam NUMBER_OF_NEURONS = (1 << NEURON_WIDTH);
    
    localparam ENSEMBLE_GENERATE_STATE    =  2'b00;
    localparam ENSEMBLE_RESET_STATE       =  2'b01;
    localparam ENSEMBLE_INC_STATE         =  2'b10;
    localparam ENSEMBLE_SUB_STATE         =  2'b11;
    

    localparam ENSEMBLE_WITH_MEM_RESET          = 3'b000;
    localparam ENSEMBLE_WITH_MEM_GENERATE_1     = 3'b001;
    localparam ENSEMBLE_WITH_MEM_GENERATE_2     = 3'b010;
    localparam ENSEMBLE_WITH_MEM_HOLD           = 3'b011;
    localparam ENSEMBLE_WITH_MEM_FETCH_Q        = 3'b100;
    localparam ENSEMBLE_WITH_MEM_UPDATE         = 3'b101;

  // Q - matrix module
  wire [NUMBER_OF_NEURONS-1:0] Q_out;


  // for the internal FSM
  reg storage_CE, flipping_CE, reset_flipping;
  reg [1:0] neuron_ensemble_control;
  reg CE_output_from_distributed_graph, incrementing_reg;


  // internal connection wires
  wire [NEURON_WIDTH-1:0]             offset;
  wire [MEMBRANE_WIDTH-1:0]           membrane;
  wire                                add_mem;
  wire [NEURON_WIDTH-1:0]             offset_of_spike;
  wire [UNIT_WIDTH-1:0]               which_unit_fired;
  wire                                update_ds;
  wire                                storage_CE_advance;      

  // some helpers
  // Assuming everything is in power of 2's, check whether the neuron that fired
  // belongs to the membrane is quite easy. The index that fired is of size ceil[GRAPH_WIDTH]
  // so assuming that the graph size is 12, and it is separated into three units, each containing 4 neurons
  // index_that_fired =  {which_unit_fired}{offset_ofspike}
  assign offset_of_spike    = index_of_neuron_that_fired_reg[NEURON_WIDTH-1:0];
  assign which_unit_fired   = index_of_neuron_that_fired_reg >>  NEURON_WIDTH;

  assign update_ds            = (UNIT_NO[UNIT_WIDTH-1:0]==which_unit_fired);

  distributed_graph_memory #(
                             .NEURON_WIDTH (NEURON_WIDTH),
                             .GRAPH_WIDTH  (GRAPH_WIDTH),
                             .MEM_FILE     (GRAPH_DISTRIB_FILE)
                           ) G_memory (
                             .clk(clk),
                             .reset(reset_module),
                             .index_of_neuron_that_fired(index_of_neuron_that_fired_reg),
                             .enable(CE_output_from_distributed_graph),
                             .Q_out(Q_out)
                           );

  neuron_ensemble #(
                    .UNIT_WIDTH(UNIT_WIDTH), .UNIT_NO(UNIT_NO),
                    .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
                    .NEURON_WIDTH(NEURON_WIDTH),
                    .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                    .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                    .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE),
                    .FLIP_OUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
                    .REAL_WIDTH(REAL_WIDTH),
                    .LOG_LUT_FILE(LOG_NOISE_LUT_FILENAME),
                    .TEMP_LUT_FILE(TEMPERATURE_LUT_FILENAME),
                    .TEMP_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
                    .PIPELINED_ROMs(PIPELINED_ROMs),
                    .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
                    .USE_FLOAT_POINT(USE_FLOAT_POINT),
                    .FRAC_BITS(FRACTIONAL_PART))

                  neuron_ensemble_inst
                  (
                    .clk(clk),
                    .reset(reset_module),
                    .advance_index(storage_CE_advance),
                    .storage_CE(storage_CE),
                    .flipping_CE(flipping_CE),

                    .write_ensemble_seed(write_ensemble_seed),
                    .ensemble_seed(ensemble_seed),

                    .write_flipping_seed(write_flipping_seed),
                    .flipping_seed(flipping_seed),

                    .decrease_temp(decrease_temp),
                    .reset_flipping(reset_flipping),

                    .write(write_neuron_state),
                    .idx_to_write(idx_to_write),

                    .membrane_data_in(membrane_data_in),
                    .neuron_state_in(neuron_state_in),

                    .control(neuron_ensemble_control),
                    .Q_inp(Q_out),

                    .update_ds(update_ds),
                    .idx_offset_to_update(offset_of_spike),

                    .spike(spike_ensemble_wire),
                    .unit_number(unit_number),
                    .offset(offset),
                    .membrane(membrane),
                    .add_mem(add_mem)

                  );


  // transmission buffer (latch valid spikes, otherwise request new data)
  transmit_buffer #(.NEURON_WIDTH(NEURON_WIDTH),
                    .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                    .NO_CLK_CYCLES_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
                    .NO_CLK_CYCLES_UPDATE_MEMBR(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE))
                  buffer(.clk(clk),
                         .reset(reset_module),
                         .updating_membranes(update_memory),
                         .update_ds(update_ds),

                         .spike(spike_ensemble_wire),
                         .idx_offset(offset),
                         .membrane(membrane),
                         .add_mem(add_mem),

                         .new_sample(storage_CE_advance),

                         .spike_reg(spike_out),
                         .offset_reg(offset_out),
                         .membrane_reg(membrane_out),
                         .add_mem_reg(add_mem_out)

                        );

 // FSM-sequential part
always @(posedge clk) begin
        if (reset_module) begin
            state  <= S_RST;
            index_of_neuron_that_fired_reg <= 0;
            incrementing_reg               <= 0;
        end 
        else 
        begin
            state  <= next_state;
                
            if (update_memory)
            begin
                index_of_neuron_that_fired_reg <= index_of_neuron_that_fired;
               incrementing_reg <= should_increment;
            end
        end
end


  // FSM -combinational next-state & control outptus

  always @(*)
  begin
    // safe defaults ------------------------------------------------
    storage_CE  = 1'b0;
    flipping_CE = 1'b0;
    reset_flipping = 1'b0;
    CE_output_from_distributed_graph = 1'b0;
    neuron_ensemble_control = ENSEMBLE_RESET_STATE;
    next_state = state;      // <<< guarantee a value every path

    case (state)
      S_RST:
      begin
        storage_CE  = 1;
        reset_flipping = 1;
        next_state  = S_GEN1;
      end
      S_GEN1, S_GEN2:
      begin
        storage_CE  = 1;
        flipping_CE = 1;
        neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
        if (state==S_GEN1)
          next_state = S_GEN2;
      end
      S_HOLD:
      begin
        flipping_CE = 1;
        neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
        if (!halt)
          next_state = S_GEN1;
      end
      S_FETCH:
      begin
        flipping_CE = 1;
        CE_output_from_distributed_graph = 1;
        neuron_ensemble_control = ENSEMBLE_GENERATE_STATE;
        next_state = S_UPDATE;
      end
      S_UPDATE:
      begin
        storage_CE  = 1;
        flipping_CE = 1;
        CE_output_from_distributed_graph = 1;
        neuron_ensemble_control = incrementing_reg ? ENSEMBLE_INC_STATE : ENSEMBLE_SUB_STATE;
        next_state = S_GEN1;
      end
    endcase

    // asynchronous overrides --------------------------------------
    if (reset_module)
      next_state = S_RST;
    else if (halt)
      next_state = S_HOLD;
    else if (update_memory)
      next_state = S_FETCH;
  end




endmodule
