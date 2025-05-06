// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May  4 18:20:20 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_flipping_unit_func_synth.v
// Design      : flipping_unit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (A,
    write_seed_IBUF,
    seed_IBUF,
    SS,
    CLK,
    CE_IBUF);
  output [11:0]A;
  input write_seed_IBUF;
  input [15:0]seed_IBUF;
  input [0:0]SS;
  input CLK;
  input CE_IBUF;

  wire [11:0]A;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]SS;
  wire [0:0]p_1_in;
  wire [15:0]seed_IBUF;
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
  wire \state[0]_i_1_n_0 ;
  wire \state[10]_i_1_n_0 ;
  wire \state[11]_i_1_n_0 ;
  wire \state[12]_i_1_n_0 ;
  wire \state[13]_i_1_n_0 ;
  wire \state[14]_i_1_n_0 ;
  wire \state[15]_i_1_n_0 ;
  wire \state[15]_i_2_n_0 ;
  wire \state[15]_i_3_n_0 ;
  wire \state[15]_i_4_n_0 ;
  wire \state[15]_i_5_n_0 ;
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
  wire write_seed_IBUF;

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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    stage1_r_reg_i_19
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[5]),
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
    .INIT(64'hFFFFFFFFAAA80000)) 
    stage1_r_reg_i_20
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
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
       (.I0(stage1_r_reg_i_36_n_0),
        .I1(stage1_r_reg_i_37_n_0),
        .O(stage1_r_reg_i_26_n_0),
        .S(sel[6]));
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
        .I2(stage1_r_reg_i_13_n_0),
        .I3(sel[7]),
        .O(A[9]));
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
  LUT6 #(
    .INIT(64'h8CD932E276BF5C15)) 
    stage1_r_reg_i_36
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[3]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_36_n_0));
  LUT6 #(
    .INIT(64'h585A8F8F5A9B8F87)) 
    stage1_r_reg_i_37
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_37_n_0));
  LUT6 #(
    .INIT(64'h0F0F0FB8F0F0F0F0)) 
    stage1_r_reg_i_38
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_38_n_0));
  LUT6 #(
    .INIT(64'hF3F3B33330000C0C)) 
    stage1_r_reg_i_39
       (.I0(sel[0]),
        .I1(sel[5]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[4]),
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
    .INIT(64'h18A3D17B4DB71DF1)) 
    stage1_r_reg_i_40
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(stage1_r_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'h282222E3D7D7D4DC)) 
    stage1_r_reg_i_41
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00B7FAC8)) 
    stage1_r_reg_i_42
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_42_n_0));
  LUT6 #(
    .INIT(64'h5855A5A575E5AAAA)) 
    stage1_r_reg_i_43
       (.I0(sel[5]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_43_n_0));
  LUT6 #(
    .INIT(64'h1A40FB0822D8618F)) 
    stage1_r_reg_i_44
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_44_n_0));
  LUT6 #(
    .INIT(64'h75F51EB40A23CB0B)) 
    stage1_r_reg_i_45
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_45_n_0));
  LUT6 #(
    .INIT(64'hFF667E00019101FF)) 
    stage1_r_reg_i_46
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_46_n_0));
  LUT6 #(
    .INIT(64'h4633CCC43BBC7333)) 
    stage1_r_reg_i_47
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_47_n_0));
  LUT6 #(
    .INIT(64'hA31D5C845505FAAF)) 
    stage1_r_reg_i_48
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_48_n_0));
  LUT6 #(
    .INIT(64'h946B36C13E61D72A)) 
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
    .INIT(64'h6667810199907EEE)) 
    stage1_r_reg_i_50
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_50_n_0));
  LUT6 #(
    .INIT(64'h85287B7F787F0680)) 
    stage1_r_reg_i_51
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'h7D0271E88B37168C)) 
    stage1_r_reg_i_52
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(stage1_r_reg_i_52_n_0));
  LUT6 #(
    .INIT(64'h2E48A4E83A93BA01)) 
    stage1_r_reg_i_53
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(stage1_r_reg_i_53_n_0));
  LUT6 #(
    .INIT(64'h1188EE771991676E)) 
    stage1_r_reg_i_54
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_54_n_0));
  LUT6 #(
    .INIT(64'h1CA0D70823D60977)) 
    stage1_r_reg_i_55
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(stage1_r_reg_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_6
       (.I0(stage1_r_reg_i_19_n_0),
        .I1(stage1_r_reg_i_20_n_0),
        .I2(sel[7]),
        .I3(stage1_r_reg_i_21_n_0),
        .I4(sel[6]),
        .I5(stage1_r_reg_i_22_n_0),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_7
       (.I0(stage1_r_reg_i_19_n_0),
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
  LUT4 #(
    .INIT(16'h2AAA)) 
    \state[0]_i_1 
       (.I0(p_1_in),
        .I1(\state[15]_i_3_n_0 ),
        .I2(\state[15]_i_4_n_0 ),
        .I3(\state[15]_i_5_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF966900009669)) 
    \state[0]_i_2 
       (.I0(sel[6]),
        .I1(sel[7]),
        .I2(sel[4]),
        .I3(\state_reg_n_0_[3] ),
        .I4(write_seed_IBUF),
        .I5(seed_IBUF[0]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[10]_i_1 
       (.I0(sel[1]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[10]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[11]_i_1 
       (.I0(sel[2]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[11]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[12]_i_1 
       (.I0(sel[3]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[12]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[13]_i_1 
       (.I0(sel[4]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[13]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[14]_i_1 
       (.I0(sel[5]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[14]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \state[15]_i_1 
       (.I0(CE_IBUF),
        .I1(write_seed_IBUF),
        .I2(\state[15]_i_3_n_0 ),
        .I3(\state[15]_i_4_n_0 ),
        .I4(\state[15]_i_5_n_0 ),
        .O(\state[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[15]_i_2 
       (.I0(sel[6]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[15]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_3 
       (.I0(seed_IBUF[13]),
        .I1(seed_IBUF[14]),
        .I2(seed_IBUF[11]),
        .I3(seed_IBUF[12]),
        .I4(write_seed_IBUF),
        .I5(seed_IBUF[15]),
        .O(\state[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \state[15]_i_4 
       (.I0(seed_IBUF[0]),
        .I1(seed_IBUF[1]),
        .I2(seed_IBUF[2]),
        .I3(seed_IBUF[4]),
        .I4(seed_IBUF[3]),
        .O(\state[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_5 
       (.I0(seed_IBUF[7]),
        .I1(seed_IBUF[8]),
        .I2(seed_IBUF[5]),
        .I3(seed_IBUF[6]),
        .I4(seed_IBUF[10]),
        .I5(seed_IBUF[9]),
        .O(\state[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[1]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[2]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[3]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[4]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[5]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[6]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[6]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[7]_i_1 
       (.I0(\state_reg_n_0_[6] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[7]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[8]_i_1 
       (.I0(\state_reg_n_0_[7] ),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[8]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[9]_i_1 
       (.I0(sel[0]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[9]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
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
   (A,
    write_seed_IBUF,
    seed_IBUF,
    SS,
    CLK,
    CE_IBUF);
  output [11:0]A;
  input write_seed_IBUF;
  input [15:0]seed_IBUF;
  input [0:0]SS;
  input CLK;
  input CE_IBUF;

  wire [11:0]A;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]SS;
  wire [15:0]seed_IBUF;
  wire write_seed_IBUF;

  LFSR u_lfsr
       (.A(A),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .SS(SS),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
endmodule

(* FLIP_OUT_WIDTH = "16" *) (* FRAC_BITS = "9" *) (* LOG_LUT_BIT_SIZE = "8" *) 
(* LOG_LUT_FILE = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif" *) (* LOG_NOISE_SOURCE_WIDTH = "16" *) (* PIPELINED_ROMs = "1" *) 
(* REAL_WIDTH = "18" *) (* TEMP_LUT_FILE = "temperature_LUT_fixed_N9.mif" *) (* TEMP_LUT_WIDTH = "9" *) 
(* USE_FLOAT_POINT = "0" *) 
(* NotValidForBitStream *)
module flipping_unit
   (clk,
    reset,
    CE,
    write_seed,
    seed,
    decrease_temp,
    flipping_output);
  input clk;
  input reset;
  input CE;
  input write_seed;
  input [15:0]seed;
  input decrease_temp;
  output [15:0]flipping_output;

  wire CE;
  wire CE_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire decrease_temp_IBUF;
  wire [15:0]flipping_output;
  wire [8:0]flipping_output_OBUF;
  wire [17:0]p_0_out;
  wire reset;
  wire reset_IBUF;
  wire [15:0]seed;
  wire [15:0]seed_IBUF;
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
  wire write_seed;
  wire write_seed_IBUF;
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

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF decrease_temp_IBUF_inst
       (.I(decrease_temp),
        .O(decrease_temp_IBUF));
  OBUF \flipping_output_OBUF[0]_inst 
       (.I(flipping_output_OBUF[0]),
        .O(flipping_output[0]));
  OBUF \flipping_output_OBUF[10]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[10]));
  OBUF \flipping_output_OBUF[11]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[11]));
  OBUF \flipping_output_OBUF[12]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[12]));
  OBUF \flipping_output_OBUF[13]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[13]));
  OBUF \flipping_output_OBUF[14]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[14]));
  OBUF \flipping_output_OBUF[15]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[15]));
  OBUF \flipping_output_OBUF[1]_inst 
       (.I(flipping_output_OBUF[1]),
        .O(flipping_output[1]));
  OBUF \flipping_output_OBUF[2]_inst 
       (.I(flipping_output_OBUF[2]),
        .O(flipping_output[2]));
  OBUF \flipping_output_OBUF[3]_inst 
       (.I(flipping_output_OBUF[3]),
        .O(flipping_output[3]));
  OBUF \flipping_output_OBUF[4]_inst 
       (.I(flipping_output_OBUF[4]),
        .O(flipping_output[4]));
  OBUF \flipping_output_OBUF[5]_inst 
       (.I(flipping_output_OBUF[5]),
        .O(flipping_output[5]));
  OBUF \flipping_output_OBUF[6]_inst 
       (.I(flipping_output_OBUF[6]),
        .O(flipping_output[6]));
  OBUF \flipping_output_OBUF[7]_inst 
       (.I(flipping_output_OBUF[7]),
        .O(flipping_output[7]));
  OBUF \flipping_output_OBUF[8]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[8]));
  OBUF \flipping_output_OBUF[9]_inst 
       (.I(flipping_output_OBUF[8]),
        .O(flipping_output[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \seed_IBUF[0]_inst 
       (.I(seed[0]),
        .O(seed_IBUF[0]));
  IBUF \seed_IBUF[10]_inst 
       (.I(seed[10]),
        .O(seed_IBUF[10]));
  IBUF \seed_IBUF[11]_inst 
       (.I(seed[11]),
        .O(seed_IBUF[11]));
  IBUF \seed_IBUF[12]_inst 
       (.I(seed[12]),
        .O(seed_IBUF[12]));
  IBUF \seed_IBUF[13]_inst 
       (.I(seed[13]),
        .O(seed_IBUF[13]));
  IBUF \seed_IBUF[14]_inst 
       (.I(seed[14]),
        .O(seed_IBUF[14]));
  IBUF \seed_IBUF[15]_inst 
       (.I(seed[15]),
        .O(seed_IBUF[15]));
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
  IBUF \seed_IBUF[7]_inst 
       (.I(seed[7]),
        .O(seed_IBUF[7]));
  IBUF \seed_IBUF[8]_inst 
       (.I(seed[8]),
        .O(seed_IBUF[8]));
  IBUF \seed_IBUF[9]_inst 
       (.I(seed[9]),
        .O(seed_IBUF[9]));
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
       (.A({p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[17],p_0_out[11],p_0_out[17],p_0_out[9:0]}),
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
        .CEA2(CE_IBUF),
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
        .CEP(CE_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_stage1_r_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_stage1_r_reg_P_UNCONNECTED[47:27],flipping_output_OBUF,stage1_r_reg_n_88,stage1_r_reg_n_89,stage1_r_reg_n_90,stage1_r_reg_n_91,stage1_r_reg_n_92,stage1_r_reg_n_93,stage1_r_reg_n_94,stage1_r_reg_n_95,stage1_r_reg_n_96,stage1_r_reg_n_97,stage1_r_reg_n_98,stage1_r_reg_n_99,stage1_r_reg_n_100,stage1_r_reg_n_101,stage1_r_reg_n_102,stage1_r_reg_n_103,stage1_r_reg_n_104,stage1_r_reg_n_105}),
        .PATTERNBDETECT(NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_stage1_r_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(reset_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(reset_IBUF),
        .UNDERFLOW(NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED));
  log_noise_generator u_noise
       (.A({p_0_out[17],p_0_out[11],p_0_out[9:0]}),
        .CE_IBUF(CE_IBUF),
        .CLK(clk_IBUF_BUFG),
        .SS(reset_IBUF),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
  temperature_module u_temp
       (.B(temp_fp),
        .CLK(clk_IBUF_BUFG),
        .SS(reset_IBUF),
        .decrease_temp_IBUF(decrease_temp_IBUF));
  IBUF write_seed_IBUF_inst
       (.I(write_seed),
        .O(write_seed_IBUF));
endmodule

module log_noise_generator
   (A,
    write_seed_IBUF,
    seed_IBUF,
    SS,
    CLK,
    CE_IBUF);
  output [11:0]A;
  input write_seed_IBUF;
  input [15:0]seed_IBUF;
  input [0:0]SS;
  input CLK;
  input CE_IBUF;

  wire [11:0]A;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]SS;
  wire [15:0]seed_IBUF;
  wire write_seed_IBUF;

  LFSR_inout u_src
       (.A(A),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .SS(SS),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
endmodule

module temperature_mapping
   (B,
    CLK,
    SS,
    out);
  output [17:0]B;
  input CLK;
  input [0:0]SS;
  input [8:0]out;

  wire [17:0]B;
  wire CLK;
  wire [0:0]SS;
  wire [8:0]out;
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
       (.ADDRARDADDR({1'b0,out,1'b0,1'b0,1'b0,1'b0}),
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
        .SS(SS),
        .out(x_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
