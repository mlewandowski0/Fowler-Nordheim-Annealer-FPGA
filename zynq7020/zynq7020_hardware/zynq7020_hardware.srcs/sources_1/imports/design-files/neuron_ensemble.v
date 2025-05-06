

module neuron_ensemble
#(
    parameter UNIT_WIDTH                 = 2,
    parameter UNIT_NO                    = 0,

    // storage parameters 
    parameter NEURON_SEL_LFSR_WIDTH      = 3,
    parameter NEURON_WIDTH               = 2,
    parameter MEMBRANE_WIDTH             = 16,

    // flipping-unit parameters 
    parameter LOG_NOISE_SOURCE_WIDTH     = 16,
    parameter LOG_LUT_BIT_SIZE           = 8,
    parameter REAL_WIDTH                 = 18,
    parameter FLIP_OUT_WIDTH             = 16,
    parameter LOG_LUT_FILE               = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif",
    parameter TEMP_LUT_FILE              = "temperature_LUT_fixed_N9.mif",
    parameter TEMP_LUT_WIDTH             = 9,
    parameter PIPELINED_ROMs             = 1,
    parameter USE_FLOAT_POINT            = 0,
    parameter FRAC_BITS                  = 9,

    parameter PIPELINED_ENSEMBLE_STORAGE = 0     // 0 = combinational bypass
)
(
// global clock / resets
input  wire                       clk,
input  wire                       reset,  

// storage interaface 
input  wire                       storage_CE,
input  wire                       advance_index,
input  wire                       write_ensemble_seed,
input  wire [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seed,
input  wire                       write,
input  wire [NEURON_WIDTH-1:0]    idx_to_write,
input  wire [MEMBRANE_WIDTH-1:0]  membrane_data_in,
input  wire [3:0]                 neuron_state_in,
input  wire [1:0]                 control,
input  wire [(1<<NEURON_WIDTH)-1:0] Q_inp,
input  wire                       update_ds,
input  wire [NEURON_WIDTH-1:0]    idx_offset_to_update,


// flipping unit interface 
input  wire                       flipping_CE,
input  wire                       write_flipping_seed,
input  wire [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seed,
input  wire                       decrease_temp,
input  wire                       reset_flipping,

// outputs to interconnect 
output wire                       spike,
output wire [UNIT_WIDTH-1:0]      unit_number,
output wire [NEURON_WIDTH-1:0]    offset,
output wire [MEMBRANE_WIDTH-1:0]  membrane,
output wire                       add_mem
);

// ensemble storage 
wire [NEURON_WIDTH-1:0] idx_raw;
wire signed [MEMBRANE_WIDTH-1:0] mem_raw;
wire [3:0] st_raw; 


neuron_ensemble_storage #(
    .LFSR_WIDTH   (NEURON_SEL_LFSR_WIDTH),
    .NEURON_WIDTH (NEURON_WIDTH),
    .MEMBRANE_W   (MEMBRANE_WIDTH)
) u_store (
    .clk(clk), .reset(reset),
    .advance_index(advance_index),
    .write_seed(write_ensemble_seed), .seed(ensemble_seed),
    .write(write), .idx_to_write(idx_to_write),
    .membrane_data_in(membrane_data_in), .neuron_state_in(neuron_state_in),
    .control(control), .Q_inp(Q_inp),
    .update_ds(update_ds), .idx_offset_to_update(idx_offset_to_update),
    .selected_idx_offset(idx_raw),
    .selected_membrane(mem_raw),
    .neuron_state(st_raw)
);

    // optional pipeline with one-stage 
    reg [NEURON_WIDTH-1:0] idx_p; 
    reg signed [MEMBRANE_WIDTH-1:0] mem_p; 
    reg [3:0] st_p; 

    generate if (PIPELINED_ENSEMBLE_STORAGE) 
        begin  
        always @(posedge clk)
        begin
            if (reset)
            begin
                idx_p <= 0;
                mem_p <= 0;
                st_p <= 0;
            end
            else if (storage_CE)
            begin
                idx_p <= idx_raw; 
                mem_p <= mem_raw;
                st_p <= st_raw;
            end       
        end
    end 
    else 
    begin 
        always @(*)
        begin
            idx_p = idx_raw;
            mem_p = mem_raw;
            st_p = st_raw;
        end
    end
    endgenerate

    // Flipping unit 
    wire signed [FLIP_OUT_WIDTH-1:0] flip_val;
    flipping_unit #(
        .LOG_NOISE_SOURCE_WIDTH (LOG_NOISE_SOURCE_WIDTH),
        .LOG_LUT_BIT_SIZE       (LOG_LUT_BIT_SIZE),
        .REAL_WIDTH             (REAL_WIDTH),
        .FLIP_OUT_WIDTH         (FLIP_OUT_WIDTH),
        .LOG_LUT_FILE           (LOG_LUT_FILE),
        .TEMP_LUT_FILE          (TEMP_LUT_FILE),
        .TEMP_LUT_WIDTH         (TEMP_LUT_WIDTH),
        .PIPELINED_ROMs         (PIPELINED_ROMs),
        .USE_FLOAT_POINT        (USE_FLOAT_POINT),
        .FRAC_BITS              (FRAC_BITS)
    ) u_flip (
        .clk(clk),
        .reset(reset_flipping),
        .CE(flipping_CE),
        .write_seed(write_flipping_seed), .seed(flipping_seed),
        .decrease_temp(decrease_temp),
        .flipping_output(flip_val)
    );

    wire s_p  = st_p[1];
    wire s_n  = st_p[0];
    wire signed [MEMBRANE_WIDTH-1:0] mem_cmp = s_p ?  mem_p : -mem_p;

    assign spike       = (flip_val < mem_cmp) & flipping_CE;
    assign unit_number = UNIT_NO[UNIT_WIDTH-1:0];
    assign offset      = idx_p;
    assign membrane    = mem_p;
    assign add_mem     = s_n;

 
endmodule