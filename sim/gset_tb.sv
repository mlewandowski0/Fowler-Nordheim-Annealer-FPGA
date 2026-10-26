`timescale 1ns/1ps
module gset_tb;
    logic S_AXI_ACLK=0, S_AXI_ARESETN=0;
    always #5 S_AXI_ACLK=~S_AXI_ACLK;
    logic [7:0] S_AXI_AWADDR=0, S_AXI_ARADDR=0;
    logic [2:0] S_AXI_AWPROT=0, S_AXI_ARPROT=0;
    logic S_AXI_AWVALID=0,S_AXI_WVALID=0,S_AXI_BREADY=0,S_AXI_ARVALID=0,S_AXI_RREADY=0;
    logic [31:0] S_AXI_WDATA=0;
    logic [3:0] S_AXI_WSTRB=15;
    wire S_AXI_AWREADY,S_AXI_WREADY,S_AXI_BVALID,S_AXI_ARREADY,S_AXI_RVALID;
    wire [1:0] S_AXI_BRESP,S_AXI_RRESP;
    wire [31:0] S_AXI_RDATA;
    qubo_axi dut(.*);
    logic [799:0] graph[800],negative[800];
    logic [15:0] degree[800];
    logic [799:0] saved;
    int measured_cut, fd;
    logic [31:0] value, score, count_before, count_after;

    task automatic send_address(input int addr, input int delay_cycles);
        repeat(delay_cycles) @(negedge S_AXI_ACLK);
        S_AXI_AWADDR=8'(addr); S_AXI_AWVALID=1;
        do @(posedge S_AXI_ACLK); while(!S_AXI_AWREADY);
        @(negedge S_AXI_ACLK); S_AXI_AWVALID=0;
    endtask
    task automatic send_data(input int data, input int delay_cycles);
        repeat(delay_cycles) @(negedge S_AXI_ACLK);
        S_AXI_WDATA=32'(data); S_AXI_WVALID=1;
        do @(posedge S_AXI_ACLK); while(!S_AXI_WREADY);
        @(negedge S_AXI_ACLK); S_AXI_WVALID=0;
    endtask
    task automatic wr(input int addr,input int data,input bit data_first=0);
        @(negedge S_AXI_ACLK);
        fork
            send_address(addr,data_first ? 3 : 0);
            send_data(data,data_first ? 0 : 3);
        join
        while(!S_AXI_BVALID) @(negedge S_AXI_ACLK);
        repeat(2) begin
            @(negedge S_AXI_ACLK);
            assert(S_AXI_BVALID && S_AXI_BRESP==0) else $fatal(1,"write response backpressure");
        end
        S_AXI_BREADY=1;
        @(negedge S_AXI_ACLK); S_AXI_BREADY=0;
    endtask
    task automatic rd(input int addr,output logic[31:0] data);
        @(negedge S_AXI_ACLK); S_AXI_ARADDR=8'(addr); S_AXI_ARVALID=1;
        do @(posedge S_AXI_ACLK); while(!S_AXI_ARREADY);
        @(negedge S_AXI_ACLK); S_AXI_ARVALID=0;
        while(!S_AXI_RVALID) @(negedge S_AXI_ACLK);
        data=S_AXI_RDATA;
        repeat(2) begin
            @(negedge S_AXI_ACLK);
            assert(S_AXI_RVALID && S_AXI_RDATA==data && S_AXI_RRESP==0) else $fatal(1,"read response backpressure");
        end
        S_AXI_RREADY=1;
        @(negedge S_AXI_ACLK); S_AXI_RREADY=0;
    endtask

    int field_ref[800];
    bit [799:0] spin_ref='1,best_ref='1;
    int cut_ref=0,best_value=0,flips_ref=0,first1=0,first2=0,first3=0;
    always @(posedge S_AXI_ACLK)begin
        int k,old_sign,w;
        if(S_AXI_ARESETN && dut.core.update_memory)begin
            k=int'(dut.core.idx_that_fired);
            assert(int'($signed(dut.core.scheduler_instance.mem_r))==field_ref[k])else $fatal(1,"signed field mismatch index %d",k);
            assert(dut.core.should_increment==!spin_ref[k])else $fatal(1,"state mismatch");
            old_sign=spin_ref[k]?1:-1;
            for(int j=0;j<800;j++)begin
                w=int'(graph[k][j])-int'(negative[k][j]);
                cut_ref+=w*((spin_ref[k]==spin_ref[j])?1:-1);field_ref[j]-=2*old_sign*w;
            end
            spin_ref[k]=!spin_ref[k];flips_ref++;
            if(cut_ref>best_value)begin best_value=cut_ref;best_ref=spin_ref;end
            if(cut_ref>=100 && first1==0)first1=dut.core.cycle_count+1;
            if(cut_ref>=500 && first2==0)first2=dut.core.cycle_count+1;
            if(cut_ref>=1000 && first3==0)first3=dut.core.cycle_count+1;
            #1;
            assert(int'($signed(dut.core.scheduler_instance.cuts_cur))==cut_ref)else $fatal(1,"signed current cut");
            assert(dut.core.best_assignment==best_ref && int'(dut.core.found_solution_value)==best_value)else $fatal(1,"best assignment/score");
        end
    end
    initial begin
        $readmemb("positive.mem",graph); $readmemh("degrees.mem",degree);$readmemb("negative.mem",negative);
        for(int k=0;k<800;k++)field_ref[k]=int'($signed(degree[k][9:0]));
        repeat(4) @(negedge S_AXI_ACLK); S_AXI_ARESETN=1;
        rd('h20,value); assert(value=='h47535431) else $fatal(1,"ABI ID");
        wr(12,'h12345678,1);
        S_AXI_WSTRB=1; wr(12,'h000000aa); S_AXI_WSTRB=15;
        rd(12,value); assert(value=='h123456aa) else $fatal(1,"byte strobes");
        wr(0,1);
        for(int u=0;u<25;u++)begin
            wr('hb0,1<<u);
            for(int r=0;r<800;r++)begin
                wr('hb4,r);wr('hb8,graph[r][u*32+:32]);wr('hbc,negative[r][u*32+:32]);
            end
        end
        wr('hc0,10000);wr('hd0,100);wr('hd4,500);wr('hd8,1000);

        wr('h30,65536,1); rd('h30,value);
        assert(value==65536) else $fatal(1,"cooling period readback");
        for(int u=0;u<25;u++) begin
            wr(4,0); wr(12,u+1); wr(16,u+1,1); wr(4,1<<u);
        end
        wr(4,0);
        for(int u=0;u<25;u++)
            for(int k=0;k<32;k++) begin
                wr(8,0); wr(24,k); wr(20,(2<<10)|(int'(degree[u*32+k])&1023)); wr(8,1<<u);
            end
        wr(8,0);
        rd('h24,count_before);
        repeat(50) @(negedge S_AXI_ACLK);
        rd('h24,count_after); assert(count_before==count_after) else $fatal(1,"halt during initialization");
        wr(0,3);
        do begin repeat(100) @(negedge S_AXI_ACLK);rd('h2c,value);end while(value!=1);
        rd('h28,value);assert(value==10000)else $fatal(1,"exact flip budget %d",value);
        repeat(50) @(negedge S_AXI_ACLK);rd('h28,value);assert(value==10000)else $fatal(1,"budget halt unstable");
        wr(0,1);
        rd('h2c,value); assert(value==1) else $fatal(1,"halt status");
        rd('h24,count_before);
        for(int w=0;w<25;w++) begin rd('h40+w*4,value); saved[w*32+:32]=value; end
        rd('h1c,score);
        measured_cut=0;
        for(int i=0;i<800;i++) for(int j=i+1;j<800;j++)
            if(saved[i]!=saved[j]) measured_cut+=int'(graph[i][j])-int'(negative[i][j]);
        assert(measured_cut==int'(score) && score>0) else $fatal(1,"MMIO assignment score %d expected %d",score,measured_cut);
        rd('h24,count_after); assert(count_before==count_after) else $fatal(1,"halt readout stability");
        rd('he0,value);assert(value==first1)else $fatal(1,"target1 cycle %d expected %d",value,first1);
        rd('he4,value);assert(value==first2)else $fatal(1,"target2 cycle");
        rd('he8,value);assert(value==first3)else $fatal(1,"target3 cycle");
        wr('hc0,0);
        wr(0,3); repeat(1000) @(negedge S_AXI_ACLK); wr(0,1);
        rd('h24,count_after); assert(count_after>count_before) else $fatal(1,"resume");
        wr(0,0); rd('h1c,value); assert(value==0) else $fatal(1,"reset");
        $display("PASS GSET AXI: signed graph upload, exact budget, target-cycle latch, independent AW/W, strobes, backpressure, halt/resume, reset, assignment cut=%0d",measured_cut);
        $finish;
    end
    initial begin #100000000; $fatal(1,"AXI test timed out"); end
endmodule
