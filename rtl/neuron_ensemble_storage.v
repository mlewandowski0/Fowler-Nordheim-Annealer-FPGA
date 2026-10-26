module neuron_ensemble_storage
#(
    parameter LFSR_WIDTH   = 3,
    parameter NEURON_WIDTH = 2,
    parameter MEMBRANE_W   = 16,
    parameter  DELTA = 2   // ±Δ applied on INC/SUB
)
(
    input  wire                         clk,
    input  wire                         reset,          // synchronous, active-high
    // LFSR index selection
    input  wire                         advance_index,
    input  wire                         write_seed,
    input  wire [LFSR_WIDTH-1:0]        seed,
    // external write interface
    input  wire                         write,
    input  wire [NEURON_WIDTH-1:0]      idx_to_write,
    input  wire [MEMBRANE_W-1:0]        membrane_data_in,
    input  wire [3:0]                   neuron_state_in,
    // ensemble control
    input  wire [1:0]                   control,
    input  wire [(1<<NEURON_WIDTH)-1:0] Q_inp,
    input  wire                         update_ds,
    input  wire [NEURON_WIDTH-1:0]      idx_offset_to_update,
    // outputs (registered)
    output reg  [NEURON_WIDTH-1:0]      selected_idx_offset,
    output reg  signed [MEMBRANE_W-1:0] selected_membrane,
    output reg  [3:0]                   neuron_state
);

    // ------------------------------------------------------------------
    // constant definitions
    // ------------------------------------------------------------------
    localparam           EN_GEN = 2'b00;
    localparam           EN_RST = 2'b01;
    localparam           EN_INC = 2'b10;
    localparam           EN_SUB = 2'b11;

    // ------------------------------------------------------------------
    // Parallel-update local registers (membrane + state)
    // ------------------------------------------------------------------
    localparam DEPTH = 1 << NEURON_WIDTH;

    reg signed [MEMBRANE_W-1:0] mem_ram [0:DEPTH-1];
    reg [3:0] state_ram [0:DEPTH-1];

    // ------------------------------------------------------------------
    // LFSR index generator (read address)
    // ------------------------------------------------------------------
    wire [NEURON_WIDTH-1:0] idx_offset;

    LFSR_inout #(.LFSR_BITS(LFSR_WIDTH),
                 .OUT_BITS (NEURON_WIDTH))
    u_lfsr (
        .clk         (clk),
        .reset       (reset),
        .chip_enable (advance_index),
        .write_seed  (write_seed),
        .seed        (seed),
        .out_trunc   (idx_offset)
    );

    // The host initializes every field/state before enabling the search.
    // Bulk-resetting these 11,200 bits across all 25 units creates a global
    // high-fanout reset tree and prevents local register packing.
    integer i;
    always @(posedge clk) begin
        if (write) begin
            mem_ram[idx_to_write] <= membrane_data_in;
            state_ram[idx_to_write] <= neuron_state_in;
        end else begin
            case (control)
                EN_INC:
                    for (i = 0; i < DEPTH; i = i + 1)
                        if (Q_inp[i]) mem_ram[i] <= mem_ram[i] + DELTA;
                EN_SUB:
                    for (i = 0; i < DEPTH; i = i + 1)
                        if (Q_inp[i]) mem_ram[i] <= mem_ram[i] - DELTA;
                default: begin end
            endcase
            if (update_ds && (control == EN_INC || control == EN_SUB)) begin
                state_ram[idx_offset_to_update][3] <= state_ram[idx_offset_to_update][0];
                state_ram[idx_offset_to_update][2] <= state_ram[idx_offset_to_update][1];
                state_ram[idx_offset_to_update][1] <= ~state_ram[idx_offset_to_update][1];
                state_ram[idx_offset_to_update][0] <= ~state_ram[idx_offset_to_update][0];
            end
        end
    end

    // ------------------------------------------------------------------
    // Port-B : synchronous read (1-clock latency)
    // ------------------------------------------------------------------
    reg [NEURON_WIDTH-1:0] idx_r;
    always @(posedge clk) begin
        idx_r <= idx_offset;                         // register address
        selected_idx_offset <= idx_r;
        selected_membrane   <= mem_ram  [idx_r];
        neuron_state        <= state_ram[idx_r];
    end
endmodule
