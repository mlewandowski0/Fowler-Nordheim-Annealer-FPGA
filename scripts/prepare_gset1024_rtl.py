"""1024 physical slots / unsigned weights; 24 padded slots are clamped for 1000-node Gset."""
from pathlib import Path
from prepare_gset_rtl import generate as base
from prepare_sudoku_rtl import replace_once as sub

def generate(out):
 files=base(out)
 for f in files:
  s=f.read_text()
  if f.name=='qubo_axi.v':
   s=s.replace('[799:0]','[1023:0]').replace('[24:0]','[31:0]').replace("7'b0,graph_mask",'graph_mask').replace('.GRAPH_WIDTH(800), .UNITS(25)','.GRAPH_WIDTH(1024), .UNITS(32)').replace('{25{','{32{').replace("32'h47535431","32'h47535432")
   s=s.replace("                    44:S_AXI_RDATA<={graph_mask};\n",'').replace("                    45:S_AXI_RDATA<={22'b0,graph_address};\n",'').replace('S_AXI_ARADDR[7:2]<41','S_AXI_ARADDR[7:2]<48')
  elif f.name=='distributed_graph_memory.v':
   s=s.replace('GRAPH_WIDTH=800','GRAPH_WIDTH=1024').replace(' (* ram_style="block" *) reg [W-1:0] negative[0:GRAPH_WIDTH-1];','').replace(' reg [W-1:0] p,n;',' reg [W-1:0] p;\n wire [W-1:0] n=0;').replace('   if(graph_write_neg && graph_address<GRAPH_WIDTH)negative[graph_address]<=graph_data;\n','').replace('n<=negative[index_of_neuron_that_fired];','')
  elif f.name=='neuron_ensemble_storage.v':s=sub(s,'state_ram[idx_offset_to_update][3] <= state_ram[idx_offset_to_update][0];','// Bit 3 holds the immutable clamp flag.')
  elif f.name=='neuron_ensemble.v':s=sub(s,'(flip_val < mem_cmp) & flipping_CE','(flip_val < mem_cmp) & flipping_CE & !st_p[3]')
  f.write_text(s)
 return files
