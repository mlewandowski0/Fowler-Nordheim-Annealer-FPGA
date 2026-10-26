"""Separate run-time-loadable signed-Gset variant; leaves published G15 RTL intact."""
from pathlib import Path
from prepare_inputs import ROOT
from prepare_sudoku_rtl import replace_once as sub

def generate(out):
 out=Path(out)/'generated';names=(ROOT/'rtl/files.f').read_text().splitlines()+['rtl/qubo_axi.v']
 for name in names:
  if not name:continue
  s=(ROOT/name).read_text()
  if name.endswith('distributed_graph_memory.v'):
   s='''module distributed_graph_memory #(parameter NEURON_WIDTH=5, GRAPH_WIDTH=800, parameter MEM_FILE="unused")(
 input wire clk,reset,enable,
 input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,
 input wire graph_write_pos,graph_write_neg,
 input wire [9:0] graph_address,
 input wire [31:0] graph_data,
 output reg [(1<<NEURON_WIDTH)-1:0] Q_out,Q_neg);
 localparam W=1<<NEURON_WIDTH;
 (* ram_style="block" *) reg [W-1:0] positive[0:GRAPH_WIDTH-1];
 (* ram_style="block" *) reg [W-1:0] negative[0:GRAPH_WIDTH-1];
 reg [W-1:0] p,n;
 always @(posedge clk) begin
   if(graph_write_pos && graph_address<GRAPH_WIDTH)positive[graph_address]<=graph_data;
   if(graph_write_neg && graph_address<GRAPH_WIDTH)negative[graph_address]<=graph_data;
   if(enable)begin p<=positive[index_of_neuron_that_fired];n<=negative[index_of_neuron_that_fired];end
 end
 // Keep BRAM read outputs free of synchronous reset. The unit consumes them only after fetch.
 always @* begin Q_out=p|n;Q_neg=n;end
 endmodule
'''
  elif name.endswith('neuron_ensemble_storage.v'):
   s=sub(s,'    input  wire                         update_ds,','    input wire [(1<<NEURON_WIDTH)-1:0] Q_neg,\n    input  wire                         update_ds,')
   s=sub(s,'mem_ram[i] <= mem_ram[i] + DELTA;','mem_ram[i] <= Q_neg[i] ? mem_ram[i] - DELTA : mem_ram[i] + DELTA;')
   s=sub(s,'mem_ram[i] <= mem_ram[i] - DELTA;','mem_ram[i] <= Q_neg[i] ? mem_ram[i] + DELTA : mem_ram[i] - DELTA;')
  elif name.endswith('neuron_ensemble.v'):
   s=sub(s,'    input wire                                 update_ds,','    input wire [(1<<NEURON_WIDTH)-1:0] Q_neg,\n    input wire                                 update_ds,') if '    input wire                                 update_ds,' in s else s.replace('input wire                                  update_ds,','input wire [(1<<NEURON_WIDTH)-1:0] Q_neg,\n    input wire                                  update_ds,')
   # Use an exact port anchor whose whitespace can vary in the historical file.
   if 'input wire [(1<<NEURON_WIDTH)-1:0] Q_neg' not in s:
    import re
    s,n=re.subn(r'(input\s+wire\s+update_ds,)',r'input wire [(1<<NEURON_WIDTH)-1:0] Q_neg,\n    \1',s);assert n==1
   s=sub(s,'.Q_inp(Q_inp),','.Q_inp(Q_inp), .Q_neg(Q_neg),')
  elif name.endswith('neuron_ensemble_with_memory_with_buff.v'):
   s=sub(s,'     input wire                                  clk,','     input wire graph_write_pos,graph_write_neg,\n     input wire [9:0] graph_address,\n     input wire [31:0] graph_data,\n     input wire                                  clk,')
   s=sub(s,'  wire [NUMBER_OF_NEURONS-1:0] Q_out;','  wire [NUMBER_OF_NEURONS-1:0] Q_out,Q_neg;')
   s=sub(s,'.Q_out(Q_out)','.Q_out(Q_out), .Q_neg(Q_neg),\n                             .graph_write_pos(graph_write_pos),.graph_write_neg(graph_write_neg),.graph_address(graph_address),.graph_data(graph_data)')
   s=sub(s,'.Q_inp(Q_out),','.Q_inp(Q_out), .Q_neg(Q_neg),')
  elif name.endswith('neuroSA_machine.sv'):
   s=sub(s,'(input                                  clk,','(input [UNITS-1:0] graph_write_pos,graph_write_neg,\n input [9:0] graph_address,\n input [31:0] graph_data,\n input [15:0] target_cut1,target_cut2,target_cut3,\n output [31:0] target_cycles1,target_cycles2,target_cycles3,\n input                                  clk,')
   # Only buffered (supported) unit instance; unbuffered branch remains unused.
   marker='        else if (USE_TRANSMIT_WITH_BUFF == 1)';left,right=s.split(marker)
   right=sub(right,'unit_inst(\n                .clk(clk),','unit_inst(\n                .clk(clk), .graph_write_pos(graph_write_pos[i]),.graph_write_neg(graph_write_neg[i]),.graph_address(graph_address),.graph_data(graph_data),')
   s=left+marker+right
   s=sub(s,'.cooling_period(cooling_period),','.cooling_period(cooling_period),\n    .target_cut1(target_cut1),.target_cut2(target_cut2),.target_cut3(target_cut3),\n    .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),')
  elif name.endswith('scheduler_2.v'):
   s=sub(s,'    input wire [31:0]                          cooling_period,','    input wire [15:0] target_cut1,target_cut2,target_cut3,\n    output reg [31:0] target_cycles1,target_cycles2,target_cycles3,\n    input wire [31:0]                          cooling_period,')
   s=sub(s,'            flips      <= 0;','            flips      <= 0;\n            target_cycles1<=0;target_cycles2<=0;target_cycles3<=0;')
   s=sub(s,'                    cuts_cur <= cuts_next;','''                    cuts_cur <= cuts_next;
                    if(target_cut1!=0 && target_cycles1==0 && cuts_next >= $signed({1'b0,target_cut1}))target_cycles1<=step_cnt+1;
                    if(target_cut2!=0 && target_cycles2==0 && cuts_next >= $signed({1'b0,target_cut2}))target_cycles2<=step_cnt+1;
                    if(target_cut3!=0 && target_cycles3==0 && cuts_next >= $signed({1'b0,target_cut3}))target_cycles3<=step_cnt+1;''')
  elif name.endswith('qubo_axi.v'):
   s=sub(s,'    reg [31:0] cooling_period;','''    reg [31:0] cooling_period;
    reg [24:0] graph_mask;
    reg [9:0] graph_address;
    reg [31:0] graph_data,flip_limit;
    reg graph_write_pos,graph_write_neg;
    reg [15:0] target_cut1,target_cut2,target_cut3;
    wire [31:0] target_cycles1,target_cycles2,target_cycles3;''')
   s=sub(s,'            cooling_period<=0;','''            cooling_period<=0;graph_mask<=0;graph_address<=0;graph_data<=0;
            graph_write_pos<=0;graph_write_neg<=0;flip_limit<=0;
            target_cut1<=0;target_cut2<=0;target_cut3<=0;''')
   s=sub(s,'        end else begin\n            if (S_AXI_AWVALID','        end else begin\n            graph_write_pos<=0;graph_write_neg<=0;\n            if (S_AXI_AWVALID')
   s=sub(s,'                aw_pending<=0; w_pending<=0; S_AXI_BVALID<=1;','''                if(wstrb==15 && halted && !regs[0][1])begin
                    case(awaddr)
                    8'hb0:graph_mask<=wdata[24:0];
                    8'hb4:graph_address<=wdata[9:0];
                    8'hb8:begin graph_data<=wdata;graph_write_pos<=1;end
                    8'hbc:begin graph_data<=wdata;graph_write_neg<=1;end
                    8'hc0:flip_limit<=wdata;
                    8'hd0:target_cut1<=wdata[15:0];
                    8'hd4:target_cut2<=wdata[15:0];
                    8'hd8:target_cut3<=wdata[15:0];
                    endcase
                end
                aw_pending<=0; w_pending<=0; S_AXI_BVALID<=1;''')
   s=sub(s,"32'h51554231","32'h47535431")
   s=sub(s,'                    12:S_AXI_RDATA<=cooling_period;','''                    12:S_AXI_RDATA<=cooling_period;
                    44:S_AXI_RDATA<={7'b0,graph_mask};
                    45:S_AXI_RDATA<={22'b0,graph_address};
                    48:S_AXI_RDATA<=flip_limit;
                    52:S_AXI_RDATA<={16'b0,target_cut1};
                    53:S_AXI_RDATA<={16'b0,target_cut2};
                    54:S_AXI_RDATA<={16'b0,target_cut3};
                    56:S_AXI_RDATA<=target_cycles1;
                    57:S_AXI_RDATA<=target_cycles2;
                    58:S_AXI_RDATA<=target_cycles3;''')
   s=sub(s,'.halt(!regs[0][1]),','.halt(!regs[0][1] || (flip_limit!=0 && accepted_flips>=flip_limit)),')
   s=sub(s,'.cooling_period(cooling_period),','''.cooling_period(cooling_period),
        .graph_write_pos({25{graph_write_pos}} & graph_mask),.graph_write_neg({25{graph_write_neg}} & graph_mask),
        .graph_address(graph_address),.graph_data(graph_data),
        .target_cut1(target_cut1),.target_cut2(target_cut2),.target_cut3(target_cut3),
        .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),''')
  dest=out/name;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(s)
 return [out/n for n in names if n]
if __name__=='__main__':generate(ROOT/'build/gset')
