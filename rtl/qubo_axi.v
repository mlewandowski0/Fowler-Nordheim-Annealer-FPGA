`timescale 1ns/1ps
// AXI4-Lite ABI v1. Independent address/data capture, one outstanding request.
module qubo_axi (
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN" *)
    input wire S_AXI_ACLK,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input wire S_AXI_ARESETN,
    input wire [7:0] S_AXI_AWADDR,
    input wire [2:0] S_AXI_AWPROT,
    input wire S_AXI_AWVALID,
    output wire S_AXI_AWREADY,
    input wire [31:0] S_AXI_WDATA,
    input wire [3:0] S_AXI_WSTRB,
    input wire S_AXI_WVALID,
    output wire S_AXI_WREADY,
    output wire [1:0] S_AXI_BRESP,
    output reg S_AXI_BVALID,
    input wire S_AXI_BREADY,
    input wire [7:0] S_AXI_ARADDR,
    input wire [2:0] S_AXI_ARPROT,
    input wire S_AXI_ARVALID,
    output wire S_AXI_ARREADY,
    output reg [31:0] S_AXI_RDATA,
    output wire [1:0] S_AXI_RRESP,
    output reg S_AXI_RVALID,
    input wire S_AXI_RREADY
);
    reg [31:0] regs[0:6];
    reg [31:0] cooling_period;
    reg aw_pending, w_pending;
    reg [7:0] awaddr;
    reg [31:0] wdata;
    reg [3:0] wstrb;
    wire [15:0] best_cut;
    wire [31:0] accepted_flips, cycle_count;
    wire [799:0] best_assignment;
    wire halted;
    assign S_AXI_AWREADY = !aw_pending && !S_AXI_BVALID;
    assign S_AXI_WREADY = !w_pending && !S_AXI_BVALID;
    assign S_AXI_BRESP = 2'b00;
    assign S_AXI_ARREADY = !S_AXI_RVALID;
    assign S_AXI_RRESP = 2'b00;

    integer i, b;
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            for(i=0;i<7;i=i+1) regs[i]<=0;
            cooling_period<=0;
            aw_pending<=0; w_pending<=0;
            awaddr<=0; wdata<=0; wstrb<=0;
            S_AXI_BVALID<=0; S_AXI_RVALID<=0; S_AXI_RDATA<=0;
        end else begin
            if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                awaddr<=S_AXI_AWADDR; aw_pending<=1;
            end
            if (S_AXI_WVALID && S_AXI_WREADY) begin
                wdata<=S_AXI_WDATA; wstrb<=S_AXI_WSTRB; w_pending<=1;
            end
            if (aw_pending && w_pending && !S_AXI_BVALID) begin
                if (awaddr[7:2]<7)
                    for(b=0;b<4;b=b+1)
                        if(wstrb[b]) regs[awaddr[7:2]][8*b+:8]<=wdata[8*b+:8];
                if (awaddr[7:2]==12)
                    for(b=0;b<4;b=b+1)
                        if(wstrb[b]) cooling_period[8*b+:8]<=wdata[8*b+:8];
                aw_pending<=0; w_pending<=0; S_AXI_BVALID<=1;
            end
            if(S_AXI_BVALID && S_AXI_BREADY) S_AXI_BVALID<=0;
            if(S_AXI_ARVALID && S_AXI_ARREADY) begin
                S_AXI_RVALID<=1;
                if(S_AXI_ARADDR[7:2]<7) S_AXI_RDATA<=regs[S_AXI_ARADDR[7:2]];
                else case(S_AXI_ARADDR[7:2])
                    7: S_AXI_RDATA<={16'b0,best_cut};
                    8: S_AXI_RDATA<=32'h51554231; // QUB1
                    9: S_AXI_RDATA<=cycle_count;
                    10:S_AXI_RDATA<=accepted_flips;
                    11:S_AXI_RDATA<={31'b0,halted};
                    12:S_AXI_RDATA<=cooling_period;
                    default:
                        if(S_AXI_ARADDR[7:2]>=16 && S_AXI_ARADDR[7:2]<41)
                            S_AXI_RDATA<=best_assignment[(S_AXI_ARADDR[7:2]-16)*32+:32];
                        else S_AXI_RDATA<=0;
                endcase
            end
            if(S_AXI_RVALID && S_AXI_RREADY) S_AXI_RVALID<=0;
        end
    end

    neuroSA_machine #(
        .USE_ROUND_ROBIN(0), .GRAPH_WIDTH(800), .UNITS(25), .NEURONS_PER_UNIT(32),
        .NEURON_SEL_LFSR_WIDTH(9), .MEMBRANE_WIDTH(10), .FLIPPING_OUTPUT_WIDTH(16),
        .LOG_NOISE_SOURCE_WIDTH(16), .LOG_LUT_BIT_SIZE(8), .TEMP_INC_WIDTH(12),
        .NO_CLK_CYCLES_AFTER_UPDATE(4), .REAL_WIDTH(18), .FRACTIONAL_PART(9),
        .TEMPERATURE_LUT_WIDTH(9),
        .LOG_NOISE_LUT_FILENAME("log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif"),
        .TEMPERATURE_LUT_FILENAME("temperature_LUT_fixed_N9.mif")
    ) core (
        .clk(S_AXI_ACLK), .reset(!S_AXI_ARESETN || !regs[0][0]), .halt(!regs[0][1]),
        .cooling_period(cooling_period),
        .write_ensemble_seed(regs[1][24:0]), .write_flipping_seed(regs[1][24:0]),
        .write_neuron_states(regs[2][24:0]),
        .ensemble_seed(regs[3][8:0]), .flipping_seed(regs[4][15:0]),
        .membrane_data_in(regs[5][9:0]), .neuron_state_in(regs[5][13:10]),
        .idx_to_write(regs[6][4:0]), .found_solution_value(best_cut),
        .flips_cnt(accepted_flips), .cycle_count(cycle_count), .best_assignment(best_assignment),
        .halted(halted)
    );
endmodule
