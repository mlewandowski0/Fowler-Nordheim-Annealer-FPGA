// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May  4 14:43:15 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_fixed_to_int_func_synth.v
// Design      : fixed_to_int
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* FRAC_BITS = "8" *) (* INT_MAX = "16'sb0111111111111111" *) (* INT_MIN = "16'sb1000000000000000" *) 
(* OUT_WIDTH = "16" *) (* TOTAL_BITS = "18" *) 
(* NotValidForBitStream *)
module fixed_to_int
   (fixed_val,
    int_fixed_val);
  input [17:0]fixed_val;
  output [15:0]int_fixed_val;

  wire [17:0]fixed_val;
  wire [15:0]int_fixed_val;
  wire [9:0]int_fixed_val_OBUF;

  IBUF \fixed_val_IBUF[10]_inst 
       (.I(fixed_val[10]),
        .O(int_fixed_val_OBUF[2]));
  IBUF \fixed_val_IBUF[11]_inst 
       (.I(fixed_val[11]),
        .O(int_fixed_val_OBUF[3]));
  IBUF \fixed_val_IBUF[12]_inst 
       (.I(fixed_val[12]),
        .O(int_fixed_val_OBUF[4]));
  IBUF \fixed_val_IBUF[13]_inst 
       (.I(fixed_val[13]),
        .O(int_fixed_val_OBUF[5]));
  IBUF \fixed_val_IBUF[14]_inst 
       (.I(fixed_val[14]),
        .O(int_fixed_val_OBUF[6]));
  IBUF \fixed_val_IBUF[15]_inst 
       (.I(fixed_val[15]),
        .O(int_fixed_val_OBUF[7]));
  IBUF \fixed_val_IBUF[16]_inst 
       (.I(fixed_val[16]),
        .O(int_fixed_val_OBUF[8]));
  IBUF \fixed_val_IBUF[17]_inst 
       (.I(fixed_val[17]),
        .O(int_fixed_val_OBUF[9]));
  IBUF \fixed_val_IBUF[8]_inst 
       (.I(fixed_val[8]),
        .O(int_fixed_val_OBUF[0]));
  IBUF \fixed_val_IBUF[9]_inst 
       (.I(fixed_val[9]),
        .O(int_fixed_val_OBUF[1]));
  OBUF \int_fixed_val_OBUF[0]_inst 
       (.I(int_fixed_val_OBUF[0]),
        .O(int_fixed_val[0]));
  OBUF \int_fixed_val_OBUF[10]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[10]));
  OBUF \int_fixed_val_OBUF[11]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[11]));
  OBUF \int_fixed_val_OBUF[12]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[12]));
  OBUF \int_fixed_val_OBUF[13]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[13]));
  OBUF \int_fixed_val_OBUF[14]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[14]));
  OBUF \int_fixed_val_OBUF[15]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[15]));
  OBUF \int_fixed_val_OBUF[1]_inst 
       (.I(int_fixed_val_OBUF[1]),
        .O(int_fixed_val[1]));
  OBUF \int_fixed_val_OBUF[2]_inst 
       (.I(int_fixed_val_OBUF[2]),
        .O(int_fixed_val[2]));
  OBUF \int_fixed_val_OBUF[3]_inst 
       (.I(int_fixed_val_OBUF[3]),
        .O(int_fixed_val[3]));
  OBUF \int_fixed_val_OBUF[4]_inst 
       (.I(int_fixed_val_OBUF[4]),
        .O(int_fixed_val[4]));
  OBUF \int_fixed_val_OBUF[5]_inst 
       (.I(int_fixed_val_OBUF[5]),
        .O(int_fixed_val[5]));
  OBUF \int_fixed_val_OBUF[6]_inst 
       (.I(int_fixed_val_OBUF[6]),
        .O(int_fixed_val[6]));
  OBUF \int_fixed_val_OBUF[7]_inst 
       (.I(int_fixed_val_OBUF[7]),
        .O(int_fixed_val[7]));
  OBUF \int_fixed_val_OBUF[8]_inst 
       (.I(int_fixed_val_OBUF[8]),
        .O(int_fixed_val[8]));
  OBUF \int_fixed_val_OBUF[9]_inst 
       (.I(int_fixed_val_OBUF[9]),
        .O(int_fixed_val[9]));
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
