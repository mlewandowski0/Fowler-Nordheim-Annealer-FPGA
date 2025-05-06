// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May  4 22:30:04 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_distributed_graph_memory_func_synth.v
// Design      : distributed_graph_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* GRAPH_WIDTH = "8" *) (* MEM_FILE = "adj_matrix_N8_A2_distributed0.mif" *) (* MEM_WIDTH = "4" *) 
(* NEURON_WIDTH = "2" *) 
(* NotValidForBitStream *)
module distributed_graph_memory
   (clk,
    reset,
    enable,
    index_of_neuron_that_fired,
    Q_out);
  input clk;
  input reset;
  input enable;
  input [2:0]index_of_neuron_that_fired;
  output [3:0]Q_out;

  wire [3:0]Q_out;
  wire \Q_out[0]_i_1_n_0 ;
  wire \Q_out[1]_i_1_n_0 ;
  wire \Q_out[2]_i_1_n_0 ;
  wire \Q_out[3]_i_1_n_0 ;
  wire [3:0]Q_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enable;
  wire enable_IBUF;
  wire [2:0]index_of_neuron_that_fired;
  wire [2:0]index_of_neuron_that_fired_IBUF;
  wire reset;
  wire reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \Q_out[0]_i_1 
       (.I0(index_of_neuron_that_fired_IBUF[1]),
        .I1(index_of_neuron_that_fired_IBUF[2]),
        .I2(index_of_neuron_that_fired_IBUF[0]),
        .O(\Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \Q_out[1]_i_1 
       (.I0(index_of_neuron_that_fired_IBUF[0]),
        .I1(index_of_neuron_that_fired_IBUF[2]),
        .I2(index_of_neuron_that_fired_IBUF[1]),
        .O(\Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \Q_out[2]_i_1 
       (.I0(index_of_neuron_that_fired_IBUF[0]),
        .I1(index_of_neuron_that_fired_IBUF[1]),
        .I2(index_of_neuron_that_fired_IBUF[2]),
        .O(\Q_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \Q_out[3]_i_1 
       (.I0(index_of_neuron_that_fired_IBUF[1]),
        .I1(index_of_neuron_that_fired_IBUF[0]),
        .I2(index_of_neuron_that_fired_IBUF[2]),
        .O(\Q_out[3]_i_1_n_0 ));
  OBUF \Q_out_OBUF[0]_inst 
       (.I(Q_out_OBUF[0]),
        .O(Q_out[0]));
  OBUF \Q_out_OBUF[1]_inst 
       (.I(Q_out_OBUF[1]),
        .O(Q_out[1]));
  OBUF \Q_out_OBUF[2]_inst 
       (.I(Q_out_OBUF[2]),
        .O(Q_out[2]));
  OBUF \Q_out_OBUF[3]_inst 
       (.I(Q_out_OBUF[3]),
        .O(Q_out[3]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(\Q_out[0]_i_1_n_0 ),
        .Q(Q_out_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(\Q_out[1]_i_1_n_0 ),
        .Q(Q_out_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(\Q_out[2]_i_1_n_0 ),
        .Q(Q_out_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(\Q_out[3]_i_1_n_0 ),
        .Q(Q_out_OBUF[3]),
        .R(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  IBUF \index_of_neuron_that_fired_IBUF[0]_inst 
       (.I(index_of_neuron_that_fired[0]),
        .O(index_of_neuron_that_fired_IBUF[0]));
  IBUF \index_of_neuron_that_fired_IBUF[1]_inst 
       (.I(index_of_neuron_that_fired[1]),
        .O(index_of_neuron_that_fired_IBUF[1]));
  IBUF \index_of_neuron_that_fired_IBUF[2]_inst 
       (.I(index_of_neuron_that_fired[2]),
        .O(index_of_neuron_that_fired_IBUF[2]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
