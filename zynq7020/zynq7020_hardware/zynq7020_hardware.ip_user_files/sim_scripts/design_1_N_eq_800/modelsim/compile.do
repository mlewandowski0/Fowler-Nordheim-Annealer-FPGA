vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/processing_system7_vip_v1_0_21
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 modelsim_lib/msim/processing_system7_vip_v1_0_21
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/mlewand/tools/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/home/mlewand/tools/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/mlewand/tools/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_processing_system7_0_0/sim/design_1_N_eq_800_processing_system7_0_0.v" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_fowler_nordheim_anne_0_0/sim/design_1_N_eq_800_fowler_nordheim_anne_0_0.v" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/sim/bd_3068.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_0/sim/bd_3068_one_0.v" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_1/sim/bd_3068_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_2/sim/bd_3068_arinsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_3/sim/bd_3068_rinsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_4/sim/bd_3068_awinsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_5/sim/bd_3068_winsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_6/sim/bd_3068_binsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_7/sim/bd_3068_aroutsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_8/sim/bd_3068_routsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_9/sim/bd_3068_awoutsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_10/sim/bd_3068_woutsw_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_11/sim/bd_3068_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_12/sim/bd_3068_arni_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_13/sim/bd_3068_rni_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_14/sim/bd_3068_awni_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_15/sim/bd_3068_wni_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_16/sim/bd_3068_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_17/sim/bd_3068_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_18/sim/bd_3068_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_19/sim/bd_3068_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_20/sim/bd_3068_s00a2s_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_21/sim/bd_3068_sarn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_22/sim/bd_3068_srn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_23/sim/bd_3068_sawn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_24/sim/bd_3068_swn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_25/sim/bd_3068_sbn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_26/sim/bd_3068_s01mmu_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_27/sim/bd_3068_s01tr_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_28/sim/bd_3068_s01sic_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_29/sim/bd_3068_s01a2s_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_30/sim/bd_3068_sarn_1.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_31/sim/bd_3068_srn_1.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_32/sim/bd_3068_sawn_1.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_33/sim/bd_3068_swn_1.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_34/sim/bd_3068_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_35/sim/bd_3068_m00s2a_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_36/sim/bd_3068_m00arn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_37/sim/bd_3068_m00rn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_38/sim/bd_3068_m00awn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_39/sim/bd_3068_m00wn_0.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_40/sim/bd_3068_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/bd_0/ip/ip_41/sim/bd_3068_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_smc_0/sim/design_1_N_eq_800_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_rst_ps7_0_50M_0/sim/design_1_N_eq_800_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_vip_0_0/sim/design_1_N_eq_800_axi_vip_0_0_pkg.sv" \
"../../../bd/design_1_N_eq_800/ip/design_1_N_eq_800_axi_vip_0_0/sim/design_1_N_eq_800_axi_vip_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/ec67/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/86fe/hdl" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/ipshared/0127/hdl/verilog" "+incdir+/home/mlewand/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1_N_eq_800/sim/design_1_N_eq_800.v" \

vlog -work xil_defaultlib \
"glbl.v"

