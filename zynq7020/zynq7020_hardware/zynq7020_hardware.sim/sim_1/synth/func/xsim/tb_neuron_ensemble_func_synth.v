// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  5 22:43:54 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_neuron_ensemble_func_synth.v
// Design      : neuron_ensemble
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (D,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    advance_index_IBUF,
    reset_IBUF,
    CLK);
  output [1:0]D;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input advance_index_IBUF;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire advance_index_IBUF;
  wire [2:0]ensemble_seed_IBUF;
  wire reset_IBUF;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire write_ensemble_seed_IBUF;

  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2__0_n_0 ),
        .I1(advance_index_IBUF),
        .I2(write_ensemble_seed_IBUF),
        .I3(state),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FF0099999999)) 
    \state[0]_i_2__0 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(ensemble_seed_IBUF[1]),
        .I3(ensemble_seed_IBUF[0]),
        .I4(ensemble_seed_IBUF[2]),
        .I5(write_ensemble_seed_IBUF),
        .O(\state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAF0000CCA0)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(ensemble_seed_IBUF[1]),
        .I2(advance_index_IBUF),
        .I3(write_ensemble_seed_IBUF),
        .I4(state),
        .I5(D[0]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAF0000CCA0)) 
    \state[2]_i_1 
       (.I0(D[0]),
        .I1(ensemble_seed_IBUF[2]),
        .I2(advance_index_IBUF),
        .I3(write_ensemble_seed_IBUF),
        .I4(state),
        .I5(D[1]),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[2]_i_2 
       (.I0(write_ensemble_seed_IBUF),
        .I1(ensemble_seed_IBUF[2]),
        .I2(ensemble_seed_IBUF[0]),
        .I3(ensemble_seed_IBUF[1]),
        .O(state));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(D[1]),
        .S(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    SS,
    CLK,
    flipping_CE_IBUF);
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input [0:0]SS;
  input CLK;
  input flipping_CE_IBUF;

  wire [11:0]A;
  wire CLK;
  wire [0:0]SS;
  wire flipping_CE_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]p_1_in;
  wire [7:0]sel;
  wire stage1_r_reg_i_13_n_0;
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
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[10]_i_1_n_0 ;
  wire \state[11]_i_1_n_0 ;
  wire \state[12]_i_1_n_0 ;
  wire \state[13]_i_1_n_0 ;
  wire \state[14]_i_1_n_0 ;
  wire \state[15]_i_1_n_0 ;
  wire \state[15]_i_2_n_0 ;
  wire \state[15]_i_4_n_0 ;
  wire \state[15]_i_5_n_0 ;
  wire \state[15]_i_6_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[9]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire write_flipping_seed_IBUF;

  LUT3 #(
    .INIT(8'h0D)) 
    stage1_r_reg_i_1
       (.I0(sel[6]),
        .I1(stage1_r_reg_i_13_n_0),
        .I2(sel[7]),
        .O(A[11]));
  MUXF8 stage1_r_reg_i_10
       (.I0(stage1_r_reg_i_30_n_0),
        .I1(stage1_r_reg_i_31_n_0),
        .O(A[2]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_11
       (.I0(stage1_r_reg_i_32_n_0),
        .I1(stage1_r_reg_i_33_n_0),
        .O(A[1]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_12
       (.I0(stage1_r_reg_i_34_n_0),
        .I1(stage1_r_reg_i_35_n_0),
        .O(A[0]),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'h00001555FFFFFFFF)) 
    stage1_r_reg_i_13
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    stage1_r_reg_i_14
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEB)) 
    stage1_r_reg_i_15
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEA0515)) 
    stage1_r_reg_i_16
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    stage1_r_reg_i_17
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[4]),
        .I4(sel[6]),
        .O(stage1_r_reg_i_17_n_0));
  LUT6 #(
    .INIT(64'hB8B8989D9D9D8C8C)) 
    stage1_r_reg_i_18
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_18_n_0));
  LUT6 #(
    .INIT(64'h33333737FCCCCCCC)) 
    stage1_r_reg_i_19
       (.I0(sel[2]),
        .I1(sel[6]),
        .I2(sel[4]),
        .I3(stage1_r_reg_i_36_n_0),
        .I4(sel[3]),
        .I5(sel[5]),
        .O(stage1_r_reg_i_19_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_2
       (.I0(stage1_r_reg_i_14_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_13_n_0),
        .I3(sel[7]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'h5555555557766666)) 
    stage1_r_reg_i_20
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h5237122623262377)) 
    stage1_r_reg_i_21
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    stage1_r_reg_i_22
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[5]),
        .O(stage1_r_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'h9991999555555555)) 
    stage1_r_reg_i_23
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'hCC44C44446336733)) 
    stage1_r_reg_i_24
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'h8F20EB44CF35E340)) 
    stage1_r_reg_i_25
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(stage1_r_reg_i_25_n_0));
  MUXF7 stage1_r_reg_i_26
       (.I0(stage1_r_reg_i_37_n_0),
        .I1(stage1_r_reg_i_38_n_0),
        .O(stage1_r_reg_i_26_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_27
       (.I0(stage1_r_reg_i_39_n_0),
        .I1(stage1_r_reg_i_40_n_0),
        .O(stage1_r_reg_i_27_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_28
       (.I0(stage1_r_reg_i_41_n_0),
        .I1(stage1_r_reg_i_42_n_0),
        .O(stage1_r_reg_i_28_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_29
       (.I0(stage1_r_reg_i_43_n_0),
        .I1(stage1_r_reg_i_44_n_0),
        .O(stage1_r_reg_i_29_n_0),
        .S(sel[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_3
       (.I0(stage1_r_reg_i_15_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_13_n_0),
        .I3(sel[7]),
        .O(A[9]));
  MUXF7 stage1_r_reg_i_30
       (.I0(stage1_r_reg_i_45_n_0),
        .I1(stage1_r_reg_i_46_n_0),
        .O(stage1_r_reg_i_30_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_31
       (.I0(stage1_r_reg_i_47_n_0),
        .I1(stage1_r_reg_i_48_n_0),
        .O(stage1_r_reg_i_31_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_32
       (.I0(stage1_r_reg_i_49_n_0),
        .I1(stage1_r_reg_i_50_n_0),
        .O(stage1_r_reg_i_32_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_33
       (.I0(stage1_r_reg_i_51_n_0),
        .I1(stage1_r_reg_i_52_n_0),
        .O(stage1_r_reg_i_33_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_34
       (.I0(stage1_r_reg_i_53_n_0),
        .I1(stage1_r_reg_i_54_n_0),
        .O(stage1_r_reg_i_34_n_0),
        .S(sel[6]));
  MUXF7 stage1_r_reg_i_35
       (.I0(stage1_r_reg_i_55_n_0),
        .I1(stage1_r_reg_i_56_n_0),
        .O(stage1_r_reg_i_35_n_0),
        .S(sel[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    stage1_r_reg_i_36
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .O(stage1_r_reg_i_36_n_0));
  LUT6 #(
    .INIT(64'h8CD932E276BF5C15)) 
    stage1_r_reg_i_37
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[3]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_37_n_0));
  LUT6 #(
    .INIT(64'h585A8F8F5A9B8F87)) 
    stage1_r_reg_i_38
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_38_n_0));
  LUT6 #(
    .INIT(64'h0F0F0FB8F0F0F0F0)) 
    stage1_r_reg_i_39
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_39_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    stage1_r_reg_i_4
       (.I0(stage1_r_reg_i_16_n_0),
        .I1(sel[6]),
        .I2(stage1_r_reg_i_13_n_0),
        .I3(sel[7]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hF3F3B33330000C0C)) 
    stage1_r_reg_i_40
       (.I0(sel[0]),
        .I1(sel[5]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[4]),
        .O(stage1_r_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'h18A3D17B4DB71DF1)) 
    stage1_r_reg_i_41
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(stage1_r_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'h282222E3D7D7D4DC)) 
    stage1_r_reg_i_42
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_42_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00B7FAC8)) 
    stage1_r_reg_i_43
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_43_n_0));
  LUT6 #(
    .INIT(64'h5855A5A575E5AAAA)) 
    stage1_r_reg_i_44
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_44_n_0));
  LUT6 #(
    .INIT(64'h1A40FB0822D8618F)) 
    stage1_r_reg_i_45
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_45_n_0));
  LUT6 #(
    .INIT(64'h75F51EB40A23CB0B)) 
    stage1_r_reg_i_46
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_46_n_0));
  LUT6 #(
    .INIT(64'hFF667E00019101FF)) 
    stage1_r_reg_i_47
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_47_n_0));
  LUT6 #(
    .INIT(64'h4633CCC43BBC7333)) 
    stage1_r_reg_i_48
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_48_n_0));
  LUT6 #(
    .INIT(64'hA31D5C845505FAAF)) 
    stage1_r_reg_i_49
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_49_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_5
       (.I0(stage1_r_reg_i_17_n_0),
        .I1(sel[7]),
        .I2(stage1_r_reg_i_13_n_0),
        .I3(sel[6]),
        .I4(stage1_r_reg_i_18_n_0),
        .O(A[7]));
  LUT6 #(
    .INIT(64'h946B36C13E61D72A)) 
    stage1_r_reg_i_50
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_50_n_0));
  LUT6 #(
    .INIT(64'h6667810199907EEE)) 
    stage1_r_reg_i_51
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'h85287B7F787F0680)) 
    stage1_r_reg_i_52
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_52_n_0));
  LUT6 #(
    .INIT(64'h7D0271E88B37168C)) 
    stage1_r_reg_i_53
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_53_n_0));
  LUT6 #(
    .INIT(64'h2E48A4E83A93BA01)) 
    stage1_r_reg_i_54
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_54_n_0));
  LUT6 #(
    .INIT(64'h1188EE771991676E)) 
    stage1_r_reg_i_55
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_55_n_0));
  LUT6 #(
    .INIT(64'h1CA0D70823D60977)) 
    stage1_r_reg_i_56
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_56_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_6
       (.I0(stage1_r_reg_i_19_n_0),
        .I1(sel[7]),
        .I2(stage1_r_reg_i_20_n_0),
        .I3(sel[6]),
        .I4(stage1_r_reg_i_21_n_0),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_7
       (.I0(stage1_r_reg_i_22_n_0),
        .I1(stage1_r_reg_i_23_n_0),
        .I2(sel[7]),
        .I3(stage1_r_reg_i_24_n_0),
        .I4(sel[6]),
        .I5(stage1_r_reg_i_25_n_0),
        .O(A[5]));
  MUXF8 stage1_r_reg_i_8
       (.I0(stage1_r_reg_i_26_n_0),
        .I1(stage1_r_reg_i_27_n_0),
        .O(A[4]),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_9
       (.I0(stage1_r_reg_i_28_n_0),
        .I1(stage1_r_reg_i_29_n_0),
        .O(A[3]),
        .S(sel[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_1 
       (.I0(p_1_in),
        .I1(state),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88B8BB88BB8B88B)) 
    \state[0]_i_2 
       (.I0(flipping_seed_IBUF[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(sel[6]),
        .I3(sel[4]),
        .I4(\state_reg_n_0_[3] ),
        .I5(sel[7]),
        .O(p_1_in));
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
    .INIT(8'hFE)) 
    \state[15]_i_1 
       (.I0(flipping_CE_IBUF),
        .I1(write_flipping_seed_IBUF),
        .I2(state),
        .O(\state[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[15]_i_2 
       (.I0(sel[6]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[15]),
        .I3(state),
        .O(\state[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \state[15]_i_3 
       (.I0(\state[15]_i_4_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(\state[15]_i_6_n_0 ),
        .I3(flipping_seed_IBUF[8]),
        .I4(flipping_seed_IBUF[12]),
        .I5(flipping_seed_IBUF[6]),
        .O(state));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_4 
       (.I0(flipping_seed_IBUF[15]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[10]),
        .I3(flipping_seed_IBUF[13]),
        .I4(flipping_seed_IBUF[2]),
        .I5(flipping_seed_IBUF[11]),
        .O(\state[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[15]_i_5 
       (.I0(flipping_seed_IBUF[14]),
        .I1(flipping_seed_IBUF[0]),
        .I2(flipping_seed_IBUF[7]),
        .I3(flipping_seed_IBUF[5]),
        .O(\state[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[15]_i_6 
       (.I0(flipping_seed_IBUF[3]),
        .I1(flipping_seed_IBUF[1]),
        .I2(flipping_seed_IBUF[9]),
        .I3(flipping_seed_IBUF[4]),
        .O(\state[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1_n_0 ));
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
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[10] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[10]_i_1_n_0 ),
        .Q(sel[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[11]_i_1_n_0 ),
        .Q(sel[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[12]_i_1_n_0 ),
        .Q(sel[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[13]_i_1_n_0 ),
        .Q(sel[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[14] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[14]_i_1_n_0 ),
        .Q(sel[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[15]_i_2_n_0 ),
        .Q(sel[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[6] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[6]_i_1_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[7] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[7]_i_1_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[8] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[8]_i_1_n_0 ),
        .Q(sel[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[9]_i_1_n_0 ),
        .Q(sel[1]),
        .S(SS));
endmodule

module LFSR_inout
   (D,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    advance_index_IBUF,
    reset_IBUF,
    CLK);
  output [1:0]D;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input advance_index_IBUF;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire advance_index_IBUF;
  wire [2:0]ensemble_seed_IBUF;
  wire reset_IBUF;
  wire write_ensemble_seed_IBUF;

  LFSR u_lfsr
       (.CLK(CLK),
        .D(D),
        .advance_index_IBUF(advance_index_IBUF),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .reset_IBUF(reset_IBUF),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0
   (A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    SS,
    CLK,
    flipping_CE_IBUF);
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input [0:0]SS;
  input CLK;
  input flipping_CE_IBUF;

  wire [11:0]A;
  wire CLK;
  wire [0:0]SS;
  wire flipping_CE_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire write_flipping_seed_IBUF;

  LFSR__parameterized0 u_lfsr
       (.A(A),
        .CLK(CLK),
        .SS(SS),
        .flipping_CE_IBUF(flipping_CE_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module flipping_unit
   (P,
    CLK,
    SS,
    flipping_CE_IBUF,
    decrease_temp_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF);
  output [8:0]P;
  input CLK;
  input [0:0]SS;
  input flipping_CE_IBUF;
  input decrease_temp_IBUF;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;

  wire CLK;
  wire [8:0]P;
  wire [0:0]SS;
  wire decrease_temp_IBUF;
  wire flipping_CE_IBUF;
  wire [15:0]flipping_seed_IBUF;
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
  wire [17:0]temp_fp;
  wire u_noise_n_0;
  wire u_noise_n_1;
  wire u_noise_n_10;
  wire u_noise_n_11;
  wire u_noise_n_2;
  wire u_noise_n_3;
  wire u_noise_n_4;
  wire u_noise_n_5;
  wire u_noise_n_6;
  wire u_noise_n_7;
  wire u_noise_n_8;
  wire u_noise_n_9;
  wire write_flipping_seed_IBUF;
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

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
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
       (.A({u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_0,u_noise_n_1,u_noise_n_0,u_noise_n_2,u_noise_n_3,u_noise_n_4,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_stage1_r_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(temp_fp),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_stage1_r_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_stage1_r_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(flipping_CE_IBUF),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(flipping_CE_IBUF),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_stage1_r_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_stage1_r_reg_P_UNCONNECTED[47:27],P,stage1_r_reg_n_88,stage1_r_reg_n_89,stage1_r_reg_n_90,stage1_r_reg_n_91,stage1_r_reg_n_92,stage1_r_reg_n_93,stage1_r_reg_n_94,stage1_r_reg_n_95,stage1_r_reg_n_96,stage1_r_reg_n_97,stage1_r_reg_n_98,stage1_r_reg_n_99,stage1_r_reg_n_100,stage1_r_reg_n_101,stage1_r_reg_n_102,stage1_r_reg_n_103,stage1_r_reg_n_104,stage1_r_reg_n_105}),
        .PATTERNBDETECT(NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_stage1_r_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SS),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(SS),
        .UNDERFLOW(NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED));
  log_noise_generator u_noise
       (.A({u_noise_n_0,u_noise_n_1,u_noise_n_2,u_noise_n_3,u_noise_n_4,u_noise_n_5,u_noise_n_6,u_noise_n_7,u_noise_n_8,u_noise_n_9,u_noise_n_10,u_noise_n_11}),
        .CLK(CLK),
        .SS(SS),
        .flipping_CE_IBUF(flipping_CE_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  temperature_module u_temp
       (.B(temp_fp),
        .CLK(CLK),
        .SS(SS),
        .decrease_temp_IBUF(decrease_temp_IBUF));
endmodule

module log_noise_generator
   (A,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    SS,
    CLK,
    flipping_CE_IBUF);
  output [11:0]A;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input [0:0]SS;
  input CLK;
  input flipping_CE_IBUF;

  wire [11:0]A;
  wire CLK;
  wire [0:0]SS;
  wire flipping_CE_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire write_flipping_seed_IBUF;

  LFSR_inout__parameterized0 u_src
       (.A(A),
        .CLK(CLK),
        .SS(SS),
        .flipping_CE_IBUF(flipping_CE_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* FLIP_OUT_WIDTH = "16" *) (* FRAC_BITS = "9" *) (* LOG_LUT_BIT_SIZE = "8" *) 
(* LOG_LUT_FILE = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif" *) (* LOG_NOISE_SOURCE_WIDTH = "16" *) (* MEMBRANE_WIDTH = "16" *) 
(* NEURON_SEL_LFSR_WIDTH = "3" *) (* NEURON_WIDTH = "2" *) (* PIPELINED_ENSEMBLE_STORAGE = "0" *) 
(* PIPELINED_ROMs = "1" *) (* REAL_WIDTH = "18" *) (* TEMP_LUT_FILE = "temperature_LUT_fixed_N9.mif" *) 
(* TEMP_LUT_WIDTH = "9" *) (* UNIT_NO = "0" *) (* UNIT_WIDTH = "2" *) 
(* USE_FLOAT_POINT = "0" *) 
(* NotValidForBitStream *)
module neuron_ensemble
   (clk,
    reset,
    storage_CE,
    advance_index,
    write_ensemble_seed,
    ensemble_seed,
    write,
    idx_to_write,
    membrane_data_in,
    neuron_state_in,
    control,
    Q_inp,
    update_ds,
    idx_offset_to_update,
    flipping_CE,
    write_flipping_seed,
    flipping_seed,
    decrease_temp,
    reset_flipping,
    spike,
    unit_number,
    offset,
    membrane,
    add_mem);
  input clk;
  input reset;
  input storage_CE;
  input advance_index;
  input write_ensemble_seed;
  input [2:0]ensemble_seed;
  input write;
  input [1:0]idx_to_write;
  input [15:0]membrane_data_in;
  input [3:0]neuron_state_in;
  input [1:0]control;
  input [3:0]Q_inp;
  input update_ds;
  input [1:0]idx_offset_to_update;
  input flipping_CE;
  input write_flipping_seed;
  input [15:0]flipping_seed;
  input decrease_temp;
  input reset_flipping;
  output spike;
  output [1:0]unit_number;
  output [1:0]offset;
  output [15:0]membrane;
  output add_mem;

  wire [3:0]Q_inp;
  wire [3:0]Q_inp_IBUF;
  wire add_mem;
  wire add_mem_OBUF;
  wire advance_index;
  wire advance_index_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]control;
  wire [1:0]control_IBUF;
  wire decrease_temp;
  wire decrease_temp_IBUF;
  wire [2:0]ensemble_seed;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire flipping_CE_IBUF;
  wire [15:0]flipping_seed;
  wire [15:0]flipping_seed_IBUF;
  wire [1:0]idx_offset_to_update;
  wire [1:0]idx_offset_to_update_IBUF;
  wire [1:0]idx_to_write;
  wire [1:0]idx_to_write_IBUF;
  wire [15:0]membrane;
  wire [15:0]membrane_OBUF;
  wire [15:0]membrane_data_in;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]neuron_state_in;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]offset;
  wire [1:0]offset_OBUF;
  wire p_0_in0;
  wire reset;
  wire reset_IBUF;
  wire reset_flipping;
  wire reset_flipping_IBUF;
  wire spike;
  wire spike_OBUF;
  wire u_flip_n_1;
  wire u_flip_n_2;
  wire u_flip_n_3;
  wire u_flip_n_4;
  wire u_flip_n_5;
  wire u_flip_n_6;
  wire u_flip_n_7;
  wire u_flip_n_8;
  wire [1:0]unit_number;
  wire update_ds;
  wire update_ds_IBUF;
  wire write;
  wire write_IBUF;
  wire write_ensemble_seed;
  wire write_ensemble_seed_IBUF;
  wire write_flipping_seed;
  wire write_flipping_seed_IBUF;

  IBUF \Q_inp_IBUF[0]_inst 
       (.I(Q_inp[0]),
        .O(Q_inp_IBUF[0]));
  IBUF \Q_inp_IBUF[1]_inst 
       (.I(Q_inp[1]),
        .O(Q_inp_IBUF[1]));
  IBUF \Q_inp_IBUF[2]_inst 
       (.I(Q_inp[2]),
        .O(Q_inp_IBUF[2]));
  IBUF \Q_inp_IBUF[3]_inst 
       (.I(Q_inp[3]),
        .O(Q_inp_IBUF[3]));
  OBUF add_mem_OBUF_inst
       (.I(add_mem_OBUF),
        .O(add_mem));
  IBUF advance_index_IBUF_inst
       (.I(advance_index),
        .O(advance_index_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \control_IBUF[0]_inst 
       (.I(control[0]),
        .O(control_IBUF[0]));
  IBUF \control_IBUF[1]_inst 
       (.I(control[1]),
        .O(control_IBUF[1]));
  IBUF decrease_temp_IBUF_inst
       (.I(decrease_temp),
        .O(decrease_temp_IBUF));
  IBUF \ensemble_seed_IBUF[0]_inst 
       (.I(ensemble_seed[0]),
        .O(ensemble_seed_IBUF[0]));
  IBUF \ensemble_seed_IBUF[1]_inst 
       (.I(ensemble_seed[1]),
        .O(ensemble_seed_IBUF[1]));
  IBUF \ensemble_seed_IBUF[2]_inst 
       (.I(ensemble_seed[2]),
        .O(ensemble_seed_IBUF[2]));
  IBUF flipping_CE_IBUF_inst
       (.I(flipping_CE),
        .O(flipping_CE_IBUF));
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
  IBUF \idx_offset_to_update_IBUF[0]_inst 
       (.I(idx_offset_to_update[0]),
        .O(idx_offset_to_update_IBUF[0]));
  IBUF \idx_offset_to_update_IBUF[1]_inst 
       (.I(idx_offset_to_update[1]),
        .O(idx_offset_to_update_IBUF[1]));
  IBUF \idx_to_write_IBUF[0]_inst 
       (.I(idx_to_write[0]),
        .O(idx_to_write_IBUF[0]));
  IBUF \idx_to_write_IBUF[1]_inst 
       (.I(idx_to_write[1]),
        .O(idx_to_write_IBUF[1]));
  OBUF \membrane_OBUF[0]_inst 
       (.I(membrane_OBUF[0]),
        .O(membrane[0]));
  OBUF \membrane_OBUF[10]_inst 
       (.I(membrane_OBUF[10]),
        .O(membrane[10]));
  OBUF \membrane_OBUF[11]_inst 
       (.I(membrane_OBUF[11]),
        .O(membrane[11]));
  OBUF \membrane_OBUF[12]_inst 
       (.I(membrane_OBUF[12]),
        .O(membrane[12]));
  OBUF \membrane_OBUF[13]_inst 
       (.I(membrane_OBUF[13]),
        .O(membrane[13]));
  OBUF \membrane_OBUF[14]_inst 
       (.I(membrane_OBUF[14]),
        .O(membrane[14]));
  OBUF \membrane_OBUF[15]_inst 
       (.I(membrane_OBUF[15]),
        .O(membrane[15]));
  OBUF \membrane_OBUF[1]_inst 
       (.I(membrane_OBUF[1]),
        .O(membrane[1]));
  OBUF \membrane_OBUF[2]_inst 
       (.I(membrane_OBUF[2]),
        .O(membrane[2]));
  OBUF \membrane_OBUF[3]_inst 
       (.I(membrane_OBUF[3]),
        .O(membrane[3]));
  OBUF \membrane_OBUF[4]_inst 
       (.I(membrane_OBUF[4]),
        .O(membrane[4]));
  OBUF \membrane_OBUF[5]_inst 
       (.I(membrane_OBUF[5]),
        .O(membrane[5]));
  OBUF \membrane_OBUF[6]_inst 
       (.I(membrane_OBUF[6]),
        .O(membrane[6]));
  OBUF \membrane_OBUF[7]_inst 
       (.I(membrane_OBUF[7]),
        .O(membrane[7]));
  OBUF \membrane_OBUF[8]_inst 
       (.I(membrane_OBUF[8]),
        .O(membrane[8]));
  OBUF \membrane_OBUF[9]_inst 
       (.I(membrane_OBUF[9]),
        .O(membrane[9]));
  IBUF \membrane_data_in_IBUF[0]_inst 
       (.I(membrane_data_in[0]),
        .O(membrane_data_in_IBUF[0]));
  IBUF \membrane_data_in_IBUF[10]_inst 
       (.I(membrane_data_in[10]),
        .O(membrane_data_in_IBUF[10]));
  IBUF \membrane_data_in_IBUF[11]_inst 
       (.I(membrane_data_in[11]),
        .O(membrane_data_in_IBUF[11]));
  IBUF \membrane_data_in_IBUF[12]_inst 
       (.I(membrane_data_in[12]),
        .O(membrane_data_in_IBUF[12]));
  IBUF \membrane_data_in_IBUF[13]_inst 
       (.I(membrane_data_in[13]),
        .O(membrane_data_in_IBUF[13]));
  IBUF \membrane_data_in_IBUF[14]_inst 
       (.I(membrane_data_in[14]),
        .O(membrane_data_in_IBUF[14]));
  IBUF \membrane_data_in_IBUF[15]_inst 
       (.I(membrane_data_in[15]),
        .O(membrane_data_in_IBUF[15]));
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
  OBUF \offset_OBUF[0]_inst 
       (.I(offset_OBUF[0]),
        .O(offset[0]));
  OBUF \offset_OBUF[1]_inst 
       (.I(offset_OBUF[1]),
        .O(offset[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF reset_flipping_IBUF_inst
       (.I(reset_flipping),
        .O(reset_flipping_IBUF));
  OBUF spike_OBUF_inst
       (.I(spike_OBUF),
        .O(spike));
  flipping_unit u_flip
       (.CLK(clk_IBUF_BUFG),
        .P({p_0_in0,u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4,u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}),
        .SS(reset_flipping_IBUF),
        .decrease_temp_IBUF(decrease_temp_IBUF),
        .flipping_CE_IBUF(flipping_CE_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  neuron_ensemble_storage u_store
       (.CLK(clk_IBUF_BUFG),
        .P({p_0_in0,u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4,u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}),
        .Q(membrane_OBUF),
        .Q_inp_IBUF(Q_inp_IBUF),
        .advance_index_IBUF(advance_index_IBUF),
        .control_IBUF(control_IBUF),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE_IBUF(flipping_CE_IBUF),
        .idx_offset_to_update_IBUF(idx_offset_to_update_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg[0]_0 (add_mem_OBUF),
        .reset_IBUF(reset_IBUF),
        .\selected_idx_offset_reg[1]_0 (offset_OBUF),
        .spike_OBUF(spike_OBUF),
        .update_ds_IBUF(update_ds_IBUF),
        .write_IBUF(write_IBUF),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  OBUF \unit_number_OBUF[0]_inst 
       (.I(1'b0),
        .O(unit_number[0]));
  OBUF \unit_number_OBUF[1]_inst 
       (.I(1'b0),
        .O(unit_number[1]));
  IBUF update_ds_IBUF_inst
       (.I(update_ds),
        .O(update_ds_IBUF));
  IBUF write_IBUF_inst
       (.I(write),
        .O(write_IBUF));
  IBUF write_ensemble_seed_IBUF_inst
       (.I(write_ensemble_seed),
        .O(write_ensemble_seed_IBUF));
  IBUF write_flipping_seed_IBUF_inst
       (.I(write_flipping_seed),
        .O(write_flipping_seed_IBUF));
endmodule

module neuron_ensemble_storage
   (spike_OBUF,
    Q,
    \selected_idx_offset_reg[1]_0 ,
    \neuron_state_reg[0]_0 ,
    reset_IBUF,
    CLK,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    write_IBUF,
    membrane_data_in_IBUF,
    control_IBUF,
    idx_to_write_IBUF,
    Q_inp_IBUF,
    idx_offset_to_update_IBUF,
    update_ds_IBUF,
    neuron_state_in_IBUF,
    flipping_CE_IBUF,
    P,
    advance_index_IBUF);
  output spike_OBUF;
  output [15:0]Q;
  output [1:0]\selected_idx_offset_reg[1]_0 ;
  output [0:0]\neuron_state_reg[0]_0 ;
  input reset_IBUF;
  input CLK;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input write_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input [1:0]control_IBUF;
  input [1:0]idx_to_write_IBUF;
  input [3:0]Q_inp_IBUF;
  input [1:0]idx_offset_to_update_IBUF;
  input update_ds_IBUF;
  input [1:0]neuron_state_in_IBUF;
  input flipping_CE_IBUF;
  input [8:0]P;
  input advance_index_IBUF;

  wire CLK;
  wire [8:0]P;
  wire [15:0]Q;
  wire [3:0]Q_inp_IBUF;
  wire advance_index_IBUF;
  wire [1:0]control_IBUF;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE_IBUF;
  wire [1:0]idx_offset;
  wire [1:0]idx_offset_to_update_IBUF;
  wire [1:0]idx_r;
  wire [1:0]idx_to_write_IBUF;
  wire [15:1]mem_cmp0;
  wire mem_ram;
  wire \mem_ram[0][0]_i_3_n_0 ;
  wire \mem_ram[0][0]_i_4_n_0 ;
  wire \mem_ram[0][0]_i_5_n_0 ;
  wire \mem_ram[0][0]_i_6_n_0 ;
  wire \mem_ram[0][0]_i_7_n_0 ;
  wire \mem_ram[0][0]_i_8_n_0 ;
  wire \mem_ram[0][0]_i_9_n_0 ;
  wire \mem_ram[0][12]_i_2_n_0 ;
  wire \mem_ram[0][12]_i_3_n_0 ;
  wire \mem_ram[0][12]_i_4_n_0 ;
  wire \mem_ram[0][12]_i_5_n_0 ;
  wire \mem_ram[0][12]_i_6_n_0 ;
  wire \mem_ram[0][12]_i_7_n_0 ;
  wire \mem_ram[0][12]_i_8_n_0 ;
  wire \mem_ram[0][4]_i_2_n_0 ;
  wire \mem_ram[0][4]_i_3_n_0 ;
  wire \mem_ram[0][4]_i_4_n_0 ;
  wire \mem_ram[0][4]_i_5_n_0 ;
  wire \mem_ram[0][4]_i_6_n_0 ;
  wire \mem_ram[0][4]_i_7_n_0 ;
  wire \mem_ram[0][4]_i_8_n_0 ;
  wire \mem_ram[0][4]_i_9_n_0 ;
  wire \mem_ram[0][8]_i_2_n_0 ;
  wire \mem_ram[0][8]_i_3_n_0 ;
  wire \mem_ram[0][8]_i_4_n_0 ;
  wire \mem_ram[0][8]_i_5_n_0 ;
  wire \mem_ram[0][8]_i_6_n_0 ;
  wire \mem_ram[0][8]_i_7_n_0 ;
  wire \mem_ram[0][8]_i_8_n_0 ;
  wire \mem_ram[0][8]_i_9_n_0 ;
  wire \mem_ram[1][0]_i_1_n_0 ;
  wire \mem_ram[1][0]_i_3_n_0 ;
  wire \mem_ram[1][0]_i_4_n_0 ;
  wire \mem_ram[1][0]_i_5_n_0 ;
  wire \mem_ram[1][0]_i_6_n_0 ;
  wire \mem_ram[1][0]_i_7_n_0 ;
  wire \mem_ram[1][0]_i_8_n_0 ;
  wire \mem_ram[1][0]_i_9_n_0 ;
  wire \mem_ram[1][12]_i_2_n_0 ;
  wire \mem_ram[1][12]_i_3_n_0 ;
  wire \mem_ram[1][12]_i_4_n_0 ;
  wire \mem_ram[1][12]_i_5_n_0 ;
  wire \mem_ram[1][12]_i_6_n_0 ;
  wire \mem_ram[1][12]_i_7_n_0 ;
  wire \mem_ram[1][12]_i_8_n_0 ;
  wire \mem_ram[1][4]_i_2_n_0 ;
  wire \mem_ram[1][4]_i_3_n_0 ;
  wire \mem_ram[1][4]_i_4_n_0 ;
  wire \mem_ram[1][4]_i_5_n_0 ;
  wire \mem_ram[1][4]_i_6_n_0 ;
  wire \mem_ram[1][4]_i_7_n_0 ;
  wire \mem_ram[1][4]_i_8_n_0 ;
  wire \mem_ram[1][4]_i_9_n_0 ;
  wire \mem_ram[1][8]_i_2_n_0 ;
  wire \mem_ram[1][8]_i_3_n_0 ;
  wire \mem_ram[1][8]_i_4_n_0 ;
  wire \mem_ram[1][8]_i_5_n_0 ;
  wire \mem_ram[1][8]_i_6_n_0 ;
  wire \mem_ram[1][8]_i_7_n_0 ;
  wire \mem_ram[1][8]_i_8_n_0 ;
  wire \mem_ram[1][8]_i_9_n_0 ;
  wire \mem_ram[2][0]_i_1_n_0 ;
  wire \mem_ram[2][0]_i_3_n_0 ;
  wire \mem_ram[2][0]_i_4_n_0 ;
  wire \mem_ram[2][0]_i_5_n_0 ;
  wire \mem_ram[2][0]_i_6_n_0 ;
  wire \mem_ram[2][0]_i_7_n_0 ;
  wire \mem_ram[2][0]_i_8_n_0 ;
  wire \mem_ram[2][0]_i_9_n_0 ;
  wire \mem_ram[2][12]_i_2_n_0 ;
  wire \mem_ram[2][12]_i_3_n_0 ;
  wire \mem_ram[2][12]_i_4_n_0 ;
  wire \mem_ram[2][12]_i_5_n_0 ;
  wire \mem_ram[2][12]_i_6_n_0 ;
  wire \mem_ram[2][12]_i_7_n_0 ;
  wire \mem_ram[2][12]_i_8_n_0 ;
  wire \mem_ram[2][4]_i_2_n_0 ;
  wire \mem_ram[2][4]_i_3_n_0 ;
  wire \mem_ram[2][4]_i_4_n_0 ;
  wire \mem_ram[2][4]_i_5_n_0 ;
  wire \mem_ram[2][4]_i_6_n_0 ;
  wire \mem_ram[2][4]_i_7_n_0 ;
  wire \mem_ram[2][4]_i_8_n_0 ;
  wire \mem_ram[2][4]_i_9_n_0 ;
  wire \mem_ram[2][8]_i_2_n_0 ;
  wire \mem_ram[2][8]_i_3_n_0 ;
  wire \mem_ram[2][8]_i_4_n_0 ;
  wire \mem_ram[2][8]_i_5_n_0 ;
  wire \mem_ram[2][8]_i_6_n_0 ;
  wire \mem_ram[2][8]_i_7_n_0 ;
  wire \mem_ram[2][8]_i_8_n_0 ;
  wire \mem_ram[2][8]_i_9_n_0 ;
  wire \mem_ram[3][0]_i_1_n_0 ;
  wire \mem_ram[3][0]_i_3_n_0 ;
  wire \mem_ram[3][0]_i_4_n_0 ;
  wire \mem_ram[3][0]_i_5_n_0 ;
  wire \mem_ram[3][0]_i_6_n_0 ;
  wire \mem_ram[3][0]_i_7_n_0 ;
  wire \mem_ram[3][0]_i_8_n_0 ;
  wire \mem_ram[3][0]_i_9_n_0 ;
  wire \mem_ram[3][12]_i_2_n_0 ;
  wire \mem_ram[3][12]_i_3_n_0 ;
  wire \mem_ram[3][12]_i_4_n_0 ;
  wire \mem_ram[3][12]_i_5_n_0 ;
  wire \mem_ram[3][12]_i_6_n_0 ;
  wire \mem_ram[3][12]_i_7_n_0 ;
  wire \mem_ram[3][12]_i_8_n_0 ;
  wire \mem_ram[3][4]_i_2_n_0 ;
  wire \mem_ram[3][4]_i_3_n_0 ;
  wire \mem_ram[3][4]_i_4_n_0 ;
  wire \mem_ram[3][4]_i_5_n_0 ;
  wire \mem_ram[3][4]_i_6_n_0 ;
  wire \mem_ram[3][4]_i_7_n_0 ;
  wire \mem_ram[3][4]_i_8_n_0 ;
  wire \mem_ram[3][4]_i_9_n_0 ;
  wire \mem_ram[3][8]_i_2_n_0 ;
  wire \mem_ram[3][8]_i_3_n_0 ;
  wire \mem_ram[3][8]_i_4_n_0 ;
  wire \mem_ram[3][8]_i_5_n_0 ;
  wire \mem_ram[3][8]_i_6_n_0 ;
  wire \mem_ram[3][8]_i_7_n_0 ;
  wire \mem_ram[3][8]_i_8_n_0 ;
  wire \mem_ram[3][8]_i_9_n_0 ;
  wire \mem_ram_reg[0][0]_i_2_n_0 ;
  wire \mem_ram_reg[0][0]_i_2_n_1 ;
  wire \mem_ram_reg[0][0]_i_2_n_2 ;
  wire \mem_ram_reg[0][0]_i_2_n_3 ;
  wire \mem_ram_reg[0][0]_i_2_n_4 ;
  wire \mem_ram_reg[0][0]_i_2_n_5 ;
  wire \mem_ram_reg[0][0]_i_2_n_6 ;
  wire \mem_ram_reg[0][0]_i_2_n_7 ;
  wire \mem_ram_reg[0][12]_i_1_n_1 ;
  wire \mem_ram_reg[0][12]_i_1_n_2 ;
  wire \mem_ram_reg[0][12]_i_1_n_3 ;
  wire \mem_ram_reg[0][12]_i_1_n_4 ;
  wire \mem_ram_reg[0][12]_i_1_n_5 ;
  wire \mem_ram_reg[0][12]_i_1_n_6 ;
  wire \mem_ram_reg[0][12]_i_1_n_7 ;
  wire \mem_ram_reg[0][4]_i_1_n_0 ;
  wire \mem_ram_reg[0][4]_i_1_n_1 ;
  wire \mem_ram_reg[0][4]_i_1_n_2 ;
  wire \mem_ram_reg[0][4]_i_1_n_3 ;
  wire \mem_ram_reg[0][4]_i_1_n_4 ;
  wire \mem_ram_reg[0][4]_i_1_n_5 ;
  wire \mem_ram_reg[0][4]_i_1_n_6 ;
  wire \mem_ram_reg[0][4]_i_1_n_7 ;
  wire \mem_ram_reg[0][8]_i_1_n_0 ;
  wire \mem_ram_reg[0][8]_i_1_n_1 ;
  wire \mem_ram_reg[0][8]_i_1_n_2 ;
  wire \mem_ram_reg[0][8]_i_1_n_3 ;
  wire \mem_ram_reg[0][8]_i_1_n_4 ;
  wire \mem_ram_reg[0][8]_i_1_n_5 ;
  wire \mem_ram_reg[0][8]_i_1_n_6 ;
  wire \mem_ram_reg[0][8]_i_1_n_7 ;
  wire [15:0]\mem_ram_reg[0]_3 ;
  wire \mem_ram_reg[1][0]_i_2_n_0 ;
  wire \mem_ram_reg[1][0]_i_2_n_1 ;
  wire \mem_ram_reg[1][0]_i_2_n_2 ;
  wire \mem_ram_reg[1][0]_i_2_n_3 ;
  wire \mem_ram_reg[1][0]_i_2_n_4 ;
  wire \mem_ram_reg[1][0]_i_2_n_5 ;
  wire \mem_ram_reg[1][0]_i_2_n_6 ;
  wire \mem_ram_reg[1][0]_i_2_n_7 ;
  wire \mem_ram_reg[1][12]_i_1_n_1 ;
  wire \mem_ram_reg[1][12]_i_1_n_2 ;
  wire \mem_ram_reg[1][12]_i_1_n_3 ;
  wire \mem_ram_reg[1][12]_i_1_n_4 ;
  wire \mem_ram_reg[1][12]_i_1_n_5 ;
  wire \mem_ram_reg[1][12]_i_1_n_6 ;
  wire \mem_ram_reg[1][12]_i_1_n_7 ;
  wire \mem_ram_reg[1][4]_i_1_n_0 ;
  wire \mem_ram_reg[1][4]_i_1_n_1 ;
  wire \mem_ram_reg[1][4]_i_1_n_2 ;
  wire \mem_ram_reg[1][4]_i_1_n_3 ;
  wire \mem_ram_reg[1][4]_i_1_n_4 ;
  wire \mem_ram_reg[1][4]_i_1_n_5 ;
  wire \mem_ram_reg[1][4]_i_1_n_6 ;
  wire \mem_ram_reg[1][4]_i_1_n_7 ;
  wire \mem_ram_reg[1][8]_i_1_n_0 ;
  wire \mem_ram_reg[1][8]_i_1_n_1 ;
  wire \mem_ram_reg[1][8]_i_1_n_2 ;
  wire \mem_ram_reg[1][8]_i_1_n_3 ;
  wire \mem_ram_reg[1][8]_i_1_n_4 ;
  wire \mem_ram_reg[1][8]_i_1_n_5 ;
  wire \mem_ram_reg[1][8]_i_1_n_6 ;
  wire \mem_ram_reg[1][8]_i_1_n_7 ;
  wire [15:0]\mem_ram_reg[1]_2 ;
  wire \mem_ram_reg[2][0]_i_2_n_0 ;
  wire \mem_ram_reg[2][0]_i_2_n_1 ;
  wire \mem_ram_reg[2][0]_i_2_n_2 ;
  wire \mem_ram_reg[2][0]_i_2_n_3 ;
  wire \mem_ram_reg[2][0]_i_2_n_4 ;
  wire \mem_ram_reg[2][0]_i_2_n_5 ;
  wire \mem_ram_reg[2][0]_i_2_n_6 ;
  wire \mem_ram_reg[2][0]_i_2_n_7 ;
  wire \mem_ram_reg[2][12]_i_1_n_1 ;
  wire \mem_ram_reg[2][12]_i_1_n_2 ;
  wire \mem_ram_reg[2][12]_i_1_n_3 ;
  wire \mem_ram_reg[2][12]_i_1_n_4 ;
  wire \mem_ram_reg[2][12]_i_1_n_5 ;
  wire \mem_ram_reg[2][12]_i_1_n_6 ;
  wire \mem_ram_reg[2][12]_i_1_n_7 ;
  wire \mem_ram_reg[2][4]_i_1_n_0 ;
  wire \mem_ram_reg[2][4]_i_1_n_1 ;
  wire \mem_ram_reg[2][4]_i_1_n_2 ;
  wire \mem_ram_reg[2][4]_i_1_n_3 ;
  wire \mem_ram_reg[2][4]_i_1_n_4 ;
  wire \mem_ram_reg[2][4]_i_1_n_5 ;
  wire \mem_ram_reg[2][4]_i_1_n_6 ;
  wire \mem_ram_reg[2][4]_i_1_n_7 ;
  wire \mem_ram_reg[2][8]_i_1_n_0 ;
  wire \mem_ram_reg[2][8]_i_1_n_1 ;
  wire \mem_ram_reg[2][8]_i_1_n_2 ;
  wire \mem_ram_reg[2][8]_i_1_n_3 ;
  wire \mem_ram_reg[2][8]_i_1_n_4 ;
  wire \mem_ram_reg[2][8]_i_1_n_5 ;
  wire \mem_ram_reg[2][8]_i_1_n_6 ;
  wire \mem_ram_reg[2][8]_i_1_n_7 ;
  wire [15:0]\mem_ram_reg[2]_1 ;
  wire \mem_ram_reg[3][0]_i_2_n_0 ;
  wire \mem_ram_reg[3][0]_i_2_n_1 ;
  wire \mem_ram_reg[3][0]_i_2_n_2 ;
  wire \mem_ram_reg[3][0]_i_2_n_3 ;
  wire \mem_ram_reg[3][0]_i_2_n_4 ;
  wire \mem_ram_reg[3][0]_i_2_n_5 ;
  wire \mem_ram_reg[3][0]_i_2_n_6 ;
  wire \mem_ram_reg[3][0]_i_2_n_7 ;
  wire \mem_ram_reg[3][12]_i_1_n_1 ;
  wire \mem_ram_reg[3][12]_i_1_n_2 ;
  wire \mem_ram_reg[3][12]_i_1_n_3 ;
  wire \mem_ram_reg[3][12]_i_1_n_4 ;
  wire \mem_ram_reg[3][12]_i_1_n_5 ;
  wire \mem_ram_reg[3][12]_i_1_n_6 ;
  wire \mem_ram_reg[3][12]_i_1_n_7 ;
  wire \mem_ram_reg[3][4]_i_1_n_0 ;
  wire \mem_ram_reg[3][4]_i_1_n_1 ;
  wire \mem_ram_reg[3][4]_i_1_n_2 ;
  wire \mem_ram_reg[3][4]_i_1_n_3 ;
  wire \mem_ram_reg[3][4]_i_1_n_4 ;
  wire \mem_ram_reg[3][4]_i_1_n_5 ;
  wire \mem_ram_reg[3][4]_i_1_n_6 ;
  wire \mem_ram_reg[3][4]_i_1_n_7 ;
  wire \mem_ram_reg[3][8]_i_1_n_0 ;
  wire \mem_ram_reg[3][8]_i_1_n_1 ;
  wire \mem_ram_reg[3][8]_i_1_n_2 ;
  wire \mem_ram_reg[3][8]_i_1_n_3 ;
  wire \mem_ram_reg[3][8]_i_1_n_4 ;
  wire \mem_ram_reg[3][8]_i_1_n_5 ;
  wire \mem_ram_reg[3][8]_i_1_n_6 ;
  wire \mem_ram_reg[3][8]_i_1_n_7 ;
  wire [15:0]\mem_ram_reg[3]_0 ;
  wire [15:0]membrane_data_in_IBUF;
  wire [1:1]neuron_state;
  wire \neuron_state[0]_i_1_n_0 ;
  wire \neuron_state[1]_i_1_n_0 ;
  wire [1:0]neuron_state_in_IBUF;
  wire [0:0]\neuron_state_reg[0]_0 ;
  wire reset_IBUF;
  wire [1:0]\selected_idx_offset_reg[1]_0 ;
  wire \selected_membrane[0]_i_1_n_0 ;
  wire \selected_membrane[10]_i_1_n_0 ;
  wire \selected_membrane[11]_i_1_n_0 ;
  wire \selected_membrane[12]_i_1_n_0 ;
  wire \selected_membrane[13]_i_1_n_0 ;
  wire \selected_membrane[14]_i_1_n_0 ;
  wire \selected_membrane[15]_i_1_n_0 ;
  wire \selected_membrane[1]_i_1_n_0 ;
  wire \selected_membrane[2]_i_1_n_0 ;
  wire \selected_membrane[3]_i_1_n_0 ;
  wire \selected_membrane[4]_i_1_n_0 ;
  wire \selected_membrane[5]_i_1_n_0 ;
  wire \selected_membrane[6]_i_1_n_0 ;
  wire \selected_membrane[7]_i_1_n_0 ;
  wire \selected_membrane[8]_i_1_n_0 ;
  wire \selected_membrane[9]_i_1_n_0 ;
  wire spike_OBUF;
  wire spike_OBUF_inst_i_10_n_0;
  wire spike_OBUF_inst_i_11_n_0;
  wire spike_OBUF_inst_i_12_n_0;
  wire spike_OBUF_inst_i_13_n_0;
  wire spike_OBUF_inst_i_14_n_0;
  wire spike_OBUF_inst_i_15_n_0;
  wire spike_OBUF_inst_i_16_n_0;
  wire spike_OBUF_inst_i_17_n_0;
  wire spike_OBUF_inst_i_18_n_0;
  wire spike_OBUF_inst_i_19_n_0;
  wire spike_OBUF_inst_i_20_n_2;
  wire spike_OBUF_inst_i_20_n_3;
  wire spike_OBUF_inst_i_21_n_0;
  wire spike_OBUF_inst_i_21_n_1;
  wire spike_OBUF_inst_i_21_n_2;
  wire spike_OBUF_inst_i_21_n_3;
  wire spike_OBUF_inst_i_22_n_0;
  wire spike_OBUF_inst_i_22_n_1;
  wire spike_OBUF_inst_i_22_n_2;
  wire spike_OBUF_inst_i_22_n_3;
  wire spike_OBUF_inst_i_23_n_0;
  wire spike_OBUF_inst_i_24_n_0;
  wire spike_OBUF_inst_i_25_n_0;
  wire spike_OBUF_inst_i_25_n_1;
  wire spike_OBUF_inst_i_25_n_2;
  wire spike_OBUF_inst_i_25_n_3;
  wire spike_OBUF_inst_i_26_n_0;
  wire spike_OBUF_inst_i_27_n_0;
  wire spike_OBUF_inst_i_28_n_0;
  wire spike_OBUF_inst_i_29_n_0;
  wire spike_OBUF_inst_i_2_n_0;
  wire spike_OBUF_inst_i_2_n_1;
  wire spike_OBUF_inst_i_2_n_2;
  wire spike_OBUF_inst_i_2_n_3;
  wire spike_OBUF_inst_i_30_n_0;
  wire spike_OBUF_inst_i_31_n_0;
  wire spike_OBUF_inst_i_32_n_0;
  wire spike_OBUF_inst_i_33_n_0;
  wire spike_OBUF_inst_i_34_n_0;
  wire spike_OBUF_inst_i_35_n_0;
  wire spike_OBUF_inst_i_36_n_0;
  wire spike_OBUF_inst_i_37_n_0;
  wire spike_OBUF_inst_i_38_n_0;
  wire spike_OBUF_inst_i_39_n_0;
  wire spike_OBUF_inst_i_3_n_0;
  wire spike_OBUF_inst_i_3_n_1;
  wire spike_OBUF_inst_i_3_n_2;
  wire spike_OBUF_inst_i_3_n_3;
  wire spike_OBUF_inst_i_40_n_0;
  wire spike_OBUF_inst_i_41_n_0;
  wire spike_OBUF_inst_i_42_n_0;
  wire spike_OBUF_inst_i_43_n_0;
  wire spike_OBUF_inst_i_44_n_0;
  wire spike_OBUF_inst_i_45_n_0;
  wire spike_OBUF_inst_i_4_n_0;
  wire spike_OBUF_inst_i_5_n_0;
  wire spike_OBUF_inst_i_6_n_0;
  wire spike_OBUF_inst_i_7_n_0;
  wire spike_OBUF_inst_i_8_n_0;
  wire spike_OBUF_inst_i_9_n_0;
  wire [1:0]state_ram;
  wire \state_ram[0][0]_i_1_n_0 ;
  wire \state_ram[0][1]_i_1_n_0 ;
  wire \state_ram[0][1]_i_2_n_0 ;
  wire \state_ram[1][0]_i_1_n_0 ;
  wire \state_ram[1][1]_i_1_n_0 ;
  wire \state_ram[1][1]_i_2_n_0 ;
  wire \state_ram[2][0]_i_1_n_0 ;
  wire \state_ram[2][0]_i_3_n_0 ;
  wire \state_ram[2][1]_i_1_n_0 ;
  wire \state_ram[2][1]_i_3_n_0 ;
  wire \state_ram[2][1]_i_4_n_0 ;
  wire \state_ram[3][0]_i_1_n_0 ;
  wire \state_ram[3][1]_i_1_n_0 ;
  wire \state_ram[3][1]_i_2_n_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire update_ds_IBUF;
  wire write_IBUF;
  wire write_ensemble_seed_IBUF;
  wire [3:3]\NLW_mem_ram_reg[0][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[2][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[3][12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_OBUF_inst_i_2_O_UNCONNECTED;
  wire [3:2]NLW_spike_OBUF_inst_i_20_CO_UNCONNECTED;
  wire [3:3]NLW_spike_OBUF_inst_i_20_O_UNCONNECTED;
  wire [3:0]NLW_spike_OBUF_inst_i_3_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(idx_offset[0]),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(idx_offset[1]),
        .Q(idx_r[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1111F000)) 
    \mem_ram[0][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_inp_IBUF[0]),
        .I3(control_IBUF[1]),
        .I4(write_IBUF),
        .O(mem_ram));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][0]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][0]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ram[0][0]_i_5 
       (.I0(write_IBUF),
        .O(\mem_ram[0][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [3]),
        .O(\mem_ram[0][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [2]),
        .O(\mem_ram[0][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[0][0]_i_8 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[0]_3 [1]),
        .I2(write_IBUF),
        .O(\mem_ram[0][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][0]_i_9 
       (.I0(\mem_ram_reg[0]_3 [0]),
        .I1(write_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[0][0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][12]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][12]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][12]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \mem_ram[0][12]_i_5 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[0]_3 [15]),
        .I2(control_IBUF[0]),
        .I3(write_IBUF),
        .O(\mem_ram[0][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [14]),
        .O(\mem_ram[0][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [13]),
        .O(\mem_ram[0][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [12]),
        .O(\mem_ram[0][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][4]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][4]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][4]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][4]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [7]),
        .O(\mem_ram[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [6]),
        .O(\mem_ram[0][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [5]),
        .O(\mem_ram[0][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [4]),
        .O(\mem_ram[0][4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][8]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][8]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][8]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[0][8]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[0][8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [11]),
        .O(\mem_ram[0][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [10]),
        .O(\mem_ram[0][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [9]),
        .O(\mem_ram[0][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[0][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[0]_3 [8]),
        .O(\mem_ram[0][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4444F000)) 
    \mem_ram[1][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_inp_IBUF[1]),
        .I3(control_IBUF[1]),
        .I4(write_IBUF),
        .O(\mem_ram[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][0]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][0]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ram[1][0]_i_5 
       (.I0(write_IBUF),
        .O(\mem_ram[1][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [3]),
        .O(\mem_ram[1][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [2]),
        .O(\mem_ram[1][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[1][0]_i_8 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[1]_2 [1]),
        .I2(write_IBUF),
        .O(\mem_ram[1][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][0]_i_9 
       (.I0(\mem_ram_reg[1]_2 [0]),
        .I1(write_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[1][0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][12]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][12]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][12]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \mem_ram[1][12]_i_5 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[1]_2 [15]),
        .I2(control_IBUF[0]),
        .I3(write_IBUF),
        .O(\mem_ram[1][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [14]),
        .O(\mem_ram[1][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [13]),
        .O(\mem_ram[1][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [12]),
        .O(\mem_ram[1][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][4]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][4]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][4]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][4]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [7]),
        .O(\mem_ram[1][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [6]),
        .O(\mem_ram[1][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [5]),
        .O(\mem_ram[1][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [4]),
        .O(\mem_ram[1][4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][8]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][8]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][8]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[1][8]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[1][8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [11]),
        .O(\mem_ram[1][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [10]),
        .O(\mem_ram[1][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [9]),
        .O(\mem_ram[1][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[1][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[1]_2 [8]),
        .O(\mem_ram[1][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2222F000)) 
    \mem_ram[2][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_inp_IBUF[2]),
        .I3(control_IBUF[1]),
        .I4(write_IBUF),
        .O(\mem_ram[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][0]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][0]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ram[2][0]_i_5 
       (.I0(write_IBUF),
        .O(\mem_ram[2][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [3]),
        .O(\mem_ram[2][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [2]),
        .O(\mem_ram[2][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[2][0]_i_8 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[2]_1 [1]),
        .I2(write_IBUF),
        .O(\mem_ram[2][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][0]_i_9 
       (.I0(\mem_ram_reg[2]_1 [0]),
        .I1(write_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[2][0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][12]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][12]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][12]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \mem_ram[2][12]_i_5 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[2]_1 [15]),
        .I2(control_IBUF[0]),
        .I3(write_IBUF),
        .O(\mem_ram[2][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [14]),
        .O(\mem_ram[2][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [13]),
        .O(\mem_ram[2][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [12]),
        .O(\mem_ram[2][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][4]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][4]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][4]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][4]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [7]),
        .O(\mem_ram[2][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [6]),
        .O(\mem_ram[2][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [5]),
        .O(\mem_ram[2][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [4]),
        .O(\mem_ram[2][4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][8]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][8]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][8]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[2][8]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[2][8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [11]),
        .O(\mem_ram[2][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [10]),
        .O(\mem_ram[2][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [9]),
        .O(\mem_ram[2][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[2][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[2]_1 [8]),
        .O(\mem_ram[2][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \mem_ram[3][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_inp_IBUF[3]),
        .I3(control_IBUF[1]),
        .I4(write_IBUF),
        .O(\mem_ram[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][0]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][0]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ram[3][0]_i_5 
       (.I0(write_IBUF),
        .O(\mem_ram[3][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [3]),
        .O(\mem_ram[3][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [2]),
        .O(\mem_ram[3][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[3][0]_i_8 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[3]_0 [1]),
        .I2(write_IBUF),
        .O(\mem_ram[3][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][0]_i_9 
       (.I0(\mem_ram_reg[3]_0 [0]),
        .I1(write_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[3][0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][12]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][12]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][12]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \mem_ram[3][12]_i_5 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[3]_0 [15]),
        .I2(control_IBUF[0]),
        .I3(write_IBUF),
        .O(\mem_ram[3][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [14]),
        .O(\mem_ram[3][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [13]),
        .O(\mem_ram[3][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [12]),
        .O(\mem_ram[3][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][4]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][4]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][4]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][4]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [7]),
        .O(\mem_ram[3][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [6]),
        .O(\mem_ram[3][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [5]),
        .O(\mem_ram[3][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [4]),
        .O(\mem_ram[3][4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][8]_i_2 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][8]_i_3 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][8]_i_4 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ram[3][8]_i_5 
       (.I0(control_IBUF[0]),
        .I1(write_IBUF),
        .O(\mem_ram[3][8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [11]),
        .O(\mem_ram[3][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [10]),
        .O(\mem_ram[3][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [9]),
        .O(\mem_ram[3][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC5CA)) 
    \mem_ram[3][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_IBUF),
        .I3(\mem_ram_reg[3]_0 [8]),
        .O(\mem_ram[3][8]_i_9_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][0] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[0]_3 [0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[0][0]_i_2_n_0 ,\mem_ram_reg[0][0]_i_2_n_1 ,\mem_ram_reg[0][0]_i_2_n_2 ,\mem_ram_reg[0][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[0][0]_i_3_n_0 ,\mem_ram[0][0]_i_4_n_0 ,\mem_ram[0][0]_i_5_n_0 ,1'b0}),
        .O({\mem_ram_reg[0][0]_i_2_n_4 ,\mem_ram_reg[0][0]_i_2_n_5 ,\mem_ram_reg[0][0]_i_2_n_6 ,\mem_ram_reg[0][0]_i_2_n_7 }),
        .S({\mem_ram[0][0]_i_6_n_0 ,\mem_ram[0][0]_i_7_n_0 ,\mem_ram[0][0]_i_8_n_0 ,\mem_ram[0][0]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][10] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][11] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][12] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][12]_i_1 
       (.CI(\mem_ram_reg[0][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[0][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[0][12]_i_1_n_1 ,\mem_ram_reg[0][12]_i_1_n_2 ,\mem_ram_reg[0][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[0][12]_i_2_n_0 ,\mem_ram[0][12]_i_3_n_0 ,\mem_ram[0][12]_i_4_n_0 }),
        .O({\mem_ram_reg[0][12]_i_1_n_4 ,\mem_ram_reg[0][12]_i_1_n_5 ,\mem_ram_reg[0][12]_i_1_n_6 ,\mem_ram_reg[0][12]_i_1_n_7 }),
        .S({\mem_ram[0][12]_i_5_n_0 ,\mem_ram[0][12]_i_6_n_0 ,\mem_ram[0][12]_i_7_n_0 ,\mem_ram[0][12]_i_8_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][13] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][14] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][15] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][1] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[0]_3 [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][2] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[0]_3 [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][3] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[0]_3 [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][4] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][4]_i_1 
       (.CI(\mem_ram_reg[0][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[0][4]_i_1_n_0 ,\mem_ram_reg[0][4]_i_1_n_1 ,\mem_ram_reg[0][4]_i_1_n_2 ,\mem_ram_reg[0][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[0][4]_i_2_n_0 ,\mem_ram[0][4]_i_3_n_0 ,\mem_ram[0][4]_i_4_n_0 ,\mem_ram[0][4]_i_5_n_0 }),
        .O({\mem_ram_reg[0][4]_i_1_n_4 ,\mem_ram_reg[0][4]_i_1_n_5 ,\mem_ram_reg[0][4]_i_1_n_6 ,\mem_ram_reg[0][4]_i_1_n_7 }),
        .S({\mem_ram[0][4]_i_6_n_0 ,\mem_ram[0][4]_i_7_n_0 ,\mem_ram[0][4]_i_8_n_0 ,\mem_ram[0][4]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][5] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][6] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][7] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][8] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][8]_i_1 
       (.CI(\mem_ram_reg[0][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[0][8]_i_1_n_0 ,\mem_ram_reg[0][8]_i_1_n_1 ,\mem_ram_reg[0][8]_i_1_n_2 ,\mem_ram_reg[0][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[0][8]_i_2_n_0 ,\mem_ram[0][8]_i_3_n_0 ,\mem_ram[0][8]_i_4_n_0 ,\mem_ram[0][8]_i_5_n_0 }),
        .O({\mem_ram_reg[0][8]_i_1_n_4 ,\mem_ram_reg[0][8]_i_1_n_5 ,\mem_ram_reg[0][8]_i_1_n_6 ,\mem_ram_reg[0][8]_i_1_n_7 }),
        .S({\mem_ram[0][8]_i_6_n_0 ,\mem_ram[0][8]_i_7_n_0 ,\mem_ram[0][8]_i_8_n_0 ,\mem_ram[0][8]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][9] 
       (.C(CLK),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][0] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[1]_2 [0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[1][0]_i_2_n_0 ,\mem_ram_reg[1][0]_i_2_n_1 ,\mem_ram_reg[1][0]_i_2_n_2 ,\mem_ram_reg[1][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[1][0]_i_3_n_0 ,\mem_ram[1][0]_i_4_n_0 ,\mem_ram[1][0]_i_5_n_0 ,1'b0}),
        .O({\mem_ram_reg[1][0]_i_2_n_4 ,\mem_ram_reg[1][0]_i_2_n_5 ,\mem_ram_reg[1][0]_i_2_n_6 ,\mem_ram_reg[1][0]_i_2_n_7 }),
        .S({\mem_ram[1][0]_i_6_n_0 ,\mem_ram[1][0]_i_7_n_0 ,\mem_ram[1][0]_i_8_n_0 ,\mem_ram[1][0]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][10] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][11] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][12] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][12]_i_1 
       (.CI(\mem_ram_reg[1][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[1][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[1][12]_i_1_n_1 ,\mem_ram_reg[1][12]_i_1_n_2 ,\mem_ram_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[1][12]_i_2_n_0 ,\mem_ram[1][12]_i_3_n_0 ,\mem_ram[1][12]_i_4_n_0 }),
        .O({\mem_ram_reg[1][12]_i_1_n_4 ,\mem_ram_reg[1][12]_i_1_n_5 ,\mem_ram_reg[1][12]_i_1_n_6 ,\mem_ram_reg[1][12]_i_1_n_7 }),
        .S({\mem_ram[1][12]_i_5_n_0 ,\mem_ram[1][12]_i_6_n_0 ,\mem_ram[1][12]_i_7_n_0 ,\mem_ram[1][12]_i_8_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][13] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][14] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][15] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][1] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[1]_2 [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][2] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[1]_2 [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][3] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[1]_2 [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][4] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][4]_i_1 
       (.CI(\mem_ram_reg[1][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[1][4]_i_1_n_0 ,\mem_ram_reg[1][4]_i_1_n_1 ,\mem_ram_reg[1][4]_i_1_n_2 ,\mem_ram_reg[1][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[1][4]_i_2_n_0 ,\mem_ram[1][4]_i_3_n_0 ,\mem_ram[1][4]_i_4_n_0 ,\mem_ram[1][4]_i_5_n_0 }),
        .O({\mem_ram_reg[1][4]_i_1_n_4 ,\mem_ram_reg[1][4]_i_1_n_5 ,\mem_ram_reg[1][4]_i_1_n_6 ,\mem_ram_reg[1][4]_i_1_n_7 }),
        .S({\mem_ram[1][4]_i_6_n_0 ,\mem_ram[1][4]_i_7_n_0 ,\mem_ram[1][4]_i_8_n_0 ,\mem_ram[1][4]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][5] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][6] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][7] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][8] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][8]_i_1 
       (.CI(\mem_ram_reg[1][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[1][8]_i_1_n_0 ,\mem_ram_reg[1][8]_i_1_n_1 ,\mem_ram_reg[1][8]_i_1_n_2 ,\mem_ram_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[1][8]_i_2_n_0 ,\mem_ram[1][8]_i_3_n_0 ,\mem_ram[1][8]_i_4_n_0 ,\mem_ram[1][8]_i_5_n_0 }),
        .O({\mem_ram_reg[1][8]_i_1_n_4 ,\mem_ram_reg[1][8]_i_1_n_5 ,\mem_ram_reg[1][8]_i_1_n_6 ,\mem_ram_reg[1][8]_i_1_n_7 }),
        .S({\mem_ram[1][8]_i_6_n_0 ,\mem_ram[1][8]_i_7_n_0 ,\mem_ram[1][8]_i_8_n_0 ,\mem_ram[1][8]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][9] 
       (.C(CLK),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][0] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[2]_1 [0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[2][0]_i_2_n_0 ,\mem_ram_reg[2][0]_i_2_n_1 ,\mem_ram_reg[2][0]_i_2_n_2 ,\mem_ram_reg[2][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[2][0]_i_3_n_0 ,\mem_ram[2][0]_i_4_n_0 ,\mem_ram[2][0]_i_5_n_0 ,1'b0}),
        .O({\mem_ram_reg[2][0]_i_2_n_4 ,\mem_ram_reg[2][0]_i_2_n_5 ,\mem_ram_reg[2][0]_i_2_n_6 ,\mem_ram_reg[2][0]_i_2_n_7 }),
        .S({\mem_ram[2][0]_i_6_n_0 ,\mem_ram[2][0]_i_7_n_0 ,\mem_ram[2][0]_i_8_n_0 ,\mem_ram[2][0]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][10] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][11] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][12] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][12]_i_1 
       (.CI(\mem_ram_reg[2][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[2][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[2][12]_i_1_n_1 ,\mem_ram_reg[2][12]_i_1_n_2 ,\mem_ram_reg[2][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[2][12]_i_2_n_0 ,\mem_ram[2][12]_i_3_n_0 ,\mem_ram[2][12]_i_4_n_0 }),
        .O({\mem_ram_reg[2][12]_i_1_n_4 ,\mem_ram_reg[2][12]_i_1_n_5 ,\mem_ram_reg[2][12]_i_1_n_6 ,\mem_ram_reg[2][12]_i_1_n_7 }),
        .S({\mem_ram[2][12]_i_5_n_0 ,\mem_ram[2][12]_i_6_n_0 ,\mem_ram[2][12]_i_7_n_0 ,\mem_ram[2][12]_i_8_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][13] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][14] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][15] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][1] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[2]_1 [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][2] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[2]_1 [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][3] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[2]_1 [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][4] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][4]_i_1 
       (.CI(\mem_ram_reg[2][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[2][4]_i_1_n_0 ,\mem_ram_reg[2][4]_i_1_n_1 ,\mem_ram_reg[2][4]_i_1_n_2 ,\mem_ram_reg[2][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[2][4]_i_2_n_0 ,\mem_ram[2][4]_i_3_n_0 ,\mem_ram[2][4]_i_4_n_0 ,\mem_ram[2][4]_i_5_n_0 }),
        .O({\mem_ram_reg[2][4]_i_1_n_4 ,\mem_ram_reg[2][4]_i_1_n_5 ,\mem_ram_reg[2][4]_i_1_n_6 ,\mem_ram_reg[2][4]_i_1_n_7 }),
        .S({\mem_ram[2][4]_i_6_n_0 ,\mem_ram[2][4]_i_7_n_0 ,\mem_ram[2][4]_i_8_n_0 ,\mem_ram[2][4]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][5] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][6] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][7] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][8] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][8]_i_1 
       (.CI(\mem_ram_reg[2][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[2][8]_i_1_n_0 ,\mem_ram_reg[2][8]_i_1_n_1 ,\mem_ram_reg[2][8]_i_1_n_2 ,\mem_ram_reg[2][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[2][8]_i_2_n_0 ,\mem_ram[2][8]_i_3_n_0 ,\mem_ram[2][8]_i_4_n_0 ,\mem_ram[2][8]_i_5_n_0 }),
        .O({\mem_ram_reg[2][8]_i_1_n_4 ,\mem_ram_reg[2][8]_i_1_n_5 ,\mem_ram_reg[2][8]_i_1_n_6 ,\mem_ram_reg[2][8]_i_1_n_7 }),
        .S({\mem_ram[2][8]_i_6_n_0 ,\mem_ram[2][8]_i_7_n_0 ,\mem_ram[2][8]_i_8_n_0 ,\mem_ram[2][8]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][9] 
       (.C(CLK),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][0] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[3]_0 [0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[3][0]_i_2_n_0 ,\mem_ram_reg[3][0]_i_2_n_1 ,\mem_ram_reg[3][0]_i_2_n_2 ,\mem_ram_reg[3][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_4_n_0 ,\mem_ram[3][0]_i_5_n_0 ,1'b0}),
        .O({\mem_ram_reg[3][0]_i_2_n_4 ,\mem_ram_reg[3][0]_i_2_n_5 ,\mem_ram_reg[3][0]_i_2_n_6 ,\mem_ram_reg[3][0]_i_2_n_7 }),
        .S({\mem_ram[3][0]_i_6_n_0 ,\mem_ram[3][0]_i_7_n_0 ,\mem_ram[3][0]_i_8_n_0 ,\mem_ram[3][0]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][10] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][11] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][12] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][12]_i_1 
       (.CI(\mem_ram_reg[3][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[3][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[3][12]_i_1_n_1 ,\mem_ram_reg[3][12]_i_1_n_2 ,\mem_ram_reg[3][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[3][12]_i_2_n_0 ,\mem_ram[3][12]_i_3_n_0 ,\mem_ram[3][12]_i_4_n_0 }),
        .O({\mem_ram_reg[3][12]_i_1_n_4 ,\mem_ram_reg[3][12]_i_1_n_5 ,\mem_ram_reg[3][12]_i_1_n_6 ,\mem_ram_reg[3][12]_i_1_n_7 }),
        .S({\mem_ram[3][12]_i_5_n_0 ,\mem_ram[3][12]_i_6_n_0 ,\mem_ram[3][12]_i_7_n_0 ,\mem_ram[3][12]_i_8_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][13] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][14] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][15] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][1] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[3]_0 [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][2] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[3]_0 [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][3] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[3]_0 [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][4] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][4]_i_1 
       (.CI(\mem_ram_reg[3][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[3][4]_i_1_n_0 ,\mem_ram_reg[3][4]_i_1_n_1 ,\mem_ram_reg[3][4]_i_1_n_2 ,\mem_ram_reg[3][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][4]_i_2_n_0 ,\mem_ram[3][4]_i_3_n_0 ,\mem_ram[3][4]_i_4_n_0 ,\mem_ram[3][4]_i_5_n_0 }),
        .O({\mem_ram_reg[3][4]_i_1_n_4 ,\mem_ram_reg[3][4]_i_1_n_5 ,\mem_ram_reg[3][4]_i_1_n_6 ,\mem_ram_reg[3][4]_i_1_n_7 }),
        .S({\mem_ram[3][4]_i_6_n_0 ,\mem_ram[3][4]_i_7_n_0 ,\mem_ram[3][4]_i_8_n_0 ,\mem_ram[3][4]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][5] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][6] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][7] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][8] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][8]_i_1 
       (.CI(\mem_ram_reg[3][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[3][8]_i_1_n_0 ,\mem_ram_reg[3][8]_i_1_n_1 ,\mem_ram_reg[3][8]_i_1_n_2 ,\mem_ram_reg[3][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][8]_i_2_n_0 ,\mem_ram[3][8]_i_3_n_0 ,\mem_ram[3][8]_i_4_n_0 ,\mem_ram[3][8]_i_5_n_0 }),
        .O({\mem_ram_reg[3][8]_i_1_n_4 ,\mem_ram_reg[3][8]_i_1_n_5 ,\mem_ram_reg[3][8]_i_1_n_6 ,\mem_ram_reg[3][8]_i_1_n_7 }),
        .S({\mem_ram[3][8]_i_6_n_0 ,\mem_ram[3][8]_i_7_n_0 ,\mem_ram[3][8]_i_8_n_0 ,\mem_ram[3][8]_i_9_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][9] 
       (.C(CLK),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [9]),
        .R(reset_IBUF));
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
       (.C(CLK),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1_n_0 ),
        .Q(\neuron_state_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1_n_0 ),
        .Q(neuron_state),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(\selected_idx_offset_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(\selected_idx_offset_reg[1]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[0]_i_1 
       (.I0(\mem_ram_reg[0]_3 [0]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [0]),
        .I4(\mem_ram_reg[2]_1 [0]),
        .I5(\mem_ram_reg[3]_0 [0]),
        .O(\selected_membrane[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[10]_i_1 
       (.I0(\mem_ram_reg[0]_3 [10]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [10]),
        .I4(\mem_ram_reg[2]_1 [10]),
        .I5(\mem_ram_reg[3]_0 [10]),
        .O(\selected_membrane[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[11]_i_1 
       (.I0(\mem_ram_reg[0]_3 [11]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [11]),
        .I4(\mem_ram_reg[2]_1 [11]),
        .I5(\mem_ram_reg[3]_0 [11]),
        .O(\selected_membrane[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[12]_i_1 
       (.I0(\mem_ram_reg[0]_3 [12]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [12]),
        .I4(\mem_ram_reg[2]_1 [12]),
        .I5(\mem_ram_reg[3]_0 [12]),
        .O(\selected_membrane[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[13]_i_1 
       (.I0(\mem_ram_reg[0]_3 [13]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [13]),
        .I4(\mem_ram_reg[2]_1 [13]),
        .I5(\mem_ram_reg[3]_0 [13]),
        .O(\selected_membrane[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[14]_i_1 
       (.I0(\mem_ram_reg[0]_3 [14]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [14]),
        .I4(\mem_ram_reg[2]_1 [14]),
        .I5(\mem_ram_reg[3]_0 [14]),
        .O(\selected_membrane[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[15]_i_1 
       (.I0(\mem_ram_reg[0]_3 [15]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [15]),
        .I4(\mem_ram_reg[2]_1 [15]),
        .I5(\mem_ram_reg[3]_0 [15]),
        .O(\selected_membrane[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[1]_i_1 
       (.I0(\mem_ram_reg[0]_3 [1]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [1]),
        .I4(\mem_ram_reg[2]_1 [1]),
        .I5(\mem_ram_reg[3]_0 [1]),
        .O(\selected_membrane[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[2]_i_1 
       (.I0(\mem_ram_reg[0]_3 [2]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [2]),
        .I4(\mem_ram_reg[2]_1 [2]),
        .I5(\mem_ram_reg[3]_0 [2]),
        .O(\selected_membrane[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[3]_i_1 
       (.I0(\mem_ram_reg[0]_3 [3]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [3]),
        .I4(\mem_ram_reg[2]_1 [3]),
        .I5(\mem_ram_reg[3]_0 [3]),
        .O(\selected_membrane[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[4]_i_1 
       (.I0(\mem_ram_reg[0]_3 [4]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [4]),
        .I4(\mem_ram_reg[2]_1 [4]),
        .I5(\mem_ram_reg[3]_0 [4]),
        .O(\selected_membrane[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[5]_i_1 
       (.I0(\mem_ram_reg[0]_3 [5]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [5]),
        .I4(\mem_ram_reg[2]_1 [5]),
        .I5(\mem_ram_reg[3]_0 [5]),
        .O(\selected_membrane[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[6]_i_1 
       (.I0(\mem_ram_reg[0]_3 [6]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [6]),
        .I4(\mem_ram_reg[2]_1 [6]),
        .I5(\mem_ram_reg[3]_0 [6]),
        .O(\selected_membrane[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[7]_i_1 
       (.I0(\mem_ram_reg[0]_3 [7]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [7]),
        .I4(\mem_ram_reg[2]_1 [7]),
        .I5(\mem_ram_reg[3]_0 [7]),
        .O(\selected_membrane[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[8]_i_1 
       (.I0(\mem_ram_reg[0]_3 [8]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [8]),
        .I4(\mem_ram_reg[2]_1 [8]),
        .I5(\mem_ram_reg[3]_0 [8]),
        .O(\selected_membrane[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \selected_membrane[9]_i_1 
       (.I0(\mem_ram_reg[0]_3 [9]),
        .I1(idx_r[1]),
        .I2(idx_r[0]),
        .I3(\mem_ram_reg[1]_2 [9]),
        .I4(\mem_ram_reg[2]_1 [9]),
        .I5(\mem_ram_reg[3]_0 [9]),
        .O(\selected_membrane[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    spike_OBUF_inst_i_1
       (.I0(flipping_CE_IBUF),
        .I1(spike_OBUF_inst_i_2_n_0),
        .O(spike_OBUF));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_OBUF_inst_i_10
       (.I0(Q[11]),
        .I1(mem_cmp0[11]),
        .I2(Q[10]),
        .I3(neuron_state),
        .I4(mem_cmp0[10]),
        .I5(P[8]),
        .O(spike_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_OBUF_inst_i_11
       (.I0(Q[9]),
        .I1(mem_cmp0[9]),
        .I2(Q[8]),
        .I3(neuron_state),
        .I4(mem_cmp0[8]),
        .I5(P[8]),
        .O(spike_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_OBUF_inst_i_12
       (.I0(P[7]),
        .I1(spike_OBUF_inst_i_23_n_0),
        .I2(mem_cmp0[6]),
        .I3(neuron_state),
        .I4(Q[6]),
        .I5(P[6]),
        .O(spike_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_OBUF_inst_i_13
       (.I0(P[5]),
        .I1(spike_OBUF_inst_i_24_n_0),
        .I2(mem_cmp0[4]),
        .I3(neuron_state),
        .I4(Q[4]),
        .I5(P[4]),
        .O(spike_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_OBUF_inst_i_14
       (.I0(P[3]),
        .I1(spike_OBUF_inst_i_26_n_0),
        .I2(mem_cmp0[2]),
        .I3(neuron_state),
        .I4(Q[2]),
        .I5(P[2]),
        .O(spike_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h54045404FD5D5404)) 
    spike_OBUF_inst_i_15
       (.I0(P[1]),
        .I1(mem_cmp0[1]),
        .I2(neuron_state),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(P[0]),
        .O(spike_OBUF_inst_i_15_n_0));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_OBUF_inst_i_16
       (.I0(spike_OBUF_inst_i_27_n_0),
        .I1(Q[6]),
        .I2(neuron_state),
        .I3(mem_cmp0[6]),
        .I4(P[6]),
        .O(spike_OBUF_inst_i_16_n_0));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_OBUF_inst_i_17
       (.I0(spike_OBUF_inst_i_28_n_0),
        .I1(Q[4]),
        .I2(neuron_state),
        .I3(mem_cmp0[4]),
        .I4(P[4]),
        .O(spike_OBUF_inst_i_17_n_0));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_OBUF_inst_i_18
       (.I0(spike_OBUF_inst_i_29_n_0),
        .I1(Q[2]),
        .I2(neuron_state),
        .I3(mem_cmp0[2]),
        .I4(P[2]),
        .O(spike_OBUF_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    spike_OBUF_inst_i_19
       (.I0(Q[1]),
        .I1(neuron_state),
        .I2(mem_cmp0[1]),
        .I3(P[1]),
        .I4(P[0]),
        .I5(Q[0]),
        .O(spike_OBUF_inst_i_19_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_OBUF_inst_i_2
       (.CI(spike_OBUF_inst_i_3_n_0),
        .CO({spike_OBUF_inst_i_2_n_0,spike_OBUF_inst_i_2_n_1,spike_OBUF_inst_i_2_n_2,spike_OBUF_inst_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({spike_OBUF_inst_i_4_n_0,spike_OBUF_inst_i_5_n_0,spike_OBUF_inst_i_6_n_0,spike_OBUF_inst_i_7_n_0}),
        .O(NLW_spike_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({spike_OBUF_inst_i_8_n_0,spike_OBUF_inst_i_9_n_0,spike_OBUF_inst_i_10_n_0,spike_OBUF_inst_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_OBUF_inst_i_20
       (.CI(spike_OBUF_inst_i_21_n_0),
        .CO({NLW_spike_OBUF_inst_i_20_CO_UNCONNECTED[3:2],spike_OBUF_inst_i_20_n_2,spike_OBUF_inst_i_20_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_OBUF_inst_i_20_O_UNCONNECTED[3],mem_cmp0[15:13]}),
        .S({1'b0,spike_OBUF_inst_i_30_n_0,spike_OBUF_inst_i_31_n_0,spike_OBUF_inst_i_32_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_OBUF_inst_i_21
       (.CI(spike_OBUF_inst_i_22_n_0),
        .CO({spike_OBUF_inst_i_21_n_0,spike_OBUF_inst_i_21_n_1,spike_OBUF_inst_i_21_n_2,spike_OBUF_inst_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[12:9]),
        .S({spike_OBUF_inst_i_33_n_0,spike_OBUF_inst_i_34_n_0,spike_OBUF_inst_i_35_n_0,spike_OBUF_inst_i_36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_OBUF_inst_i_22
       (.CI(spike_OBUF_inst_i_25_n_0),
        .CO({spike_OBUF_inst_i_22_n_0,spike_OBUF_inst_i_22_n_1,spike_OBUF_inst_i_22_n_2,spike_OBUF_inst_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[8:5]),
        .S({spike_OBUF_inst_i_37_n_0,spike_OBUF_inst_i_38_n_0,spike_OBUF_inst_i_39_n_0,spike_OBUF_inst_i_40_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_OBUF_inst_i_23
       (.I0(Q[7]),
        .I1(neuron_state),
        .I2(mem_cmp0[7]),
        .O(spike_OBUF_inst_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_OBUF_inst_i_24
       (.I0(Q[5]),
        .I1(neuron_state),
        .I2(mem_cmp0[5]),
        .O(spike_OBUF_inst_i_24_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_OBUF_inst_i_25
       (.CI(1'b0),
        .CO({spike_OBUF_inst_i_25_n_0,spike_OBUF_inst_i_25_n_1,spike_OBUF_inst_i_25_n_2,spike_OBUF_inst_i_25_n_3}),
        .CYINIT(spike_OBUF_inst_i_41_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[4:1]),
        .S({spike_OBUF_inst_i_42_n_0,spike_OBUF_inst_i_43_n_0,spike_OBUF_inst_i_44_n_0,spike_OBUF_inst_i_45_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_OBUF_inst_i_26
       (.I0(Q[3]),
        .I1(neuron_state),
        .I2(mem_cmp0[3]),
        .O(spike_OBUF_inst_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    spike_OBUF_inst_i_27
       (.I0(P[7]),
        .I1(mem_cmp0[7]),
        .I2(neuron_state),
        .I3(Q[7]),
        .O(spike_OBUF_inst_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    spike_OBUF_inst_i_28
       (.I0(P[5]),
        .I1(mem_cmp0[5]),
        .I2(neuron_state),
        .I3(Q[5]),
        .O(spike_OBUF_inst_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    spike_OBUF_inst_i_29
       (.I0(P[3]),
        .I1(mem_cmp0[3]),
        .I2(neuron_state),
        .I3(Q[3]),
        .O(spike_OBUF_inst_i_29_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_OBUF_inst_i_3
       (.CI(1'b0),
        .CO({spike_OBUF_inst_i_3_n_0,spike_OBUF_inst_i_3_n_1,spike_OBUF_inst_i_3_n_2,spike_OBUF_inst_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({spike_OBUF_inst_i_12_n_0,spike_OBUF_inst_i_13_n_0,spike_OBUF_inst_i_14_n_0,spike_OBUF_inst_i_15_n_0}),
        .O(NLW_spike_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({spike_OBUF_inst_i_16_n_0,spike_OBUF_inst_i_17_n_0,spike_OBUF_inst_i_18_n_0,spike_OBUF_inst_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_30
       (.I0(Q[15]),
        .O(spike_OBUF_inst_i_30_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_31
       (.I0(Q[14]),
        .O(spike_OBUF_inst_i_31_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_32
       (.I0(Q[13]),
        .O(spike_OBUF_inst_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_33
       (.I0(Q[12]),
        .O(spike_OBUF_inst_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_34
       (.I0(Q[11]),
        .O(spike_OBUF_inst_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_35
       (.I0(Q[10]),
        .O(spike_OBUF_inst_i_35_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_36
       (.I0(Q[9]),
        .O(spike_OBUF_inst_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_37
       (.I0(Q[8]),
        .O(spike_OBUF_inst_i_37_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_38
       (.I0(Q[7]),
        .O(spike_OBUF_inst_i_38_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_39
       (.I0(Q[6]),
        .O(spike_OBUF_inst_i_39_n_0));
  LUT6 #(
    .INIT(64'h000000FCFAFA00FC)) 
    spike_OBUF_inst_i_4
       (.I0(Q[14]),
        .I1(mem_cmp0[14]),
        .I2(P[8]),
        .I3(mem_cmp0[15]),
        .I4(neuron_state),
        .I5(Q[15]),
        .O(spike_OBUF_inst_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_40
       (.I0(Q[5]),
        .O(spike_OBUF_inst_i_40_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_41
       (.I0(Q[0]),
        .O(spike_OBUF_inst_i_41_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_42
       (.I0(Q[4]),
        .O(spike_OBUF_inst_i_42_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_43
       (.I0(Q[3]),
        .O(spike_OBUF_inst_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_44
       (.I0(Q[2]),
        .O(spike_OBUF_inst_i_44_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_OBUF_inst_i_45
       (.I0(Q[1]),
        .O(spike_OBUF_inst_i_45_n_0));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_OBUF_inst_i_5
       (.I0(P[8]),
        .I1(Q[12]),
        .I2(neuron_state),
        .I3(mem_cmp0[12]),
        .I4(Q[13]),
        .I5(mem_cmp0[13]),
        .O(spike_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_OBUF_inst_i_6
       (.I0(P[8]),
        .I1(Q[10]),
        .I2(neuron_state),
        .I3(mem_cmp0[10]),
        .I4(Q[11]),
        .I5(mem_cmp0[11]),
        .O(spike_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_OBUF_inst_i_7
       (.I0(P[8]),
        .I1(Q[8]),
        .I2(neuron_state),
        .I3(mem_cmp0[8]),
        .I4(Q[9]),
        .I5(mem_cmp0[9]),
        .O(spike_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_OBUF_inst_i_8
       (.I0(Q[15]),
        .I1(mem_cmp0[15]),
        .I2(Q[14]),
        .I3(neuron_state),
        .I4(mem_cmp0[14]),
        .I5(P[8]),
        .O(spike_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_OBUF_inst_i_9
       (.I0(Q[13]),
        .I1(mem_cmp0[13]),
        .I2(Q[12]),
        .I3(neuron_state),
        .I4(mem_cmp0[12]),
        .I5(P[8]),
        .O(spike_OBUF_inst_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10101010101F1010)) 
    \state_ram[0][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_IBUF),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(update_ds_IBUF),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4400440044F04400)) 
    \state_ram[1][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(idx_offset_to_update_IBUF[0]),
        .I3(write_IBUF),
        .I4(update_ds_IBUF),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[1][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAAAAAABAAA)) 
    \state_ram[2][0]_i_2 
       (.I0(\state_ram[2][0]_i_3_n_0 ),
        .I1(\state_ram_reg_n_0_[3][0] ),
        .I2(idx_offset_to_update_IBUF[1]),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(write_IBUF),
        .I5(neuron_state_in_IBUF[0]),
        .O(state_ram[0]));
  LUT6 #(
    .INIT(64'h00000305000F0305)) 
    \state_ram[2][0]_i_3 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram_reg_n_0_[1][0] ),
        .I2(write_IBUF),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(idx_offset_to_update_IBUF[1]),
        .I5(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAAAAAABAAA)) 
    \state_ram[2][1]_i_2 
       (.I0(\state_ram[2][1]_i_4_n_0 ),
        .I1(\state_ram_reg_n_0_[3][1] ),
        .I2(idx_offset_to_update_IBUF[1]),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(write_IBUF),
        .I5(neuron_state_in_IBUF[1]),
        .O(state_ram[1]));
  LUT6 #(
    .INIT(64'h202F202020202020)) 
    \state_ram[2][1]_i_3 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_IBUF),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(update_ds_IBUF),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000305000F0305)) 
    \state_ram[2][1]_i_4 
       (.I0(\state_ram_reg_n_0_[0][1] ),
        .I1(\state_ram_reg_n_0_[1][1] ),
        .I2(write_IBUF),
        .I3(idx_offset_to_update_IBUF[0]),
        .I4(idx_offset_to_update_IBUF[1]),
        .I5(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[3][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[3][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \state_ram[3][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(idx_offset_to_update_IBUF[0]),
        .I3(write_IBUF),
        .I4(update_ds_IBUF),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[3][1]_i_2_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(reset_IBUF));
  LFSR_inout u_lfsr
       (.CLK(CLK),
        .D(idx_offset),
        .advance_index_IBUF(advance_index_IBUF),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .reset_IBUF(reset_IBUF),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

module temperature_mapping
   (B,
    CLK,
    SS,
    Q);
  output [17:0]B;
  input CLK;
  input [0:0]SS;
  input [8:0]Q;

  wire [17:0]B;
  wire CLK;
  wire [8:0]Q;
  wire [0:0]SS;
  wire [15:0]NLW_y_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_y_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "9216" *) 
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
       (.ADDRARDADDR({1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(B[15:0]),
        .DOBDO(NLW_y_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(B[17:16]),
        .DOPBDOP(NLW_y_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SS),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module temperature_module
   (B,
    CLK,
    SS,
    decrease_temp_IBUF);
  output [17:0]B;
  input CLK;
  input [0:0]SS;
  input decrease_temp_IBUF;

  wire [17:0]B;
  wire CLK;
  wire [0:0]SS;
  wire decrease_temp_IBUF;
  wire [8:0]p_0_in;
  wire \x[8]_i_1_n_0 ;
  wire \x[8]_i_3_n_0 ;
  wire [8:0]x_reg;

  temperature_mapping u_rom
       (.B(B),
        .CLK(CLK),
        .Q(x_reg),
        .SS(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  LUT2 #(
    .INIT(4'h9)) 
    \x[6]_i_1 
       (.I0(\x[8]_i_3_n_0 ),
        .I1(x_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x[7]_i_1 
       (.I0(x_reg[6]),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \x[8]_i_1 
       (.I0(x_reg[6]),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[7]),
        .I3(x_reg[8]),
        .I4(decrease_temp_IBUF),
        .O(\x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x[8]_i_2 
       (.I0(x_reg[7]),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x[8]_i_3 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(x_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(x_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(x_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(x_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(x_reg[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(x_reg[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(x_reg[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(x_reg[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(CLK),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(x_reg[8]),
        .R(SS));
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
