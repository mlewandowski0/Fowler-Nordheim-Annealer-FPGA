// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May  4 11:28:13 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_fixed_mult_dsp_func_synth.v
// Design      : fixed_mult_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BITS = "18" *) (* FRAC_BITS = "8" *) (* HI_W = "10" *) 
(* SH_W = "28" *) 
(* NotValidForBitStream *)
module fixed_mult_dsp
   (clk,
    a,
    b,
    product,
    overflow);
  input clk;
  input [17:0]a;
  input [17:0]b;
  output [17:0]product;
  output overflow;

  wire [17:0]a;
  wire [17:0]a_IBUF;
  wire [17:0]b;
  wire [17:0]b_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [9:0]hibits;
  wire mult_n_100;
  wire mult_n_101;
  wire mult_n_102;
  wire mult_n_103;
  wire mult_n_104;
  wire mult_n_105;
  wire mult_n_98;
  wire mult_n_99;
  wire overflow;
  wire overflow_OBUF;
  wire overflow_i_2_n_0;
  wire overflow_i_3_n_0;
  wire ovf_comb;
  wire [17:0]product;
  wire [17:0]product_OBUF;
  wire [16:0]shifted;
  wire signbit;
  wire NLW_mult_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_OVERFLOW_UNCONNECTED;
  wire NLW_mult_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_CARRYOUT_UNCONNECTED;
  wire [47:36]NLW_mult_P_UNCONNECTED;
  wire [47:0]NLW_mult_PCOUT_UNCONNECTED;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult
       (.A({a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF[17],a_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(b_IBUF),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_OVERFLOW_UNCONNECTED),
        .P({NLW_mult_P_UNCONNECTED[47:36],hibits,signbit,shifted,mult_n_98,mult_n_99,mult_n_100,mult_n_101,mult_n_102,mult_n_103,mult_n_104,mult_n_105}),
        .PATTERNBDETECT(NLW_mult_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_UNDERFLOW_UNCONNECTED));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  LUT5 #(
    .INIT(32'hFFFFFF7E)) 
    overflow_i_1
       (.I0(signbit),
        .I1(hibits[1]),
        .I2(hibits[0]),
        .I3(overflow_i_2_n_0),
        .I4(overflow_i_3_n_0),
        .O(ovf_comb));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    overflow_i_2
       (.I0(hibits[7]),
        .I1(hibits[6]),
        .I2(signbit),
        .I3(hibits[9]),
        .I4(hibits[8]),
        .O(overflow_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    overflow_i_3
       (.I0(hibits[3]),
        .I1(hibits[2]),
        .I2(signbit),
        .I3(hibits[5]),
        .I4(hibits[4]),
        .O(overflow_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overflow_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ovf_comb),
        .Q(overflow_OBUF),
        .R(1'b0));
  OBUF \product_OBUF[0]_inst 
       (.I(product_OBUF[0]),
        .O(product[0]));
  OBUF \product_OBUF[10]_inst 
       (.I(product_OBUF[10]),
        .O(product[10]));
  OBUF \product_OBUF[11]_inst 
       (.I(product_OBUF[11]),
        .O(product[11]));
  OBUF \product_OBUF[12]_inst 
       (.I(product_OBUF[12]),
        .O(product[12]));
  OBUF \product_OBUF[13]_inst 
       (.I(product_OBUF[13]),
        .O(product[13]));
  OBUF \product_OBUF[14]_inst 
       (.I(product_OBUF[14]),
        .O(product[14]));
  OBUF \product_OBUF[15]_inst 
       (.I(product_OBUF[15]),
        .O(product[15]));
  OBUF \product_OBUF[16]_inst 
       (.I(product_OBUF[16]),
        .O(product[16]));
  OBUF \product_OBUF[17]_inst 
       (.I(product_OBUF[17]),
        .O(product[17]));
  OBUF \product_OBUF[1]_inst 
       (.I(product_OBUF[1]),
        .O(product[1]));
  OBUF \product_OBUF[2]_inst 
       (.I(product_OBUF[2]),
        .O(product[2]));
  OBUF \product_OBUF[3]_inst 
       (.I(product_OBUF[3]),
        .O(product[3]));
  OBUF \product_OBUF[4]_inst 
       (.I(product_OBUF[4]),
        .O(product[4]));
  OBUF \product_OBUF[5]_inst 
       (.I(product_OBUF[5]),
        .O(product[5]));
  OBUF \product_OBUF[6]_inst 
       (.I(product_OBUF[6]),
        .O(product[6]));
  OBUF \product_OBUF[7]_inst 
       (.I(product_OBUF[7]),
        .O(product[7]));
  OBUF \product_OBUF[8]_inst 
       (.I(product_OBUF[8]),
        .O(product[8]));
  OBUF \product_OBUF[9]_inst 
       (.I(product_OBUF[9]),
        .O(product[9]));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[0]),
        .Q(product_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[10]),
        .Q(product_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[11]),
        .Q(product_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[12]),
        .Q(product_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[13]),
        .Q(product_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[14]),
        .Q(product_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[15]),
        .Q(product_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[16]),
        .Q(product_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(signbit),
        .Q(product_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[1]),
        .Q(product_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[2]),
        .Q(product_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[3]),
        .Q(product_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[4]),
        .Q(product_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[5]),
        .Q(product_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[6]),
        .Q(product_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[7]),
        .Q(product_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[8]),
        .Q(product_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shifted[9]),
        .Q(product_OBUF[9]),
        .R(1'b0));
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
