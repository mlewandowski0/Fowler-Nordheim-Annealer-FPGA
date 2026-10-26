`timescale 1ns/1ps
module axi_tb;
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
    logic [799:0] graph[800];
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

    initial begin
        $readmemb("graph_rows.mem",graph); $readmemh("degrees.mem",degree);
        repeat(4) @(negedge S_AXI_ACLK); S_AXI_ARESETN=1;
        rd('h20,value); assert(value=='h51554231) else $fatal(1,"ABI ID");
        wr(12,'h12345678,1);
        S_AXI_WSTRB=1; wr(12,'h000000aa); S_AXI_WSTRB=15;
        rd(12,value); assert(value=='h123456aa) else $fatal(1,"byte strobes");
        wr(0,1);
        wr('h30,65536,1); rd('h30,value);
        assert(value==65536) else $fatal(1,"cooling period readback");
        for(int u=0;u<25;u++) begin
            wr(4,0); wr(12,u+1); wr(16,u+1,1); wr(4,1<<u);
        end
        wr(4,0);
        for(int u=0;u<25;u++)
            for(int k=0;k<32;k++) begin
                wr(8,0); wr(24,k); wr(20,(2<<10)|int'(degree[u*32+k])); wr(8,1<<u);
            end
        wr(8,0);
        rd('h24,count_before);
        repeat(50) @(negedge S_AXI_ACLK);
        rd('h24,count_after); assert(count_before==count_after) else $fatal(1,"halt during initialization");
        wr(0,3);
        repeat(100000) @(negedge S_AXI_ACLK);
        wr(0,1);
        rd('h2c,value); assert(value==1) else $fatal(1,"halt status");
        rd('h24,count_before);
        for(int w=0;w<25;w++) begin rd('h40+w*4,value); saved[w*32+:32]=value; end
        rd('h1c,score);
        measured_cut=0;
        for(int i=0;i<800;i++) for(int j=i+1;j<800;j++)
            if(graph[i][j] && saved[i]!=saved[j]) measured_cut++;
        assert(measured_cut==int'(score) && score>0) else $fatal(1,"MMIO assignment score %d expected %d",score,measured_cut);
        rd('h24,count_after); assert(count_before==count_after) else $fatal(1,"halt readout stability");
        wr(0,3); repeat(1000) @(negedge S_AXI_ACLK); wr(0,1);
        rd('h24,count_after); assert(count_after>count_before) else $fatal(1,"resume");
        wr(0,0); rd('h1c,value); assert(value==0) else $fatal(1,"reset");
        $display("PASS AXI: independent AW/W, strobes, backpressure, halt/resume, reset, assignment cut=%0d",measured_cut);
        $finish;
    end
    initial begin #100000000; $fatal(1,"AXI test timed out"); end
endmodule
