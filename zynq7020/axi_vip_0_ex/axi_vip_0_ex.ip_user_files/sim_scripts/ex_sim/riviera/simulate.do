transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ex_sim  -L xil_defaultlib -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ex_sim xil_defaultlib.glbl

do {ex_sim.udo}

run 1000ns

endsim

quit -force
