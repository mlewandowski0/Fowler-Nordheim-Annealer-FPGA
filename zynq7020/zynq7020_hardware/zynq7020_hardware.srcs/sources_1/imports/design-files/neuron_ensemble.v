module neuron_ensemble  
#(
parameter UNIT_WIDTH=2,
parameter UNIT_NO=0,
parameter NEURON_SEL_LFSR_WIDTH=3,
parameter NEURON_WIDTH=2,
parameter MEMBRANE_WIDTH=16,
parameter LOG_NOISE_SOURCE_WIDTH = 16,
parameter LOG_LUT_BIT_SIZE = 8, 
parameter FLIPPING_OUTPUT_WIDTH=16,
parameter REAL_WIDTH=16,
parameter LOG_NOISE_LUT_FILENAME="log_noise_LUT.mif",
parameter TEMPERATURE_LUT_FILENAME="temperature_LUT.mif",
parameter TEMPERATURE_LUT_WIDTH=7,
parameter PIPELINED_ROMs=1,
parameter PIPELINED_ENSEMBLE_STORAGE=1,
parameter USE_FLOAT_POINT=0,
parameter FIXED_TOTAL_WIDTH=18,
parameter FRACTIONAL_PART=8
)
(
    input wire                                   clk, 
    input wire                                   storage_CE,
    input wire                                   advance_index,
    input wire                                   flipping_CE,
    input wire                                   write_ensemble_seed,
    input wire                                   [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed,
    input wire                                   write_flipping_seed,
    input wire                                   [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seed,
    input wire                                   decrease_temp,
    input wire                                   reset_flipping,
    input wire                                   write,
    input wire                                   [MEMBRANE_WIDTH-1:0] membrane_data_in,
    input wire                                   [3:0] neuron_state_in,
    input wire                                   [1:0] control, // 0: GENERATE_STATE, 1: INC_STATE, 2: SUB_STATE, 3: RESET_STATE
    input wire                                   [(1 << NEURON_WIDTH)-1:0] Q_inp,
    input wire                                   update_ds,
    input wire                                   [NEURON_WIDTH-1:0] idx_offset_to_update,

    output wire                                  spike,
    output wire [UNIT_WIDTH-1:0]                 unit_number,
    output wire [NEURON_WIDTH-1:0]               offset,
    output wire [MEMBRANE_WIDTH-1:0]             membrane,
    output wire                                  add_mem
);

wire [NEURON_WIDTH-1:0] selected_idx_offset;
wire signed [FLIPPING_OUTPUT_WIDTH-1:0] flipping_output;
wire signed [MEMBRANE_WIDTH-1:0] selected_membrane;
wire [3:0] neuron_state;

reg [NEURON_WIDTH-1:0] selected_idx_offset_reg;
reg signed [MEMBRANE_WIDTH-1:0] selected_membrane_reg;
reg add_reg;
reg [3:0] neuron_state_reg;


localparam GENERATE_STATE = 2'b00;
localparam INC_STATE      = 2'b01;
localparam SUB_STATE      = 2'b10; 
localparam RESET_STATE    = 2'b11;


neuron_ensemble_storage #(.LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
                          .NEURON_WIDTH(NEURON_WIDTH),
                          .MEMBRANE_WIDTH(MEMBRANE_WIDTH))
                          neuron_ensemble_storage_inst
                                 (.clk(clk),
                                  .advance_index(advance_index),
                                  .write_seed(write_ensemble_seed), 
                                  .seed(ensemble_seed),
                                  .write(write),                            // write the data to the storage
                                  
                                  .membrane_data_in(membrane_data_in),
                                  .neuron_state_in(neuron_state_in),

                                  .control(control),                        // 0: GENERATE_STATE, 1: INC_STATE, 2: SUB_STATE, 3: RESET_STATE
                                  .Q_inp(Q_inp),
                                 
                                  .update_ds(update_ds),
                                  .idx_offset_to_update(idx_offset_to_update),

                                 .selected_idx_offset(selected_idx_offset),
                                 .selected_membrane(selected_membrane),
                                 .neuron_state(neuron_state));

flipping_unit #(.LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE), 
                .REAL_WIDTH(REAL_WIDTH),
                .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
                .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
                .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
                .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
                .PIPELINED_ROMs(PIPELINED_ROMs),
                .USE_FLOAT_POINT(USE_FLOAT_POINT),
                .FRACTIONAL_PART(FRACTIONAL_PART))

                    flipping_unit_tb
                    (.clk(clk), 
                     .CE(flipping_CE),
                     .write_seed(write_flipping_seed), 
                     .seed(flipping_seed),
                     .decrease_temp(decrease_temp),
                     .reset(reset_flipping),
                     .flipping_output(flipping_output));

    if (PIPELINED_ENSEMBLE_STORAGE == 1)
    begin
        always @(posedge clk)
        begin
            if (control == RESET_STATE)
            begin
                selected_idx_offset_reg <= 0;
                selected_membrane_reg <= 0;
                neuron_state_reg <= 0;
            end
            else if (storage_CE)
            begin
                selected_idx_offset_reg <= selected_idx_offset;
                selected_membrane_reg <= selected_membrane;
                neuron_state_reg <= neuron_state;
            end
        end
    end
   // else 
   // begin
   //     assign selected_idx_offset_reg = selected_idx_offset;
   //     assign selected_membrane_reg = selected_membrane;
   //     assign neuron_state_reg = neuron_state;
   // end

       /* storing the following neuron data
            neuron_state[3] = ds_p
            neuron_state[2] = ds_n
            neuron_state[1] = s_p
            neuron_state[0] = s_n
 
        */


    // Decpde the neuron state
    wire ds_p, ds_n, s_p, s_n;
    assign ds_p = neuron_state_reg[3];
    assign ds_n = neuron_state_reg[2];
    assign s_p = neuron_state_reg[1];
    assign s_n = neuron_state_reg[0];

    // 
    wire signed [MEMBRANE_WIDTH-1:0] membrane_compare; 
    
    
    assign membrane_compare = s_p == 1 ? selected_membrane_reg : -selected_membrane_reg;


    assign spike = (flipping_output < membrane_compare);
    assign unit_number = UNIT_NO;
    assign offset = selected_idx_offset_reg;
    assign membrane = selected_membrane_reg;
    assign add_mem = s_n;


endmodule