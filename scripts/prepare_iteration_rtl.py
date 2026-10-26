"""Add native arbitration-iteration accounting to a separate GST1-derived build.

One iteration is an active S_WAIT arbitration decision, including no-flip
and pipeline-empty decisions. Accepted update and drain cycles do not count.
This is not a count of individual candidate evaluations or accepted flips.
"""
from prepare_gset_rtl import generate as base
from prepare_sudoku_rtl import replace_once as sub

def generate(out):
 files=base(out)
 for f in files:
  s=f.read_text()
  if f.name=='scheduler_2.v':
   s=sub(s,'    input wire [15:0] target_cut1,target_cut2,target_cut3,','    output reg [31:0] iterations,rejected_iterations,\n    input wire [15:0] target_cut1,target_cut2,target_cut3,')
   s=sub(s,'            flips      <= 0;','            flips      <= 0;\n            iterations<=0;rejected_iterations<=0;')
   s=sub(s,'                    if (flip && !halt_scheduler)','''                    if (!halt_scheduler) begin
                        iterations<=iterations+1;
                        if(!flip)rejected_iterations<=rejected_iterations+1;
                    end
                    if (flip && !halt_scheduler)''')
  elif f.name=='neuroSA_machine.sv':
   s=sub(s,' output [31:0] target_cycles1,target_cycles2,target_cycles3,',' output [31:0] target_cycles1,target_cycles2,target_cycles3,\n output [31:0] iterations,rejected_iterations,')
   s=sub(s,'    .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),','    .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),\n    .iterations(iterations),.rejected_iterations(rejected_iterations),')
  elif f.name=='qubo_axi.v':
   s=sub(s,'    reg [31:0] graph_data,flip_limit;','    reg [31:0] graph_data,flip_limit,iteration_limit;\n    wire [31:0] iterations,rejected_iterations;')
   s=sub(s,'graph_write_pos<=0;graph_write_neg<=0;flip_limit<=0;','graph_write_pos<=0;graph_write_neg<=0;flip_limit<=0;iteration_limit<=0;')
   s=sub(s,"                    8'hc0:flip_limit<=wdata;","                    8'hc0:flip_limit<=wdata;\n                    8'hc4:iteration_limit<=wdata;")
   s=sub(s,'                    48:S_AXI_RDATA<=flip_limit;','''                    48:S_AXI_RDATA<=flip_limit;
                    49:S_AXI_RDATA<=iteration_limit;
                    50:S_AXI_RDATA<=iterations;
                    51:S_AXI_RDATA<=rejected_iterations;''')
   s=sub(s,'(flip_limit!=0 && accepted_flips>=flip_limit)', '(flip_limit!=0 && accepted_flips>=flip_limit) || (iteration_limit!=0 && iterations>=iteration_limit)')
   s=sub(s,'        .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),','        .target_cycles1(target_cycles1),.target_cycles2(target_cycles2),.target_cycles3(target_cycles3),\n        .iterations(iterations),.rejected_iterations(rejected_iterations),')
   s=sub(s,"32'h47535431","32'h49545231")
  f.write_text(s)
 return files
