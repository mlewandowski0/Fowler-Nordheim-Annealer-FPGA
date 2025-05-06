`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 06:45:07 PM
// Design Name: 
// Module Name: transmit_buffer
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

module transmit_buffer #( parameter NEURON_WIDTH=5,
                          parameter MEMBRANE_WIDTH = 16,
                          parameter NO_CLK_CYCLES_PROPAGATE = 1,
                          parameter NO_CLK_CYCLES_UPDATE_MEMBR = 2)
                          (
                          input wire clk,
                          input wire reset,
                          
                          // model flags rom scheduler
                          input wire    updating_membranes,
                          input wire    update_ds,
                          
                          // candidate from the ensemble
                          input wire spike,
                          input wire [NEURON_WIDTH-1:0] idx_offset,
                          input wire [MEMBRANE_WIDTH-1:0] membrane,
                          input wire add_mem,
                          
                          // handshake towards ensemble
                          output reg new_sample,
                          
                          // registered outptus toward inter-connect
                          output reg spike_reg,
                          output reg [NEURON_WIDTH-1:0] offset_reg, 
                          output reg [MEMBRANE_WIDTH-1:0] membrane_reg,
                          output reg add_mem_reg);
                          
                          
    // state
    localparam S_WAIT_PROP   = 3'd0;
    localparam S_ACCEPTING   = 3'd1;
    localparam S_GOOD_SAMPLE = 3'd2;
    localparam S_UPDATING    = 3'd3;
    localparam S_WAIT_UPD    = 3'd4;
    
    localparam CNT_UP_W = $clog2(NO_CLK_CYCLES_UPDATE_MEMBR + 1);
    
    //
    reg [2:0] state, next_state;
    reg [$clog2(NO_CLK_CYCLES_PROPAGATE):0] cnt_prop;
    reg [CNT_UP_W-1:0]                      cnt_upd;
    
    
    // FSM
    always @(posedge clk)
    begin
        if (reset) 
            state <= S_WAIT_PROP;
        else if (updating_membranes)
            state <= S_UPDATING;
        else 
            state <= next_state;
    end
    
    // logic for next state transistion
    always @(*)
    begin
        next_state = state;
        case (state)
            S_WAIT_PROP:
            begin
                if (cnt_prop == NO_CLK_CYCLES_PROPAGATE)
                    next_state = S_ACCEPTING;
            end
            S_ACCEPTING: 
            begin
                if (spike)
                    next_state = S_GOOD_SAMPLE;
                else 
                    next_state = S_ACCEPTING;   //TODO: or S_WAIT_PROP ? 
            end
            S_GOOD_SAMPLE:
            begin
                next_state = S_WAIT_PROP;
            end            
            S_UPDATING:
            begin
                next_state = S_WAIT_UPD;
            end
            S_WAIT_UPD:
            begin
                if (cnt_upd == NO_CLK_CYCLES_UPDATE_MEMBR) 
                    next_state = S_ACCEPTING;
            end
            default:
                next_state = S_WAIT_PROP;
        endcase    
    end
    
    // control signals
    always @(posedge clk)
    begin
        if (reset)
        begin
            cnt_prop <= 0;
            cnt_upd <= 0;
            spike_reg <= 0;
            offset_reg  <= {NEURON_WIDTH{1'b0}};        // should be 1'bx
            membrane_reg<= {MEMBRANE_WIDTH{1'b0}};
            add_mem_reg <= 1'b0;
            new_sample  <= 1'b0;
        end
        else 
        begin
            // counters
            cnt_prop <= (state==S_WAIT_PROP) ? cnt_prop + 1'b1 : 0;
            cnt_upd  <= (state==S_WAIT_UPD)  ? cnt_upd  + 1'b1 : 0;
            
            // latch candidate when accepted 
            
            if (state == S_ACCEPTING)
            begin
                spike_reg <= 1'b0;
                offset_reg <= idx_offset;
                membrane_reg <= membrane;
                add_mem_reg <= add_mem; 
            end
            
            if (state == S_GOOD_SAMPLE)
            begin
                spike_reg <= 1'b1;
            end
            
            // wipe outputs when entering updating phase
            if (updating_membranes) begin
                spike_reg   <= 1'b0;
                offset_reg  <= {NEURON_WIDTH{1'b0}};
                membrane_reg<= {MEMBRANE_WIDTH{1'b0}};
                add_mem_reg <= 1'b0;
            end
            
            // new sample pulse
            // TODO: better 
            new_sample <= 1'b1;                             // default
            
            // TODO:
            //if ((state == S_ACCEPTING && !spike) ||         // rejected
            //    (state == S_UPDATING))                      // after scheduler request
            //if (!spike)
            //    new_sample <= 1'b1;
        end
    end
    
    
endmodule