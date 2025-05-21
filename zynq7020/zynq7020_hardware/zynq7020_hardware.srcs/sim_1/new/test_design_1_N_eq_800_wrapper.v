`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 02:39:50 PM
// Design Name: 
// Module Name: test_design_1_N_eq_800_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_design_1_N_eq_800_wrapper();


    reg tb_ACLK;
    reg tb_ARESETn;
   
    wire temp_clk;
    wire temp_rstn; 
    reg resp;
    
    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_ARESETn;



    design_1_N_eq_800_wrapper dut (.FIXED_IO_ps_clk(temp_clk),
                                    .FIXED_IO_ps_porb(temp_rstn ),
                                    .FIXED_IO_ps_srstb(temp_rstn));


    initial 
    begin       
        tb_ACLK = 1'b0;
    end
    
    //------------------------------------------------------------------------
    // Simple Clock Generator
    //------------------------------------------------------------------------
    
    always #10 tb_ACLK = !tb_ACLK;
       
    initial
    begin
    
        $display ("running the tb");
        
        tb_ARESETn = 1'b0;
        repeat(20)@(posedge tb_ACLK);        
        tb_ARESETn = 1'b1;
        @(posedge tb_ACLK);
        
        repeat(5) @(posedge tb_ACLK);
          
        //Reset the PL
        tb.zynq_sys.zynq7000_preset_i.processing_system7_0.inst.fpga_soft_reset(32'h1);
        tb.zynq_sys.zynq7000_preset_i.processing_system7_0.inst.fpga_soft_reset(32'h0);
		#2000
        //This drives the LEDs on the GPIO output
        tb.zynq_sys.zynq7000_preset_i.processing_system7_0.inst.write_data(32'h41200000,4, 32'hFFFFFFFF, resp);
		#200
        $display ("LEDs are toggled, observe the waveform");
        //Write into the BRAM through GP0 and read back
        tb.zynq_sys.zynq7000_preset_i.processing_system7_0.inst.write_data(32'h40000000,4, 32'hDEADBEEF, resp);
		#200
        tb.zynq_sys.zynq7000_preset_i.processing_system7_0.inst.read_data(32'h40000000,4,read_data,resp);
		#200
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        if(read_data == 32'hDEADBEEF) begin
           $display ("AXI VIP Test PASSED");
        end
        else begin
           $display ("AXI VIP Test FAILED");
        end
        $display ("Simulation completed");
        $stop;
    end
    
endmodule
