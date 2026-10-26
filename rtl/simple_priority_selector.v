`timescale 1ns/1ps
// Fixed priority (lowest numbered valid unit wins), in a balanced mux tree.
// Combinational latency is ceil(log2(UNITS)) mux levels; no clock is added.
module simple_priority_selector #(
    parameter UNITS=4,
    parameter UNIT_WIDTH=2,
    parameter NEURON_NUM_WIDTH=2,
    parameter MEMBRANE_WIDTH=16
)(
    input wire [UNITS-1:0] spikes,
    input wire [UNITS*UNIT_WIDTH-1:0] all_unit_numbers,
    input wire [UNITS*NEURON_NUM_WIDTH-1:0] offsets,
    input wire [UNITS*MEMBRANE_WIDTH-1:0] all_membranes,
    input wire [UNITS-1:0] add_mems,
    output wire spiked,
    output wire [UNIT_WIDTH-1:0] unit_numb,
    output wire [NEURON_NUM_WIDTH-1:0] offset,
    output wire signed [MEMBRANE_WIDTH-1:0] membrane,
    output wire add_mem
);
    localparam LEAVES=1 << $clog2(UNITS);
    localparam PAYLOAD_WIDTH=UNIT_WIDTH+NEURON_NUM_WIDTH+MEMBRANE_WIDTH+1;
    wire [2*LEAVES-2:0] valid_tree;
    wire [PAYLOAD_WIDTH-1:0] data_tree[0:2*LEAVES-2];
    genvar i;
    generate
        for(i=0;i<LEAVES;i=i+1) begin: leaves
            if(i<UNITS) begin
                assign valid_tree[LEAVES-1+i]=spikes[i];
                assign data_tree[LEAVES-1+i]={all_unit_numbers[i*UNIT_WIDTH+:UNIT_WIDTH],
                    offsets[i*NEURON_NUM_WIDTH+:NEURON_NUM_WIDTH],
                    all_membranes[i*MEMBRANE_WIDTH+:MEMBRANE_WIDTH],add_mems[i]};
            end else begin
                assign valid_tree[LEAVES-1+i]=1'b0;
                assign data_tree[LEAVES-1+i]={PAYLOAD_WIDTH{1'b0}};
            end
        end
        for(i=0;i<LEAVES-1;i=i+1) begin: branches
            assign valid_tree[i]=valid_tree[2*i+1] | valid_tree[2*i+2];
            assign data_tree[i]=valid_tree[2*i+1] ? data_tree[2*i+1] : data_tree[2*i+2];
        end
    endgenerate
    assign spiked=valid_tree[0];
    assign {unit_numb,offset,membrane,add_mem}=spiked ? data_tree[0] : {PAYLOAD_WIDTH{1'b0}};
endmodule
