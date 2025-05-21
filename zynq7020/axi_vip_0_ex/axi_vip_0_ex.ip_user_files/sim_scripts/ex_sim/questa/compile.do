vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_vip_v1_1_19

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L xilinx_vip "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_mst_0/sim/ex_sim_axi_vip_mst_0_pkg.sv" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_mst_0/sim/ex_sim_axi_vip_mst_0.sv" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_passthrough_0/sim/ex_sim_axi_vip_passthrough_0_pkg.sv" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_passthrough_0/sim/ex_sim_axi_vip_passthrough_0.sv" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_slv_0/sim/ex_sim_axi_vip_slv_0_pkg.sv" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_slv_0/sim/ex_sim_axi_vip_slv_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/ex_sim/sim/ex_sim.v" \

vlog -work xil_defaultlib \
"glbl.v"

