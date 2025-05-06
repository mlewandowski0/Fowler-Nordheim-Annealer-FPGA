// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat May  3 13:20:42 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_LFSR_inout_func_synth.v
// Design      : LFSR_inout
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (Q,
    seed_IBUF,
    write_seed_IBUF,
    SS,
    clk,
    chip_enable_IBUF);
  output [5:0]Q;
  input [6:0]seed_IBUF;
  input write_seed_IBUF;
  input [0:0]SS;
  input clk;
  input chip_enable_IBUF;

  wire [5:0]Q;
  wire [0:0]SS;
  wire chip_enable_IBUF;
  wire clk;
  wire [6:0]seed_IBUF;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[6]_i_2_n_0 ;
  wire \state[6]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire write_seed_IBUF;

  LUT6 #(
    .INIT(64'hF0F0F00099999999)) 
    \state[0]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(seed_IBUF[0]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(\state[6]_i_3_n_0 ),
        .I5(write_seed_IBUF),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0AAAA)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(seed_IBUF[1]),
        .I2(\state[3]_i_2_n_0 ),
        .I3(\state[6]_i_3_n_0 ),
        .I4(write_seed_IBUF),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0AAAA)) 
    \state[2]_i_1 
       (.I0(Q[0]),
        .I1(seed_IBUF[2]),
        .I2(\state[3]_i_2_n_0 ),
        .I3(\state[6]_i_3_n_0 ),
        .I4(write_seed_IBUF),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0AAAA)) 
    \state[3]_i_1 
       (.I0(Q[1]),
        .I1(seed_IBUF[3]),
        .I2(\state[3]_i_2_n_0 ),
        .I3(\state[6]_i_3_n_0 ),
        .I4(write_seed_IBUF),
        .O(\state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \state[3]_i_2 
       (.I0(seed_IBUF[5]),
        .I1(seed_IBUF[4]),
        .I2(seed_IBUF[6]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F030F0AAAAAAAA)) 
    \state[4]_i_1 
       (.I0(Q[2]),
        .I1(seed_IBUF[6]),
        .I2(seed_IBUF[4]),
        .I3(seed_IBUF[5]),
        .I4(\state[6]_i_3_n_0 ),
        .I5(write_seed_IBUF),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF003F00AAAAAAAA)) 
    \state[5]_i_1 
       (.I0(Q[3]),
        .I1(seed_IBUF[6]),
        .I2(seed_IBUF[4]),
        .I3(seed_IBUF[5]),
        .I4(\state[6]_i_3_n_0 ),
        .I5(write_seed_IBUF),
        .O(\state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[6]_i_1 
       (.I0(chip_enable_IBUF),
        .I1(write_seed_IBUF),
        .O(\state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC0CCCAAAAAAAA)) 
    \state[6]_i_2 
       (.I0(Q[4]),
        .I1(seed_IBUF[6]),
        .I2(seed_IBUF[4]),
        .I3(seed_IBUF[5]),
        .I4(\state[6]_i_3_n_0 ),
        .I5(write_seed_IBUF),
        .O(\state[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[6]_i_3 
       (.I0(seed_IBUF[2]),
        .I1(seed_IBUF[3]),
        .I2(seed_IBUF[0]),
        .I3(seed_IBUF[1]),
        .O(\state[6]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[5]_i_1_n_0 ),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[6] 
       (.C(clk),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[6]_i_2_n_0 ),
        .Q(Q[5]),
        .S(SS));
endmodule

(* LFSR_BITS = "7" *) (* OUT_BITS = "6" *) 
(* NotValidForBitStream *)
module LFSR_inout
   (clk,
    reset,
    chip_enable,
    write_seed,
    seed,
    out_trunc);
  input clk;
  input reset;
  input chip_enable;
  input write_seed;
  input [6:0]seed;
  output [5:0]out_trunc;

  wire chip_enable;
  wire chip_enable_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [5:0]out_trunc;
  wire [5:0]out_trunc_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [6:0]seed;
  wire [6:0]seed_IBUF;
  wire write_seed;
  wire write_seed_IBUF;

  IBUF chip_enable_IBUF_inst
       (.I(chip_enable),
        .O(chip_enable_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \out_trunc_OBUF[0]_inst 
       (.I(out_trunc_OBUF[0]),
        .O(out_trunc[0]));
  OBUF \out_trunc_OBUF[1]_inst 
       (.I(out_trunc_OBUF[1]),
        .O(out_trunc[1]));
  OBUF \out_trunc_OBUF[2]_inst 
       (.I(out_trunc_OBUF[2]),
        .O(out_trunc[2]));
  OBUF \out_trunc_OBUF[3]_inst 
       (.I(out_trunc_OBUF[3]),
        .O(out_trunc[3]));
  OBUF \out_trunc_OBUF[4]_inst 
       (.I(out_trunc_OBUF[4]),
        .O(out_trunc[4]));
  OBUF \out_trunc_OBUF[5]_inst 
       (.I(out_trunc_OBUF[5]),
        .O(out_trunc[5]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \seed_IBUF[0]_inst 
       (.I(seed[0]),
        .O(seed_IBUF[0]));
  IBUF \seed_IBUF[1]_inst 
       (.I(seed[1]),
        .O(seed_IBUF[1]));
  IBUF \seed_IBUF[2]_inst 
       (.I(seed[2]),
        .O(seed_IBUF[2]));
  IBUF \seed_IBUF[3]_inst 
       (.I(seed[3]),
        .O(seed_IBUF[3]));
  IBUF \seed_IBUF[4]_inst 
       (.I(seed[4]),
        .O(seed_IBUF[4]));
  IBUF \seed_IBUF[5]_inst 
       (.I(seed[5]),
        .O(seed_IBUF[5]));
  IBUF \seed_IBUF[6]_inst 
       (.I(seed[6]),
        .O(seed_IBUF[6]));
  LFSR u_lfsr
       (.Q(out_trunc_OBUF),
        .SS(reset_IBUF),
        .chip_enable_IBUF(chip_enable_IBUF),
        .clk(clk_IBUF_BUFG),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
  IBUF write_seed_IBUF_inst
       (.I(write_seed),
        .O(write_seed_IBUF));
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
