`timescale 1ns/1ps
// G15 integration test. The reference model knows graph edges and spin flips;
// it does not use the RTL's incremental cut calculation to score an assignment.
module reproduce_tb;
    logic clk=0, reset=1, halt=1;
    always #5 clk=~clk;
    logic [24:0] write_ensemble_seed=0, write_flipping_seed=0, write_neuron_states=0;
    logic [8:0] ensemble_seed=0;
    logic [15:0] flipping_seed=0;
    logic [9:0] membrane_data_in=0;
    logic [3:0] neuron_state_in=4'b0010;
    logic [4:0] idx_to_write=0;
    wire [15:0] found_solution_value;
    wire [31:0] flips_cnt;
    wire [31:0] cycle_count;
    wire [799:0] best_assignment;
    wire halted;
    int unsigned cooling_period=65536;
    neuroSA_machine #(
        .USE_ROUND_ROBIN(0), .GRAPH_WIDTH(800), .UNITS(25),
        .NEURONS_PER_UNIT(32), .NEURON_SEL_LFSR_WIDTH(9),
        .MEMBRANE_WIDTH(10), .FLIPPING_OUTPUT_WIDTH(16),
        .LOG_NOISE_SOURCE_WIDTH(16), .LOG_LUT_BIT_SIZE(8),
        .TEMP_INC_WIDTH(12), .NO_CLK_CYCLES_AFTER_UPDATE(4),
        .REAL_WIDTH(18), .FRACTIONAL_PART(9), .TEMPERATURE_LUT_WIDTH(9),
        .LOG_NOISE_LUT_FILENAME("log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif"),
        .TEMPERATURE_LUT_FILENAME("temperature_LUT_fixed_N9.mif")
    ) dut (.*);

    logic [799:0] graph[800];
    logic [15:0] degrees[800];
    int field[800];
    bit [799:0] spin, best_spin;
    int cycle=0, accepted=0, cut=0, best=0, cycles=100000, seed=1;
    int fd, assignment_fd, summary_fd;
    bit running=0;

    always @(posedge clk) if (running) begin : scoreboard
        int k, old_sign, measured_mem;
        cycle++;
        if (dut.update_memory) begin
            k = int'(dut.idx_that_fired);
            measured_mem = int'($signed(dut.scheduler_instance.mem_r));
            assert (k < 800) else $fatal(1,"index out of range %d",k);
            assert (measured_mem == field[k])
                else $fatal(1,"stale membrane cycle=%d index=%d rtl=%d reference=%d",cycle,k,measured_mem,field[k]);
            assert (dut.should_increment == !spin[k])
                else $fatal(1,"stale state cycle=%d index=%d",cycle,k);
            old_sign = spin[k] ? 1 : -1;
            // Compute delta by counting edges crossing before/after this flip.
            for (int j=0;j<800;j++) if (graph[k][j]) begin
                cut += (spin[k] == spin[j]) ? 1 : -1;
                field[j] -= 2*old_sign;
            end
            spin[k] = !spin[k];
            accepted++;
            if (cut > best) begin
                best=cut;
                best_spin=spin;
                $fdisplay(fd,"%0d,%0d",cycle,best);
            end
        end
        #1;
        assert (int'($signed(dut.scheduler_instance.cuts_cur)) == cut)
            else $fatal(1,"cut mismatch cycle=%d rtl=%d reference=%d",cycle,$signed(dut.scheduler_instance.cuts_cur),cut);
        assert (int'(found_solution_value) == best)
            else $fatal(1,"best cut mismatch cycle=%d",cycle);
        assert(best_assignment == best_spin) else $fatal(1,"best assignment mismatch");
    end

    initial begin
        if ($value$plusargs("cycles=%d",cycles)) begin end
        if ($value$plusargs("seed=%d",seed)) begin end
        if ($value$plusargs("cooling_period=%d",cooling_period)) begin end
        $readmemb("graph_rows.mem",graph);
        $readmemh("degrees.mem",degrees);
        fd=$fopen("convergence.csv","w");
        $fdisplay(fd,"cycle,best_cut");
        for (int k=0;k<800;k++) begin
            spin[k]=1; best_spin[k]=1; field[k]=int'(degrees[k]);
        end
        repeat(4) @(negedge clk);
        reset=0;
        repeat(6) @(negedge clk);
        for (int u=0;u<25;u++) begin
            ensemble_seed=9'((seed+u)%511);
            flipping_seed=16'(seed+u);
            write_ensemble_seed=25'(1<<u); write_flipping_seed=25'(1<<u);
            @(negedge clk);
        end
        write_ensemble_seed=0; write_flipping_seed=0;
        for (int u=0;u<25;u++) begin
            write_neuron_states=25'(1<<u);
            for (int i=0;i<32;i++) begin
                idx_to_write=5'(i); membrane_data_in=10'(degrees[u*32+i]);
                @(negedge clk);
            end
        end
        write_neuron_states=0;
        repeat(8) @(negedge clk);
        halt=0; running=1;
        repeat(cycles) @(negedge clk);
        running=0;
        assert(accepted>0) else $fatal(1,"no accepted flips");
        assignment_fd=$fopen("best_assignment.txt","w");
        for (int k=0;k<800;k++) $fwrite(assignment_fd,"%0d",best_spin[k]);
        $fwrite(assignment_fd,"\n"); $fclose(assignment_fd);
        summary_fd=$fopen("summary.json","w");
        $fdisplay(summary_fd,"{\"cycles\":%0d,\"accepted_flips\":%0d,\"best_cut\":%0d,\"current_cut\":%0d}",cycle,accepted,best,cut);
        $fclose(summary_fd); $fclose(fd);
        $display("PASS cycles=%0d accepted_flips=%0d best_cut=%0d",cycle,accepted,best);
        $finish;
    end
endmodule
