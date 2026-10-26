`timescale 1ns/1ps
module sudoku_tb;
    logic clk=0, reset=1, halt=1;
    always #5 clk=~clk;
    logic [24:0] write_ensemble_seed=0,write_flipping_seed=0,write_neuron_states=0;
    logic [8:0] ensemble_seed=0;
    logic [15:0] flipping_seed=0;
    logic [9:0] membrane_data_in=0;
    logic [3:0] neuron_state_in=0;
    logic [4:0] idx_to_write=0;
    wire [17:0] found_solution_value;
    wire [31:0] flips_cnt,cycle_count;
    wire [799:0] best_assignment;
    wire halted;
    int unsigned cooling_period=65536;
    neuroSA_machine #(.USE_ROUND_ROBIN(0),.GRAPH_WIDTH(800),.UNITS(25),.NEURONS_PER_UNIT(32),
        .NEURON_SEL_LFSR_WIDTH(9),.MEMBRANE_WIDTH(10),.FLIPPING_OUTPUT_WIDTH(16),.SOLUTION_WIDTH(18),
        .LOG_NOISE_SOURCE_WIDTH(16),.LOG_LUT_BIT_SIZE(8),.TEMP_INC_WIDTH(12),.NO_CLK_CYCLES_AFTER_UPDATE(4),
        .REAL_WIDTH(18),.FRACTIONAL_PART(9),.TEMPERATURE_LUT_WIDTH(9),
        .LOG_NOISE_LUT_FILENAME("log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif"),
        .TEMPERATURE_LUT_FILENAME("temperature_LUT_fixed_N9.mif")) dut(.*);
    logic [799:0] graph[800];
    logic [9:0] initial_field[800];
    logic [3:0] initial_state[800];
    int field[800];
    bit [799:0] spin,best_spin;
    int cycle=0,accepted=0,gain=0,best=0,cycles=1000000,seed=1,goal=102;
    int fd;
    bit running=0;
    always @(posedge clk) if(running) begin: scoreboard
        int k,old_sign;
        cycle++;
        if(dut.update_memory) begin
            k=int'(dut.idx_that_fired);
            assert(k<729 && !initial_state[k][3]) else $fatal(1,"clamped/padded vertex changed %d",k);
            assert(int'($signed(dut.scheduler_instance.mem_r))==field[k]) else $fatal(1,"biased field mismatch %d",k);
            assert(dut.should_increment==!spin[k]) else $fatal(1,"state mismatch %d",k);
            old_sign=spin[k] ? 1 : -1;
            // Derive the objective delta directly from reward and pair penalties.
            gain += spin[k] ? -2 : 2;
            for(int j=0;j<800;j++) if(graph[k][j]) begin
                if(spin[j]) gain += spin[k] ? 6 : -6;
                field[j] -= 6*old_sign;
            end
            spin[k]=!spin[k];accepted++;
            if(gain>best) begin
                best=gain;best_spin=spin;
                $fdisplay(fd,"{\"cycle\":%0d,\"gain\":%0d,\"bits_hex\":\"%h\"}",cycle,best,best_spin);
                $fflush(fd);
            end
        end
        #1;
        assert(int'($signed(dut.scheduler_instance.cuts_cur))==gain) else $fatal(1,"objective mismatch");
        assert(int'(found_solution_value)==best && best_assignment==best_spin) else $fatal(1,"best assignment mismatch");
        for(int k=0;k<800;k++) if(initial_state[k][3])
            assert(spin[k]==initial_state[k][1]) else $fatal(1,"clue changed");
    end
    initial begin
        if($value$plusargs("cycles=%d",cycles))begin end
        if($value$plusargs("seed=%d",seed))begin end
        if($value$plusargs("cooling_period=%d",cooling_period))begin end
        if($value$plusargs("goal=%d",goal))begin end
        $readmemb("graph_rows.mem",graph);$readmemh("fields.mem",initial_field);$readmemh("states.mem",initial_state);
        fd=$fopen("trace.jsonl","w");
        for(int k=0;k<800;k++) begin spin[k]=initial_state[k][1];best_spin[k]=spin[k];field[k]=int'($signed(initial_field[k]));end
        $fdisplay(fd,"{\"cycle\":0,\"gain\":0,\"bits_hex\":\"%h\"}",best_spin);
        repeat(4) @(negedge clk);reset=0;repeat(6) @(negedge clk);
        for(int u=0;u<25;u++) begin
            ensemble_seed=9'((seed+u)%511);flipping_seed=16'(seed+u);
            write_ensemble_seed=25'(1<<u);write_flipping_seed=25'(1<<u);@(negedge clk);
        end
        write_ensemble_seed=0;write_flipping_seed=0;
        for(int u=0;u<25;u++) begin
            write_neuron_states=25'(1<<u);
            for(int k=0;k<32;k++) begin
                idx_to_write=5'(k);membrane_data_in=initial_field[u*32+k];neuron_state_in=initial_state[u*32+k];@(negedge clk);
            end
        end
        write_neuron_states=0;repeat(8) @(negedge clk);halt=0;running=1;
        while(cycle<cycles && best<goal) @(negedge clk);
        running=0;$fclose(fd);
        $display("PASS Sudoku RTL cycles=%0d flips=%0d best_gain=%0d goal=%0d",cycle,accepted,best,goal);$finish;
    end
endmodule
