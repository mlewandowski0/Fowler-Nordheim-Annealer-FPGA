create_clock -period 10.000 -name clk -waveform {0.000 5.000}

create_clock -period 20.000 -name clk_1 -waveform {0.000 10.000} [get_ports clk]