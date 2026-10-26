# Run from the repository root after scripts/prepare_inputs.py --out build/overlay.
# Creates the PS/PL design from source; no archived .xpr or cached IP is loaded.
set root [file normalize [file join [file dirname [info script]] ..]]
set out [file join $root build overlay]
set target_mhz 144.0
if {[info exists ::env(QUBO_TARGET_MHZ)]} {set target_mhz $::env(QUBO_TARGET_MHZ)}
if {[info exists ::env(QUBO_BUILD_DIR)]} {set out [file normalize $::env(QUBO_BUILD_DIR)]}
file mkdir $out
cd $out
create_project -force qubo [file join $out vivado] -part xc7z020clg400-1
set_property target_language Verilog [current_project]
set f [open [file join $root rtl files.f]]
foreach line [split [read $f] \n] {
    if {[string trim $line] ne ""} {read_verilog -sv [file join $root $line]}
}
close $f
read_verilog [file join $root rtl qubo_axi.v]
add_files [glob [file join $out *.mif]]
create_bd_design qubo_system
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {1} CONFIG.PCW_EN_CLK0_PORT {1} CONFIG.PCW_EN_RST0_PORT {1} CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ $target_mhz] [get_bd_cells processing_system7_0]
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} [get_bd_cells processing_system7_0]
create_bd_cell -type module -reference qubo_axi qubo_accelerator
set clk_config "/processing_system7_0/FCLK_CLK0 ($target_mhz MHz)"
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config [list Master "/processing_system7_0/M_AXI_GP0" Clk_master $clk_config Clk_slave $clk_config Clk_xbar $clk_config intc_ip "New AXI Interconnect" master_apm "0"] [get_bd_intf_pins qubo_accelerator/S_AXI]
assign_bd_address
set seg [get_bd_addr_segs processing_system7_0/Data/SEG_qubo_accelerator_reg0]
set_property offset 0x40000000 $seg
set_property range 4K $seg
validate_bd_design
save_bd_design
generate_target all [get_files qubo_system.bd]
make_wrapper -files [get_files qubo_system.bd] -top
add_files [file join $out vivado qubo.gen sources_1 bd qubo_system hdl qubo_system_wrapper.v]
set_property top qubo_system_wrapper [current_fileset]
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs synth_1]
set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} {error "Implementation failed"}
open_run impl_1
report_timing_summary -report_unconstrained -check_timing_verbose -file [file join $out timing.rpt]
report_timing -max_paths 20 -file [file join $out critical_paths.rpt]
report_high_fanout_nets -timing -load_types -max_nets 20 -file [file join $out fanout.rpt]
report_utilization -file [file join $out utilization.rpt]
report_power -file [file join $out power.rpt]
if {[get_property SLACK [get_timing_paths -delay_type max -max_paths 1]] < 0} {error "Setup timing failed"}
if {[get_property SLACK [get_timing_paths -delay_type min -max_paths 1]] < 0} {error "Hold timing failed"}
file copy -force [file join $out vivado qubo.runs impl_1 qubo_system_wrapper.bit] [file join $out qubo.bit]
file copy -force [file join $out vivado qubo.gen sources_1 bd qubo_system hw_handoff qubo_system.hwh] [file join $out qubo.hwh]
puts "Built [file join $out qubo.bit] and qubo.hwh"
