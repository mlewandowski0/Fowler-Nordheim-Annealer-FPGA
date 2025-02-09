create_clock -period 10.000 -name clk -waveform {0.000 5.000}

create_clock -period 20.000 -name clk_1 -waveform {0.000 10.000} [get_ports clk]
set_output_delay -clock [get_clocks clk_1] -min -add_delay 0.000 [get_ports {found_solution_value[*]}]
set_output_delay -clock [get_clocks clk_1] -max -add_delay 0.000 [get_ports {found_solution_value[*]}]
