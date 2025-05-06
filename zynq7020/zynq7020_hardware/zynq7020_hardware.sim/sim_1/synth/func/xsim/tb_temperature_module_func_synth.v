// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat May  3 21:39:54 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_temperature_module_func_synth.v
// Design      : temperature_module
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module temperature_mapping
   (temp_OBUF,
    clk,
    SR,
    Q);
  output [17:0]temp_OBUF;
  input clk;
  input [0:0]SR;
  input [6:0]Q;

  wire [6:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [17:0]temp_OBUF;
  wire [15:0]NLW_y_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_y_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "temperature_mapping/y_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000004),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0E460F4C107C11E01388158818001B241F3C24D02CE83998507085C090006F30),
    .INIT_01(256'h0726076107A007E4082C087C08D0092E099209C80A3C0ABE0B4A0BE80C9A0D62),
    .INIT_02(256'h04E004F905140521053E055C057B059C05BE05E306090632065D068B06BB06EF),
    .INIT_03(256'h03BA03C803D603E503F404040414042504370449045C04700485049A04B004C8),
    .INIT_04(256'h0311031A0323032C03360340034A0354035F036A03750381038D0393039F03AC),
    .INIT_05(256'h02A102A702AD02B302BA02C102C702CB02D202D902E102E802F002F803000308),
    .INIT_06(256'h024E02520257025C02600265026A026F02740279027E02840289028F0295029B),
    .INIT_07(256'h021202150219021C022002240227022B022F02330237023B023F02430247024C),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    y_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(temp_OBUF[15:0]),
        .DOBDO(NLW_y_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(temp_OBUF[17:16]),
        .DOPBDOP(NLW_y_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* LUT_FILE = "temperature_LUT_fixed_N9.mif" *) (* N = "7" *) (* OUT_WIDTH = "18" *) 
(* NotValidForBitStream *)
module temperature_module
   (clk,
    reset,
    decrease_temp,
    temp);
  input clk;
  input reset;
  input decrease_temp;
  output [17:0]temp;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire decrease_temp_IBUF;
  wire [6:0]p_0_in;
  wire reset;
  wire reset_IBUF;
  wire [17:0]temp;
  wire [17:0]temp_OBUF;
  wire \x[6]_i_1_n_0 ;
  wire \x[6]_i_3_n_0 ;
  wire [6:0]x_reg;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF decrease_temp_IBUF_inst
       (.I(decrease_temp),
        .O(decrease_temp_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \temp_OBUF[0]_inst 
       (.I(temp_OBUF[0]),
        .O(temp[0]));
  OBUF \temp_OBUF[10]_inst 
       (.I(temp_OBUF[10]),
        .O(temp[10]));
  OBUF \temp_OBUF[11]_inst 
       (.I(temp_OBUF[11]),
        .O(temp[11]));
  OBUF \temp_OBUF[12]_inst 
       (.I(temp_OBUF[12]),
        .O(temp[12]));
  OBUF \temp_OBUF[13]_inst 
       (.I(temp_OBUF[13]),
        .O(temp[13]));
  OBUF \temp_OBUF[14]_inst 
       (.I(temp_OBUF[14]),
        .O(temp[14]));
  OBUF \temp_OBUF[15]_inst 
       (.I(temp_OBUF[15]),
        .O(temp[15]));
  OBUF \temp_OBUF[16]_inst 
       (.I(temp_OBUF[16]),
        .O(temp[16]));
  OBUF \temp_OBUF[17]_inst 
       (.I(temp_OBUF[17]),
        .O(temp[17]));
  OBUF \temp_OBUF[1]_inst 
       (.I(temp_OBUF[1]),
        .O(temp[1]));
  OBUF \temp_OBUF[2]_inst 
       (.I(temp_OBUF[2]),
        .O(temp[2]));
  OBUF \temp_OBUF[3]_inst 
       (.I(temp_OBUF[3]),
        .O(temp[3]));
  OBUF \temp_OBUF[4]_inst 
       (.I(temp_OBUF[4]),
        .O(temp[4]));
  OBUF \temp_OBUF[5]_inst 
       (.I(temp_OBUF[5]),
        .O(temp[5]));
  OBUF \temp_OBUF[6]_inst 
       (.I(temp_OBUF[6]),
        .O(temp[6]));
  OBUF \temp_OBUF[7]_inst 
       (.I(temp_OBUF[7]),
        .O(temp[7]));
  OBUF \temp_OBUF[8]_inst 
       (.I(temp_OBUF[8]),
        .O(temp[8]));
  OBUF \temp_OBUF[9]_inst 
       (.I(temp_OBUF[9]),
        .O(temp[9]));
  temperature_mapping u_rom
       (.Q(x_reg),
        .SR(reset_IBUF),
        .clk(clk_IBUF_BUFG),
        .temp_OBUF(temp_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_1 
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x[5]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hB0)) 
    \x[6]_i_1 
       (.I0(\x[6]_i_3_n_0 ),
        .I1(x_reg[6]),
        .I2(decrease_temp_IBUF),
        .O(\x[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[6]_i_2 
       (.I0(\x[6]_i_3_n_0 ),
        .I1(x_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x[6]_i_3 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(x_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(x_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(x_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(x_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(x_reg[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(x_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[6]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(x_reg[6]),
        .R(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
