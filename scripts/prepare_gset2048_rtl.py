"""2048 physical slots, 32 units x 64 states, unsigned run-time graph banks."""
from prepare_gset1024_rtl import generate as base
from prepare_sudoku_rtl import replace_once as sub

def generate(out):
 files=base(out)
 for f in files:
  s=f.read_text()
  if f.name=='qubo_axi.v':
   s=s.replace('input wire [7:0] S_AXI_AWADDR','input wire [8:0] S_AXI_AWADDR').replace('input wire [7:0] S_AXI_ARADDR','input wire [8:0] S_AXI_ARADDR').replace('reg [7:0] awaddr','reg [8:0] awaddr').replace('[7:2]','[8:2]').replace('[1023:0]','[2047:0]').replace('reg [9:0] graph_address','reg [11:0] graph_address').replace('graph_address<=wdata[9:0]','graph_address<=wdata[11:0]')
   s=s.replace('.GRAPH_WIDTH(1024), .UNITS(32), .NEURONS_PER_UNIT(32)','.GRAPH_WIDTH(2048), .UNITS(32), .NEURONS_PER_UNIT(64)').replace('.idx_to_write(regs[6][4:0])','.idx_to_write(regs[6][5:0])').replace("32'h47535432","32'h47535433").replace('S_AXI_ARADDR[8:2]>=16 && S_AXI_ARADDR[8:2]<48','S_AXI_ARADDR[8:2]>=64 && S_AXI_ARADDR[8:2]<128').replace('(S_AXI_ARADDR[8:2]-16)*32','(S_AXI_ARADDR[8:2]-64)*32')
  elif f.name=='distributed_graph_memory.v':
   s=s.replace('NEURON_WIDTH=5, GRAPH_WIDTH=1024','NEURON_WIDTH=6, GRAPH_WIDTH=2048').replace('input wire [9:0] graph_address','input wire [11:0] graph_address').replace('if(graph_write_pos && graph_address<GRAPH_WIDTH)positive[graph_address]<=graph_data;',"if(graph_write_pos)begin\n     if(!graph_address[11])positive[graph_address[10:0]][31:0]<=graph_data;\n     else positive[graph_address[10:0]][63:32]<=graph_data;\n   end")
  elif f.name in ['neuroSA_machine.sv','neuron_ensemble_with_memory_with_buff.v']:
   s=s.replace('input [9:0] graph_address','input [11:0] graph_address').replace('input wire [9:0] graph_address','input wire [11:0] graph_address')
  f.write_text(s)
 return files
