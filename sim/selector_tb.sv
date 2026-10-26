`timescale 1ns/1ps
module selector_tb;
    logic [24:0] spikes;
    logic [124:0] all_unit_numbers, offsets;
    logic [249:0] all_membranes;
    logic [24:0] add_mems;
    wire spiked,add_mem;
    wire [4:0] unit_numb,offset;
    wire signed [9:0] membrane;
    simple_priority_selector #(.UNITS(25),.UNIT_WIDTH(5),.NEURON_NUM_WIDTH(5),.MEMBRANE_WIDTH(10)) dut(.*);
    int chosen;
    initial begin
        for(int t=0;t<50000;t++) begin
            spikes=25'($urandom);
            if(t==0)spikes=0;
            if(t>=1 && t<=25)spikes=25'(1<<(t-1));
            for(int u=0;u<25;u++) begin
                all_unit_numbers[u*5+:5]=5'(u);
                offsets[u*5+:5]=5'($urandom);
                all_membranes[u*10+:10]=10'($urandom);
                add_mems[u]=1'($urandom);
            end
            #1;
            chosen=-1;
            for(int u=0;u<25;u++)if(chosen<0 && spikes[u])chosen=u;
            assert(spiked==(chosen>=0)) else $fatal(1,"selector valid");
            if(chosen>=0) begin
                assert(unit_numb==all_unit_numbers[chosen*5+:5] && offset==offsets[chosen*5+:5]
                    && membrane==all_membranes[chosen*10+:10] && add_mem==add_mems[chosen])
                    else $fatal(1,"selector priority/payload");
            end else assert({unit_numb,offset,membrane,add_mem}==0) else $fatal(1,"selector idle");
        end
        $display("PASS selector: idle, every unit, and 49974 randomized priority/payload cases");
        $finish;
    end
endmodule
