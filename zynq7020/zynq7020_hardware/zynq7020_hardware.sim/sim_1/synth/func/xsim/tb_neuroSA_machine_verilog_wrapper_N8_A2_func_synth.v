// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu May  8 16:24:41 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_neuroSA_machine_verilog_wrapper_N8_A2_func_synth.v
// Design      : neuroSA_machine_verilog_wrapper_N8_A2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \state_reg[4]_0 ,
    clk_IBUF_BUFG,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]\state_reg[4]_0 ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire state;
  wire \state[0]_i_1__2_n_0 ;
  wire \state[1]_i_1__2_n_0 ;
  wire \state[2]_i_1__2_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2__0_n_0 ;
  wire [0:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT5 #(
    .INIT(32'h0000F909)) 
    \state[0]_i_1__2 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(write_ensemble_seed_IBUF),
        .I3(ensemble_seed_IBUF[0]),
        .I4(state),
        .O(\state[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_1 
       (.I0(storage_CE_advance),
        .I1(write_ensemble_seed_IBUF),
        .I2(state),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_2__0 
       (.I0(Q[0]),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[4]),
        .I3(state),
        .O(\state[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[4]_i_3__0 
       (.I0(write_ensemble_seed_IBUF),
        .I1(ensemble_seed_IBUF[2]),
        .I2(ensemble_seed_IBUF[4]),
        .I3(ensemble_seed_IBUF[0]),
        .I4(ensemble_seed_IBUF[1]),
        .I5(ensemble_seed_IBUF[3]),
        .O(state));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[0]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[1]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[2]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[3]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[4]_i_2__0_n_0 ),
        .Q(Q[1]),
        .S(\state_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR_4
   (Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \state_reg[4]_0 ,
    clk_IBUF_BUFG,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]\state_reg[4]_0 ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire [0:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT5 #(
    .INIT(32'h0000F909)) 
    \state[0]_i_1__1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(write_ensemble_seed_IBUF),
        .I3(ensemble_seed_IBUF[0]),
        .I4(state),
        .O(\state[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_1 
       (.I0(storage_CE_advance),
        .I1(write_ensemble_seed_IBUF),
        .I2(state),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_2 
       (.I0(Q[0]),
        .I1(write_ensemble_seed_IBUF),
        .I2(ensemble_seed_IBUF[4]),
        .I3(state),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[4]_i_3 
       (.I0(write_ensemble_seed_IBUF),
        .I1(ensemble_seed_IBUF[2]),
        .I2(ensemble_seed_IBUF[4]),
        .I3(ensemble_seed_IBUF[0]),
        .I4(ensemble_seed_IBUF[1]),
        .I5(ensemble_seed_IBUF[3]),
        .O(state));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\state_reg[4]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[4]_i_2_n_0 ),
        .Q(Q[1]),
        .S(\state_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (\flipping_seed[3] ,
    \flipping_seed[12] ,
    SS,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    clk_IBUF_BUFG);
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output [0:0]SS;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire [0:0]SS;
  wire clk_IBUF_BUFG;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire stage1_r_reg_i_14__0_n_0;
  wire stage1_r_reg_i_15__0_n_0;
  wire stage1_r_reg_i_16__0_n_0;
  wire stage1_r_reg_i_17__0_n_0;
  wire stage1_r_reg_i_18__0_n_0;
  wire stage1_r_reg_i_19__0_n_0;
  wire stage1_r_reg_i_20__0_n_0;
  wire stage1_r_reg_i_21__0_n_0;
  wire stage1_r_reg_i_22__0_n_0;
  wire stage1_r_reg_i_23__0_n_0;
  wire stage1_r_reg_i_24__0_n_0;
  wire stage1_r_reg_i_25__0_n_0;
  wire stage1_r_reg_i_26__0_n_0;
  wire stage1_r_reg_i_27__0_n_0;
  wire stage1_r_reg_i_28__0_n_0;
  wire stage1_r_reg_i_29__0_n_0;
  wire stage1_r_reg_i_30__0_n_0;
  wire stage1_r_reg_i_31__0_n_0;
  wire stage1_r_reg_i_32__0_n_0;
  wire stage1_r_reg_i_33__0_n_0;
  wire stage1_r_reg_i_34__0_n_0;
  wire stage1_r_reg_i_35__0_n_0;
  wire stage1_r_reg_i_36__0_n_0;
  wire stage1_r_reg_i_37__0_n_0;
  wire stage1_r_reg_i_38__0_n_0;
  wire stage1_r_reg_i_39__0_n_0;
  wire stage1_r_reg_i_40__0_n_0;
  wire stage1_r_reg_i_41__0_n_0;
  wire stage1_r_reg_i_42__0_n_0;
  wire stage1_r_reg_i_43__0_n_0;
  wire stage1_r_reg_i_44__0_n_0;
  wire stage1_r_reg_i_45__0_n_0;
  wire stage1_r_reg_i_46__0_n_0;
  wire stage1_r_reg_i_47__0_n_0;
  wire stage1_r_reg_i_48__0_n_0;
  wire stage1_r_reg_i_49__0_n_0;
  wire stage1_r_reg_i_50__0_n_0;
  wire stage1_r_reg_i_51__0_n_0;
  wire stage1_r_reg_i_52__0_n_0;
  wire stage1_r_reg_i_53__0_n_0;
  wire stage1_r_reg_i_54__0_n_0;
  wire stage1_r_reg_i_55__0_n_0;
  wire stage1_r_reg_i_56__0_n_0;
  wire stage1_r_reg_i_57__0_n_0;
  wire state;
  wire \state[0]_i_1__4_n_0 ;
  wire \state[0]_i_2__2_n_0 ;
  wire \state[10]_i_1__0_n_0 ;
  wire \state[11]_i_1__0_n_0 ;
  wire \state[12]_i_1__0_n_0 ;
  wire \state[13]_i_1__0_n_0 ;
  wire \state[14]_i_1__0_n_0 ;
  wire \state[15]_i_2_n_0 ;
  wire \state[15]_i_3__0_n_0 ;
  wire \state[15]_i_7_n_0 ;
  wire \state[1]_i_1__4_n_0 ;
  wire \state[2]_i_1__4_n_0 ;
  wire \state[3]_i_1__2_n_0 ;
  wire \state[4]_i_1__0_n_0 ;
  wire \state[5]_i_1__0_n_0 ;
  wire \state[6]_i_1__0_n_0 ;
  wire \state[7]_i_1__0_n_0 ;
  wire \state[8]_i_1__0_n_0 ;
  wire \state[9]_i_1__0_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[10] ;
  wire \state_reg_n_0_[11] ;
  wire \state_reg_n_0_[12] ;
  wire \state_reg_n_0_[13] ;
  wire \state_reg_n_0_[14] ;
  wire \state_reg_n_0_[15] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire \state_reg_n_0_[8] ;
  wire \state_reg_n_0_[9] ;
  wire [0:0]write_flipping_seed_IBUF;

  MUXF8 stage1_r_reg_i_10__0
       (.I0(stage1_r_reg_i_29__0_n_0),
        .I1(stage1_r_reg_i_30__0_n_0),
        .O(A[3]),
        .S(\state_reg_n_0_[15] ));
  MUXF8 stage1_r_reg_i_11__0
       (.I0(stage1_r_reg_i_31__0_n_0),
        .I1(stage1_r_reg_i_32__0_n_0),
        .O(A[2]),
        .S(\state_reg_n_0_[15] ));
  MUXF8 stage1_r_reg_i_12__0
       (.I0(stage1_r_reg_i_33__0_n_0),
        .I1(stage1_r_reg_i_34__0_n_0),
        .O(A[1]),
        .S(\state_reg_n_0_[15] ));
  MUXF8 stage1_r_reg_i_13__0
       (.I0(stage1_r_reg_i_35__0_n_0),
        .I1(stage1_r_reg_i_36__0_n_0),
        .O(A[0]),
        .S(\state_reg_n_0_[15] ));
  LUT6 #(
    .INIT(64'h00001555FFFFFFFF)) 
    stage1_r_reg_i_14__0
       (.I0(\state_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_14__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    stage1_r_reg_i_15__0
       (.I0(\state_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_15__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEB)) 
    stage1_r_reg_i_16__0
       (.I0(\state_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_16__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEA0515)) 
    stage1_r_reg_i_17__0
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[12] ),
        .I5(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    stage1_r_reg_i_18__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[11] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[12] ),
        .I4(\state_reg_n_0_[14] ),
        .O(stage1_r_reg_i_18__0_n_0));
  LUT6 #(
    .INIT(64'hB8B8989D9D9D8C8C)) 
    stage1_r_reg_i_19__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_19__0_n_0));
  LUT6 #(
    .INIT(64'h33333737FCCCCCCC)) 
    stage1_r_reg_i_20__0
       (.I0(\state_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(stage1_r_reg_i_37__0_n_0),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_20__0_n_0));
  LUT6 #(
    .INIT(64'h5555555557766666)) 
    stage1_r_reg_i_21__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[11] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[12] ),
        .O(stage1_r_reg_i_21__0_n_0));
  LUT6 #(
    .INIT(64'h5237122623262377)) 
    stage1_r_reg_i_22__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[11] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_22__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    stage1_r_reg_i_23__0
       (.I0(\state_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[11] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[13] ),
        .O(stage1_r_reg_i_23__0_n_0));
  LUT6 #(
    .INIT(64'h9991999555555555)) 
    stage1_r_reg_i_24__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[11] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[12] ),
        .O(stage1_r_reg_i_24__0_n_0));
  LUT6 #(
    .INIT(64'hCC44C44446336733)) 
    stage1_r_reg_i_25__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[10] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[11] ),
        .O(stage1_r_reg_i_25__0_n_0));
  LUT6 #(
    .INIT(64'h8F20EB44CF35E340)) 
    stage1_r_reg_i_26__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[11] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[8] ),
        .O(stage1_r_reg_i_26__0_n_0));
  MUXF7 stage1_r_reg_i_27__0
       (.I0(stage1_r_reg_i_38__0_n_0),
        .I1(stage1_r_reg_i_39__0_n_0),
        .O(stage1_r_reg_i_27__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_28__0
       (.I0(stage1_r_reg_i_40__0_n_0),
        .I1(stage1_r_reg_i_41__0_n_0),
        .O(stage1_r_reg_i_28__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_29__0
       (.I0(stage1_r_reg_i_42__0_n_0),
        .I1(stage1_r_reg_i_43__0_n_0),
        .O(stage1_r_reg_i_29__0_n_0),
        .S(\state_reg_n_0_[14] ));
  LUT3 #(
    .INIT(8'h0D)) 
    stage1_r_reg_i_2__0
       (.I0(\state_reg_n_0_[14] ),
        .I1(stage1_r_reg_i_14__0_n_0),
        .I2(\state_reg_n_0_[15] ),
        .O(A[11]));
  MUXF7 stage1_r_reg_i_30__0
       (.I0(stage1_r_reg_i_44__0_n_0),
        .I1(stage1_r_reg_i_45__0_n_0),
        .O(stage1_r_reg_i_30__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_31__0
       (.I0(stage1_r_reg_i_46__0_n_0),
        .I1(stage1_r_reg_i_47__0_n_0),
        .O(stage1_r_reg_i_31__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_32__0
       (.I0(stage1_r_reg_i_48__0_n_0),
        .I1(stage1_r_reg_i_49__0_n_0),
        .O(stage1_r_reg_i_32__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_33__0
       (.I0(stage1_r_reg_i_50__0_n_0),
        .I1(stage1_r_reg_i_51__0_n_0),
        .O(stage1_r_reg_i_33__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_34__0
       (.I0(stage1_r_reg_i_52__0_n_0),
        .I1(stage1_r_reg_i_53__0_n_0),
        .O(stage1_r_reg_i_34__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_35__0
       (.I0(stage1_r_reg_i_54__0_n_0),
        .I1(stage1_r_reg_i_55__0_n_0),
        .O(stage1_r_reg_i_35__0_n_0),
        .S(\state_reg_n_0_[14] ));
  MUXF7 stage1_r_reg_i_36__0
       (.I0(stage1_r_reg_i_56__0_n_0),
        .I1(stage1_r_reg_i_57__0_n_0),
        .O(stage1_r_reg_i_36__0_n_0),
        .S(\state_reg_n_0_[14] ));
  LUT3 #(
    .INIT(8'hFE)) 
    stage1_r_reg_i_37__0
       (.I0(\state_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .O(stage1_r_reg_i_37__0_n_0));
  LUT6 #(
    .INIT(64'h8CD932E276BF5C15)) 
    stage1_r_reg_i_38__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[11] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_38__0_n_0));
  LUT6 #(
    .INIT(64'h585A8F8F5A9B8F87)) 
    stage1_r_reg_i_39__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_39__0_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_3__0
       (.I0(stage1_r_reg_i_15__0_n_0),
        .I1(\state_reg_n_0_[14] ),
        .I2(stage1_r_reg_i_14__0_n_0),
        .I3(\state_reg_n_0_[15] ),
        .O(A[10]));
  LUT6 #(
    .INIT(64'h0F0F0FB8F0F0F0F0)) 
    stage1_r_reg_i_40__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[11] ),
        .O(stage1_r_reg_i_40__0_n_0));
  LUT6 #(
    .INIT(64'hF3F3B33330000C0C)) 
    stage1_r_reg_i_41__0
       (.I0(\state_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[13] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[12] ),
        .O(stage1_r_reg_i_41__0_n_0));
  LUT6 #(
    .INIT(64'h18A3D17B4DB71DF1)) 
    stage1_r_reg_i_42__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[8] ),
        .O(stage1_r_reg_i_42__0_n_0));
  LUT6 #(
    .INIT(64'h282222E3D7D7D4DC)) 
    stage1_r_reg_i_43__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_43__0_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00B7FAC8)) 
    stage1_r_reg_i_44__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_44__0_n_0));
  LUT6 #(
    .INIT(64'h5855A5A575E5AAAA)) 
    stage1_r_reg_i_45__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_45__0_n_0));
  LUT6 #(
    .INIT(64'h1A40FB0822D8618F)) 
    stage1_r_reg_i_46__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_46__0_n_0));
  LUT6 #(
    .INIT(64'h75F51EB40A23CB0B)) 
    stage1_r_reg_i_47__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[10] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_47__0_n_0));
  LUT6 #(
    .INIT(64'hFF667E00019101FF)) 
    stage1_r_reg_i_48__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_48__0_n_0));
  LUT6 #(
    .INIT(64'h4633CCC43BBC7333)) 
    stage1_r_reg_i_49__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_49__0_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_4__0
       (.I0(stage1_r_reg_i_16__0_n_0),
        .I1(\state_reg_n_0_[14] ),
        .I2(stage1_r_reg_i_14__0_n_0),
        .I3(\state_reg_n_0_[15] ),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hA31D5C845505FAAF)) 
    stage1_r_reg_i_50__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_50__0_n_0));
  LUT6 #(
    .INIT(64'h946B36C13E61D72A)) 
    stage1_r_reg_i_51__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_51__0_n_0));
  LUT6 #(
    .INIT(64'h6667810199907EEE)) 
    stage1_r_reg_i_52__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[10] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_52__0_n_0));
  LUT6 #(
    .INIT(64'h85287B7F787F0680)) 
    stage1_r_reg_i_53__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[11] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_53__0_n_0));
  LUT6 #(
    .INIT(64'h7D0271E88B37168C)) 
    stage1_r_reg_i_54__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[10] ),
        .I5(\state_reg_n_0_[9] ),
        .O(stage1_r_reg_i_54__0_n_0));
  LUT6 #(
    .INIT(64'h2E48A4E83A93BA01)) 
    stage1_r_reg_i_55__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[11] ),
        .O(stage1_r_reg_i_55__0_n_0));
  LUT6 #(
    .INIT(64'h1188EE771991676E)) 
    stage1_r_reg_i_56__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[11] ),
        .I4(\state_reg_n_0_[8] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_56__0_n_0));
  LUT6 #(
    .INIT(64'h1CA0D70823D60977)) 
    stage1_r_reg_i_57__0
       (.I0(\state_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[11] ),
        .I3(\state_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[10] ),
        .O(stage1_r_reg_i_57__0_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_5__0
       (.I0(stage1_r_reg_i_17__0_n_0),
        .I1(\state_reg_n_0_[14] ),
        .I2(stage1_r_reg_i_14__0_n_0),
        .I3(\state_reg_n_0_[15] ),
        .O(A[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_6__0
       (.I0(stage1_r_reg_i_18__0_n_0),
        .I1(\state_reg_n_0_[15] ),
        .I2(stage1_r_reg_i_14__0_n_0),
        .I3(\state_reg_n_0_[14] ),
        .I4(stage1_r_reg_i_19__0_n_0),
        .O(A[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_7__0
       (.I0(stage1_r_reg_i_20__0_n_0),
        .I1(\state_reg_n_0_[15] ),
        .I2(stage1_r_reg_i_21__0_n_0),
        .I3(\state_reg_n_0_[14] ),
        .I4(stage1_r_reg_i_22__0_n_0),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_8__0
       (.I0(stage1_r_reg_i_23__0_n_0),
        .I1(stage1_r_reg_i_24__0_n_0),
        .I2(\state_reg_n_0_[15] ),
        .I3(stage1_r_reg_i_25__0_n_0),
        .I4(\state_reg_n_0_[14] ),
        .I5(stage1_r_reg_i_26__0_n_0),
        .O(A[5]));
  MUXF8 stage1_r_reg_i_9__0
       (.I0(stage1_r_reg_i_27__0_n_0),
        .I1(stage1_r_reg_i_28__0_n_0),
        .O(A[4]),
        .S(\state_reg_n_0_[15] ));
  LUT6 #(
    .INIT(64'h00000000B88B8BB8)) 
    \state[0]_i_1__4 
       (.I0(flipping_seed_IBUF[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state[0]_i_2__2_n_0 ),
        .I3(\state_reg_n_0_[15] ),
        .I4(\state_reg_n_0_[14] ),
        .I5(state),
        .O(\state[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_2__2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[12] ),
        .O(\state[0]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[10]_i_1__0 
       (.I0(\state_reg_n_0_[9] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[10]),
        .I3(state),
        .O(\state[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[11]_i_1__0 
       (.I0(\state_reg_n_0_[10] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[11]),
        .I3(state),
        .O(\state[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[12]_i_1__0 
       (.I0(\state_reg_n_0_[11] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[12]),
        .I3(state),
        .O(\state[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[13]_i_1__0 
       (.I0(\state_reg_n_0_[12] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[13]),
        .I3(state),
        .O(\state[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[14]_i_1__0 
       (.I0(\state_reg_n_0_[13] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[14]),
        .I3(state),
        .O(\state[14]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[15]_i_1__0 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[0]_2 ),
        .O(SS));
  LUT5 #(
    .INIT(32'hFFFFBBFE)) 
    \state[15]_i_2 
       (.I0(write_flipping_seed_IBUF),
        .I1(\state_reg[0]_2 ),
        .I2(\state_reg[0]_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(state),
        .O(\state[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[15]_i_3__0 
       (.I0(\state_reg_n_0_[14] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[15]),
        .I3(state),
        .O(\state[15]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[15]_i_4__0 
       (.I0(\flipping_seed[3] ),
        .I1(flipping_seed_IBUF[15]),
        .I2(write_flipping_seed_IBUF),
        .I3(\flipping_seed[12] ),
        .O(state));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_5 
       (.I0(flipping_seed_IBUF[3]),
        .I1(flipping_seed_IBUF[4]),
        .I2(flipping_seed_IBUF[2]),
        .I3(flipping_seed_IBUF[1]),
        .I4(flipping_seed_IBUF[0]),
        .I5(\state[15]_i_7_n_0 ),
        .O(\flipping_seed[3] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[15]_i_6 
       (.I0(flipping_seed_IBUF[12]),
        .I1(flipping_seed_IBUF[11]),
        .I2(flipping_seed_IBUF[14]),
        .I3(flipping_seed_IBUF[13]),
        .O(\flipping_seed[12] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_7 
       (.I0(flipping_seed_IBUF[7]),
        .I1(flipping_seed_IBUF[8]),
        .I2(flipping_seed_IBUF[5]),
        .I3(flipping_seed_IBUF[6]),
        .I4(flipping_seed_IBUF[10]),
        .I5(flipping_seed_IBUF[9]),
        .O(\state[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1__2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_1__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[4]),
        .I3(state),
        .O(\state[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[5]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[5]),
        .I3(state),
        .O(\state[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[6]_i_1__0 
       (.I0(\state_reg_n_0_[5] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[6]),
        .I3(state),
        .O(\state[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[7]_i_1__0 
       (.I0(\state_reg_n_0_[6] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[7]),
        .I3(state),
        .O(\state[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[8]_i_1__0 
       (.I0(\state_reg_n_0_[7] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[8]),
        .I3(state),
        .O(\state[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[9]_i_1__0 
       (.I0(\state_reg_n_0_[8] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[9]),
        .I3(state),
        .O(\state[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[0]_i_1__4_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[10]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[10] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[11]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[11] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[12]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[12] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[13]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[13] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[14]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[14] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[15]_i_3__0_n_0 ),
        .Q(\state_reg_n_0_[15] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[1]_i_1__4_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[2]_i_1__4_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[3]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[4]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[5]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[6]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[7]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[8]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[8] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[9]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[9] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0_8
   (SS,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[15]_0 ,
    \state_reg[15]_1 ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    clk_IBUF_BUFG);
  output [0:0]SS;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[15]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire [0:0]SS;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [7:0]sel;
  wire stage1_r_reg_i_14_n_0;
  wire stage1_r_reg_i_15_n_0;
  wire stage1_r_reg_i_16_n_0;
  wire stage1_r_reg_i_17_n_0;
  wire stage1_r_reg_i_18_n_0;
  wire stage1_r_reg_i_19_n_0;
  wire stage1_r_reg_i_20_n_0;
  wire stage1_r_reg_i_21_n_0;
  wire stage1_r_reg_i_22_n_0;
  wire stage1_r_reg_i_23_n_0;
  wire stage1_r_reg_i_24_n_0;
  wire stage1_r_reg_i_25_n_0;
  wire stage1_r_reg_i_26_n_0;
  wire stage1_r_reg_i_27_n_0;
  wire stage1_r_reg_i_28_n_0;
  wire stage1_r_reg_i_29_n_0;
  wire stage1_r_reg_i_30_n_0;
  wire stage1_r_reg_i_31_n_0;
  wire stage1_r_reg_i_32_n_0;
  wire stage1_r_reg_i_33_n_0;
  wire stage1_r_reg_i_34_n_0;
  wire stage1_r_reg_i_35_n_0;
  wire stage1_r_reg_i_36_n_0;
  wire stage1_r_reg_i_37_n_0;
  wire stage1_r_reg_i_38_n_0;
  wire stage1_r_reg_i_39_n_0;
  wire stage1_r_reg_i_40_n_0;
  wire stage1_r_reg_i_41_n_0;
  wire stage1_r_reg_i_42_n_0;
  wire stage1_r_reg_i_43_n_0;
  wire stage1_r_reg_i_44_n_0;
  wire stage1_r_reg_i_45_n_0;
  wire stage1_r_reg_i_46_n_0;
  wire stage1_r_reg_i_47_n_0;
  wire stage1_r_reg_i_48_n_0;
  wire stage1_r_reg_i_49_n_0;
  wire stage1_r_reg_i_50_n_0;
  wire stage1_r_reg_i_51_n_0;
  wire stage1_r_reg_i_52_n_0;
  wire stage1_r_reg_i_53_n_0;
  wire stage1_r_reg_i_54_n_0;
  wire stage1_r_reg_i_55_n_0;
  wire stage1_r_reg_i_56_n_0;
  wire stage1_r_reg_i_57_n_0;
  wire state;
  wire \state[0]_i_1__3_n_0 ;
  wire \state[0]_i_2__1_n_0 ;
  wire \state[10]_i_1_n_0 ;
  wire \state[11]_i_1_n_0 ;
  wire \state[12]_i_1_n_0 ;
  wire \state[13]_i_1_n_0 ;
  wire \state[14]_i_1_n_0 ;
  wire \state[15]_i_2_n_0 ;
  wire \state[15]_i_3_n_0 ;
  wire \state[1]_i_1__3_n_0 ;
  wire \state[2]_i_1__3_n_0 ;
  wire \state[3]_i_1__1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[9]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire [0:0]write_flipping_seed_IBUF;

  MUXF8 stage1_r_reg_i_10
       (.I0(stage1_r_reg_i_29_n_0),
        .I1(stage1_r_reg_i_30_n_0),
        .O(A[3]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_11
       (.I0(stage1_r_reg_i_31_n_0),
        .I1(stage1_r_reg_i_32_n_0),
        .O(A[2]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_12
       (.I0(stage1_r_reg_i_33_n_0),
        .I1(stage1_r_reg_i_34_n_0),
        .O(A[1]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_13
       (.I0(stage1_r_reg_i_35_n_0),
        .I1(stage1_r_reg_i_36_n_0),
        .O(A[0]),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'h00001555FFFFFFFF)) 
    stage1_r_reg_i_14
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    stage1_r_reg_i_15
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEB)) 
    stage1_r_reg_i_16
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEA0515)) 
    stage1_r_reg_i_17
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    stage1_r_reg_i_18
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[4]),
        .I4(sel[6]),
        .O(stage1_r_reg_i_18_n_0));
  LUT6 #(
    .INIT(64'hB8B8989D9D9D8C8C)) 
    stage1_r_reg_i_19
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_19_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    stage1_r_reg_i_2
       (.I0(sel[6]),
        .I1(stage1_r_reg_i_14_n_0),
        .I2(sel[7]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'h33333737FCCCCCCC)) 
    stage1_r_reg_i_20
       (.I0(sel[2]),
        .I1(sel[6]),
        .I2(sel[4]),
        .I3(stage1_r_reg_i_37_n_0),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h5555555557766666)) 
    stage1_r_reg_i_21
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_21_n_0));
  LUT6 #(
    .INIT(64'h5237122623262377)) 
    stage1_r_reg_i_22
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    stage1_r_reg_i_23
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[5]),
        .O(stage1_r_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'h9991999555555555)) 
    stage1_r_reg_i_24
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'hCC44C44446336733)) 
    stage1_r_reg_i_25
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_25_n_0));
  LUT6 #(
    .INIT(64'h8F20EB44CF35E340)) 
    stage1_r_reg_i_26
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(stage1_r_reg_i_26_n_0));
  MUXF7 stage1_r_reg_i_27
       (.I0(stage1_r_reg_i_38_n_0),
        .I1(stage1_r_reg_i_39_n_0),
        .O(stage1_r_reg_i_27_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_28
       (.I0(stage1_r_reg_i_40_n_0),
        .I1(stage1_r_reg_i_41_n_0),
        .O(stage1_r_reg_i_28_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_29
       (.I0(stage1_r_reg_i_42_n_0),
        .I1(stage1_r_reg_i_43_n_0),
        .O(stage1_r_reg_i_29_n_0),
        .S(sel[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_3
       (.I0(stage1_r_reg_i_15_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_14_n_0),
        .I3(sel[7]),
        .O(A[10]));
  MUXF7 stage1_r_reg_i_30
       (.I0(stage1_r_reg_i_44_n_0),
        .I1(stage1_r_reg_i_45_n_0),
        .O(stage1_r_reg_i_30_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_31
       (.I0(stage1_r_reg_i_46_n_0),
        .I1(stage1_r_reg_i_47_n_0),
        .O(stage1_r_reg_i_31_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_32
       (.I0(stage1_r_reg_i_48_n_0),
        .I1(stage1_r_reg_i_49_n_0),
        .O(stage1_r_reg_i_32_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_33
       (.I0(stage1_r_reg_i_50_n_0),
        .I1(stage1_r_reg_i_51_n_0),
        .O(stage1_r_reg_i_33_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_34
       (.I0(stage1_r_reg_i_52_n_0),
        .I1(stage1_r_reg_i_53_n_0),
        .O(stage1_r_reg_i_34_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_35
       (.I0(stage1_r_reg_i_54_n_0),
        .I1(stage1_r_reg_i_55_n_0),
        .O(stage1_r_reg_i_35_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_36
       (.I0(stage1_r_reg_i_56_n_0),
        .I1(stage1_r_reg_i_57_n_0),
        .O(stage1_r_reg_i_36_n_0),
        .S(sel[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    stage1_r_reg_i_37
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .O(stage1_r_reg_i_37_n_0));
  LUT6 #(
    .INIT(64'h8CD932E276BF5C15)) 
    stage1_r_reg_i_38
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[3]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_38_n_0));
  LUT6 #(
    .INIT(64'h585A8F8F5A9B8F87)) 
    stage1_r_reg_i_39
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_39_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_4
       (.I0(stage1_r_reg_i_16_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_14_n_0),
        .I3(sel[7]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'h0F0F0FB8F0F0F0F0)) 
    stage1_r_reg_i_40
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'hF3F3B33330000C0C)) 
    stage1_r_reg_i_41
       (.I0(sel[0]),
        .I1(sel[5]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'h18A3D17B4DB71DF1)) 
    stage1_r_reg_i_42
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(stage1_r_reg_i_42_n_0));
  LUT6 #(
    .INIT(64'h282222E3D7D7D4DC)) 
    stage1_r_reg_i_43
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_43_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00B7FAC8)) 
    stage1_r_reg_i_44
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_44_n_0));
  LUT6 #(
    .INIT(64'h5855A5A575E5AAAA)) 
    stage1_r_reg_i_45
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_45_n_0));
  LUT6 #(
    .INIT(64'h1A40FB0822D8618F)) 
    stage1_r_reg_i_46
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_46_n_0));
  LUT6 #(
    .INIT(64'h75F51EB40A23CB0B)) 
    stage1_r_reg_i_47
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_47_n_0));
  LUT6 #(
    .INIT(64'hFF667E00019101FF)) 
    stage1_r_reg_i_48
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_48_n_0));
  LUT6 #(
    .INIT(64'h4633CCC43BBC7333)) 
    stage1_r_reg_i_49
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_49_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_5
       (.I0(stage1_r_reg_i_17_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_14_n_0),
        .I3(sel[7]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hA31D5C845505FAAF)) 
    stage1_r_reg_i_50
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_50_n_0));
  LUT6 #(
    .INIT(64'h946B36C13E61D72A)) 
    stage1_r_reg_i_51
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'h6667810199907EEE)) 
    stage1_r_reg_i_52
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_52_n_0));
  LUT6 #(
    .INIT(64'h85287B7F787F0680)) 
    stage1_r_reg_i_53
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_53_n_0));
  LUT6 #(
    .INIT(64'h7D0271E88B37168C)) 
    stage1_r_reg_i_54
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_54_n_0));
  LUT6 #(
    .INIT(64'h2E48A4E83A93BA01)) 
    stage1_r_reg_i_55
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_55_n_0));
  LUT6 #(
    .INIT(64'h1188EE771991676E)) 
    stage1_r_reg_i_56
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_56_n_0));
  LUT6 #(
    .INIT(64'h1CA0D70823D60977)) 
    stage1_r_reg_i_57
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_57_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_6
       (.I0(stage1_r_reg_i_18_n_0),
        .I1(sel[7]),
        .I2(stage1_r_reg_i_14_n_0),
        .I3(sel[6]),
        .I4(stage1_r_reg_i_19_n_0),
        .O(A[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_7
       (.I0(stage1_r_reg_i_20_n_0),
        .I1(sel[7]),
        .I2(stage1_r_reg_i_21_n_0),
        .I3(sel[6]),
        .I4(stage1_r_reg_i_22_n_0),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_8
       (.I0(stage1_r_reg_i_23_n_0),
        .I1(stage1_r_reg_i_24_n_0),
        .I2(sel[7]),
        .I3(stage1_r_reg_i_25_n_0),
        .I4(sel[6]),
        .I5(stage1_r_reg_i_26_n_0),
        .O(A[5]));
  MUXF8 stage1_r_reg_i_9
       (.I0(stage1_r_reg_i_27_n_0),
        .I1(stage1_r_reg_i_28_n_0),
        .O(A[4]),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'h00000000B88B8BB8)) 
    \state[0]_i_1__3 
       (.I0(flipping_seed_IBUF[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state[0]_i_2__1_n_0 ),
        .I3(sel[7]),
        .I4(sel[6]),
        .I5(state),
        .O(\state[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_2__1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(sel[4]),
        .O(\state[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[10]_i_1 
       (.I0(sel[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[10]),
        .I3(state),
        .O(\state[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[11]_i_1 
       (.I0(sel[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[11]),
        .I3(state),
        .O(\state[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[12]_i_1 
       (.I0(sel[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[12]),
        .I3(state),
        .O(\state[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[13]_i_1 
       (.I0(sel[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[13]),
        .I3(state),
        .O(\state[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[14]_i_1 
       (.I0(sel[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[14]),
        .I3(state),
        .O(\state[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[15]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[0]_2 ),
        .O(SS));
  LUT5 #(
    .INIT(32'hFFFFBBFE)) 
    \state[15]_i_2 
       (.I0(write_flipping_seed_IBUF),
        .I1(\state_reg[0]_2 ),
        .I2(\state_reg[0]_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(state),
        .O(\state[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[15]_i_3 
       (.I0(sel[6]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[15]),
        .I3(state),
        .O(\state[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[15]_i_4 
       (.I0(\state_reg[15]_0 ),
        .I1(flipping_seed_IBUF[15]),
        .I2(write_flipping_seed_IBUF),
        .I3(\state_reg[15]_1 ),
        .O(state));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1__1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[4]),
        .I3(state),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[5]),
        .I3(state),
        .O(\state[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[6]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[6]),
        .I3(state),
        .O(\state[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[7]_i_1 
       (.I0(\state_reg_n_0_[6] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[7]),
        .I3(state),
        .O(\state[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[8]_i_1 
       (.I0(\state_reg_n_0_[7] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[8]),
        .I3(state),
        .O(\state[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[9]_i_1 
       (.I0(sel[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[9]),
        .I3(state),
        .O(\state[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[0]_i_1__3_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[10]_i_1_n_0 ),
        .Q(sel[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[11]_i_1_n_0 ),
        .Q(sel[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[12]_i_1_n_0 ),
        .Q(sel[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[13]_i_1_n_0 ),
        .Q(sel[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[14]_i_1_n_0 ),
        .Q(sel[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[15]_i_3_n_0 ),
        .Q(sel[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[1]_i_1__3_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[2]_i_1__3_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[3]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[6]_i_1_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[7]_i_1_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[8]_i_1_n_0 ),
        .Q(sel[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[15]_i_2_n_0 ),
        .D(\state[9]_i_1_n_0 ),
        .Q(sel[1]),
        .S(SS));
endmodule

module LFSR_inout
   (Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \state_reg[4] ,
    clk_IBUF_BUFG,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]\state_reg[4] ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [0:0]\state_reg[4] ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR u_lfsr
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\state_reg[4]_0 (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout_3
   (Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \state_reg[4] ,
    clk_IBUF_BUFG,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]\state_reg[4] ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [0:0]\state_reg[4] ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR_4 u_lfsr
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\state_reg[4]_0 (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0
   (\flipping_seed[3] ,
    \flipping_seed[12] ,
    SS,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    clk_IBUF_BUFG);
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output [0:0]SS;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire [0:0]SS;
  wire clk_IBUF_BUFG;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0 u_lfsr
       (.A(A),
        .SS(SS),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\flipping_seed[12] (\flipping_seed[12] ),
        .\flipping_seed[3] (\flipping_seed[3] ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[0]_2 (\state_reg[0]_1 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0_7
   (SS,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    clk_IBUF_BUFG);
  output [0:0]SS;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[15] ;
  input \state_reg[15]_0 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire [0:0]SS;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0_8 u_lfsr
       (.A(A),
        .SS(SS),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[0]_2 (\state_reg[0]_1 ),
        .\state_reg[15]_0 (\state_reg[15] ),
        .\state_reg[15]_1 (\state_reg[15]_0 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module distributed_graph_memory
   (E,
    \Q_out_reg[1]_0 ,
    \Q_out_reg[2]_0 ,
    \Q_out_reg[3]_0 ,
    \Q_out_reg[0]_0 ,
    \Q_out_reg[0]_1 ,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    \mem_ram_reg[0][0] ,
    Q,
    \Q_out_reg[0]_2 ,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [0:0]\Q_out_reg[1]_0 ;
  output [0:0]\Q_out_reg[2]_0 ;
  output [0:0]\Q_out_reg[3]_0 ;
  input \Q_out_reg[0]_0 ;
  input \Q_out_reg[0]_1 ;
  input [1:0]idx_to_write_IBUF;
  input [0:0]write_neuron_states_IBUF;
  input \mem_ram_reg[0][0] ;
  input [2:0]Q;
  input [0:0]\Q_out_reg[0]_2 ;
  input clk_IBUF_BUFG;

  wire CE_output_from_distributed_graph;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]Q_out;
  wire \Q_out[0]_i_1_n_0 ;
  wire \Q_out[1]_i_1_n_0 ;
  wire \Q_out[2]_i_1_n_0 ;
  wire \Q_out[3]_i_2_n_0 ;
  wire \Q_out_reg[0]_0 ;
  wire \Q_out_reg[0]_1 ;
  wire [0:0]\Q_out_reg[0]_2 ;
  wire [0:0]\Q_out_reg[1]_0 ;
  wire [0:0]\Q_out_reg[2]_0 ;
  wire [0:0]\Q_out_reg[3]_0 ;
  wire clk_IBUF_BUFG;
  wire [1:0]idx_to_write_IBUF;
  wire \mem_ram_reg[0][0] ;
  wire [0:0]write_neuron_states_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \Q_out[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \Q_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \Q_out[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\Q_out[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q_out[3]_i_1 
       (.I0(\Q_out_reg[0]_0 ),
        .I1(\Q_out_reg[0]_1 ),
        .O(CE_output_from_distributed_graph));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \Q_out[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\Q_out[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[0]_i_1_n_0 ),
        .Q(Q_out[0]),
        .R(\Q_out_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[1]_i_1_n_0 ),
        .Q(Q_out[1]),
        .R(\Q_out_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[2]_i_1_n_0 ),
        .Q(Q_out[2]),
        .R(\Q_out_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[3]_i_2_n_0 ),
        .Q(Q_out[3]),
        .R(\Q_out_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \mem_ram[0][9]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[0]),
        .I4(\mem_ram_reg[0][0] ),
        .O(E));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_ram[1][9]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .I3(Q_out[1]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \mem_ram[2][9]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[2]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \mem_ram[3][9]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .I3(Q_out[3]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "distributed_graph_memory" *) 
module distributed_graph_memory__parameterized0
   (E,
    \Q_out_reg[1]_0 ,
    \Q_out_reg[2]_0 ,
    \Q_out_reg[3]_0 ,
    \Q_out_reg[0]_0 ,
    \Q_out_reg[0]_1 ,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    \mem_ram_reg[0][0] ,
    \Q_out_reg[3]_1 ,
    Q,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [0:0]\Q_out_reg[1]_0 ;
  output [0:0]\Q_out_reg[2]_0 ;
  output [0:0]\Q_out_reg[3]_0 ;
  input \Q_out_reg[0]_0 ;
  input \Q_out_reg[0]_1 ;
  input [1:0]idx_to_write_IBUF;
  input [0:0]write_neuron_states_IBUF;
  input \mem_ram_reg[0][0] ;
  input [2:0]\Q_out_reg[3]_1 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire CE_output_from_distributed_graph;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]Q_out;
  wire \Q_out[0]_i_1_n_0 ;
  wire \Q_out[1]_i_1_n_0 ;
  wire \Q_out[2]_i_1_n_0 ;
  wire \Q_out[3]_i_2_n_0 ;
  wire \Q_out_reg[0]_0 ;
  wire \Q_out_reg[0]_1 ;
  wire [0:0]\Q_out_reg[1]_0 ;
  wire [0:0]\Q_out_reg[2]_0 ;
  wire [0:0]\Q_out_reg[3]_0 ;
  wire [2:0]\Q_out_reg[3]_1 ;
  wire clk_IBUF_BUFG;
  wire [1:0]idx_to_write_IBUF;
  wire \mem_ram_reg[0][0] ;
  wire [0:0]write_neuron_states_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h63)) 
    \Q_out[0]_i_1 
       (.I0(\Q_out_reg[3]_1 [0]),
        .I1(\Q_out_reg[3]_1 [1]),
        .I2(\Q_out_reg[3]_1 [2]),
        .O(\Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \Q_out[1]_i_1 
       (.I0(\Q_out_reg[3]_1 [1]),
        .I1(\Q_out_reg[3]_1 [2]),
        .I2(\Q_out_reg[3]_1 [0]),
        .O(\Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \Q_out[2]_i_1 
       (.I0(\Q_out_reg[3]_1 [1]),
        .I1(\Q_out_reg[3]_1 [2]),
        .I2(\Q_out_reg[3]_1 [0]),
        .O(\Q_out[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q_out[3]_i_1__0 
       (.I0(\Q_out_reg[0]_0 ),
        .I1(\Q_out_reg[0]_1 ),
        .O(CE_output_from_distributed_graph));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \Q_out[3]_i_2 
       (.I0(\Q_out_reg[3]_1 [0]),
        .I1(\Q_out_reg[3]_1 [2]),
        .I2(\Q_out_reg[3]_1 [1]),
        .O(\Q_out[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[0]_i_1_n_0 ),
        .Q(Q_out[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[1]_i_1_n_0 ),
        .Q(Q_out[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[2]_i_1_n_0 ),
        .Q(Q_out[2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[3]_i_2_n_0 ),
        .Q(Q_out[3]),
        .R(Q));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \mem_ram[0][9]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[0]),
        .I4(\mem_ram_reg[0][0] ),
        .O(E));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_ram[1][9]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[1]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \mem_ram[2][9]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[2]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \mem_ram[3][9]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(Q_out[3]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\Q_out_reg[3]_0 ));
endmodule

module flipping_unit
   (flipping_CE,
    ADDRBWRADDR,
    \state_reg[2] ,
    S,
    DI,
    \flipping_seed[3] ,
    \flipping_seed[12] ,
    \state_reg[1] ,
    stage1_r_reg_0,
    \mem_p_reg[6] ,
    clk_IBUF_BUFG,
    B,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    Q,
    spike0_carry,
    spike0_carry__0,
    spike0_carry__0_0,
    CO,
    spike0_carry_0,
    spike0_carry_1,
    spike0_carry_2);
  output flipping_CE;
  output [8:0]ADDRBWRADDR;
  output \state_reg[2] ;
  output [3:0]S;
  output [3:0]DI;
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output \state_reg[1] ;
  output [3:0]stage1_r_reg_0;
  output [3:0]\mem_p_reg[6] ;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input [9:0]Q;
  input [0:0]spike0_carry;
  input spike0_carry__0;
  input spike0_carry__0_0;
  input [0:0]CO;
  input spike0_carry_0;
  input spike0_carry_1;
  input spike0_carry_2;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire flipping_CE;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire [3:0]\mem_p_reg[6] ;
  wire reset_flipping;
  wire [0:0]spike0_carry;
  wire spike0_carry_0;
  wire spike0_carry_1;
  wire spike0_carry_2;
  wire spike0_carry__0;
  wire spike0_carry__0_0;
  wire [3:0]stage1_r_reg_0;
  wire [17:9]stage1_r_reg__0;
  wire stage1_r_reg_n_100;
  wire stage1_r_reg_n_101;
  wire stage1_r_reg_n_102;
  wire stage1_r_reg_n_103;
  wire stage1_r_reg_n_104;
  wire stage1_r_reg_n_105;
  wire stage1_r_reg_n_88;
  wire stage1_r_reg_n_89;
  wire stage1_r_reg_n_90;
  wire stage1_r_reg_n_91;
  wire stage1_r_reg_n_92;
  wire stage1_r_reg_n_93;
  wire stage1_r_reg_n_94;
  wire stage1_r_reg_n_95;
  wire stage1_r_reg_n_96;
  wire stage1_r_reg_n_97;
  wire stage1_r_reg_n_98;
  wire stage1_r_reg_n_99;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire u_noise_n_10;
  wire u_noise_n_11;
  wire u_noise_n_12;
  wire u_noise_n_13;
  wire u_noise_n_14;
  wire u_noise_n_3;
  wire u_noise_n_4;
  wire u_noise_n_5;
  wire u_noise_n_6;
  wire u_noise_n_7;
  wire u_noise_n_8;
  wire u_noise_n_9;
  wire [0:0]write_flipping_seed_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_stage1_r_reg_OVERFLOW_UNCONNECTED;
  wire NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_stage1_r_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_stage1_r_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_stage1_r_reg_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_stage1_r_reg_P_UNCONNECTED;
  wire [47:0]NLW_stage1_r_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_1__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0_0),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_2__0
       (.I0(spike0_carry__0_0),
        .I1(stage1_r_reg__0[17]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_3__0
       (.I0(spike0_carry__0_0),
        .I1(stage1_r_reg__0[17]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h55155054)) 
    spike0_carry__0_i_4__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0),
        .I2(Q[8]),
        .I3(spike0_carry),
        .I4(Q[9]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_5__0
       (.I0(spike0_carry__0_0),
        .I1(stage1_r_reg__0[17]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_6__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0_0),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_7__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0_0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h84128211)) 
    spike0_carry__0_i_8__0
       (.I0(stage1_r_reg__0[17]),
        .I1(Q[9]),
        .I2(spike0_carry),
        .I3(Q[8]),
        .I4(spike0_carry__0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_1__0
       (.I0(spike0_carry_2),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(stage1_r_reg__0[15]),
        .I4(spike0_carry),
        .I5(stage1_r_reg__0[16]),
        .O(\mem_p_reg[6] [3]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_2__0
       (.I0(spike0_carry_1),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(stage1_r_reg__0[13]),
        .I4(spike0_carry),
        .I5(stage1_r_reg__0[14]),
        .O(\mem_p_reg[6] [2]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_3__0
       (.I0(spike0_carry_0),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(stage1_r_reg__0[11]),
        .I4(spike0_carry),
        .I5(stage1_r_reg__0[12]),
        .O(\mem_p_reg[6] [1]));
  LUT5 #(
    .INIT(32'h090A9F0A)) 
    spike0_carry_i_4__0
       (.I0(Q[1]),
        .I1(spike0_carry),
        .I2(stage1_r_reg__0[10]),
        .I3(Q[0]),
        .I4(stage1_r_reg__0[9]),
        .O(\mem_p_reg[6] [0]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_5__0
       (.I0(spike0_carry_2),
        .I1(stage1_r_reg__0[15]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(stage1_r_reg__0[16]),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[3]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_6__0
       (.I0(spike0_carry_1),
        .I1(stage1_r_reg__0[13]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(stage1_r_reg__0[14]),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[2]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_7__0
       (.I0(spike0_carry_0),
        .I1(stage1_r_reg__0[11]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(stage1_r_reg__0[12]),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[1]));
  LUT5 #(
    .INIT(32'h960000A5)) 
    spike0_carry_i_8__0
       (.I0(Q[1]),
        .I1(spike0_carry),
        .I2(stage1_r_reg__0[10]),
        .I3(stage1_r_reg__0[9]),
        .I4(Q[0]),
        .O(stage1_r_reg_0[0]));
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
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    stage1_r_reg
       (.A({u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_3,u_noise_n_4,u_noise_n_3,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11,u_noise_n_12,u_noise_n_13,u_noise_n_14}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_stage1_r_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_stage1_r_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_stage1_r_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(flipping_CE),
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
        .CEP(flipping_CE),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_stage1_r_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_stage1_r_reg_P_UNCONNECTED[47:27],stage1_r_reg__0,stage1_r_reg_n_88,stage1_r_reg_n_89,stage1_r_reg_n_90,stage1_r_reg_n_91,stage1_r_reg_n_92,stage1_r_reg_n_93,stage1_r_reg_n_94,stage1_r_reg_n_95,stage1_r_reg_n_96,stage1_r_reg_n_97,stage1_r_reg_n_98,stage1_r_reg_n_99,stage1_r_reg_n_100,stage1_r_reg_n_101,stage1_r_reg_n_102,stage1_r_reg_n_103,stage1_r_reg_n_104,stage1_r_reg_n_105}),
        .PATTERNBDETECT(NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_stage1_r_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(reset_flipping),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(reset_flipping),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(reset_flipping),
        .UNDERFLOW(NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h5E)) 
    stage1_r_reg_i_1__0
       (.I0(x_reg_rep),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep_1),
        .O(flipping_CE));
  LUT4 #(
    .INIT(16'hA1FF)) 
    \state[0]_i_2__0 
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .I3(CO),
        .O(\state_reg[1] ));
  log_noise_generator u_noise
       (.A({u_noise_n_3,u_noise_n_4,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11,u_noise_n_12,u_noise_n_13,u_noise_n_14}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\flipping_seed[12] (\flipping_seed[12] ),
        .\flipping_seed[3] (\flipping_seed[3] ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .reset_flipping(reset_flipping),
        .\state_reg[0] (x_reg_rep_1),
        .\state_reg[0]_0 (x_reg_rep_0),
        .\state_reg[0]_1 (x_reg_rep),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  temperature_module u_temp
       (.ADDRBWRADDR(ADDRBWRADDR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_flipping(reset_flipping),
        .\state_reg[2] (\state_reg[2] ),
        .\x_reg[0]_0 (\x_reg[0] ),
        .\x_reg[0]_1 (\x_reg[0]_0 ),
        .x_reg_rep(x_reg_rep),
        .x_reg_rep_0(x_reg_rep_0),
        .x_reg_rep_1(x_reg_rep_1));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module flipping_unit_1
   (flipping_CE,
    S,
    DI,
    \state_reg[1] ,
    stage1_r_reg_0,
    \mem_p_reg[6] ,
    B,
    clk_IBUF_BUFG,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    Q,
    spike0_carry,
    spike0_carry__0,
    mem_cmp,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    CO,
    spike0_carry_0,
    spike0_carry_1,
    spike0_carry_2,
    x_reg_rep_2,
    ADDRBWRADDR);
  output flipping_CE;
  output [3:0]S;
  output [3:0]DI;
  output \state_reg[1] ;
  output [3:0]stage1_r_reg_0;
  output [3:0]\mem_p_reg[6] ;
  output [17:0]B;
  input clk_IBUF_BUFG;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input [9:0]Q;
  input [0:0]spike0_carry;
  input spike0_carry__0;
  input [0:0]mem_cmp;
  input \state_reg[15] ;
  input \state_reg[15]_0 ;
  input [0:0]CO;
  input spike0_carry_0;
  input spike0_carry_1;
  input spike0_carry_2;
  input x_reg_rep_2;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire flipping_CE;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]mem_cmp;
  wire [3:0]\mem_p_reg[6] ;
  wire p_0_in0;
  wire reset_flipping;
  wire [0:0]spike0_carry;
  wire spike0_carry_0;
  wire spike0_carry_1;
  wire spike0_carry_2;
  wire spike0_carry__0;
  wire [3:0]stage1_r_reg_0;
  wire stage1_r_reg_n_100;
  wire stage1_r_reg_n_101;
  wire stage1_r_reg_n_102;
  wire stage1_r_reg_n_103;
  wire stage1_r_reg_n_104;
  wire stage1_r_reg_n_105;
  wire stage1_r_reg_n_80;
  wire stage1_r_reg_n_81;
  wire stage1_r_reg_n_82;
  wire stage1_r_reg_n_83;
  wire stage1_r_reg_n_84;
  wire stage1_r_reg_n_85;
  wire stage1_r_reg_n_86;
  wire stage1_r_reg_n_87;
  wire stage1_r_reg_n_88;
  wire stage1_r_reg_n_89;
  wire stage1_r_reg_n_90;
  wire stage1_r_reg_n_91;
  wire stage1_r_reg_n_92;
  wire stage1_r_reg_n_93;
  wire stage1_r_reg_n_94;
  wire stage1_r_reg_n_95;
  wire stage1_r_reg_n_96;
  wire stage1_r_reg_n_97;
  wire stage1_r_reg_n_98;
  wire stage1_r_reg_n_99;
  wire \state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[1] ;
  wire u_noise_n_1;
  wire u_noise_n_10;
  wire u_noise_n_11;
  wire u_noise_n_12;
  wire u_noise_n_2;
  wire u_noise_n_3;
  wire u_noise_n_4;
  wire u_noise_n_5;
  wire u_noise_n_6;
  wire u_noise_n_7;
  wire u_noise_n_8;
  wire u_noise_n_9;
  wire u_temp_n_0;
  wire u_temp_n_1;
  wire u_temp_n_10;
  wire u_temp_n_11;
  wire u_temp_n_12;
  wire u_temp_n_13;
  wire u_temp_n_14;
  wire u_temp_n_15;
  wire u_temp_n_16;
  wire u_temp_n_17;
  wire u_temp_n_2;
  wire u_temp_n_3;
  wire u_temp_n_4;
  wire u_temp_n_5;
  wire u_temp_n_6;
  wire u_temp_n_7;
  wire u_temp_n_8;
  wire u_temp_n_9;
  wire [0:0]write_flipping_seed_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_stage1_r_reg_OVERFLOW_UNCONNECTED;
  wire NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_stage1_r_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_stage1_r_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_stage1_r_reg_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_stage1_r_reg_P_UNCONNECTED;
  wire [47:0]NLW_stage1_r_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_1
       (.I0(p_0_in0),
        .I1(mem_cmp),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_2
       (.I0(mem_cmp),
        .I1(p_0_in0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    spike0_carry__0_i_3
       (.I0(mem_cmp),
        .I1(p_0_in0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h55155054)) 
    spike0_carry__0_i_4
       (.I0(p_0_in0),
        .I1(spike0_carry__0),
        .I2(Q[8]),
        .I3(spike0_carry),
        .I4(Q[9]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_5
       (.I0(mem_cmp),
        .I1(p_0_in0),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_6
       (.I0(p_0_in0),
        .I1(mem_cmp),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_7
       (.I0(p_0_in0),
        .I1(mem_cmp),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h84128211)) 
    spike0_carry__0_i_8
       (.I0(p_0_in0),
        .I1(Q[9]),
        .I2(spike0_carry),
        .I3(Q[8]),
        .I4(spike0_carry__0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_1
       (.I0(spike0_carry_2),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(stage1_r_reg_n_81),
        .I4(spike0_carry),
        .I5(stage1_r_reg_n_80),
        .O(\mem_p_reg[6] [3]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_2
       (.I0(spike0_carry_1),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(stage1_r_reg_n_83),
        .I4(spike0_carry),
        .I5(stage1_r_reg_n_82),
        .O(\mem_p_reg[6] [2]));
  LUT6 #(
    .INIT(64'h00C00006F0FC1E7E)) 
    spike0_carry_i_3
       (.I0(spike0_carry_0),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(stage1_r_reg_n_85),
        .I4(spike0_carry),
        .I5(stage1_r_reg_n_84),
        .O(\mem_p_reg[6] [1]));
  LUT5 #(
    .INIT(32'h090A9F0A)) 
    spike0_carry_i_4
       (.I0(Q[1]),
        .I1(spike0_carry),
        .I2(stage1_r_reg_n_86),
        .I3(Q[0]),
        .I4(stage1_r_reg_n_87),
        .O(\mem_p_reg[6] [0]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_5
       (.I0(spike0_carry_2),
        .I1(stage1_r_reg_n_81),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(stage1_r_reg_n_80),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[3]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_6
       (.I0(spike0_carry_1),
        .I1(stage1_r_reg_n_83),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(stage1_r_reg_n_82),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[2]));
  LUT6 #(
    .INIT(64'hC30000C301686801)) 
    spike0_carry_i_7
       (.I0(spike0_carry_0),
        .I1(stage1_r_reg_n_85),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(stage1_r_reg_n_84),
        .I5(spike0_carry),
        .O(stage1_r_reg_0[1]));
  LUT5 #(
    .INIT(32'h960000A5)) 
    spike0_carry_i_8
       (.I0(Q[1]),
        .I1(spike0_carry),
        .I2(stage1_r_reg_n_86),
        .I3(stage1_r_reg_n_87),
        .I4(Q[0]),
        .O(stage1_r_reg_0[0]));
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
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    stage1_r_reg
       (.A({u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_1,u_noise_n_2,u_noise_n_1,u_noise_n_3,u_noise_n_4,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11,u_noise_n_12}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_stage1_r_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({u_temp_n_0,u_temp_n_1,u_temp_n_2,u_temp_n_3,u_temp_n_4,u_temp_n_5,u_temp_n_6,u_temp_n_7,u_temp_n_8,u_temp_n_9,u_temp_n_10,u_temp_n_11,u_temp_n_12,u_temp_n_13,u_temp_n_14,u_temp_n_15,u_temp_n_16,u_temp_n_17}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_stage1_r_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_stage1_r_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(flipping_CE),
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
        .CEP(flipping_CE),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_stage1_r_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_stage1_r_reg_P_UNCONNECTED[47:27],p_0_in0,stage1_r_reg_n_80,stage1_r_reg_n_81,stage1_r_reg_n_82,stage1_r_reg_n_83,stage1_r_reg_n_84,stage1_r_reg_n_85,stage1_r_reg_n_86,stage1_r_reg_n_87,stage1_r_reg_n_88,stage1_r_reg_n_89,stage1_r_reg_n_90,stage1_r_reg_n_91,stage1_r_reg_n_92,stage1_r_reg_n_93,stage1_r_reg_n_94,stage1_r_reg_n_95,stage1_r_reg_n_96,stage1_r_reg_n_97,stage1_r_reg_n_98,stage1_r_reg_n_99,stage1_r_reg_n_100,stage1_r_reg_n_101,stage1_r_reg_n_102,stage1_r_reg_n_103,stage1_r_reg_n_104,stage1_r_reg_n_105}),
        .PATTERNBDETECT(NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_stage1_r_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(reset_flipping),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(reset_flipping),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(reset_flipping),
        .UNDERFLOW(NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h5E)) 
    stage1_r_reg_i_1
       (.I0(x_reg_rep),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep_1),
        .O(flipping_CE));
  LUT4 #(
    .INIT(16'hA1FF)) 
    \state[0]_i_2 
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .I3(CO),
        .O(\state_reg[1] ));
  log_noise_generator_5 u_noise
       (.A({u_noise_n_1,u_noise_n_2,u_noise_n_3,u_noise_n_4,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11,u_noise_n_12}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .reset_flipping(reset_flipping),
        .\state_reg[0] (x_reg_rep_1),
        .\state_reg[0]_0 (x_reg_rep_0),
        .\state_reg[0]_1 (x_reg_rep),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  temperature_module_6 u_temp
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({u_temp_n_0,u_temp_n_1,u_temp_n_2,u_temp_n_3,u_temp_n_4,u_temp_n_5,u_temp_n_6,u_temp_n_7,u_temp_n_8,u_temp_n_9,u_temp_n_10,u_temp_n_11,u_temp_n_12,u_temp_n_13,u_temp_n_14,u_temp_n_15,u_temp_n_16,u_temp_n_17}),
        .reset_flipping(reset_flipping),
        .\x_reg[0]_0 (\x_reg[0] ),
        .\x_reg[0]_1 (\x_reg[0]_0 ),
        .x_reg_rep_0(x_reg_rep),
        .x_reg_rep_1(x_reg_rep_0),
        .x_reg_rep_2(x_reg_rep_1),
        .x_reg_rep_3(x_reg_rep_2));
endmodule

module log_noise_generator
   (\flipping_seed[3] ,
    \flipping_seed[12] ,
    reset_flipping,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    clk_IBUF_BUFG);
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output reset_flipping;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire clk_IBUF_BUFG;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire reset_flipping;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR_inout__parameterized0 u_src
       (.A(A),
        .SS(reset_flipping),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\flipping_seed[12] (\flipping_seed[12] ),
        .\flipping_seed[3] (\flipping_seed[3] ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module log_noise_generator_5
   (reset_flipping,
    A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    clk_IBUF_BUFG);
  output reset_flipping;
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \state_reg[15] ;
  input \state_reg[15]_0 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input clk_IBUF_BUFG;

  wire [11:0]A;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire reset_flipping;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR_inout__parameterized0_7 u_src
       (.A(A),
        .SS(reset_flipping),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module neuroSA_machine
   (Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    reset,
    clk_IBUF_BUFG,
    halt_IBUF,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF);
  output [15:0]Q;
  input [1:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [1:0]write_flipping_seed_IBUF;
  input reset;
  input clk_IBUF_BUFG;
  input halt_IBUF;
  input [1:0]idx_to_write_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;

  wire [15:0]Q;
  wire add_mem;
  wire [1:1]add_mems;
  wire add_r;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [2:0]index_of_neuron_that_fired;
  wire [2:0]index_of_neuron_that_fired_reg;
  wire mem_r;
  wire [9:0]membrane;
  wire [9:0]membrane_data_in_IBUF;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]offset;
  wire [3:2]offsets;
  wire reset;
  wire reset_module;
  wire scheduler_instance_n_24;
  wire scheduler_instance_n_25;
  wire scheduler_instance_n_26;
  wire scheduler_instance_n_4;
  wire scheduler_instance_n_6;
  wire \selector/spiked1 ;
  wire spike_reg;
  wire [0:0]spikes;
  wire storage_CE_advance;
  wire \unit_gen[0].unit_inst_n_19 ;
  wire \unit_gen[0].unit_inst_n_20 ;
  wire \unit_gen[0].unit_inst_n_21 ;
  wire \unit_gen[0].unit_inst_n_22 ;
  wire \unit_gen[0].unit_inst_n_23 ;
  wire \unit_gen[0].unit_inst_n_24 ;
  wire \unit_gen[0].unit_inst_n_25 ;
  wire \unit_gen[0].unit_inst_n_26 ;
  wire \unit_gen[0].unit_inst_n_27 ;
  wire \unit_gen[0].unit_inst_n_28 ;
  wire \unit_gen[0].unit_inst_n_29 ;
  wire \unit_gen[0].unit_inst_n_30 ;
  wire \unit_gen[0].unit_inst_n_31 ;
  wire \unit_gen[0].unit_inst_n_32 ;
  wire \unit_gen[0].unit_inst_n_33 ;
  wire \unit_gen[0].unit_inst_n_34 ;
  wire \unit_gen[0].unit_inst_n_35 ;
  wire \unit_gen[0].unit_inst_n_36 ;
  wire \unit_gen[0].unit_inst_n_37 ;
  wire \unit_gen[0].unit_inst_n_38 ;
  wire \unit_gen[0].unit_inst_n_39 ;
  wire \unit_gen[0].unit_inst_n_40 ;
  wire \unit_gen[1].unit_inst_n_10 ;
  wire \unit_gen[1].unit_inst_n_11 ;
  wire \unit_gen[1].unit_inst_n_12 ;
  wire \unit_gen[1].unit_inst_n_13 ;
  wire \unit_gen[1].unit_inst_n_16 ;
  wire \unit_gen[1].unit_inst_n_19 ;
  wire \unit_gen[1].unit_inst_n_2 ;
  wire \unit_gen[1].unit_inst_n_20 ;
  wire \unit_gen[1].unit_inst_n_21 ;
  wire \unit_gen[1].unit_inst_n_22 ;
  wire \unit_gen[1].unit_inst_n_23 ;
  wire \unit_gen[1].unit_inst_n_24 ;
  wire \unit_gen[1].unit_inst_n_25 ;
  wire \unit_gen[1].unit_inst_n_26 ;
  wire \unit_gen[1].unit_inst_n_27 ;
  wire \unit_gen[1].unit_inst_n_28 ;
  wire \unit_gen[1].unit_inst_n_3 ;
  wire \unit_gen[1].unit_inst_n_4 ;
  wire \unit_gen[1].unit_inst_n_5 ;
  wire \unit_gen[1].unit_inst_n_6 ;
  wire \unit_gen[1].unit_inst_n_7 ;
  wire \unit_gen[1].unit_inst_n_8 ;
  wire \unit_gen[1].unit_inst_n_9 ;
  wire update_memory;
  wire [1:0]write_ensemble_seed_IBUF;
  wire [1:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;

  scheduler_2 scheduler_instance
       (.D(index_of_neuron_that_fired),
        .E(mem_r),
        .\FSM_onehot_state_reg[0]_0 (scheduler_instance_n_4),
        .\FSM_onehot_state_reg[0]_1 (scheduler_instance_n_26),
        .Q({update_memory,scheduler_instance_n_6,reset_module}),
        .add_mem(add_mem),
        .add_r(add_r),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cuts_best_reg[15]_0 (Q),
        .\mem_r_reg[9]_0 (membrane),
        .\off_r_reg[1]_0 (offset),
        .reset(reset),
        .spiked1(\selector/spiked1 ),
        .\step_cnt_reg[2]_0 (scheduler_instance_n_25),
        .\step_cnt_reg[8]_0 (scheduler_instance_n_24));
  neuron_ensemble_with_memory_with_buff \unit_gen[0].unit_inst 
       (.ADDRBWRADDR({\unit_gen[1].unit_inst_n_2 ,\unit_gen[1].unit_inst_n_3 ,\unit_gen[1].unit_inst_n_4 ,\unit_gen[1].unit_inst_n_5 ,\unit_gen[1].unit_inst_n_6 ,\unit_gen[1].unit_inst_n_7 ,\unit_gen[1].unit_inst_n_8 ,\unit_gen[1].unit_inst_n_9 ,\unit_gen[1].unit_inst_n_10 }),
        .B({\unit_gen[0].unit_inst_n_23 ,\unit_gen[0].unit_inst_n_24 ,\unit_gen[0].unit_inst_n_25 ,\unit_gen[0].unit_inst_n_26 ,\unit_gen[0].unit_inst_n_27 ,\unit_gen[0].unit_inst_n_28 ,\unit_gen[0].unit_inst_n_29 ,\unit_gen[0].unit_inst_n_30 ,\unit_gen[0].unit_inst_n_31 ,\unit_gen[0].unit_inst_n_32 ,\unit_gen[0].unit_inst_n_33 ,\unit_gen[0].unit_inst_n_34 ,\unit_gen[0].unit_inst_n_35 ,\unit_gen[0].unit_inst_n_36 ,\unit_gen[0].unit_inst_n_37 ,\unit_gen[0].unit_inst_n_38 ,\unit_gen[0].unit_inst_n_39 ,\unit_gen[0].unit_inst_n_40 }),
        .D(index_of_neuron_that_fired),
        .Q({update_memory,reset_module}),
        .SR(scheduler_instance_n_4),
        .add_mem(add_mem),
        .add_r(add_r),
        .add_r_reg(add_mems),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[0]_0 (\unit_gen[0].unit_inst_n_19 ),
        .\index_of_neuron_that_fired_reg_reg[0]_1 (\unit_gen[0].unit_inst_n_20 ),
        .\index_of_neuron_that_fired_reg_reg[0]_2 (\unit_gen[0].unit_inst_n_22 ),
        .\index_of_neuron_that_fired_reg_reg[1]_0 (\unit_gen[0].unit_inst_n_21 ),
        .\index_of_neuron_that_fired_reg_reg[2]_0 (index_of_neuron_that_fired_reg),
        .\mem_r_reg[9] ({\unit_gen[1].unit_inst_n_19 ,\unit_gen[1].unit_inst_n_20 ,\unit_gen[1].unit_inst_n_21 ,\unit_gen[1].unit_inst_n_22 ,\unit_gen[1].unit_inst_n_23 ,\unit_gen[1].unit_inst_n_24 ,\unit_gen[1].unit_inst_n_25 ,\unit_gen[1].unit_inst_n_26 ,\unit_gen[1].unit_inst_n_27 ,\unit_gen[1].unit_inst_n_28 }),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[9] (membrane),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .new_sample_reg(scheduler_instance_n_26),
        .\off_r_reg[1] (offsets),
        .\offset_reg_reg[1] (offset),
        .spike_reg(spike_reg),
        .spikes(spikes),
        .\state_ram_reg[0][1] (\unit_gen[1].unit_inst_n_16 ),
        .\state_reg[15] (\unit_gen[1].unit_inst_n_12 ),
        .\state_reg[15]_0 (\unit_gen[1].unit_inst_n_13 ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[0]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[0]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (scheduler_instance_n_25),
        .\x_reg[0]_0 (scheduler_instance_n_24),
        .x_reg_rep(\unit_gen[1].unit_inst_n_11 ));
  neuron_ensemble_with_memory_with_buff__parameterized0 \unit_gen[1].unit_inst 
       (.ADDRBWRADDR({\unit_gen[1].unit_inst_n_2 ,\unit_gen[1].unit_inst_n_3 ,\unit_gen[1].unit_inst_n_4 ,\unit_gen[1].unit_inst_n_5 ,\unit_gen[1].unit_inst_n_6 ,\unit_gen[1].unit_inst_n_7 ,\unit_gen[1].unit_inst_n_8 ,\unit_gen[1].unit_inst_n_9 ,\unit_gen[1].unit_inst_n_10 }),
        .B({\unit_gen[0].unit_inst_n_23 ,\unit_gen[0].unit_inst_n_24 ,\unit_gen[0].unit_inst_n_25 ,\unit_gen[0].unit_inst_n_26 ,\unit_gen[0].unit_inst_n_27 ,\unit_gen[0].unit_inst_n_28 ,\unit_gen[0].unit_inst_n_29 ,\unit_gen[0].unit_inst_n_30 ,\unit_gen[0].unit_inst_n_31 ,\unit_gen[0].unit_inst_n_32 ,\unit_gen[0].unit_inst_n_33 ,\unit_gen[0].unit_inst_n_34 ,\unit_gen[0].unit_inst_n_35 ,\unit_gen[0].unit_inst_n_36 ,\unit_gen[0].unit_inst_n_37 ,\unit_gen[0].unit_inst_n_38 ,\unit_gen[0].unit_inst_n_39 ,\unit_gen[0].unit_inst_n_40 }),
        .E(mem_r),
        .Q({update_memory,scheduler_instance_n_6,reset_module}),
        .\Q_out_reg[3] (index_of_neuron_that_fired_reg),
        .SR(scheduler_instance_n_4),
        .add_mem_reg_reg(add_mems),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\flipping_seed[12] (\unit_gen[1].unit_inst_n_13 ),
        .\flipping_seed[3] (\unit_gen[1].unit_inst_n_12 ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[9] ({\unit_gen[1].unit_inst_n_19 ,\unit_gen[1].unit_inst_n_20 ,\unit_gen[1].unit_inst_n_21 ,\unit_gen[1].unit_inst_n_22 ,\unit_gen[1].unit_inst_n_23 ,\unit_gen[1].unit_inst_n_24 ,\unit_gen[1].unit_inst_n_25 ,\unit_gen[1].unit_inst_n_26 ,\unit_gen[1].unit_inst_n_27 ,\unit_gen[1].unit_inst_n_28 }),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\offset_reg_reg[1] (offsets),
        .spike_reg(spike_reg),
        .spiked1(\selector/spiked1 ),
        .spikes(spikes),
        .\state_ram_reg[0][1] (\unit_gen[0].unit_inst_n_19 ),
        .\state_ram_reg[1][1] (\unit_gen[0].unit_inst_n_20 ),
        .\state_ram_reg[2][1] (\unit_gen[0].unit_inst_n_21 ),
        .\state_ram_reg[3][1] (\unit_gen[0].unit_inst_n_22 ),
        .\state_reg[0]_0 (\unit_gen[1].unit_inst_n_16 ),
        .\state_reg[2]_0 (\unit_gen[1].unit_inst_n_11 ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[1]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[1]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF[1]),
        .\x_reg[0] (scheduler_instance_n_25),
        .\x_reg[0]_0 (scheduler_instance_n_24));
endmodule

(* COUNTER_WIDTH = "40" *) (* FLIPPING_OUTPUT_WIDTH = "16" *) (* FRACTIONAL_PART = "9" *) 
(* GRAPH_WIDTH = "8" *) (* IDX_THAT_FIRED_WIDTH = "3" *) (* LOG_LUT_BIT_SIZE = "8" *) 
(* LOG_NOISE_LUT_FILENAME = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif" *) (* LOG_NOISE_SOURCE_WIDTH = "16" *) (* MEMBRANE_WIDTH = "10" *) 
(* NEURONS_PER_UNIT = "4" *) (* NEURON_NUM_WIDTH = "2" *) (* NEURON_SEL_LFSR_WIDTH = "5" *) 
(* NO_CLK_CYCLES_AFTER_UPDATE = "4" *) (* NO_OF_CLK_CYCLES_TO_PROPAGATE = "1" *) (* NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE = "3" *) 
(* PIPELINED_ENSEMBLE_STORAGE = "1" *) (* PIPELINED_ROMs = "1" *) (* REAL_WIDTH = "18" *) 
(* SOLUTION_WIDTH = "16" *) (* TEMPERATURE_LUT_FILENAME = "temperature_LUT_fixed_N9.mif" *) (* TEMPERATURE_LUT_WIDTH = "9" *) 
(* TEMP_INC_WIDTH = "12" *) (* UNITS = "2" *) (* UNIT_WIDTH = "1" *) 
(* USE_FLOAT_POINT = "0" *) (* USE_ROUND_ROBIN = "0" *) (* USE_TRANSMIT_WITH_BUFF = "1" *) 
(* NotValidForBitStream *)
module neuroSA_machine_verilog_wrapper_N8_A2
   (clk,
    reset,
    halt,
    write_ensemble_seed,
    write_flipping_seed,
    ensemble_seed,
    flipping_seed,
    membrane_data_in,
    neuron_state_in,
    idx_to_write,
    write_neuron_states,
    found_solution_value);
  input clk;
  input reset;
  input halt;
  input [1:0]write_ensemble_seed;
  input [1:0]write_flipping_seed;
  input [4:0]ensemble_seed;
  input [15:0]flipping_seed;
  input [9:0]membrane_data_in;
  input [3:0]neuron_state_in;
  input [1:0]idx_to_write;
  input [1:0]write_neuron_states;
  output [15:0]found_solution_value;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed;
  wire [15:0]flipping_seed_IBUF;
  wire [15:0]found_solution_value;
  wire [15:0]found_solution_value_OBUF;
  wire halt;
  wire halt_IBUF;
  wire [1:0]idx_to_write;
  wire [1:0]idx_to_write_IBUF;
  wire [9:0]membrane_data_in;
  wire [9:0]membrane_data_in_IBUF;
  wire [3:0]neuron_state_in;
  wire [1:0]neuron_state_in_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]write_ensemble_seed;
  wire [1:0]write_ensemble_seed_IBUF;
  wire [1:0]write_flipping_seed;
  wire [1:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states;
  wire [1:0]write_neuron_states_IBUF;

  neuroSA_machine NEURO_SA
       (.Q(found_solution_value_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .reset(reset_IBUF),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \ensemble_seed_IBUF[0]_inst 
       (.I(ensemble_seed[0]),
        .O(ensemble_seed_IBUF[0]));
  IBUF \ensemble_seed_IBUF[1]_inst 
       (.I(ensemble_seed[1]),
        .O(ensemble_seed_IBUF[1]));
  IBUF \ensemble_seed_IBUF[2]_inst 
       (.I(ensemble_seed[2]),
        .O(ensemble_seed_IBUF[2]));
  IBUF \ensemble_seed_IBUF[3]_inst 
       (.I(ensemble_seed[3]),
        .O(ensemble_seed_IBUF[3]));
  IBUF \ensemble_seed_IBUF[4]_inst 
       (.I(ensemble_seed[4]),
        .O(ensemble_seed_IBUF[4]));
  IBUF \flipping_seed_IBUF[0]_inst 
       (.I(flipping_seed[0]),
        .O(flipping_seed_IBUF[0]));
  IBUF \flipping_seed_IBUF[10]_inst 
       (.I(flipping_seed[10]),
        .O(flipping_seed_IBUF[10]));
  IBUF \flipping_seed_IBUF[11]_inst 
       (.I(flipping_seed[11]),
        .O(flipping_seed_IBUF[11]));
  IBUF \flipping_seed_IBUF[12]_inst 
       (.I(flipping_seed[12]),
        .O(flipping_seed_IBUF[12]));
  IBUF \flipping_seed_IBUF[13]_inst 
       (.I(flipping_seed[13]),
        .O(flipping_seed_IBUF[13]));
  IBUF \flipping_seed_IBUF[14]_inst 
       (.I(flipping_seed[14]),
        .O(flipping_seed_IBUF[14]));
  IBUF \flipping_seed_IBUF[15]_inst 
       (.I(flipping_seed[15]),
        .O(flipping_seed_IBUF[15]));
  IBUF \flipping_seed_IBUF[1]_inst 
       (.I(flipping_seed[1]),
        .O(flipping_seed_IBUF[1]));
  IBUF \flipping_seed_IBUF[2]_inst 
       (.I(flipping_seed[2]),
        .O(flipping_seed_IBUF[2]));
  IBUF \flipping_seed_IBUF[3]_inst 
       (.I(flipping_seed[3]),
        .O(flipping_seed_IBUF[3]));
  IBUF \flipping_seed_IBUF[4]_inst 
       (.I(flipping_seed[4]),
        .O(flipping_seed_IBUF[4]));
  IBUF \flipping_seed_IBUF[5]_inst 
       (.I(flipping_seed[5]),
        .O(flipping_seed_IBUF[5]));
  IBUF \flipping_seed_IBUF[6]_inst 
       (.I(flipping_seed[6]),
        .O(flipping_seed_IBUF[6]));
  IBUF \flipping_seed_IBUF[7]_inst 
       (.I(flipping_seed[7]),
        .O(flipping_seed_IBUF[7]));
  IBUF \flipping_seed_IBUF[8]_inst 
       (.I(flipping_seed[8]),
        .O(flipping_seed_IBUF[8]));
  IBUF \flipping_seed_IBUF[9]_inst 
       (.I(flipping_seed[9]),
        .O(flipping_seed_IBUF[9]));
  OBUF \found_solution_value_OBUF[0]_inst 
       (.I(found_solution_value_OBUF[0]),
        .O(found_solution_value[0]));
  OBUF \found_solution_value_OBUF[10]_inst 
       (.I(found_solution_value_OBUF[10]),
        .O(found_solution_value[10]));
  OBUF \found_solution_value_OBUF[11]_inst 
       (.I(found_solution_value_OBUF[11]),
        .O(found_solution_value[11]));
  OBUF \found_solution_value_OBUF[12]_inst 
       (.I(found_solution_value_OBUF[12]),
        .O(found_solution_value[12]));
  OBUF \found_solution_value_OBUF[13]_inst 
       (.I(found_solution_value_OBUF[13]),
        .O(found_solution_value[13]));
  OBUF \found_solution_value_OBUF[14]_inst 
       (.I(found_solution_value_OBUF[14]),
        .O(found_solution_value[14]));
  OBUF \found_solution_value_OBUF[15]_inst 
       (.I(found_solution_value_OBUF[15]),
        .O(found_solution_value[15]));
  OBUF \found_solution_value_OBUF[1]_inst 
       (.I(found_solution_value_OBUF[1]),
        .O(found_solution_value[1]));
  OBUF \found_solution_value_OBUF[2]_inst 
       (.I(found_solution_value_OBUF[2]),
        .O(found_solution_value[2]));
  OBUF \found_solution_value_OBUF[3]_inst 
       (.I(found_solution_value_OBUF[3]),
        .O(found_solution_value[3]));
  OBUF \found_solution_value_OBUF[4]_inst 
       (.I(found_solution_value_OBUF[4]),
        .O(found_solution_value[4]));
  OBUF \found_solution_value_OBUF[5]_inst 
       (.I(found_solution_value_OBUF[5]),
        .O(found_solution_value[5]));
  OBUF \found_solution_value_OBUF[6]_inst 
       (.I(found_solution_value_OBUF[6]),
        .O(found_solution_value[6]));
  OBUF \found_solution_value_OBUF[7]_inst 
       (.I(found_solution_value_OBUF[7]),
        .O(found_solution_value[7]));
  OBUF \found_solution_value_OBUF[8]_inst 
       (.I(found_solution_value_OBUF[8]),
        .O(found_solution_value[8]));
  OBUF \found_solution_value_OBUF[9]_inst 
       (.I(found_solution_value_OBUF[9]),
        .O(found_solution_value[9]));
  IBUF halt_IBUF_inst
       (.I(halt),
        .O(halt_IBUF));
  IBUF \idx_to_write_IBUF[0]_inst 
       (.I(idx_to_write[0]),
        .O(idx_to_write_IBUF[0]));
  IBUF \idx_to_write_IBUF[1]_inst 
       (.I(idx_to_write[1]),
        .O(idx_to_write_IBUF[1]));
  IBUF \membrane_data_in_IBUF[0]_inst 
       (.I(membrane_data_in[0]),
        .O(membrane_data_in_IBUF[0]));
  IBUF \membrane_data_in_IBUF[1]_inst 
       (.I(membrane_data_in[1]),
        .O(membrane_data_in_IBUF[1]));
  IBUF \membrane_data_in_IBUF[2]_inst 
       (.I(membrane_data_in[2]),
        .O(membrane_data_in_IBUF[2]));
  IBUF \membrane_data_in_IBUF[3]_inst 
       (.I(membrane_data_in[3]),
        .O(membrane_data_in_IBUF[3]));
  IBUF \membrane_data_in_IBUF[4]_inst 
       (.I(membrane_data_in[4]),
        .O(membrane_data_in_IBUF[4]));
  IBUF \membrane_data_in_IBUF[5]_inst 
       (.I(membrane_data_in[5]),
        .O(membrane_data_in_IBUF[5]));
  IBUF \membrane_data_in_IBUF[6]_inst 
       (.I(membrane_data_in[6]),
        .O(membrane_data_in_IBUF[6]));
  IBUF \membrane_data_in_IBUF[7]_inst 
       (.I(membrane_data_in[7]),
        .O(membrane_data_in_IBUF[7]));
  IBUF \membrane_data_in_IBUF[8]_inst 
       (.I(membrane_data_in[8]),
        .O(membrane_data_in_IBUF[8]));
  IBUF \membrane_data_in_IBUF[9]_inst 
       (.I(membrane_data_in[9]),
        .O(membrane_data_in_IBUF[9]));
  IBUF \neuron_state_in_IBUF[0]_inst 
       (.I(neuron_state_in[0]),
        .O(neuron_state_in_IBUF[0]));
  IBUF \neuron_state_in_IBUF[1]_inst 
       (.I(neuron_state_in[1]),
        .O(neuron_state_in_IBUF[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \write_ensemble_seed_IBUF[0]_inst 
       (.I(write_ensemble_seed[0]),
        .O(write_ensemble_seed_IBUF[0]));
  IBUF \write_ensemble_seed_IBUF[1]_inst 
       (.I(write_ensemble_seed[1]),
        .O(write_ensemble_seed_IBUF[1]));
  IBUF \write_flipping_seed_IBUF[0]_inst 
       (.I(write_flipping_seed[0]),
        .O(write_flipping_seed_IBUF[0]));
  IBUF \write_flipping_seed_IBUF[1]_inst 
       (.I(write_flipping_seed[1]),
        .O(write_flipping_seed_IBUF[1]));
  IBUF \write_neuron_states_IBUF[0]_inst 
       (.I(write_neuron_states[0]),
        .O(write_neuron_states_IBUF[0]));
  IBUF \write_neuron_states_IBUF[1]_inst 
       (.I(write_neuron_states[1]),
        .O(write_neuron_states_IBUF[1]));
endmodule

module neuron_ensemble
   (flipping_CE,
    CO,
    Q,
    \st_p_reg[0]_0 ,
    \state_reg[1] ,
    \state_reg[2] ,
    \index_of_neuron_that_fired_reg_reg[0] ,
    \index_of_neuron_that_fired_reg_reg[0]_0 ,
    \index_of_neuron_that_fired_reg_reg[1] ,
    \index_of_neuron_that_fired_reg_reg[0]_1 ,
    B,
    \idx_p_reg[1]_0 ,
    clk_IBUF_BUFG,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    \_inferred__2/i__carry ,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    \state_ram[0][1]_i_2 ,
    \state_ram_reg[0][1] ,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    \state_reg[4] ,
    storage_CE_advance,
    E,
    \mem_ram_reg[2][0] ,
    \mem_ram_reg[1][0] ,
    \mem_ram_reg[0][0] ,
    x_reg_rep_2,
    ADDRBWRADDR);
  output flipping_CE;
  output [0:0]CO;
  output [9:0]Q;
  output [0:0]\st_p_reg[0]_0 ;
  output \state_reg[1] ;
  output \state_reg[2] ;
  output \index_of_neuron_that_fired_reg_reg[0] ;
  output \index_of_neuron_that_fired_reg_reg[0]_0 ;
  output \index_of_neuron_that_fired_reg_reg[1] ;
  output \index_of_neuron_that_fired_reg_reg[0]_1 ;
  output [17:0]B;
  output [1:0]\idx_p_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input \_inferred__2/i__carry ;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input \state_reg[15] ;
  input \state_reg[15]_0 ;
  input [1:0]idx_to_write_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [2:0]\state_ram[0][1]_i_2 ;
  input \state_ram_reg[0][1] ;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input [0:0]\state_reg[4] ;
  input storage_CE_advance;
  input [0:0]E;
  input [0:0]\mem_ram_reg[2][0] ;
  input [0:0]\mem_ram_reg[1][0] ;
  input [0:0]\mem_ram_reg[0][0] ;
  input x_reg_rep_2;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [0:0]E;
  wire [9:0]Q;
  wire \_inferred__2/i__carry ;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [15:0]flipping_seed_IBUF;
  wire [1:0]\idx_p_reg[1]_0 ;
  wire [1:0]idx_to_write_IBUF;
  wire \index_of_neuron_that_fired_reg_reg[0] ;
  wire \index_of_neuron_that_fired_reg_reg[0]_0 ;
  wire \index_of_neuron_that_fired_reg_reg[0]_1 ;
  wire \index_of_neuron_that_fired_reg_reg[1] ;
  wire [9:9]mem_cmp;
  wire [0:0]\mem_ram_reg[0][0] ;
  wire [0:0]\mem_ram_reg[1][0] ;
  wire [0:0]\mem_ram_reg[2][0] ;
  wire [9:0]membrane_data_in_IBUF;
  wire [1:0]neuron_state;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]selected_idx_offset;
  wire [9:0]selected_membrane;
  wire spike0_carry__0_i_10_n_0;
  wire spike0_carry__0_n_1;
  wire spike0_carry__0_n_2;
  wire spike0_carry__0_n_3;
  wire spike0_carry_i_10_n_0;
  wire spike0_carry_i_11_n_0;
  wire spike0_carry_i_9_n_0;
  wire spike0_carry_n_0;
  wire spike0_carry_n_1;
  wire spike0_carry_n_2;
  wire spike0_carry_n_3;
  wire [1:1]st_p;
  wire [0:0]\st_p_reg[0]_0 ;
  wire [2:0]\state_ram[0][1]_i_2 ;
  wire \state_ram_reg[0][1] ;
  wire \state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[4] ;
  wire storage_CE;
  wire storage_CE_advance;
  wire u_flip_n_1;
  wire u_flip_n_10;
  wire u_flip_n_11;
  wire u_flip_n_12;
  wire u_flip_n_13;
  wire u_flip_n_14;
  wire u_flip_n_15;
  wire u_flip_n_16;
  wire u_flip_n_17;
  wire u_flip_n_2;
  wire u_flip_n_3;
  wire u_flip_n_4;
  wire u_flip_n_5;
  wire u_flip_n_6;
  wire u_flip_n_7;
  wire u_flip_n_8;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire [3:0]NLW_spike0_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike0_carry__0_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[0]),
        .Q(\idx_p_reg[1]_0 [0]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[1]),
        .Q(\idx_p_reg[1]_0 [1]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(Q[0]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(Q[1]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(Q[2]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(Q[3]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(Q[4]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(Q[5]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(Q[6]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(Q[7]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(Q[8]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(Q[9]),
        .R(\state_reg[4] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry
       (.CI(1'b0),
        .CO({spike0_carry_n_0,spike0_carry_n_1,spike0_carry_n_2,spike0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .O(NLW_spike0_carry_O_UNCONNECTED[3:0]),
        .S({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry__0
       (.CI(spike0_carry_n_0),
        .CO({CO,spike0_carry__0_n_1,spike0_carry__0_n_2,spike0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}),
        .O(NLW_spike0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}));
  LUT3 #(
    .INIT(8'hFE)) 
    spike0_carry__0_i_10
       (.I0(Q[6]),
        .I1(spike0_carry_i_9_n_0),
        .I2(Q[7]),
        .O(spike0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    spike0_carry__0_i_9
       (.I0(Q[7]),
        .I1(spike0_carry_i_9_n_0),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(st_p),
        .I5(Q[9]),
        .O(mem_cmp));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike0_carry_i_10
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(spike0_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spike0_carry_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(spike0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    spike0_carry_i_9
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(spike0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    \st_p[1]_i_1 
       (.I0(x_reg_rep),
        .I1(x_reg_rep_1),
        .I2(x_reg_rep_0),
        .O(storage_CE));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[0]),
        .Q(\st_p_reg[0]_0 ),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[1]),
        .Q(st_p),
        .R(\state_reg[4] ));
  flipping_unit_1 u_flip
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(CO),
        .DI({u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}),
        .Q(Q),
        .S({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .mem_cmp(mem_cmp),
        .\mem_p_reg[6] ({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .spike0_carry(st_p),
        .spike0_carry_0(spike0_carry_i_11_n_0),
        .spike0_carry_1(spike0_carry_i_10_n_0),
        .spike0_carry_2(spike0_carry_i_9_n_0),
        .spike0_carry__0(spike0_carry__0_i_10_n_0),
        .stage1_r_reg_0({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .\state_reg[1] (\state_reg[1] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .\x_reg[0]_0 (\x_reg[0]_0 ),
        .x_reg_rep(x_reg_rep),
        .x_reg_rep_0(x_reg_rep_0),
        .x_reg_rep_1(x_reg_rep_1),
        .x_reg_rep_2(x_reg_rep_2));
  neuron_ensemble_storage_2 u_store
       (.E(E),
        .Q(neuron_state),
        .\_inferred__2/i__carry_0 (\_inferred__2/i__carry ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .\index_of_neuron_that_fired_reg_reg[0] (\index_of_neuron_that_fired_reg_reg[0] ),
        .\index_of_neuron_that_fired_reg_reg[0]_0 (\index_of_neuron_that_fired_reg_reg[0]_0 ),
        .\index_of_neuron_that_fired_reg_reg[0]_1 (\index_of_neuron_that_fired_reg_reg[0]_1 ),
        .\index_of_neuron_that_fired_reg_reg[1] (\index_of_neuron_that_fired_reg_reg[1] ),
        .\mem_ram_reg[0][0]_0 (x_reg_rep_1),
        .\mem_ram_reg[0][0]_1 (x_reg_rep_0),
        .\mem_ram_reg[0][0]_2 (x_reg_rep),
        .\mem_ram_reg[0][0]_3 (\mem_ram_reg[0][0] ),
        .\mem_ram_reg[1][0]_0 (\mem_ram_reg[1][0] ),
        .\mem_ram_reg[2][0]_0 (\mem_ram_reg[2][0] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\selected_idx_offset_reg[1]_0 (selected_idx_offset),
        .\selected_membrane_reg[9]_0 (selected_membrane),
        .\state_ram[0][1]_i_2_0 (\state_ram[0][1]_i_2 ),
        .\state_ram_reg[0][1]_0 (\state_ram_reg[0][1] ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module neuron_ensemble__parameterized0
   (flipping_CE,
    CO,
    ADDRBWRADDR,
    \state_reg[2] ,
    Q,
    \flipping_seed[3] ,
    \flipping_seed[12] ,
    \state_reg[1] ,
    \state_reg[0] ,
    \state_reg[2]_0 ,
    \idx_p_reg[1]_0 ,
    \st_p_reg[0]_0 ,
    clk_IBUF_BUFG,
    B,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    incrementing_reg,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    write_neuron_states_IBUF,
    \state_ram[3][1]_i_2__0 ,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    \state_reg[4] ,
    storage_CE_advance,
    \state_ram_reg[2][1] ,
    \state_ram_reg[1][1] ,
    \state_ram_reg[0][1] ,
    \state_ram_reg[3][1] ,
    E,
    \mem_ram_reg[2][0] ,
    \mem_ram_reg[1][0] ,
    \mem_ram_reg[0][0] );
  output flipping_CE;
  output [0:0]CO;
  output [8:0]ADDRBWRADDR;
  output \state_reg[2] ;
  output [9:0]Q;
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output \state_reg[1] ;
  output \state_reg[0] ;
  output \state_reg[2]_0 ;
  output [1:0]\idx_p_reg[1]_0 ;
  output [0:0]\st_p_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input incrementing_reg;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input [0:0]write_neuron_states_IBUF;
  input [2:0]\state_ram[3][1]_i_2__0 ;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input [0:0]\state_reg[4] ;
  input storage_CE_advance;
  input \state_ram_reg[2][1] ;
  input \state_ram_reg[1][1] ;
  input \state_ram_reg[0][1] ;
  input \state_ram_reg[3][1] ;
  input [0:0]E;
  input [0:0]\mem_ram_reg[2][0] ;
  input [0:0]\mem_ram_reg[1][0] ;
  input [0:0]\mem_ram_reg[0][0] ;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire [1:0]\idx_p_reg[1]_0 ;
  wire incrementing_reg;
  wire [0:0]\mem_ram_reg[0][0] ;
  wire [0:0]\mem_ram_reg[1][0] ;
  wire [0:0]\mem_ram_reg[2][0] ;
  wire [9:0]membrane_data_in_IBUF;
  wire [1:0]neuron_state_in_IBUF;
  wire spike0_carry__0_i_10__0_n_0;
  wire spike0_carry__0_i_9__0_n_0;
  wire spike0_carry__0_n_1;
  wire spike0_carry__0_n_2;
  wire spike0_carry__0_n_3;
  wire spike0_carry_i_10__0_n_0;
  wire spike0_carry_i_11__0_n_0;
  wire spike0_carry_i_9__0_n_0;
  wire spike0_carry_n_0;
  wire spike0_carry_n_1;
  wire spike0_carry_n_2;
  wire spike0_carry_n_3;
  wire [0:0]\st_p_reg[0]_0 ;
  wire \st_p_reg_n_0_[1] ;
  wire [2:0]\state_ram[3][1]_i_2__0 ;
  wire \state_ram_reg[0][1] ;
  wire \state_ram_reg[1][1] ;
  wire \state_ram_reg[2][1] ;
  wire \state_ram_reg[3][1] ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [0:0]\state_reg[4] ;
  wire storage_CE;
  wire storage_CE_advance;
  wire u_flip_n_11;
  wire u_flip_n_12;
  wire u_flip_n_13;
  wire u_flip_n_14;
  wire u_flip_n_15;
  wire u_flip_n_16;
  wire u_flip_n_17;
  wire u_flip_n_18;
  wire u_flip_n_22;
  wire u_flip_n_23;
  wire u_flip_n_24;
  wire u_flip_n_25;
  wire u_flip_n_26;
  wire u_flip_n_27;
  wire u_flip_n_28;
  wire u_flip_n_29;
  wire u_store_n_10;
  wire u_store_n_11;
  wire u_store_n_12;
  wire u_store_n_13;
  wire u_store_n_14;
  wire u_store_n_15;
  wire u_store_n_2;
  wire u_store_n_3;
  wire u_store_n_4;
  wire u_store_n_5;
  wire u_store_n_6;
  wire u_store_n_7;
  wire u_store_n_8;
  wire u_store_n_9;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire [3:0]NLW_spike0_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h35)) 
    \idx_p[1]_i_1 
       (.I0(x_reg_rep),
        .I1(x_reg_rep_1),
        .I2(x_reg_rep_0),
        .O(storage_CE));
  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_3),
        .Q(\idx_p_reg[1]_0 [0]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_2),
        .Q(\idx_p_reg[1]_0 [1]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_15),
        .Q(Q[0]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_14),
        .Q(Q[1]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_13),
        .Q(Q[2]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_12),
        .Q(Q[3]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_11),
        .Q(Q[4]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_10),
        .Q(Q[5]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_9),
        .Q(Q[6]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_8),
        .Q(Q[7]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_7),
        .Q(Q[8]),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_6),
        .Q(Q[9]),
        .R(\state_reg[4] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry
       (.CI(1'b0),
        .CO({spike0_carry_n_0,spike0_carry_n_1,spike0_carry_n_2,spike0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_26,u_flip_n_27,u_flip_n_28,u_flip_n_29}),
        .O(NLW_spike0_carry_O_UNCONNECTED[3:0]),
        .S({u_flip_n_22,u_flip_n_23,u_flip_n_24,u_flip_n_25}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry__0
       (.CI(spike0_carry_n_0),
        .CO({CO,spike0_carry__0_n_1,spike0_carry__0_n_2,spike0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_15,u_flip_n_16,u_flip_n_17,u_flip_n_18}),
        .O(NLW_spike0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_flip_n_11,u_flip_n_12,u_flip_n_13,u_flip_n_14}));
  LUT3 #(
    .INIT(8'hFE)) 
    spike0_carry__0_i_10__0
       (.I0(Q[6]),
        .I1(spike0_carry_i_9__0_n_0),
        .I2(Q[7]),
        .O(spike0_carry__0_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    spike0_carry__0_i_9__0
       (.I0(Q[7]),
        .I1(spike0_carry_i_9__0_n_0),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(\st_p_reg_n_0_[1] ),
        .I5(Q[9]),
        .O(spike0_carry__0_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike0_carry_i_10__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(spike0_carry_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spike0_carry_i_11__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(spike0_carry_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    spike0_carry_i_9__0
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(spike0_carry_i_9__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_5),
        .Q(\st_p_reg[0]_0 ),
        .R(\state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(u_store_n_4),
        .Q(\st_p_reg_n_0_[1] ),
        .R(\state_reg[4] ));
  flipping_unit u_flip
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(CO),
        .DI({u_flip_n_15,u_flip_n_16,u_flip_n_17,u_flip_n_18}),
        .Q(Q),
        .S({u_flip_n_11,u_flip_n_12,u_flip_n_13,u_flip_n_14}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_CE(flipping_CE),
        .\flipping_seed[12] (\flipping_seed[12] ),
        .\flipping_seed[3] (\flipping_seed[3] ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\mem_p_reg[6] ({u_flip_n_26,u_flip_n_27,u_flip_n_28,u_flip_n_29}),
        .spike0_carry(\st_p_reg_n_0_[1] ),
        .spike0_carry_0(spike0_carry_i_11__0_n_0),
        .spike0_carry_1(spike0_carry_i_10__0_n_0),
        .spike0_carry_2(spike0_carry_i_9__0_n_0),
        .spike0_carry__0(spike0_carry__0_i_10__0_n_0),
        .spike0_carry__0_0(spike0_carry__0_i_9__0_n_0),
        .stage1_r_reg_0({u_flip_n_22,u_flip_n_23,u_flip_n_24,u_flip_n_25}),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[2] (\state_reg[2] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .\x_reg[0]_0 (\x_reg[0]_0 ),
        .x_reg_rep(x_reg_rep),
        .x_reg_rep_0(x_reg_rep_0),
        .x_reg_rep_1(x_reg_rep_1));
  neuron_ensemble_storage u_store
       (.E(E),
        .Q({u_store_n_2,u_store_n_3}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .incrementing_reg(incrementing_reg),
        .\mem_ram_reg[0][0]_0 (x_reg_rep_1),
        .\mem_ram_reg[0][0]_1 (x_reg_rep_0),
        .\mem_ram_reg[0][0]_2 (x_reg_rep),
        .\mem_ram_reg[0][0]_3 (\mem_ram_reg[0][0] ),
        .\mem_ram_reg[1][0]_0 (\mem_ram_reg[1][0] ),
        .\mem_ram_reg[2][0]_0 (\mem_ram_reg[2][0] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg[1]_0 ({u_store_n_4,u_store_n_5}),
        .\selected_membrane_reg[9]_0 ({u_store_n_6,u_store_n_7,u_store_n_8,u_store_n_9,u_store_n_10,u_store_n_11,u_store_n_12,u_store_n_13,u_store_n_14,u_store_n_15}),
        .\state_ram[3][1]_i_2__0 (\state_ram[3][1]_i_2__0 ),
        .\state_ram_reg[0][1]_0 (\state_ram_reg[0][1] ),
        .\state_ram_reg[1][1]_0 (\state_ram_reg[1][1] ),
        .\state_ram_reg[2][1]_0 (\state_ram_reg[2][1] ),
        .\state_ram_reg[3][1]_0 (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[2] (\state_reg[2]_0 ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
endmodule

module neuron_ensemble_storage
   (\state_reg[0] ,
    \state_reg[2] ,
    Q,
    \neuron_state_reg[1]_0 ,
    \selected_membrane_reg[9]_0 ,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \mem_ram_reg[0][0]_0 ,
    \mem_ram_reg[0][0]_1 ,
    incrementing_reg,
    \mem_ram_reg[0][0]_2 ,
    write_neuron_states_IBUF,
    \state_ram[3][1]_i_2__0 ,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    \state_reg[4] ,
    clk_IBUF_BUFG,
    storage_CE_advance,
    \state_ram_reg[2][1]_0 ,
    \state_ram_reg[1][1]_0 ,
    \state_ram_reg[0][1]_0 ,
    \state_ram_reg[3][1]_0 ,
    E,
    \mem_ram_reg[2][0]_0 ,
    \mem_ram_reg[1][0]_0 ,
    \mem_ram_reg[0][0]_3 );
  output \state_reg[0] ;
  output \state_reg[2] ;
  output [1:0]Q;
  output [1:0]\neuron_state_reg[1]_0 ;
  output [9:0]\selected_membrane_reg[9]_0 ;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input \mem_ram_reg[0][0]_0 ;
  input \mem_ram_reg[0][0]_1 ;
  input incrementing_reg;
  input \mem_ram_reg[0][0]_2 ;
  input [0:0]write_neuron_states_IBUF;
  input [2:0]\state_ram[3][1]_i_2__0 ;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input [0:0]\state_reg[4] ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;
  input \state_ram_reg[2][1]_0 ;
  input \state_ram_reg[1][1]_0 ;
  input \state_ram_reg[0][1]_0 ;
  input \state_ram_reg[3][1]_0 ;
  input [0:0]E;
  input [0:0]\mem_ram_reg[2][0]_0 ;
  input [0:0]\mem_ram_reg[1][0]_0 ;
  input [0:0]\mem_ram_reg[0][0]_3 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__0_n_5 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__1_n_6 ;
  wire \_inferred__0/i__carry__1_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__0_n_4 ;
  wire \_inferred__1/i__carry__0_n_5 ;
  wire \_inferred__1/i__carry__0_n_6 ;
  wire \_inferred__1/i__carry__0_n_7 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__1_n_6 ;
  wire \_inferred__1/i__carry__1_n_7 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__1/i__carry_n_4 ;
  wire \_inferred__1/i__carry_n_5 ;
  wire \_inferred__1/i__carry_n_6 ;
  wire \_inferred__1/i__carry_n_7 ;
  wire \_inferred__2/i__carry__0_n_0 ;
  wire \_inferred__2/i__carry__0_n_1 ;
  wire \_inferred__2/i__carry__0_n_2 ;
  wire \_inferred__2/i__carry__0_n_3 ;
  wire \_inferred__2/i__carry__0_n_4 ;
  wire \_inferred__2/i__carry__0_n_5 ;
  wire \_inferred__2/i__carry__0_n_6 ;
  wire \_inferred__2/i__carry__0_n_7 ;
  wire \_inferred__2/i__carry__1_n_3 ;
  wire \_inferred__2/i__carry__1_n_6 ;
  wire \_inferred__2/i__carry__1_n_7 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__2/i__carry_n_1 ;
  wire \_inferred__2/i__carry_n_2 ;
  wire \_inferred__2/i__carry_n_3 ;
  wire \_inferred__2/i__carry_n_4 ;
  wire \_inferred__2/i__carry_n_5 ;
  wire \_inferred__2/i__carry_n_6 ;
  wire \_inferred__2/i__carry_n_7 ;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry__0_n_1 ;
  wire \_inferred__3/i__carry__0_n_2 ;
  wire \_inferred__3/i__carry__0_n_3 ;
  wire \_inferred__3/i__carry__0_n_4 ;
  wire \_inferred__3/i__carry__0_n_5 ;
  wire \_inferred__3/i__carry__0_n_6 ;
  wire \_inferred__3/i__carry__0_n_7 ;
  wire \_inferred__3/i__carry__1_n_3 ;
  wire \_inferred__3/i__carry__1_n_6 ;
  wire \_inferred__3/i__carry__1_n_7 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire \_inferred__3/i__carry_n_1 ;
  wire \_inferred__3/i__carry_n_2 ;
  wire \_inferred__3/i__carry_n_3 ;
  wire \_inferred__3/i__carry_n_4 ;
  wire \_inferred__3/i__carry_n_5 ;
  wire \_inferred__3/i__carry_n_6 ;
  wire \_inferred__3/i__carry_n_7 ;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_3__6_n_0;
  wire i__carry__0_i_3__7_n_0;
  wire i__carry__0_i_4__4_n_0;
  wire i__carry__0_i_4__5_n_0;
  wire i__carry__0_i_4__6_n_0;
  wire i__carry__0_i_4__7_n_0;
  wire i__carry__1_i_1__4_n_0;
  wire i__carry__1_i_1__5_n_0;
  wire i__carry__1_i_1__6_n_0;
  wire i__carry__1_i_1__7_n_0;
  wire i__carry__1_i_2__4_n_0;
  wire i__carry__1_i_2__5_n_0;
  wire i__carry__1_i_2__6_n_0;
  wire i__carry__1_i_2__7_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire [1:0]idx_r;
  wire incrementing_reg;
  wire \mem_ram[0][0]_i_1__0_n_0 ;
  wire \mem_ram[0][1]_i_1__0_n_0 ;
  wire \mem_ram[0][2]_i_1__0_n_0 ;
  wire \mem_ram[0][3]_i_1__0_n_0 ;
  wire \mem_ram[0][4]_i_1__0_n_0 ;
  wire \mem_ram[0][5]_i_1__0_n_0 ;
  wire \mem_ram[0][6]_i_1__0_n_0 ;
  wire \mem_ram[0][7]_i_1__0_n_0 ;
  wire \mem_ram[0][8]_i_1__0_n_0 ;
  wire \mem_ram[0][9]_i_2__0_n_0 ;
  wire \mem_ram[1][0]_i_1__0_n_0 ;
  wire \mem_ram[1][1]_i_1__0_n_0 ;
  wire \mem_ram[1][2]_i_1__0_n_0 ;
  wire \mem_ram[1][3]_i_1__0_n_0 ;
  wire \mem_ram[1][4]_i_1__0_n_0 ;
  wire \mem_ram[1][5]_i_1__0_n_0 ;
  wire \mem_ram[1][6]_i_1__0_n_0 ;
  wire \mem_ram[1][7]_i_1__0_n_0 ;
  wire \mem_ram[1][8]_i_1__0_n_0 ;
  wire \mem_ram[1][9]_i_2__0_n_0 ;
  wire \mem_ram[2][0]_i_1__0_n_0 ;
  wire \mem_ram[2][1]_i_1__0_n_0 ;
  wire \mem_ram[2][2]_i_1__0_n_0 ;
  wire \mem_ram[2][3]_i_1__0_n_0 ;
  wire \mem_ram[2][4]_i_1__0_n_0 ;
  wire \mem_ram[2][5]_i_1__0_n_0 ;
  wire \mem_ram[2][6]_i_1__0_n_0 ;
  wire \mem_ram[2][7]_i_1__0_n_0 ;
  wire \mem_ram[2][8]_i_1__0_n_0 ;
  wire \mem_ram[2][9]_i_2__0_n_0 ;
  wire \mem_ram[3][0]_i_1__0_n_0 ;
  wire \mem_ram[3][1]_i_1__0_n_0 ;
  wire \mem_ram[3][2]_i_1__0_n_0 ;
  wire \mem_ram[3][3]_i_1__0_n_0 ;
  wire \mem_ram[3][4]_i_1__0_n_0 ;
  wire \mem_ram[3][5]_i_1__0_n_0 ;
  wire \mem_ram[3][6]_i_1__0_n_0 ;
  wire \mem_ram[3][7]_i_1__0_n_0 ;
  wire \mem_ram[3][8]_i_1__0_n_0 ;
  wire \mem_ram[3][9]_i_2__0_n_0 ;
  wire \mem_ram_reg[0][0]_0 ;
  wire \mem_ram_reg[0][0]_1 ;
  wire \mem_ram_reg[0][0]_2 ;
  wire [0:0]\mem_ram_reg[0][0]_3 ;
  wire [0:0]\mem_ram_reg[1][0]_0 ;
  wire [0:0]\mem_ram_reg[2][0]_0 ;
  wire \mem_ram_reg_n_0_[0][0] ;
  wire \mem_ram_reg_n_0_[0][1] ;
  wire \mem_ram_reg_n_0_[0][2] ;
  wire \mem_ram_reg_n_0_[0][3] ;
  wire \mem_ram_reg_n_0_[0][4] ;
  wire \mem_ram_reg_n_0_[0][5] ;
  wire \mem_ram_reg_n_0_[0][6] ;
  wire \mem_ram_reg_n_0_[0][7] ;
  wire \mem_ram_reg_n_0_[0][8] ;
  wire \mem_ram_reg_n_0_[0][9] ;
  wire \mem_ram_reg_n_0_[1][0] ;
  wire \mem_ram_reg_n_0_[1][1] ;
  wire \mem_ram_reg_n_0_[1][2] ;
  wire \mem_ram_reg_n_0_[1][3] ;
  wire \mem_ram_reg_n_0_[1][4] ;
  wire \mem_ram_reg_n_0_[1][5] ;
  wire \mem_ram_reg_n_0_[1][6] ;
  wire \mem_ram_reg_n_0_[1][7] ;
  wire \mem_ram_reg_n_0_[1][8] ;
  wire \mem_ram_reg_n_0_[1][9] ;
  wire \mem_ram_reg_n_0_[2][0] ;
  wire \mem_ram_reg_n_0_[2][1] ;
  wire \mem_ram_reg_n_0_[2][2] ;
  wire \mem_ram_reg_n_0_[2][3] ;
  wire \mem_ram_reg_n_0_[2][4] ;
  wire \mem_ram_reg_n_0_[2][5] ;
  wire \mem_ram_reg_n_0_[2][6] ;
  wire \mem_ram_reg_n_0_[2][7] ;
  wire \mem_ram_reg_n_0_[2][8] ;
  wire \mem_ram_reg_n_0_[2][9] ;
  wire \mem_ram_reg_n_0_[3][0] ;
  wire \mem_ram_reg_n_0_[3][1] ;
  wire \mem_ram_reg_n_0_[3][2] ;
  wire \mem_ram_reg_n_0_[3][3] ;
  wire \mem_ram_reg_n_0_[3][4] ;
  wire \mem_ram_reg_n_0_[3][5] ;
  wire \mem_ram_reg_n_0_[3][6] ;
  wire \mem_ram_reg_n_0_[3][7] ;
  wire \mem_ram_reg_n_0_[3][8] ;
  wire \mem_ram_reg_n_0_[3][9] ;
  wire [9:0]membrane_data_in_IBUF;
  wire \neuron_state[0]_i_1__0_n_0 ;
  wire \neuron_state[1]_i_1__0_n_0 ;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]\neuron_state_reg[1]_0 ;
  wire \selected_membrane[0]_i_1__0_n_0 ;
  wire \selected_membrane[1]_i_1__0_n_0 ;
  wire \selected_membrane[2]_i_1__0_n_0 ;
  wire \selected_membrane[3]_i_1__0_n_0 ;
  wire \selected_membrane[4]_i_1__0_n_0 ;
  wire \selected_membrane[5]_i_1__0_n_0 ;
  wire \selected_membrane[6]_i_1__0_n_0 ;
  wire \selected_membrane[7]_i_1__0_n_0 ;
  wire \selected_membrane[8]_i_1__0_n_0 ;
  wire \selected_membrane[9]_i_1__0_n_0 ;
  wire [9:0]\selected_membrane_reg[9]_0 ;
  wire [1:0]state_ram;
  wire \state_ram[0][0]_i_1_n_0 ;
  wire \state_ram[0][1]_i_1_n_0 ;
  wire \state_ram[1][0]_i_1_n_0 ;
  wire \state_ram[1][1]_i_1_n_0 ;
  wire \state_ram[2][0]_i_1_n_0 ;
  wire \state_ram[2][0]_i_3_n_0 ;
  wire \state_ram[2][1]_i_1_n_0 ;
  wire \state_ram[2][1]_i_4_n_0 ;
  wire \state_ram[3][0]_i_1_n_0 ;
  wire \state_ram[3][1]_i_1_n_0 ;
  wire [2:0]\state_ram[3][1]_i_2__0 ;
  wire \state_ram_reg[0][1]_0 ;
  wire \state_ram_reg[1][1]_0 ;
  wire \state_ram_reg[2][1]_0 ;
  wire \state_ram_reg[3][1]_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire \state_reg[0] ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[4] ;
  wire storage_CE_advance;
  wire u_lfsr_n_0;
  wire u_lfsr_n_1;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [3:1]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__2/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__3/i__carry__1_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__4_n_0,\mem_ram_reg_n_0_[3][2] ,\mem_ram_reg_n_0_[3][1] ,1'b0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_2__7_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0,\mem_ram_reg_n_0_[3][0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram_reg_n_0_[3][6] ,\mem_ram_reg_n_0_[3][5] ,\mem_ram_reg_n_0_[3][4] ,\mem_ram_reg_n_0_[3][3] }),
        .O({\_inferred__0/i__carry__0_n_4 ,\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__4_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__4_n_0,i__carry__0_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg_n_0_[3][7] }),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3:2],\_inferred__0/i__carry__1_n_6 ,\_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__4_n_0,i__carry__1_i_2__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__5_n_0,\mem_ram_reg_n_0_[2][2] ,\mem_ram_reg_n_0_[2][1] ,1'b0}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_2__6_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0,\mem_ram_reg_n_0_[2][0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram_reg_n_0_[2][6] ,\mem_ram_reg_n_0_[2][5] ,\mem_ram_reg_n_0_[2][4] ,\mem_ram_reg_n_0_[2][3] }),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__5_n_0,i__carry__0_i_2__5_n_0,i__carry__0_i_3__5_n_0,i__carry__0_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW__inferred__1/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg_n_0_[2][7] }),
        .O({\NLW__inferred__1/i__carry__1_O_UNCONNECTED [3:2],\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__5_n_0,i__carry__1_i_2__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__6_n_0,\mem_ram_reg_n_0_[1][2] ,\mem_ram_reg_n_0_[1][1] ,1'b0}),
        .O({\_inferred__2/i__carry_n_4 ,\_inferred__2/i__carry_n_5 ,\_inferred__2/i__carry_n_6 ,\_inferred__2/i__carry_n_7 }),
        .S({i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0,\mem_ram_reg_n_0_[1][0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram_reg_n_0_[1][6] ,\mem_ram_reg_n_0_[1][5] ,\mem_ram_reg_n_0_[1][4] ,\mem_ram_reg_n_0_[1][3] }),
        .O({\_inferred__2/i__carry__0_n_4 ,\_inferred__2/i__carry__0_n_5 ,\_inferred__2/i__carry__0_n_6 ,\_inferred__2/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__6_n_0,i__carry__0_i_2__6_n_0,i__carry__0_i_3__6_n_0,i__carry__0_i_4__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO({\NLW__inferred__2/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg_n_0_[1][7] }),
        .O({\NLW__inferred__2/i__carry__1_O_UNCONNECTED [3:2],\_inferred__2/i__carry__1_n_6 ,\_inferred__2/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__6_n_0,i__carry__1_i_2__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,\mem_ram_reg_n_0_[0][2] ,\mem_ram_reg_n_0_[0][1] ,1'b0}),
        .O({\_inferred__3/i__carry_n_4 ,\_inferred__3/i__carry_n_5 ,\_inferred__3/i__carry_n_6 ,\_inferred__3/i__carry_n_7 }),
        .S({i__carry_i_2__4_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0,\mem_ram_reg_n_0_[0][0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram_reg_n_0_[0][6] ,\mem_ram_reg_n_0_[0][5] ,\mem_ram_reg_n_0_[0][4] ,\mem_ram_reg_n_0_[0][3] }),
        .O({\_inferred__3/i__carry__0_n_4 ,\_inferred__3/i__carry__0_n_5 ,\_inferred__3/i__carry__0_n_6 ,\_inferred__3/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__7_n_0,i__carry__0_i_2__7_n_0,i__carry__0_i_3__7_n_0,i__carry__0_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg_n_0_[0][7] }),
        .O({\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3:2],\_inferred__3/i__carry__1_n_6 ,\_inferred__3/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__7_n_0,i__carry__1_i_2__7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__4
       (.I0(\mem_ram_reg_n_0_[3][6] ),
        .I1(\mem_ram_reg_n_0_[3][7] ),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__5
       (.I0(\mem_ram_reg_n_0_[2][6] ),
        .I1(\mem_ram_reg_n_0_[2][7] ),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__6
       (.I0(\mem_ram_reg_n_0_[1][6] ),
        .I1(\mem_ram_reg_n_0_[1][7] ),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__7
       (.I0(\mem_ram_reg_n_0_[0][6] ),
        .I1(\mem_ram_reg_n_0_[0][7] ),
        .O(i__carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__4
       (.I0(\mem_ram_reg_n_0_[3][5] ),
        .I1(\mem_ram_reg_n_0_[3][6] ),
        .O(i__carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__5
       (.I0(\mem_ram_reg_n_0_[2][5] ),
        .I1(\mem_ram_reg_n_0_[2][6] ),
        .O(i__carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__6
       (.I0(\mem_ram_reg_n_0_[1][5] ),
        .I1(\mem_ram_reg_n_0_[1][6] ),
        .O(i__carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__7
       (.I0(\mem_ram_reg_n_0_[0][5] ),
        .I1(\mem_ram_reg_n_0_[0][6] ),
        .O(i__carry__0_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__4
       (.I0(\mem_ram_reg_n_0_[3][4] ),
        .I1(\mem_ram_reg_n_0_[3][5] ),
        .O(i__carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__5
       (.I0(\mem_ram_reg_n_0_[2][4] ),
        .I1(\mem_ram_reg_n_0_[2][5] ),
        .O(i__carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__6
       (.I0(\mem_ram_reg_n_0_[1][4] ),
        .I1(\mem_ram_reg_n_0_[1][5] ),
        .O(i__carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__7
       (.I0(\mem_ram_reg_n_0_[0][4] ),
        .I1(\mem_ram_reg_n_0_[0][5] ),
        .O(i__carry__0_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__4
       (.I0(\mem_ram_reg_n_0_[3][3] ),
        .I1(\mem_ram_reg_n_0_[3][4] ),
        .O(i__carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__5
       (.I0(\mem_ram_reg_n_0_[2][3] ),
        .I1(\mem_ram_reg_n_0_[2][4] ),
        .O(i__carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__6
       (.I0(\mem_ram_reg_n_0_[1][3] ),
        .I1(\mem_ram_reg_n_0_[1][4] ),
        .O(i__carry__0_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__7
       (.I0(\mem_ram_reg_n_0_[0][3] ),
        .I1(\mem_ram_reg_n_0_[0][4] ),
        .O(i__carry__0_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__4
       (.I0(\mem_ram_reg_n_0_[3][8] ),
        .I1(\mem_ram_reg_n_0_[3][9] ),
        .O(i__carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__5
       (.I0(\mem_ram_reg_n_0_[2][8] ),
        .I1(\mem_ram_reg_n_0_[2][9] ),
        .O(i__carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__6
       (.I0(\mem_ram_reg_n_0_[1][8] ),
        .I1(\mem_ram_reg_n_0_[1][9] ),
        .O(i__carry__1_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__7
       (.I0(\mem_ram_reg_n_0_[0][8] ),
        .I1(\mem_ram_reg_n_0_[0][9] ),
        .O(i__carry__1_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__4
       (.I0(\mem_ram_reg_n_0_[3][7] ),
        .I1(\mem_ram_reg_n_0_[3][8] ),
        .O(i__carry__1_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__5
       (.I0(\mem_ram_reg_n_0_[2][7] ),
        .I1(\mem_ram_reg_n_0_[2][8] ),
        .O(i__carry__1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__6
       (.I0(\mem_ram_reg_n_0_[1][7] ),
        .I1(\mem_ram_reg_n_0_[1][8] ),
        .O(i__carry__1_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__7
       (.I0(\mem_ram_reg_n_0_[0][7] ),
        .I1(\mem_ram_reg_n_0_[0][8] ),
        .O(i__carry__1_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__0
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(incrementing_reg),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__4
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(incrementing_reg),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__5
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(incrementing_reg),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__6
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(incrementing_reg),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__4
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(incrementing_reg),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg_n_0_[0][3] ),
        .O(i__carry_i_2__4_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__5
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(incrementing_reg),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg_n_0_[1][3] ),
        .O(i__carry_i_2__5_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__6
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(incrementing_reg),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg_n_0_[2][3] ),
        .O(i__carry_i_2__6_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__7
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(incrementing_reg),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg_n_0_[3][3] ),
        .O(i__carry_i_2__7_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__3
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[3][2] ),
        .O(i__carry_i_3__3_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__4
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[2][2] ),
        .O(i__carry_i_3__4_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__5
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[1][2] ),
        .O(i__carry_i_3__5_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__6
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[0][2] ),
        .O(i__carry_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__3
       (.I0(\mem_ram_reg_n_0_[3][1] ),
        .O(i__carry_i_4__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__4
       (.I0(\mem_ram_reg_n_0_[2][1] ),
        .O(i__carry_i_4__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__5
       (.I0(\mem_ram_reg_n_0_[1][1] ),
        .O(i__carry_i_4__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__6
       (.I0(\mem_ram_reg_n_0_[0][1] ),
        .O(i__carry_i_4__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_lfsr_n_1),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_lfsr_n_0),
        .Q(idx_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][0]_i_1__0 
       (.I0(\_inferred__3/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[0][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][1]_i_1__0 
       (.I0(\_inferred__3/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[0][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][2]_i_1__0 
       (.I0(\_inferred__3/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[0][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][3]_i_1__0 
       (.I0(\_inferred__3/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[0][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][4]_i_1__0 
       (.I0(\_inferred__3/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[0][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][5]_i_1__0 
       (.I0(\_inferred__3/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[0][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][6]_i_1__0 
       (.I0(\_inferred__3/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[0][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][7]_i_1__0 
       (.I0(\_inferred__3/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[0][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][8]_i_1__0 
       (.I0(\_inferred__3/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[0][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][9]_i_2__0 
       (.I0(\_inferred__3/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[0][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][0]_i_1__0 
       (.I0(\_inferred__2/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[1][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][1]_i_1__0 
       (.I0(\_inferred__2/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[1][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][2]_i_1__0 
       (.I0(\_inferred__2/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[1][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][3]_i_1__0 
       (.I0(\_inferred__2/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[1][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][4]_i_1__0 
       (.I0(\_inferred__2/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[1][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][5]_i_1__0 
       (.I0(\_inferred__2/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[1][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][6]_i_1__0 
       (.I0(\_inferred__2/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[1][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][7]_i_1__0 
       (.I0(\_inferred__2/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[1][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][8]_i_1__0 
       (.I0(\_inferred__2/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[1][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][9]_i_2__0 
       (.I0(\_inferred__2/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[1][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][0]_i_1__0 
       (.I0(\_inferred__1/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[2][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][1]_i_1__0 
       (.I0(\_inferred__1/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[2][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][2]_i_1__0 
       (.I0(\_inferred__1/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[2][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][3]_i_1__0 
       (.I0(\_inferred__1/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[2][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][4]_i_1__0 
       (.I0(\_inferred__1/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[2][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][5]_i_1__0 
       (.I0(\_inferred__1/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[2][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][6]_i_1__0 
       (.I0(\_inferred__1/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[2][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][7]_i_1__0 
       (.I0(\_inferred__1/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[2][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][8]_i_1__0 
       (.I0(\_inferred__1/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[2][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][9]_i_2__0 
       (.I0(\_inferred__1/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[2][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][0]_i_1__0 
       (.I0(\_inferred__0/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[3][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][1]_i_1__0 
       (.I0(\_inferred__0/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[3][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][2]_i_1__0 
       (.I0(\_inferred__0/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[3][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][3]_i_1__0 
       (.I0(\_inferred__0/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[3][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][4]_i_1__0 
       (.I0(\_inferred__0/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[3][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][5]_i_1__0 
       (.I0(\_inferred__0/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[3][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][6]_i_1__0 
       (.I0(\_inferred__0/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[3][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][7]_i_1__0 
       (.I0(\_inferred__0/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[3][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][8]_i_1__0 
       (.I0(\_inferred__0/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[3][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][9]_i_2__0 
       (.I0(\_inferred__0/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[3][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_ram[3][9]_i_3__0 
       (.I0(write_neuron_states_IBUF),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\mem_ram_reg[0][0]_1 ),
        .O(\state_reg[2] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][2] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][3] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][4] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][5] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][6] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][7] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][8] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][9] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][2] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][3] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][4] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][5] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][6] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][7] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][8] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][9] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][2] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][3] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][4] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][5] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][6] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][7] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][8] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][9] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][2] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][3] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][4] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][5] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][6] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][7] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][8] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][9] ),
        .R(\state_reg[4] ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \neuron_state[0]_i_1__0 
       (.I0(\state_ram_reg_n_0_[3][0] ),
        .I1(idx_r[0]),
        .I2(idx_r[1]),
        .I3(\state_ram_reg_n_0_[2][0] ),
        .I4(\state_ram_reg_n_0_[1][0] ),
        .I5(\state_ram_reg_n_0_[0][0] ),
        .O(\neuron_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \neuron_state[1]_i_1__0 
       (.I0(\state_ram_reg_n_0_[3][1] ),
        .I1(idx_r[0]),
        .I2(idx_r[1]),
        .I3(\state_ram_reg_n_0_[2][1] ),
        .I4(\state_ram_reg_n_0_[1][1] ),
        .I5(\state_ram_reg_n_0_[0][1] ),
        .O(\neuron_state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1__0_n_0 ),
        .Q(\neuron_state_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1__0_n_0 ),
        .Q(\neuron_state_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(Q[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[0]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][0] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][0] ),
        .I4(\mem_ram_reg_n_0_[2][0] ),
        .I5(\mem_ram_reg_n_0_[3][0] ),
        .O(\selected_membrane[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[1]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][1] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][1] ),
        .I4(\mem_ram_reg_n_0_[2][1] ),
        .I5(\mem_ram_reg_n_0_[3][1] ),
        .O(\selected_membrane[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[2]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][2] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][2] ),
        .I4(\mem_ram_reg_n_0_[2][2] ),
        .I5(\mem_ram_reg_n_0_[3][2] ),
        .O(\selected_membrane[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[3]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][3] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][3] ),
        .I4(\mem_ram_reg_n_0_[2][3] ),
        .I5(\mem_ram_reg_n_0_[3][3] ),
        .O(\selected_membrane[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[4]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][4] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][4] ),
        .I4(\mem_ram_reg_n_0_[2][4] ),
        .I5(\mem_ram_reg_n_0_[3][4] ),
        .O(\selected_membrane[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[5]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][5] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][5] ),
        .I4(\mem_ram_reg_n_0_[2][5] ),
        .I5(\mem_ram_reg_n_0_[3][5] ),
        .O(\selected_membrane[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[6]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][6] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][6] ),
        .I4(\mem_ram_reg_n_0_[2][6] ),
        .I5(\mem_ram_reg_n_0_[3][6] ),
        .O(\selected_membrane[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[7]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][7] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][7] ),
        .I4(\mem_ram_reg_n_0_[2][7] ),
        .I5(\mem_ram_reg_n_0_[3][7] ),
        .O(\selected_membrane[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[8]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][8] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][8] ),
        .I4(\mem_ram_reg_n_0_[2][8] ),
        .I5(\mem_ram_reg_n_0_[3][8] ),
        .O(\selected_membrane[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[9]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][9] ),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg_n_0_[1][9] ),
        .I4(\mem_ram_reg_n_0_[2][9] ),
        .I5(\mem_ram_reg_n_0_[3][9] ),
        .O(\selected_membrane[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram_reg[0][1]_0 ),
        .I2(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram_reg[0][1]_0 ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram_reg[1][1]_0 ),
        .I2(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram_reg[1][1]_0 ),
        .I2(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram_reg[2][1]_0 ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAFBAA)) 
    \state_ram[2][0]_i_2 
       (.I0(\state_ram[2][0]_i_3_n_0 ),
        .I1(\state_ram_reg_n_0_[2][0] ),
        .I2(\state_ram[3][1]_i_2__0 [0]),
        .I3(\state_ram[3][1]_i_2__0 [1]),
        .I4(write_neuron_states_IBUF),
        .I5(\state_ram_reg_n_0_[3][0] ),
        .O(state_ram[0]));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][0]_i_3 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram[3][1]_i_2__0 [1]),
        .I2(\state_ram[3][1]_i_2__0 [0]),
        .I3(\state_ram_reg_n_0_[1][0] ),
        .I4(write_neuron_states_IBUF),
        .I5(neuron_state_in_IBUF[0]),
        .O(\state_ram[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram_reg[2][1]_0 ),
        .I2(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAFBAA)) 
    \state_ram[2][1]_i_2 
       (.I0(\state_ram[2][1]_i_4_n_0 ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(\state_ram[3][1]_i_2__0 [0]),
        .I3(\state_ram[3][1]_i_2__0 [1]),
        .I4(write_neuron_states_IBUF),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(state_ram[1]));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][1]_i_4 
       (.I0(\state_ram_reg_n_0_[0][1] ),
        .I1(\state_ram[3][1]_i_2__0 [1]),
        .I2(\state_ram[3][1]_i_2__0 [0]),
        .I3(\state_ram_reg_n_0_[1][1] ),
        .I4(write_neuron_states_IBUF),
        .I5(neuron_state_in_IBUF[1]),
        .O(\state_ram[2][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \state_ram[2][1]_i_5__0 
       (.I0(\mem_ram_reg[0][0]_1 ),
        .I1(\mem_ram_reg[0][0]_0 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(write_neuron_states_IBUF),
        .I4(\state_ram[3][1]_i_2__0 [2]),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram_reg[3][1]_0 ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram_reg[3][1]_0 ),
        .I2(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[3][1]_i_1_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(\state_reg[4] ));
  LFSR_inout u_lfsr
       (.Q({u_lfsr_n_0,u_lfsr_n_1}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module neuron_ensemble_storage_2
   (\state_reg[2] ,
    \index_of_neuron_that_fired_reg_reg[0] ,
    \index_of_neuron_that_fired_reg_reg[0]_0 ,
    \index_of_neuron_that_fired_reg_reg[1] ,
    \index_of_neuron_that_fired_reg_reg[0]_1 ,
    Q,
    \selected_membrane_reg[9]_0 ,
    \selected_idx_offset_reg[1]_0 ,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    \mem_ram_reg[0][0]_0 ,
    \mem_ram_reg[0][0]_1 ,
    \_inferred__2/i__carry_0 ,
    \mem_ram_reg[0][0]_2 ,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    \state_ram[0][1]_i_2_0 ,
    \state_ram_reg[0][1]_0 ,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    \state_reg[4] ,
    clk_IBUF_BUFG,
    storage_CE_advance,
    E,
    \mem_ram_reg[2][0]_0 ,
    \mem_ram_reg[1][0]_0 ,
    \mem_ram_reg[0][0]_3 );
  output \state_reg[2] ;
  output \index_of_neuron_that_fired_reg_reg[0] ;
  output \index_of_neuron_that_fired_reg_reg[0]_0 ;
  output \index_of_neuron_that_fired_reg_reg[1] ;
  output \index_of_neuron_that_fired_reg_reg[0]_1 ;
  output [1:0]Q;
  output [9:0]\selected_membrane_reg[9]_0 ;
  output [1:0]\selected_idx_offset_reg[1]_0 ;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input \mem_ram_reg[0][0]_0 ;
  input \mem_ram_reg[0][0]_1 ;
  input \_inferred__2/i__carry_0 ;
  input \mem_ram_reg[0][0]_2 ;
  input [1:0]idx_to_write_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [2:0]\state_ram[0][1]_i_2_0 ;
  input \state_ram_reg[0][1]_0 ;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input [0:0]\state_reg[4] ;
  input clk_IBUF_BUFG;
  input storage_CE_advance;
  input [0:0]E;
  input [0:0]\mem_ram_reg[2][0]_0 ;
  input [0:0]\mem_ram_reg[1][0]_0 ;
  input [0:0]\mem_ram_reg[0][0]_3 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__0_n_5 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__1_n_6 ;
  wire \_inferred__0/i__carry__1_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__0_n_4 ;
  wire \_inferred__1/i__carry__0_n_5 ;
  wire \_inferred__1/i__carry__0_n_6 ;
  wire \_inferred__1/i__carry__0_n_7 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__1_n_6 ;
  wire \_inferred__1/i__carry__1_n_7 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__1/i__carry_n_4 ;
  wire \_inferred__1/i__carry_n_5 ;
  wire \_inferred__1/i__carry_n_6 ;
  wire \_inferred__1/i__carry_n_7 ;
  wire \_inferred__2/i__carry_0 ;
  wire \_inferred__2/i__carry__0_n_0 ;
  wire \_inferred__2/i__carry__0_n_1 ;
  wire \_inferred__2/i__carry__0_n_2 ;
  wire \_inferred__2/i__carry__0_n_3 ;
  wire \_inferred__2/i__carry__0_n_4 ;
  wire \_inferred__2/i__carry__0_n_5 ;
  wire \_inferred__2/i__carry__0_n_6 ;
  wire \_inferred__2/i__carry__0_n_7 ;
  wire \_inferred__2/i__carry__1_n_3 ;
  wire \_inferred__2/i__carry__1_n_6 ;
  wire \_inferred__2/i__carry__1_n_7 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__2/i__carry_n_1 ;
  wire \_inferred__2/i__carry_n_2 ;
  wire \_inferred__2/i__carry_n_3 ;
  wire \_inferred__2/i__carry_n_4 ;
  wire \_inferred__2/i__carry_n_5 ;
  wire \_inferred__2/i__carry_n_6 ;
  wire \_inferred__2/i__carry_n_7 ;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry__0_n_1 ;
  wire \_inferred__3/i__carry__0_n_2 ;
  wire \_inferred__3/i__carry__0_n_3 ;
  wire \_inferred__3/i__carry__0_n_4 ;
  wire \_inferred__3/i__carry__0_n_5 ;
  wire \_inferred__3/i__carry__0_n_6 ;
  wire \_inferred__3/i__carry__0_n_7 ;
  wire \_inferred__3/i__carry__1_n_3 ;
  wire \_inferred__3/i__carry__1_n_6 ;
  wire \_inferred__3/i__carry__1_n_7 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire \_inferred__3/i__carry_n_1 ;
  wire \_inferred__3/i__carry_n_2 ;
  wire \_inferred__3/i__carry_n_3 ;
  wire \_inferred__3/i__carry_n_4 ;
  wire \_inferred__3/i__carry_n_5 ;
  wire \_inferred__3/i__carry_n_6 ;
  wire \_inferred__3/i__carry_n_7 ;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1__3_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2__3_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire [1:0]idx_offset;
  wire [1:0]idx_r;
  wire [1:0]idx_to_write_IBUF;
  wire \index_of_neuron_that_fired_reg_reg[0] ;
  wire \index_of_neuron_that_fired_reg_reg[0]_0 ;
  wire \index_of_neuron_that_fired_reg_reg[0]_1 ;
  wire \index_of_neuron_that_fired_reg_reg[1] ;
  wire \mem_ram[0][0]_i_1_n_0 ;
  wire \mem_ram[0][1]_i_1_n_0 ;
  wire \mem_ram[0][2]_i_1_n_0 ;
  wire \mem_ram[0][3]_i_1_n_0 ;
  wire \mem_ram[0][4]_i_1_n_0 ;
  wire \mem_ram[0][5]_i_1_n_0 ;
  wire \mem_ram[0][6]_i_1_n_0 ;
  wire \mem_ram[0][7]_i_1_n_0 ;
  wire \mem_ram[0][8]_i_1_n_0 ;
  wire \mem_ram[0][9]_i_2_n_0 ;
  wire \mem_ram[1][0]_i_1_n_0 ;
  wire \mem_ram[1][1]_i_1_n_0 ;
  wire \mem_ram[1][2]_i_1_n_0 ;
  wire \mem_ram[1][3]_i_1_n_0 ;
  wire \mem_ram[1][4]_i_1_n_0 ;
  wire \mem_ram[1][5]_i_1_n_0 ;
  wire \mem_ram[1][6]_i_1_n_0 ;
  wire \mem_ram[1][7]_i_1_n_0 ;
  wire \mem_ram[1][8]_i_1_n_0 ;
  wire \mem_ram[1][9]_i_2_n_0 ;
  wire \mem_ram[2][0]_i_1_n_0 ;
  wire \mem_ram[2][1]_i_1_n_0 ;
  wire \mem_ram[2][2]_i_1_n_0 ;
  wire \mem_ram[2][3]_i_1_n_0 ;
  wire \mem_ram[2][4]_i_1_n_0 ;
  wire \mem_ram[2][5]_i_1_n_0 ;
  wire \mem_ram[2][6]_i_1_n_0 ;
  wire \mem_ram[2][7]_i_1_n_0 ;
  wire \mem_ram[2][8]_i_1_n_0 ;
  wire \mem_ram[2][9]_i_2_n_0 ;
  wire \mem_ram[3][0]_i_1_n_0 ;
  wire \mem_ram[3][1]_i_1_n_0 ;
  wire \mem_ram[3][2]_i_1_n_0 ;
  wire \mem_ram[3][3]_i_1_n_0 ;
  wire \mem_ram[3][4]_i_1_n_0 ;
  wire \mem_ram[3][5]_i_1_n_0 ;
  wire \mem_ram[3][6]_i_1_n_0 ;
  wire \mem_ram[3][7]_i_1_n_0 ;
  wire \mem_ram[3][8]_i_1_n_0 ;
  wire \mem_ram[3][9]_i_2_n_0 ;
  wire [9:0]\mem_ram_reg[0] ;
  wire \mem_ram_reg[0][0]_0 ;
  wire \mem_ram_reg[0][0]_1 ;
  wire \mem_ram_reg[0][0]_2 ;
  wire [0:0]\mem_ram_reg[0][0]_3 ;
  wire [9:0]\mem_ram_reg[1] ;
  wire [0:0]\mem_ram_reg[1][0]_0 ;
  wire [9:0]\mem_ram_reg[2] ;
  wire [0:0]\mem_ram_reg[2][0]_0 ;
  wire [9:0]\mem_ram_reg[3] ;
  wire [9:0]membrane_data_in_IBUF;
  wire \neuron_state[0]_i_1_n_0 ;
  wire \neuron_state[1]_i_1_n_0 ;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]\selected_idx_offset_reg[1]_0 ;
  wire \selected_membrane[0]_i_1_n_0 ;
  wire \selected_membrane[1]_i_1_n_0 ;
  wire \selected_membrane[2]_i_1_n_0 ;
  wire \selected_membrane[3]_i_1_n_0 ;
  wire \selected_membrane[4]_i_1_n_0 ;
  wire \selected_membrane[5]_i_1_n_0 ;
  wire \selected_membrane[6]_i_1_n_0 ;
  wire \selected_membrane[7]_i_1_n_0 ;
  wire \selected_membrane[8]_i_1_n_0 ;
  wire \selected_membrane[9]_i_1_n_0 ;
  wire [9:0]\selected_membrane_reg[9]_0 ;
  wire [1:0]state_ram;
  wire \state_ram[0][0]_i_1_n_0 ;
  wire \state_ram[0][1]_i_1_n_0 ;
  wire [2:0]\state_ram[0][1]_i_2_0 ;
  wire \state_ram[0][1]_i_2_n_0 ;
  wire \state_ram[1][0]_i_1_n_0 ;
  wire \state_ram[1][1]_i_1_n_0 ;
  wire \state_ram[1][1]_i_2_n_0 ;
  wire \state_ram[2][0]_i_1_n_0 ;
  wire \state_ram[2][0]_i_3__0_n_0 ;
  wire \state_ram[2][1]_i_1_n_0 ;
  wire \state_ram[2][1]_i_3_n_0 ;
  wire \state_ram[2][1]_i_4__0_n_0 ;
  wire \state_ram[2][1]_i_5_n_0 ;
  wire \state_ram[3][0]_i_1_n_0 ;
  wire \state_ram[3][1]_i_1_n_0 ;
  wire \state_ram[3][1]_i_2_n_0 ;
  wire \state_ram_reg[0][1]_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[4] ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire [3:1]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__2/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__3/i__carry__1_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,\mem_ram_reg[3] [2:1],1'b0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_2__3_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,\mem_ram_reg[3] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[3] [6:3]),
        .O({\_inferred__0/i__carry__0_n_4 ,\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[3] [7]}),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3:2],\_inferred__0/i__carry__1_n_6 ,\_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,\mem_ram_reg[2] [2:1],1'b0}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_2__2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,\mem_ram_reg[2] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[2] [6:3]),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW__inferred__1/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[2] [7]}),
        .O({\NLW__inferred__1/i__carry__1_O_UNCONNECTED [3:2],\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,\mem_ram_reg[1] [2:1],1'b0}),
        .O({\_inferred__2/i__carry_n_4 ,\_inferred__2/i__carry_n_5 ,\_inferred__2/i__carry_n_6 ,\_inferred__2/i__carry_n_7 }),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,\mem_ram_reg[1] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[1] [6:3]),
        .O({\_inferred__2/i__carry__0_n_4 ,\_inferred__2/i__carry__0_n_5 ,\_inferred__2/i__carry__0_n_6 ,\_inferred__2/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO({\NLW__inferred__2/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[1] [7]}),
        .O({\NLW__inferred__2/i__carry__1_O_UNCONNECTED [3:2],\_inferred__2/i__carry__1_n_6 ,\_inferred__2/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,\mem_ram_reg[0] [2:1],1'b0}),
        .O({\_inferred__3/i__carry_n_4 ,\_inferred__3/i__carry_n_5 ,\_inferred__3/i__carry_n_6 ,\_inferred__3/i__carry_n_7 }),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0,\mem_ram_reg[0] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[0] [6:3]),
        .O({\_inferred__3/i__carry__0_n_4 ,\_inferred__3/i__carry__0_n_5 ,\_inferred__3/i__carry__0_n_6 ,\_inferred__3/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[0] [7]}),
        .O({\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3:2],\_inferred__3/i__carry__1_n_6 ,\_inferred__3/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__3_n_0,i__carry__1_i_2__3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(\mem_ram_reg[3] [6]),
        .I1(\mem_ram_reg[3] [7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(\mem_ram_reg[2] [6]),
        .I1(\mem_ram_reg[2] [7]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(\mem_ram_reg[1] [6]),
        .I1(\mem_ram_reg[1] [7]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(\mem_ram_reg[0] [6]),
        .I1(\mem_ram_reg[0] [7]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(\mem_ram_reg[3] [5]),
        .I1(\mem_ram_reg[3] [6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(\mem_ram_reg[2] [5]),
        .I1(\mem_ram_reg[2] [6]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(\mem_ram_reg[1] [5]),
        .I1(\mem_ram_reg[1] [6]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(\mem_ram_reg[0] [5]),
        .I1(\mem_ram_reg[0] [6]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(\mem_ram_reg[3] [4]),
        .I1(\mem_ram_reg[3] [5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(\mem_ram_reg[2] [4]),
        .I1(\mem_ram_reg[2] [5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__2
       (.I0(\mem_ram_reg[1] [4]),
        .I1(\mem_ram_reg[1] [5]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__3
       (.I0(\mem_ram_reg[0] [4]),
        .I1(\mem_ram_reg[0] [5]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(\mem_ram_reg[3] [3]),
        .I1(\mem_ram_reg[3] [4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(\mem_ram_reg[2] [3]),
        .I1(\mem_ram_reg[2] [4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__2
       (.I0(\mem_ram_reg[1] [3]),
        .I1(\mem_ram_reg[1] [4]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__3
       (.I0(\mem_ram_reg[0] [3]),
        .I1(\mem_ram_reg[0] [4]),
        .O(i__carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(\mem_ram_reg[3] [8]),
        .I1(\mem_ram_reg[3] [9]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__1
       (.I0(\mem_ram_reg[2] [8]),
        .I1(\mem_ram_reg[2] [9]),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__2
       (.I0(\mem_ram_reg[1] [8]),
        .I1(\mem_ram_reg[1] [9]),
        .O(i__carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__3
       (.I0(\mem_ram_reg[0] [8]),
        .I1(\mem_ram_reg[0] [9]),
        .O(i__carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(\mem_ram_reg[3] [7]),
        .I1(\mem_ram_reg[3] [8]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__1
       (.I0(\mem_ram_reg[2] [7]),
        .I1(\mem_ram_reg[2] [8]),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__2
       (.I0(\mem_ram_reg[1] [7]),
        .I1(\mem_ram_reg[1] [8]),
        .O(i__carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__3
       (.I0(\mem_ram_reg[0] [7]),
        .I1(\mem_ram_reg[0] [8]),
        .O(i__carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\_inferred__2/i__carry_0 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__1
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\_inferred__2/i__carry_0 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__2
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\_inferred__2/i__carry_0 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h55DA)) 
    i__carry_i_1__3
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\_inferred__2/i__carry_0 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__0
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\_inferred__2/i__carry_0 ),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg[0] [3]),
        .O(i__carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__1
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\_inferred__2/i__carry_0 ),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg[1] [3]),
        .O(i__carry_i_2__1_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__2
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\_inferred__2/i__carry_0 ),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg[2] [3]),
        .O(i__carry_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h51EEAE11)) 
    i__carry_i_2__3
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\_inferred__2/i__carry_0 ),
        .I3(\mem_ram_reg[0][0]_2 ),
        .I4(\mem_ram_reg[3] [3]),
        .O(i__carry_i_2__3_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[3] [2]),
        .O(i__carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__0
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[2] [2]),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__1
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[1] [2]),
        .O(i__carry_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h5E56A1A9)) 
    i__carry_i_3__2
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[0] [2]),
        .O(i__carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\mem_ram_reg[3] [1]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(\mem_ram_reg[2] [1]),
        .O(i__carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__1
       (.I0(\mem_ram_reg[1] [1]),
        .O(i__carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__2
       (.I0(\mem_ram_reg[0] [1]),
        .O(i__carry_i_4__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_offset[0]),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_offset[1]),
        .Q(idx_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][0]_i_1 
       (.I0(\_inferred__3/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][1]_i_1 
       (.I0(\_inferred__3/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][2]_i_1 
       (.I0(\_inferred__3/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][3]_i_1 
       (.I0(\_inferred__3/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][4]_i_1 
       (.I0(\_inferred__3/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][5]_i_1 
       (.I0(\_inferred__3/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][6]_i_1 
       (.I0(\_inferred__3/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][7]_i_1 
       (.I0(\_inferred__3/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][8]_i_1 
       (.I0(\_inferred__3/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][9]_i_2 
       (.I0(\_inferred__3/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[0][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][0]_i_1 
       (.I0(\_inferred__2/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][1]_i_1 
       (.I0(\_inferred__2/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][2]_i_1 
       (.I0(\_inferred__2/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][3]_i_1 
       (.I0(\_inferred__2/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][4]_i_1 
       (.I0(\_inferred__2/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][5]_i_1 
       (.I0(\_inferred__2/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][6]_i_1 
       (.I0(\_inferred__2/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][7]_i_1 
       (.I0(\_inferred__2/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][8]_i_1 
       (.I0(\_inferred__2/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][9]_i_2 
       (.I0(\_inferred__2/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[1][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][0]_i_1 
       (.I0(\_inferred__1/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][1]_i_1 
       (.I0(\_inferred__1/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][2]_i_1 
       (.I0(\_inferred__1/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][3]_i_1 
       (.I0(\_inferred__1/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][4]_i_1 
       (.I0(\_inferred__1/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][5]_i_1 
       (.I0(\_inferred__1/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][6]_i_1 
       (.I0(\_inferred__1/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][7]_i_1 
       (.I0(\_inferred__1/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][8]_i_1 
       (.I0(\_inferred__1/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[2][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][9]_i_2 
       (.I0(\_inferred__1/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[2][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][0]_i_1 
       (.I0(\_inferred__0/i__carry_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][1]_i_1 
       (.I0(\_inferred__0/i__carry_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][2]_i_1 
       (.I0(\_inferred__0/i__carry_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[2]),
        .O(\mem_ram[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][3]_i_1 
       (.I0(\_inferred__0/i__carry_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[3]),
        .O(\mem_ram[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][4]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[4]),
        .O(\mem_ram[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][5]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[5]),
        .O(\mem_ram[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][6]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_5 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[6]),
        .O(\mem_ram[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][7]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_4 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[7]),
        .O(\mem_ram[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][8]_i_1 
       (.I0(\_inferred__0/i__carry__1_n_7 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[8]),
        .O(\mem_ram[3][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][9]_i_2 
       (.I0(\_inferred__0/i__carry__1_n_6 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[9]),
        .O(\mem_ram[3][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_ram[3][9]_i_3 
       (.I0(write_neuron_states_IBUF[0]),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .I3(\mem_ram_reg[0][0]_1 ),
        .O(\state_reg[2] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [0]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [1]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [2]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [3]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [4]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [5]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [6]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [7]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[0] [8]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[0] [9]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [0]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [1]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [2]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [3]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [4]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [5]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [6]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [7]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[1] [8]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[1] [9]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [0]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [1]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [2]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [3]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [4]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [5]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [6]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [7]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[2] [8]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[2] [9]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [0]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [1]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [2]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [3]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [4]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [5]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [6]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [7]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[3] [8]),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_ram[3][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[3] [9]),
        .R(\state_reg[4] ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \neuron_state[0]_i_1 
       (.I0(\state_ram_reg_n_0_[3][0] ),
        .I1(idx_r[0]),
        .I2(idx_r[1]),
        .I3(\state_ram_reg_n_0_[2][0] ),
        .I4(\state_ram_reg_n_0_[1][0] ),
        .I5(\state_ram_reg_n_0_[0][0] ),
        .O(\neuron_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \neuron_state[1]_i_1 
       (.I0(\state_ram_reg_n_0_[3][1] ),
        .I1(idx_r[0]),
        .I2(idx_r[1]),
        .I3(\state_ram_reg_n_0_[2][1] ),
        .I4(\state_ram_reg_n_0_[1][1] ),
        .I5(\state_ram_reg_n_0_[0][1] ),
        .O(\neuron_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(\selected_idx_offset_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(\selected_idx_offset_reg[1]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[0]_i_1 
       (.I0(\mem_ram_reg[0] [0]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [0]),
        .I4(\mem_ram_reg[2] [0]),
        .I5(\mem_ram_reg[3] [0]),
        .O(\selected_membrane[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[1]_i_1 
       (.I0(\mem_ram_reg[0] [1]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [1]),
        .I4(\mem_ram_reg[2] [1]),
        .I5(\mem_ram_reg[3] [1]),
        .O(\selected_membrane[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[2]_i_1 
       (.I0(\mem_ram_reg[0] [2]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [2]),
        .I4(\mem_ram_reg[2] [2]),
        .I5(\mem_ram_reg[3] [2]),
        .O(\selected_membrane[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[3]_i_1 
       (.I0(\mem_ram_reg[0] [3]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [3]),
        .I4(\mem_ram_reg[2] [3]),
        .I5(\mem_ram_reg[3] [3]),
        .O(\selected_membrane[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[4]_i_1 
       (.I0(\mem_ram_reg[0] [4]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [4]),
        .I4(\mem_ram_reg[2] [4]),
        .I5(\mem_ram_reg[3] [4]),
        .O(\selected_membrane[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[5]_i_1 
       (.I0(\mem_ram_reg[0] [5]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [5]),
        .I4(\mem_ram_reg[2] [5]),
        .I5(\mem_ram_reg[3] [5]),
        .O(\selected_membrane[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[6]_i_1 
       (.I0(\mem_ram_reg[0] [6]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [6]),
        .I4(\mem_ram_reg[2] [6]),
        .I5(\mem_ram_reg[3] [6]),
        .O(\selected_membrane[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[7]_i_1 
       (.I0(\mem_ram_reg[0] [7]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [7]),
        .I4(\mem_ram_reg[2] [7]),
        .I5(\mem_ram_reg[3] [7]),
        .O(\selected_membrane[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[8]_i_1 
       (.I0(\mem_ram_reg[0] [8]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [8]),
        .I4(\mem_ram_reg[2] [8]),
        .I5(\mem_ram_reg[3] [8]),
        .O(\selected_membrane[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[9]_i_1 
       (.I0(\mem_ram_reg[0] [9]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1] [9]),
        .I4(\mem_ram_reg[2] [9]),
        .I5(\mem_ram_reg[3] [9]),
        .O(\selected_membrane[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \state_ram[0][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_5_n_0 ),
        .O(\state_ram[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \state_ram[0][1]_i_2__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][1]_0 ),
        .O(\index_of_neuron_that_fired_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040FF4040404040)) 
    \state_ram[1][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_5_n_0 ),
        .O(\state_ram[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040FF4040404040)) 
    \state_ram[1][1]_i_2__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][1]_0 ),
        .O(\index_of_neuron_that_fired_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAFBAA)) 
    \state_ram[2][0]_i_2__0 
       (.I0(\state_ram[2][0]_i_3__0_n_0 ),
        .I1(\state_ram_reg_n_0_[2][0] ),
        .I2(\state_ram[0][1]_i_2_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(write_neuron_states_IBUF[0]),
        .I5(\state_ram_reg_n_0_[3][0] ),
        .O(state_ram[0]));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][0]_i_3__0 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram[0][1]_i_2_0 [1]),
        .I2(\state_ram[0][1]_i_2_0 [0]),
        .I3(\state_ram_reg_n_0_[1][0] ),
        .I4(write_neuron_states_IBUF[0]),
        .I5(neuron_state_in_IBUF[0]),
        .O(\state_ram[2][0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAFBAA)) 
    \state_ram[2][1]_i_2__0 
       (.I0(\state_ram[2][1]_i_4__0_n_0 ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(\state_ram[0][1]_i_2_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(write_neuron_states_IBUF[0]),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(state_ram[1]));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \state_ram[2][1]_i_3 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(\state_ram[0][1]_i_2_0 [0]),
        .I5(\state_ram[2][1]_i_5_n_0 ),
        .O(\state_ram[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \state_ram[2][1]_i_3__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(\state_ram[0][1]_i_2_0 [0]),
        .I5(\state_ram_reg[0][1]_0 ),
        .O(\index_of_neuron_that_fired_reg_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][1]_i_4__0 
       (.I0(\state_ram_reg_n_0_[0][1] ),
        .I1(\state_ram[0][1]_i_2_0 [1]),
        .I2(\state_ram[0][1]_i_2_0 [0]),
        .I3(\state_ram_reg_n_0_[1][1] ),
        .I4(write_neuron_states_IBUF[0]),
        .I5(neuron_state_in_IBUF[1]),
        .O(\state_ram[2][1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \state_ram[2][1]_i_5 
       (.I0(\mem_ram_reg[0][0]_1 ),
        .I1(\mem_ram_reg[0][0]_0 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(write_neuron_states_IBUF[0]),
        .I4(\state_ram[0][1]_i_2_0 [2]),
        .O(\state_ram[2][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[3][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[3][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \state_ram[3][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_5_n_0 ),
        .O(\state_ram[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \state_ram[3][1]_i_2__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][1]_0 ),
        .O(\index_of_neuron_that_fired_reg_reg[0]_1 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(\state_reg[4] ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(\state_reg[4] ));
  LFSR_inout_3 u_lfsr
       (.Q(idx_offset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

module neuron_ensemble_with_memory_with_buff
   (incrementing_reg,
    storage_CE_advance,
    spikes,
    add_mem,
    \offset_reg_reg[1] ,
    \membrane_reg_reg[9] ,
    \index_of_neuron_that_fired_reg_reg[2]_0 ,
    \index_of_neuron_that_fired_reg_reg[0]_0 ,
    \index_of_neuron_that_fired_reg_reg[0]_1 ,
    \index_of_neuron_that_fired_reg_reg[1]_0 ,
    \index_of_neuron_that_fired_reg_reg[0]_2 ,
    B,
    clk_IBUF_BUFG,
    add_r_reg,
    SR,
    Q,
    add_r,
    new_sample_reg,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    spike_reg,
    \off_r_reg[1] ,
    \mem_r_reg[9] ,
    idx_to_write_IBUF,
    write_neuron_states_IBUF,
    \state_ram_reg[0][1] ,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    x_reg_rep,
    ADDRBWRADDR,
    D,
    halt_IBUF);
  output incrementing_reg;
  output storage_CE_advance;
  output [0:0]spikes;
  output add_mem;
  output [1:0]\offset_reg_reg[1] ;
  output [9:0]\membrane_reg_reg[9] ;
  output [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  output \index_of_neuron_that_fired_reg_reg[0]_0 ;
  output \index_of_neuron_that_fired_reg_reg[0]_1 ;
  output \index_of_neuron_that_fired_reg_reg[1]_0 ;
  output \index_of_neuron_that_fired_reg_reg[0]_2 ;
  output [17:0]B;
  input clk_IBUF_BUFG;
  input [0:0]add_r_reg;
  input [0:0]SR;
  input [1:0]Q;
  input add_r;
  input new_sample_reg;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input \state_reg[15] ;
  input \state_reg[15]_0 ;
  input spike_reg;
  input [1:0]\off_r_reg[1] ;
  input [9:0]\mem_r_reg[9] ;
  input [1:0]idx_to_write_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input \state_ram_reg[0][1] ;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input x_reg_rep;
  input [8:0]ADDRBWRADDR;
  input [2:0]D;
  input halt_IBUF;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [2:0]D;
  wire G_memory_n_1;
  wire G_memory_n_2;
  wire G_memory_n_3;
  wire [1:0]Q;
  wire [0:0]SR;
  wire add_mem;
  wire add_r;
  wire [0:0]add_r_reg;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [1:0]idx_p;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire \index_of_neuron_that_fired_reg_reg[0]_0 ;
  wire \index_of_neuron_that_fired_reg_reg[0]_1 ;
  wire \index_of_neuron_that_fired_reg_reg[0]_2 ;
  wire \index_of_neuron_that_fired_reg_reg[1]_0 ;
  wire [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  wire [9:0]mem_p;
  wire [9:0]\mem_r_reg[9] ;
  wire [9:0]membrane_data_in_IBUF;
  wire [9:0]\membrane_reg_reg[9] ;
  wire neuron_ensemble_inst_n_1;
  wire neuron_ensemble_inst_n_13;
  wire neuron_ensemble_inst_n_14;
  wire [1:0]neuron_state_in_IBUF;
  wire new_sample_reg;
  wire [1:0]\off_r_reg[1] ;
  wire [1:0]\offset_reg_reg[1] ;
  wire spike_reg;
  wire [0:0]spikes;
  wire [0:0]st_p;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state_ram_reg[0][1] ;
  wire \state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire \u_store/mem_ram ;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;
  wire x_reg_rep;

  distributed_graph_memory G_memory
       (.E(\u_store/mem_ram ),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 ),
        .\Q_out_reg[0]_0 (\state_reg_n_0_[2] ),
        .\Q_out_reg[0]_1 (\state_reg_n_0_[1] ),
        .\Q_out_reg[0]_2 (Q[0]),
        .\Q_out_reg[1]_0 (G_memory_n_1),
        .\Q_out_reg[2]_0 (G_memory_n_2),
        .\Q_out_reg[3]_0 (G_memory_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .\mem_ram_reg[0][0] (neuron_ensemble_inst_n_14),
        .write_neuron_states_IBUF(write_neuron_states_IBUF[0]));
  transmit_buffer_0 buffer
       (.CO(neuron_ensemble_inst_n_1),
        .Q(st_p),
        .SR(SR),
        .add_mem(add_mem),
        .add_r_reg(add_r_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_CE(flipping_CE),
        .\mem_r_reg[9] (\mem_r_reg[9] ),
        .\membrane_reg_reg[9]_0 (\membrane_reg_reg[9] ),
        .\membrane_reg_reg[9]_1 (mem_p),
        .new_sample_reg_0(new_sample_reg),
        .\off_r_reg[1] (\off_r_reg[1] ),
        .\offset_reg_reg[1]_0 (\offset_reg_reg[1] ),
        .\offset_reg_reg[1]_1 (idx_p),
        .spike_reg(spike_reg),
        .spike_reg_reg_0(spikes),
        .spike_reg_reg_1(Q),
        .\state_reg[0]_0 (neuron_ensemble_inst_n_13),
        .storage_CE_advance(storage_CE_advance));
  FDRE #(
    .INIT(1'b0)) 
    incrementing_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(add_r),
        .Q(incrementing_reg),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(D[0]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [0]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(D[1]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [1]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(D[2]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [2]),
        .R(Q[0]));
  neuron_ensemble neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(neuron_ensemble_inst_n_1),
        .E(G_memory_n_3),
        .Q(mem_p),
        .\_inferred__2/i__carry (incrementing_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\idx_p_reg[1]_0 (idx_p),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .\index_of_neuron_that_fired_reg_reg[0] (\index_of_neuron_that_fired_reg_reg[0]_0 ),
        .\index_of_neuron_that_fired_reg_reg[0]_0 (\index_of_neuron_that_fired_reg_reg[0]_1 ),
        .\index_of_neuron_that_fired_reg_reg[0]_1 (\index_of_neuron_that_fired_reg_reg[0]_2 ),
        .\index_of_neuron_that_fired_reg_reg[1] (\index_of_neuron_that_fired_reg_reg[1]_0 ),
        .\mem_ram_reg[0][0] (\u_store/mem_ram ),
        .\mem_ram_reg[1][0] (G_memory_n_1),
        .\mem_ram_reg[2][0] (G_memory_n_2),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\st_p_reg[0]_0 (st_p),
        .\state_ram[0][1]_i_2 (\index_of_neuron_that_fired_reg_reg[2]_0 ),
        .\state_ram_reg[0][1] (\state_ram_reg[0][1] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .\state_reg[1] (neuron_ensemble_inst_n_13),
        .\state_reg[2] (neuron_ensemble_inst_n_14),
        .\state_reg[4] (Q[0]),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .\x_reg[0]_0 (\x_reg[0]_0 ),
        .x_reg_rep(\state_reg_n_0_[2] ),
        .x_reg_rep_0(\state_reg_n_0_[0] ),
        .x_reg_rep_1(\state_reg_n_0_[1] ),
        .x_reg_rep_2(x_reg_rep));
  LUT6 #(
    .INIT(64'h0000AAAA0000EEFB)) 
    \state[0]_i_1__0 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000FBAE)) 
    \state[1]_i_1__0 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500005010)) 
    \state[2]_i_1__0 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory_with_buff" *) 
module neuron_ensemble_with_memory_with_buff__parameterized0
   (add_mem_reg_reg,
    spike_reg,
    ADDRBWRADDR,
    \state_reg[2]_0 ,
    \flipping_seed[3] ,
    \flipping_seed[12] ,
    spiked1,
    E,
    \state_reg[0]_0 ,
    \offset_reg_reg[1] ,
    \membrane_reg_reg[9] ,
    SR,
    clk_IBUF_BUFG,
    B,
    Q,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    incrementing_reg,
    \x_reg[0] ,
    \x_reg[0]_0 ,
    spikes,
    write_neuron_states_IBUF,
    \Q_out_reg[3] ,
    idx_to_write_IBUF,
    neuron_state_in_IBUF,
    membrane_data_in_IBUF,
    storage_CE_advance,
    \state_ram_reg[2][1] ,
    \state_ram_reg[1][1] ,
    \state_ram_reg[0][1] ,
    \state_ram_reg[3][1] ,
    halt_IBUF);
  output [0:0]add_mem_reg_reg;
  output spike_reg;
  output [8:0]ADDRBWRADDR;
  output \state_reg[2]_0 ;
  output \flipping_seed[3] ;
  output \flipping_seed[12] ;
  output spiked1;
  output [0:0]E;
  output \state_reg[0]_0 ;
  output [1:0]\offset_reg_reg[1] ;
  output [9:0]\membrane_reg_reg[9] ;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [2:0]Q;
  input [0:0]write_ensemble_seed_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input incrementing_reg;
  input \x_reg[0] ;
  input \x_reg[0]_0 ;
  input [0:0]spikes;
  input [0:0]write_neuron_states_IBUF;
  input [2:0]\Q_out_reg[3] ;
  input [1:0]idx_to_write_IBUF;
  input [1:0]neuron_state_in_IBUF;
  input [9:0]membrane_data_in_IBUF;
  input storage_CE_advance;
  input \state_ram_reg[2][1] ;
  input \state_ram_reg[1][1] ;
  input \state_ram_reg[0][1] ;
  input \state_ram_reg[3][1] ;
  input halt_IBUF;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]E;
  wire G_memory_n_1;
  wire G_memory_n_2;
  wire G_memory_n_3;
  wire [2:0]Q;
  wire [2:0]\Q_out_reg[3] ;
  wire [0:0]SR;
  wire [0:0]add_mem_reg_reg;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire \flipping_seed[12] ;
  wire \flipping_seed[3] ;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [9:0]membrane_data_in_IBUF;
  wire [9:0]\membrane_reg_reg[9] ;
  wire neuron_ensemble_inst_n_1;
  wire neuron_ensemble_inst_n_12;
  wire neuron_ensemble_inst_n_13;
  wire neuron_ensemble_inst_n_14;
  wire neuron_ensemble_inst_n_15;
  wire neuron_ensemble_inst_n_16;
  wire neuron_ensemble_inst_n_17;
  wire neuron_ensemble_inst_n_18;
  wire neuron_ensemble_inst_n_19;
  wire neuron_ensemble_inst_n_20;
  wire neuron_ensemble_inst_n_21;
  wire neuron_ensemble_inst_n_24;
  wire neuron_ensemble_inst_n_26;
  wire neuron_ensemble_inst_n_27;
  wire neuron_ensemble_inst_n_28;
  wire neuron_ensemble_inst_n_29;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]\offset_reg_reg[1] ;
  wire spike_reg;
  wire spiked1;
  wire [0:0]spikes;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_ram_reg[0][1] ;
  wire \state_ram_reg[1][1] ;
  wire \state_ram_reg[2][1] ;
  wire \state_ram_reg[3][1] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire \u_store/mem_ram ;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire \x_reg[0]_0 ;

  distributed_graph_memory__parameterized0 G_memory
       (.E(\u_store/mem_ram ),
        .Q(Q[0]),
        .\Q_out_reg[0]_0 (\state_reg_n_0_[2] ),
        .\Q_out_reg[0]_1 (\state_reg_n_0_[1] ),
        .\Q_out_reg[1]_0 (G_memory_n_1),
        .\Q_out_reg[2]_0 (G_memory_n_2),
        .\Q_out_reg[3]_0 (G_memory_n_3),
        .\Q_out_reg[3]_1 (\Q_out_reg[3] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .\mem_ram_reg[0][0] (neuron_ensemble_inst_n_26),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  transmit_buffer buffer
       (.CO(neuron_ensemble_inst_n_1),
        .E(E),
        .Q(neuron_ensemble_inst_n_29),
        .SR(SR),
        .add_mem_reg_reg_0(add_mem_reg_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_CE(flipping_CE),
        .\membrane_reg_reg[9]_0 (\membrane_reg_reg[9] ),
        .\membrane_reg_reg[9]_1 ({neuron_ensemble_inst_n_12,neuron_ensemble_inst_n_13,neuron_ensemble_inst_n_14,neuron_ensemble_inst_n_15,neuron_ensemble_inst_n_16,neuron_ensemble_inst_n_17,neuron_ensemble_inst_n_18,neuron_ensemble_inst_n_19,neuron_ensemble_inst_n_20,neuron_ensemble_inst_n_21}),
        .\offset_reg_reg[1]_0 (\offset_reg_reg[1] ),
        .\offset_reg_reg[1]_1 ({neuron_ensemble_inst_n_27,neuron_ensemble_inst_n_28}),
        .spike_reg_reg_0(spike_reg),
        .spike_reg_reg_1(Q),
        .spiked1(spiked1),
        .spikes(spikes),
        .\state_reg[0]_0 (neuron_ensemble_inst_n_24));
  neuron_ensemble__parameterized0 neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(neuron_ensemble_inst_n_1),
        .E(G_memory_n_3),
        .Q({neuron_ensemble_inst_n_12,neuron_ensemble_inst_n_13,neuron_ensemble_inst_n_14,neuron_ensemble_inst_n_15,neuron_ensemble_inst_n_16,neuron_ensemble_inst_n_17,neuron_ensemble_inst_n_18,neuron_ensemble_inst_n_19,neuron_ensemble_inst_n_20,neuron_ensemble_inst_n_21}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE(flipping_CE),
        .\flipping_seed[12] (\flipping_seed[12] ),
        .\flipping_seed[3] (\flipping_seed[3] ),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\idx_p_reg[1]_0 ({neuron_ensemble_inst_n_27,neuron_ensemble_inst_n_28}),
        .incrementing_reg(incrementing_reg),
        .\mem_ram_reg[0][0] (\u_store/mem_ram ),
        .\mem_ram_reg[1][0] (G_memory_n_1),
        .\mem_ram_reg[2][0] (G_memory_n_2),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\st_p_reg[0]_0 (neuron_ensemble_inst_n_29),
        .\state_ram[3][1]_i_2__0 (\Q_out_reg[3] ),
        .\state_ram_reg[0][1] (\state_ram_reg[0][1] ),
        .\state_ram_reg[1][1] (\state_ram_reg[1][1] ),
        .\state_ram_reg[2][1] (\state_ram_reg[2][1] ),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0]_0 ),
        .\state_reg[1] (neuron_ensemble_inst_n_24),
        .\state_reg[2] (\state_reg[2]_0 ),
        .\state_reg[2]_0 (neuron_ensemble_inst_n_26),
        .\state_reg[4] (Q[0]),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .\x_reg[0]_0 (\x_reg[0]_0 ),
        .x_reg_rep(\state_reg_n_0_[2] ),
        .x_reg_rep_0(\state_reg_n_0_[0] ),
        .x_reg_rep_1(\state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0000AAAA0000EEFB)) 
    \state[0]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000FBAE)) 
    \state[1]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500005010)) 
    \state[2]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module scheduler_2
   (add_r,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    Q,
    \cuts_best_reg[15]_0 ,
    \step_cnt_reg[8]_0 ,
    \step_cnt_reg[2]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    reset,
    E,
    add_mem,
    clk_IBUF_BUFG,
    spiked1,
    \mem_r_reg[9]_0 ,
    \off_r_reg[1]_0 );
  output add_r;
  output [2:0]D;
  output \FSM_onehot_state_reg[0]_0 ;
  output [2:0]Q;
  output [15:0]\cuts_best_reg[15]_0 ;
  output \step_cnt_reg[8]_0 ;
  output \step_cnt_reg[2]_0 ;
  output \FSM_onehot_state_reg[0]_1 ;
  input reset;
  input [0:0]E;
  input add_mem;
  input clk_IBUF_BUFG;
  input spiked1;
  input [9:0]\mem_r_reg[9]_0 ;
  input [1:0]\off_r_reg[1]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [2:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire add_mem;
  wire add_r;
  wire clk_IBUF_BUFG;
  wire cuts_best;
  wire cuts_best0_carry__0_i_1_n_0;
  wire cuts_best0_carry__0_i_2_n_0;
  wire cuts_best0_carry__0_i_3_n_0;
  wire cuts_best0_carry__0_i_4_n_0;
  wire cuts_best0_carry__0_i_5_n_0;
  wire cuts_best0_carry__0_i_6_n_0;
  wire cuts_best0_carry__0_i_7_n_0;
  wire cuts_best0_carry__0_i_8_n_0;
  wire cuts_best0_carry__0_n_0;
  wire cuts_best0_carry__0_n_1;
  wire cuts_best0_carry__0_n_2;
  wire cuts_best0_carry__0_n_3;
  wire cuts_best0_carry_i_1_n_0;
  wire cuts_best0_carry_i_2_n_0;
  wire cuts_best0_carry_i_3_n_0;
  wire cuts_best0_carry_i_4_n_0;
  wire cuts_best0_carry_i_5_n_0;
  wire cuts_best0_carry_i_6_n_0;
  wire cuts_best0_carry_i_7_n_0;
  wire cuts_best0_carry_i_8_n_0;
  wire cuts_best0_carry_n_0;
  wire cuts_best0_carry_n_1;
  wire cuts_best0_carry_n_2;
  wire cuts_best0_carry_n_3;
  wire [15:0]\cuts_best_reg[15]_0 ;
  wire [15:0]cuts_cur;
  wire [15:0]cuts_next;
  wire \halt_cnt[0]_i_1_n_0 ;
  wire \halt_cnt[1]_i_1_n_0 ;
  wire \halt_cnt[2]_i_1_n_0 ;
  wire \halt_cnt_reg_n_0_[0] ;
  wire \halt_cnt_reg_n_0_[1] ;
  wire \halt_cnt_reg_n_0_[2] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_4__7_n_0;
  wire [9:0]mem_r;
  wire [9:0]\mem_r_reg[9]_0 ;
  wire [1:0]\off_r_reg[1]_0 ;
  wire reset;
  wire spiked1;
  wire \step_cnt[0]_i_2_n_0 ;
  wire [11:0]step_cnt_reg;
  wire \step_cnt_reg[0]_i_1_n_0 ;
  wire \step_cnt_reg[0]_i_1_n_1 ;
  wire \step_cnt_reg[0]_i_1_n_2 ;
  wire \step_cnt_reg[0]_i_1_n_3 ;
  wire \step_cnt_reg[0]_i_1_n_4 ;
  wire \step_cnt_reg[0]_i_1_n_5 ;
  wire \step_cnt_reg[0]_i_1_n_6 ;
  wire \step_cnt_reg[0]_i_1_n_7 ;
  wire \step_cnt_reg[2]_0 ;
  wire \step_cnt_reg[4]_i_1_n_0 ;
  wire \step_cnt_reg[4]_i_1_n_1 ;
  wire \step_cnt_reg[4]_i_1_n_2 ;
  wire \step_cnt_reg[4]_i_1_n_3 ;
  wire \step_cnt_reg[4]_i_1_n_4 ;
  wire \step_cnt_reg[4]_i_1_n_5 ;
  wire \step_cnt_reg[4]_i_1_n_6 ;
  wire \step_cnt_reg[4]_i_1_n_7 ;
  wire \step_cnt_reg[8]_0 ;
  wire \step_cnt_reg[8]_i_1_n_1 ;
  wire \step_cnt_reg[8]_i_1_n_2 ;
  wire \step_cnt_reg[8]_i_1_n_3 ;
  wire \step_cnt_reg[8]_i_1_n_4 ;
  wire \step_cnt_reg[8]_i_1_n_5 ;
  wire \step_cnt_reg[8]_i_1_n_6 ;
  wire \step_cnt_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_cuts_best0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cuts_best0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_step_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\halt_cnt_reg_n_0_[1] ),
        .I1(\halt_cnt_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\halt_cnt_reg_n_0_[2] ),
        .I4(E),
        .I5(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(add_r),
        .DI(cuts_cur[3:0]),
        .O(cuts_next[3:0]),
        .S({i__carry_i_1__7_n_0,i__carry_i_2_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur[7:4]),
        .O(cuts_next[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur[11:8]),
        .O(cuts_next[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,cuts_cur[14:12]}),
        .O(cuts_next[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    add_r_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(add_mem),
        .Q(add_r),
        .R(reset));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry
       (.CI(1'b0),
        .CO({cuts_best0_carry_n_0,cuts_best0_carry_n_1,cuts_best0_carry_n_2,cuts_best0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cuts_best0_carry_i_1_n_0,cuts_best0_carry_i_2_n_0,cuts_best0_carry_i_3_n_0,cuts_best0_carry_i_4_n_0}),
        .O(NLW_cuts_best0_carry_O_UNCONNECTED[3:0]),
        .S({cuts_best0_carry_i_5_n_0,cuts_best0_carry_i_6_n_0,cuts_best0_carry_i_7_n_0,cuts_best0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry__0
       (.CI(cuts_best0_carry_n_0),
        .CO({cuts_best0_carry__0_n_0,cuts_best0_carry__0_n_1,cuts_best0_carry__0_n_2,cuts_best0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cuts_best0_carry__0_i_1_n_0,cuts_best0_carry__0_i_2_n_0,cuts_best0_carry__0_i_3_n_0,cuts_best0_carry__0_i_4_n_0}),
        .O(NLW_cuts_best0_carry__0_O_UNCONNECTED[3:0]),
        .S({cuts_best0_carry__0_i_5_n_0,cuts_best0_carry__0_i_6_n_0,cuts_best0_carry__0_i_7_n_0,cuts_best0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_1
       (.I0(\cuts_best_reg[15]_0 [15]),
        .I1(cuts_next[15]),
        .I2(cuts_next[14]),
        .I3(\cuts_best_reg[15]_0 [14]),
        .O(cuts_best0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_2
       (.I0(cuts_next[13]),
        .I1(\cuts_best_reg[15]_0 [13]),
        .I2(cuts_next[12]),
        .I3(\cuts_best_reg[15]_0 [12]),
        .O(cuts_best0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_3
       (.I0(cuts_next[11]),
        .I1(\cuts_best_reg[15]_0 [11]),
        .I2(cuts_next[10]),
        .I3(\cuts_best_reg[15]_0 [10]),
        .O(cuts_best0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_4
       (.I0(cuts_next[9]),
        .I1(\cuts_best_reg[15]_0 [9]),
        .I2(cuts_next[8]),
        .I3(\cuts_best_reg[15]_0 [8]),
        .O(cuts_best0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_5
       (.I0(\cuts_best_reg[15]_0 [15]),
        .I1(cuts_next[15]),
        .I2(\cuts_best_reg[15]_0 [14]),
        .I3(cuts_next[14]),
        .O(cuts_best0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_6
       (.I0(\cuts_best_reg[15]_0 [13]),
        .I1(cuts_next[13]),
        .I2(\cuts_best_reg[15]_0 [12]),
        .I3(cuts_next[12]),
        .O(cuts_best0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_7
       (.I0(\cuts_best_reg[15]_0 [11]),
        .I1(cuts_next[11]),
        .I2(\cuts_best_reg[15]_0 [10]),
        .I3(cuts_next[10]),
        .O(cuts_best0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_8
       (.I0(\cuts_best_reg[15]_0 [9]),
        .I1(cuts_next[9]),
        .I2(\cuts_best_reg[15]_0 [8]),
        .I3(cuts_next[8]),
        .O(cuts_best0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_1
       (.I0(cuts_next[7]),
        .I1(\cuts_best_reg[15]_0 [7]),
        .I2(cuts_next[6]),
        .I3(\cuts_best_reg[15]_0 [6]),
        .O(cuts_best0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_2
       (.I0(cuts_next[5]),
        .I1(\cuts_best_reg[15]_0 [5]),
        .I2(cuts_next[4]),
        .I3(\cuts_best_reg[15]_0 [4]),
        .O(cuts_best0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_3
       (.I0(cuts_next[3]),
        .I1(\cuts_best_reg[15]_0 [3]),
        .I2(cuts_next[2]),
        .I3(\cuts_best_reg[15]_0 [2]),
        .O(cuts_best0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_4
       (.I0(cuts_next[1]),
        .I1(\cuts_best_reg[15]_0 [1]),
        .I2(cuts_next[0]),
        .I3(\cuts_best_reg[15]_0 [0]),
        .O(cuts_best0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_5
       (.I0(\cuts_best_reg[15]_0 [7]),
        .I1(cuts_next[7]),
        .I2(\cuts_best_reg[15]_0 [6]),
        .I3(cuts_next[6]),
        .O(cuts_best0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_6
       (.I0(\cuts_best_reg[15]_0 [5]),
        .I1(cuts_next[5]),
        .I2(\cuts_best_reg[15]_0 [4]),
        .I3(cuts_next[4]),
        .O(cuts_best0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_7
       (.I0(\cuts_best_reg[15]_0 [3]),
        .I1(cuts_next[3]),
        .I2(\cuts_best_reg[15]_0 [2]),
        .I3(cuts_next[2]),
        .O(cuts_best0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_8
       (.I0(\cuts_best_reg[15]_0 [1]),
        .I1(cuts_next[1]),
        .I2(\cuts_best_reg[15]_0 [0]),
        .I3(cuts_next[0]),
        .O(cuts_best0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \cuts_best[15]_i_1 
       (.I0(Q[2]),
        .I1(cuts_best0_carry__0_n_0),
        .O(cuts_best));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[0]),
        .Q(\cuts_best_reg[15]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[10]),
        .Q(\cuts_best_reg[15]_0 [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[11]),
        .Q(\cuts_best_reg[15]_0 [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[12]),
        .Q(\cuts_best_reg[15]_0 [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[13]),
        .Q(\cuts_best_reg[15]_0 [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[14]),
        .Q(\cuts_best_reg[15]_0 [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[15]),
        .Q(\cuts_best_reg[15]_0 [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[1]),
        .Q(\cuts_best_reg[15]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[2]),
        .Q(\cuts_best_reg[15]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[3]),
        .Q(\cuts_best_reg[15]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[4]),
        .Q(\cuts_best_reg[15]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[5]),
        .Q(\cuts_best_reg[15]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[6]),
        .Q(\cuts_best_reg[15]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[7]),
        .Q(\cuts_best_reg[15]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[8]),
        .Q(\cuts_best_reg[15]_0 [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(cuts_next[9]),
        .Q(\cuts_best_reg[15]_0 [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[0]),
        .Q(cuts_cur[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[10]),
        .Q(cuts_cur[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[11]),
        .Q(cuts_cur[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[12]),
        .Q(cuts_cur[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[13]),
        .Q(cuts_cur[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[14]),
        .Q(cuts_cur[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[15]),
        .Q(cuts_cur[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[1]),
        .Q(cuts_cur[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[2]),
        .Q(cuts_cur[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[3]),
        .Q(cuts_cur[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[4]),
        .Q(cuts_cur[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[5]),
        .Q(cuts_cur[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[6]),
        .Q(cuts_cur[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[7]),
        .Q(cuts_cur[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[8]),
        .Q(cuts_cur[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[2]),
        .D(cuts_next[9]),
        .Q(cuts_cur[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \halt_cnt[0]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\halt_cnt_reg_n_0_[0] ),
        .O(\halt_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h53A0)) 
    \halt_cnt[1]_i_1 
       (.I0(\halt_cnt_reg_n_0_[0] ),
        .I1(Q[2]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\halt_cnt_reg_n_0_[1] ),
        .O(\halt_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h770F8800)) 
    \halt_cnt[2]_i_1 
       (.I0(\halt_cnt_reg_n_0_[0] ),
        .I1(\halt_cnt_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\halt_cnt_reg_n_0_[2] ),
        .O(\halt_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \halt_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_cnt[0]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \halt_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_cnt[1]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \halt_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_cnt[2]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[2] ),
        .R(reset));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(cuts_cur[7]),
        .I1(mem_r[7]),
        .I2(add_r),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(cuts_cur[6]),
        .I1(mem_r[6]),
        .I2(add_r),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(cuts_cur[5]),
        .I1(mem_r[5]),
        .I2(add_r),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(cuts_cur[4]),
        .I1(mem_r[4]),
        .I2(add_r),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_1
       (.I0(cuts_cur[11]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_2
       (.I0(cuts_cur[10]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_3
       (.I0(cuts_cur[9]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_4
       (.I0(cuts_cur[8]),
        .I1(mem_r[8]),
        .I2(add_r),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_1
       (.I0(add_r),
        .I1(mem_r[9]),
        .I2(cuts_cur[15]),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_2
       (.I0(cuts_cur[14]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_3
       (.I0(cuts_cur[13]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_4
       (.I0(cuts_cur[12]),
        .I1(add_r),
        .I2(mem_r[9]),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1__7
       (.I0(cuts_cur[3]),
        .I1(mem_r[3]),
        .I2(add_r),
        .O(i__carry_i_1__7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(cuts_cur[2]),
        .I1(mem_r[2]),
        .I2(add_r),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3__7
       (.I0(cuts_cur[1]),
        .I1(mem_r[1]),
        .I2(add_r),
        .O(i__carry_i_3__7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_4__7
       (.I0(cuts_cur[0]),
        .I1(mem_r[0]),
        .I2(add_r),
        .O(i__carry_i_4__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [0]),
        .Q(mem_r[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [1]),
        .Q(mem_r[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [2]),
        .Q(mem_r[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [3]),
        .Q(mem_r[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [4]),
        .Q(mem_r[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [5]),
        .Q(mem_r[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [6]),
        .Q(mem_r[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [7]),
        .Q(mem_r[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [8]),
        .Q(mem_r[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\mem_r_reg[9]_0 [9]),
        .Q(mem_r[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    new_sample_i_1
       (.I0(Q[0]),
        .O(\FSM_onehot_state_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \off_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\off_r_reg[1]_0 [0]),
        .Q(D[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \off_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\off_r_reg[1]_0 [1]),
        .Q(D[1]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \offset_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \step_cnt[0]_i_2 
       (.I0(step_cnt_reg[0]),
        .O(\step_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_7 ),
        .Q(step_cnt_reg[0]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \step_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\step_cnt_reg[0]_i_1_n_0 ,\step_cnt_reg[0]_i_1_n_1 ,\step_cnt_reg[0]_i_1_n_2 ,\step_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step_cnt_reg[0]_i_1_n_4 ,\step_cnt_reg[0]_i_1_n_5 ,\step_cnt_reg[0]_i_1_n_6 ,\step_cnt_reg[0]_i_1_n_7 }),
        .S({step_cnt_reg[3:1],\step_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_5 ),
        .Q(step_cnt_reg[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_4 ),
        .Q(step_cnt_reg[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_6 ),
        .Q(step_cnt_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_5 ),
        .Q(step_cnt_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_4 ),
        .Q(step_cnt_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_7 ),
        .Q(step_cnt_reg[4]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \step_cnt_reg[4]_i_1 
       (.CI(\step_cnt_reg[0]_i_1_n_0 ),
        .CO({\step_cnt_reg[4]_i_1_n_0 ,\step_cnt_reg[4]_i_1_n_1 ,\step_cnt_reg[4]_i_1_n_2 ,\step_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_cnt_reg[4]_i_1_n_4 ,\step_cnt_reg[4]_i_1_n_5 ,\step_cnt_reg[4]_i_1_n_6 ,\step_cnt_reg[4]_i_1_n_7 }),
        .S(step_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_6 ),
        .Q(step_cnt_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_5 ),
        .Q(step_cnt_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_4 ),
        .Q(step_cnt_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_7 ),
        .Q(step_cnt_reg[8]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \step_cnt_reg[8]_i_1 
       (.CI(\step_cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_step_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\step_cnt_reg[8]_i_1_n_1 ,\step_cnt_reg[8]_i_1_n_2 ,\step_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_cnt_reg[8]_i_1_n_4 ,\step_cnt_reg[8]_i_1_n_5 ,\step_cnt_reg[8]_i_1_n_6 ,\step_cnt_reg[8]_i_1_n_7 }),
        .S(step_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_6 ),
        .Q(step_cnt_reg[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \unit_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(spiked1),
        .Q(D[2]),
        .R(reset));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \x[8]_i_3 
       (.I0(step_cnt_reg[2]),
        .I1(step_cnt_reg[3]),
        .I2(step_cnt_reg[0]),
        .I3(step_cnt_reg[1]),
        .I4(step_cnt_reg[5]),
        .I5(step_cnt_reg[4]),
        .O(\step_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \x[8]_i_4 
       (.I0(step_cnt_reg[8]),
        .I1(step_cnt_reg[9]),
        .I2(step_cnt_reg[6]),
        .I3(step_cnt_reg[7]),
        .I4(step_cnt_reg[11]),
        .I5(step_cnt_reg[10]),
        .O(\step_cnt_reg[8]_0 ));
endmodule

module temperature_module
   (ADDRBWRADDR,
    \state_reg[2] ,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    reset_flipping,
    \x_reg[0]_0 ,
    \x_reg[0]_1 ,
    clk_IBUF_BUFG);
  output [8:0]ADDRBWRADDR;
  output \state_reg[2] ;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input reset_flipping;
  input \x_reg[0]_0 ;
  input \x_reg[0]_1 ;
  input clk_IBUF_BUFG;

  wire [8:0]ADDRBWRADDR;
  wire clk_IBUF_BUFG;
  wire reset_flipping;
  wire \state_reg[2] ;
  wire \x[0]_i_1__0_n_0 ;
  wire \x[1]_i_1__0_n_0 ;
  wire \x[2]_i_1__0_n_0 ;
  wire \x[3]_i_1__0_n_0 ;
  wire \x[4]_i_1__0_n_0 ;
  wire \x[5]_i_1__0_n_0 ;
  wire \x[6]_i_1__0_n_0 ;
  wire \x[7]_i_1__0_n_0 ;
  wire \x[8]_i_1_n_0 ;
  wire \x[8]_i_2__0_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_i_22_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__0 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1__0 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1__0 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1__0 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(\x[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_1__0 
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(\x[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x[5]_i_1__0 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[6]_i_1__0 
       (.I0(x_reg_rep_i_22_n_0),
        .I1(x_reg[6]),
        .O(\x[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x[7]_i_1__0 
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[7]),
        .O(\x[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888088888888888)) 
    \x[8]_i_1 
       (.I0(\x_reg[0]_0 ),
        .I1(\x_reg[0]_1 ),
        .I2(x_reg[8]),
        .I3(x_reg[6]),
        .I4(x_reg_rep_i_22_n_0),
        .I5(x_reg[7]),
        .O(\x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x[8]_i_2__0 
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .O(\x[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[0]_i_1__0_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[1]_i_1__0_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[2]_i_1__0_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[3]_i_1__0_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[4]_i_1__0_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[5]_i_1__0_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[6]_i_1__0_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[7]_i_1__0_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[8]_i_2__0_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    x_reg_rep_i_12
       (.I0(x_reg[8]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_22_n_0),
        .I3(x_reg[7]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[8]));
  LUT6 #(
    .INIT(64'h9A9A9A9A9A9A9A00)) 
    x_reg_rep_i_13
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[6]),
        .I3(x_reg_rep),
        .I4(x_reg_rep_0),
        .I5(x_reg_rep_1),
        .O(ADDRBWRADDR[7]));
  LUT5 #(
    .INIT(32'h99999990)) 
    x_reg_rep_i_14
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg_rep),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .O(ADDRBWRADDR[6]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    x_reg_rep_i_15
       (.I0(\x[5]_i_1__0_n_0 ),
        .I1(x_reg_rep),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    x_reg_rep_i_16
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(reset_flipping),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    x_reg_rep_i_17
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'h6A6A6A6A6A6A6A00)) 
    x_reg_rep_i_18
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg_rep),
        .I4(x_reg_rep_0),
        .I5(x_reg_rep_1),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'h66666660)) 
    x_reg_rep_i_19
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg_rep),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'hFF01)) 
    x_reg_rep_i_2
       (.I0(x_reg_rep),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep_1),
        .I3(\x[8]_i_1_n_0 ),
        .O(\state_reg[2] ));
  LUT4 #(
    .INIT(16'h5554)) 
    x_reg_rep_i_20
       (.I0(x_reg[0]),
        .I1(x_reg_rep),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    x_reg_rep_i_22
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(x_reg_rep_i_22_n_0));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module temperature_module_6
   (out,
    B,
    x_reg_rep_0,
    x_reg_rep_1,
    x_reg_rep_2,
    reset_flipping,
    \x_reg[0]_0 ,
    \x_reg[0]_1 ,
    clk_IBUF_BUFG,
    x_reg_rep_3,
    ADDRBWRADDR);
  output [17:0]out;
  output [17:0]B;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input x_reg_rep_2;
  input reset_flipping;
  input \x_reg[0]_0 ;
  input \x_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input x_reg_rep_3;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire clk_IBUF_BUFG;
  wire [17:0]out;
  wire reset_flipping;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[6]_i_1_n_0 ;
  wire \x[7]_i_1_n_0 ;
  wire \x[8]_i_1__0_n_0 ;
  wire \x[8]_i_2_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_3;
  wire x_reg_rep_i_10_n_0;
  wire x_reg_rep_i_11_n_0;
  wire x_reg_rep_i_1_n_0;
  wire x_reg_rep_i_21_n_0;
  wire x_reg_rep_i_3_n_0;
  wire x_reg_rep_i_4_n_0;
  wire x_reg_rep_i_5_n_0;
  wire x_reg_rep_i_6_n_0;
  wire x_reg_rep_i_7_n_0;
  wire x_reg_rep_i_8_n_0;
  wire x_reg_rep_i_9_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_1 
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(\x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x[5]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[6]_i_1 
       (.I0(x_reg_rep_i_21_n_0),
        .I1(x_reg[6]),
        .O(\x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x[7]_i_1 
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[7]),
        .O(\x[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888088888888888)) 
    \x[8]_i_1__0 
       (.I0(\x_reg[0]_0 ),
        .I1(\x_reg[0]_1 ),
        .I2(x_reg[8]),
        .I3(x_reg[6]),
        .I4(x_reg_rep_i_21_n_0),
        .I5(x_reg[7]),
        .O(\x[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x[8]_i_2 
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .O(\x[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[0]_i_1_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[1]_i_1_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[2]_i_1_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[3]_i_1_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[4]_i_1_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[5]_i_1_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[6]_i_1_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[7]_i_1_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\x[8]_i_1__0_n_0 ),
        .D(\x[8]_i_2_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "neuroSA_machine_verilog_wrapper_N8_A2/NEURO_SA/unit_gen[0].unit_inst/neuron_ensemble_inst/u_flip/u_temp/x_reg_rep" *) 
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
    .INIT_08(256'h01E301E601E801EB01EE01F101F401F701FA01FD01FE020202050208020B020F),
    .INIT_09(256'h01BD01C001C201C401C501C801CA01CC01CF01D101D401D601D901DB01DE01E0),
    .INIT_0A(256'h019E019F01A101A301A501A701A901AB01AD01AF01B101B301B501B701B901BB),
    .INIT_0B(256'h0184018501870189018A018C018D018F019101920194019601970199019A019C),
    .INIT_0C(256'h016E016F0171017201730175017601780178017A017B017C017E017F01810182),
    .INIT_0D(256'h015B015C015D015E015F01600162016301640165016601680169016A016B016D),
    .INIT_0E(256'h014A014B014C014D014E014F015001510152015401550156015701580159015A),
    .INIT_0F(256'h013C013D013E013F014001400141014201430144014501450146014701480149),
    .INIT_10(256'h012F0130013101320132013301340134013501360137013801390139013A013B),
    .INIT_11(256'h012301240125012601260127012801280129012A012B012B012C012D012E012E),
    .INIT_12(256'h0119011A011B011B011C011C011D011E011E011F012001200121012201220123),
    .INIT_13(256'h0110011101110112011201130114011401140115011601160117011701180119),
    .INIT_14(256'h0108010801080109010A010A010B010B010C010C010D010D010E010E010F0110),
    .INIT_15(256'h0100010001010101010201020103010301040104010501050106010601070107),
    .INIT_16(256'h00F900F900FA00FA00FA00FB00FB00FC00FC00FD00FD00FE00FE00FE00FF00FF),
    .INIT_17(256'h00F200F300F300F300F400F400F400F500F500F600F600F700F700F700F800F8),
    .INIT_18(256'h00EC00EC00ED00ED00EE00EE00EE00EF00EF00EF00F000F000F100F100F100F2),
    .INIT_19(256'h00E700E700E700E800E800E800E900E900E900EA00EA00EA00EB00EB00EC00EC),
    .INIT_1A(256'h00E100E200E200E200E300E300E300E400E400E400E400E500E500E500E600E6),
    .INIT_1B(256'h00DD00DD00DD00DD00DE00DE00DE00DF00DF00DF00DF00E000E000E000E100E1),
    .INIT_1C(256'h00D800D800D800D900D900D900DA00DA00DA00DA00DB00DB00DB00DC00DC00DC),
    .INIT_1D(256'h00D400D400D400D500D500D500D500D600D600D600D600D700D700D700D700D8),
    .INIT_1E(256'h00D000D000D000D100D100D100D100D100D200D200D200D200D300D300D300D3),
    .INIT_1F(256'h00CC00CC00CC00CD00CD00CD00CD00CE00CE00CE00CE00CF00CF00CF00CF00D0),
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
    .READ_WIDTH_B(18),
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
    x_reg_rep
       (.ADDRARDADDR({1'b0,x_reg_rep_i_3_n_0,x_reg_rep_i_4_n_0,x_reg_rep_i_5_n_0,x_reg_rep_i_6_n_0,x_reg_rep_i_7_n_0,x_reg_rep_i_8_n_0,x_reg_rep_i_9_n_0,x_reg_rep_i_10_n_0,x_reg_rep_i_11_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(out[15:0]),
        .DOBDO(B[15:0]),
        .DOPADOP(out[17:16]),
        .DOPBDOP(B[17:16]),
        .ENARDEN(x_reg_rep_i_1_n_0),
        .ENBWREN(x_reg_rep_3),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hFF01)) 
    x_reg_rep_i_1
       (.I0(x_reg_rep_0),
        .I1(x_reg_rep_1),
        .I2(x_reg_rep_2),
        .I3(\x[8]_i_1__0_n_0 ),
        .O(x_reg_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'h66666660)) 
    x_reg_rep_i_10
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .I4(x_reg_rep_2),
        .O(x_reg_rep_i_10_n_0));
  LUT4 #(
    .INIT(16'h5554)) 
    x_reg_rep_i_11
       (.I0(x_reg[0]),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep_1),
        .I3(x_reg_rep_2),
        .O(x_reg_rep_i_11_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    x_reg_rep_i_21
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(x_reg_rep_i_21_n_0));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    x_reg_rep_i_3
       (.I0(x_reg[8]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_21_n_0),
        .I3(x_reg[7]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_3_n_0));
  LUT6 #(
    .INIT(64'h9A9A9A9A9A9A9A00)) 
    x_reg_rep_i_4
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[6]),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .I5(x_reg_rep_2),
        .O(x_reg_rep_i_4_n_0));
  LUT5 #(
    .INIT(32'h99999990)) 
    x_reg_rep_i_5
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .I4(x_reg_rep_2),
        .O(x_reg_rep_i_5_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    x_reg_rep_i_6
       (.I0(\x[5]_i_1_n_0 ),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep_1),
        .I3(x_reg_rep_2),
        .O(x_reg_rep_i_6_n_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    x_reg_rep_i_7
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_7_n_0));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    x_reg_rep_i_8
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_8_n_0));
  LUT6 #(
    .INIT(64'h6A6A6A6A6A6A6A00)) 
    x_reg_rep_i_9
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .I5(x_reg_rep_2),
        .O(x_reg_rep_i_9_n_0));
endmodule

module transmit_buffer
   (add_mem_reg_reg_0,
    spike_reg_reg_0,
    spiked1,
    E,
    \offset_reg_reg[1]_0 ,
    \membrane_reg_reg[9]_0 ,
    SR,
    Q,
    clk_IBUF_BUFG,
    spike_reg_reg_1,
    spikes,
    flipping_CE,
    CO,
    \state_reg[0]_0 ,
    \offset_reg_reg[1]_1 ,
    \membrane_reg_reg[9]_1 );
  output [0:0]add_mem_reg_reg_0;
  output spike_reg_reg_0;
  output spiked1;
  output [0:0]E;
  output [1:0]\offset_reg_reg[1]_0 ;
  output [9:0]\membrane_reg_reg[9]_0 ;
  input [0:0]SR;
  input [0:0]Q;
  input clk_IBUF_BUFG;
  input [2:0]spike_reg_reg_1;
  input [0:0]spikes;
  input flipping_CE;
  input [0:0]CO;
  input \state_reg[0]_0 ;
  input [1:0]\offset_reg_reg[1]_1 ;
  input [9:0]\membrane_reg_reg[9]_1 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]add_mem_reg_reg_0;
  wire clk_IBUF_BUFG;
  wire \cnt_prop[0]_i_1__0_n_0 ;
  wire \cnt_prop_reg_n_0_[0] ;
  wire \cnt_upd[0]_i_1_n_0 ;
  wire \cnt_upd[1]_i_1_n_0 ;
  wire \cnt_upd_reg_n_0_[0] ;
  wire \cnt_upd_reg_n_0_[1] ;
  wire flipping_CE;
  wire [9:0]\membrane_reg_reg[9]_0 ;
  wire [9:0]\membrane_reg_reg[9]_1 ;
  wire \offset_reg[1]_i_1__0_n_0 ;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire [1:0]\offset_reg_reg[1]_1 ;
  wire spike_reg_i_1__0_n_0;
  wire spike_reg_reg_0;
  wire [2:0]spike_reg_reg_1;
  wire spiked1;
  wire [0:0]spikes;
  wire [2:0]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    add_mem_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(Q),
        .Q(add_mem_reg_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    add_r_i_1
       (.I0(spike_reg_reg_0),
        .I1(spikes),
        .I2(spike_reg_reg_1[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_prop[0]_i_1__0 
       (.I0(state[0]),
        .I1(\cnt_prop_reg_n_0_[0] ),
        .I2(spike_reg_reg_1[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\cnt_prop[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prop_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_prop[0]_i_1__0_n_0 ),
        .Q(\cnt_prop_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \cnt_upd[0]_i_1 
       (.I0(\cnt_upd_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(spike_reg_reg_1[0]),
        .I4(state[2]),
        .O(\cnt_upd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \cnt_upd[1]_i_1 
       (.I0(\cnt_upd_reg_n_0_[1] ),
        .I1(\cnt_upd_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(spike_reg_reg_1[0]),
        .I5(state[2]),
        .O(\cnt_upd[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_upd[0]_i_1_n_0 ),
        .Q(\cnt_upd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_upd[1]_i_1_n_0 ),
        .Q(\cnt_upd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [0]),
        .Q(\membrane_reg_reg[9]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [1]),
        .Q(\membrane_reg_reg[9]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [2]),
        .Q(\membrane_reg_reg[9]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [3]),
        .Q(\membrane_reg_reg[9]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [4]),
        .Q(\membrane_reg_reg[9]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [5]),
        .Q(\membrane_reg_reg[9]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [6]),
        .Q(\membrane_reg_reg[9]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [7]),
        .Q(\membrane_reg_reg[9]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [8]),
        .Q(\membrane_reg_reg[9]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\membrane_reg_reg[9]_1 [9]),
        .Q(\membrane_reg_reg[9]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h10)) 
    \offset_reg[1]_i_1__0 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\offset_reg[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\offset_reg_reg[1]_1 [0]),
        .Q(\offset_reg_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_1__0_n_0 ),
        .D(\offset_reg_reg[1]_1 [1]),
        .Q(\offset_reg_reg[1]_0 [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000A8BA)) 
    spike_reg_i_1__0
       (.I0(spike_reg_reg_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(spike_reg_reg_1[2]),
        .I5(spike_reg_reg_1[0]),
        .O(spike_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_reg_i_1__0_n_0),
        .Q(spike_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF04FFFFFF5500)) 
    \state[0]_i_1__0 
       (.I0(state[1]),
        .I1(\state_reg[0]_0 ),
        .I2(state[2]),
        .I3(\state[2]_i_2__0_n_0 ),
        .I4(spike_reg_reg_1[2]),
        .I5(state[0]),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF8000)) 
    \state[1]_i_1__0 
       (.I0(flipping_CE),
        .I1(CO),
        .I2(\offset_reg[1]_i_1__0_n_0 ),
        .I3(\state[2]_i_2__0_n_0 ),
        .I4(spike_reg_reg_1[2]),
        .I5(state[1]),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006222)) 
    \state[2]_i_1__0 
       (.I0(state[2]),
        .I1(\state[2]_i_2__0_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(spike_reg_reg_1[2]),
        .I5(spike_reg_reg_1[0]),
        .O(\state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEFEEEFEEEFE)) 
    \state[2]_i_2__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\cnt_prop_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(\cnt_upd_reg_n_0_[0] ),
        .I5(\cnt_upd_reg_n_0_[1] ),
        .O(\state[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(spike_reg_reg_1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(spike_reg_reg_1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \unit_r[0]_i_1 
       (.I0(spike_reg_reg_0),
        .I1(spikes),
        .O(spiked1));
endmodule

(* ORIG_REF_NAME = "transmit_buffer" *) 
module transmit_buffer_0
   (storage_CE_advance,
    spike_reg_reg_0,
    add_mem,
    \offset_reg_reg[1]_0 ,
    \membrane_reg_reg[9]_0 ,
    SR,
    Q,
    clk_IBUF_BUFG,
    new_sample_reg_0,
    spike_reg_reg_1,
    add_r_reg,
    spike_reg,
    \off_r_reg[1] ,
    \mem_r_reg[9] ,
    flipping_CE,
    CO,
    \state_reg[0]_0 ,
    \offset_reg_reg[1]_1 ,
    \membrane_reg_reg[9]_1 );
  output storage_CE_advance;
  output spike_reg_reg_0;
  output add_mem;
  output [1:0]\offset_reg_reg[1]_0 ;
  output [9:0]\membrane_reg_reg[9]_0 ;
  input [0:0]SR;
  input [0:0]Q;
  input clk_IBUF_BUFG;
  input new_sample_reg_0;
  input [1:0]spike_reg_reg_1;
  input [0:0]add_r_reg;
  input spike_reg;
  input [1:0]\off_r_reg[1] ;
  input [9:0]\mem_r_reg[9] ;
  input flipping_CE;
  input [0:0]CO;
  input \state_reg[0]_0 ;
  input [1:0]\offset_reg_reg[1]_1 ;
  input [9:0]\membrane_reg_reg[9]_1 ;

  wire [0:0]CO;
  wire [0:0]Q;
  wire [0:0]SR;
  wire add_mem;
  wire [0:0]add_mems;
  wire [0:0]add_r_reg;
  wire clk_IBUF_BUFG;
  wire \cnt_prop[0]_i_1_n_0 ;
  wire \cnt_prop_reg_n_0_[0] ;
  wire [1:0]cnt_upd;
  wire \cnt_upd[0]_i_1_n_0 ;
  wire \cnt_upd[1]_i_1_n_0 ;
  wire flipping_CE;
  wire [9:0]\mem_r_reg[9] ;
  wire [9:0]membrane_reg;
  wire [9:0]\membrane_reg_reg[9]_0 ;
  wire [9:0]\membrane_reg_reg[9]_1 ;
  wire new_sample_reg_0;
  wire [1:0]\off_r_reg[1] ;
  wire \offset_reg[1]_i_2_n_0 ;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire [1:0]\offset_reg_reg[1]_1 ;
  wire [1:0]offsets;
  wire spike_reg;
  wire spike_reg_i_1_n_0;
  wire spike_reg_reg_0;
  wire [1:0]spike_reg_reg_1;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state_reg[0]_0 ;
  wire storage_CE_advance;

  FDRE #(
    .INIT(1'b0)) 
    add_mem_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(Q),
        .Q(add_mems),
        .R(SR));
  LUT4 #(
    .INIT(16'hAAC0)) 
    add_r_i_2
       (.I0(add_mems),
        .I1(add_r_reg),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(add_mem));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_prop[0]_i_1 
       (.I0(state[0]),
        .I1(\cnt_prop_reg_n_0_[0] ),
        .I2(spike_reg_reg_1[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\cnt_prop[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prop_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_prop[0]_i_1_n_0 ),
        .Q(\cnt_prop_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \cnt_upd[0]_i_1 
       (.I0(cnt_upd[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(spike_reg_reg_1[0]),
        .I4(state[2]),
        .O(\cnt_upd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \cnt_upd[1]_i_1 
       (.I0(cnt_upd[1]),
        .I1(cnt_upd[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(spike_reg_reg_1[0]),
        .I5(state[2]),
        .O(\cnt_upd[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_upd[0]_i_1_n_0 ),
        .Q(cnt_upd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_upd[1]_i_1_n_0 ),
        .Q(cnt_upd[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[0]_i_1 
       (.I0(membrane_reg[0]),
        .I1(\mem_r_reg[9] [0]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[1]_i_1 
       (.I0(membrane_reg[1]),
        .I1(\mem_r_reg[9] [1]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[2]_i_1 
       (.I0(membrane_reg[2]),
        .I1(\mem_r_reg[9] [2]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[3]_i_1 
       (.I0(membrane_reg[3]),
        .I1(\mem_r_reg[9] [3]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[4]_i_1 
       (.I0(membrane_reg[4]),
        .I1(\mem_r_reg[9] [4]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[5]_i_1 
       (.I0(membrane_reg[5]),
        .I1(\mem_r_reg[9] [5]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[6]_i_1 
       (.I0(membrane_reg[6]),
        .I1(\mem_r_reg[9] [6]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [6]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[7]_i_1 
       (.I0(membrane_reg[7]),
        .I1(\mem_r_reg[9] [7]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [7]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[8]_i_1 
       (.I0(membrane_reg[8]),
        .I1(\mem_r_reg[9] [8]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [8]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \mem_r[9]_i_1 
       (.I0(membrane_reg[9]),
        .I1(\mem_r_reg[9] [9]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\membrane_reg_reg[9]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [0]),
        .Q(membrane_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [1]),
        .Q(membrane_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [2]),
        .Q(membrane_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [3]),
        .Q(membrane_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [4]),
        .Q(membrane_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [5]),
        .Q(membrane_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [6]),
        .Q(membrane_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [7]),
        .Q(membrane_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [8]),
        .Q(membrane_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\membrane_reg_reg[9]_1 [9]),
        .Q(membrane_reg[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    new_sample_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(new_sample_reg_0),
        .Q(storage_CE_advance),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \off_r[0]_i_1 
       (.I0(offsets[0]),
        .I1(\off_r_reg[1] [0]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\offset_reg_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \off_r[1]_i_1 
       (.I0(offsets[1]),
        .I1(\off_r_reg[1] [1]),
        .I2(spike_reg),
        .I3(spike_reg_reg_0),
        .O(\offset_reg_reg[1]_0 [1]));
  LUT3 #(
    .INIT(8'h10)) 
    \offset_reg[1]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\offset_reg[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\offset_reg_reg[1]_1 [0]),
        .Q(offsets[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[1]_i_2_n_0 ),
        .D(\offset_reg_reg[1]_1 [1]),
        .Q(offsets[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000A8BA)) 
    spike_reg_i_1
       (.I0(spike_reg_reg_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(spike_reg_reg_1[1]),
        .I5(spike_reg_reg_1[0]),
        .O(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_reg_i_1_n_0),
        .Q(spike_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF04FFFFFF5500)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(\state_reg[0]_0 ),
        .I2(state[2]),
        .I3(\state[2]_i_2_n_0 ),
        .I4(spike_reg_reg_1[1]),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF8000)) 
    \state[1]_i_1 
       (.I0(flipping_CE),
        .I1(CO),
        .I2(\offset_reg[1]_i_2_n_0 ),
        .I3(\state[2]_i_2_n_0 ),
        .I4(spike_reg_reg_1[1]),
        .I5(state[1]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006222)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(spike_reg_reg_1[1]),
        .I5(spike_reg_reg_1[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEFEEEFEEEFE)) 
    \state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\cnt_prop_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(cnt_upd[0]),
        .I5(cnt_upd[1]),
        .O(\state[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(spike_reg_reg_1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(spike_reg_reg_1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
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
