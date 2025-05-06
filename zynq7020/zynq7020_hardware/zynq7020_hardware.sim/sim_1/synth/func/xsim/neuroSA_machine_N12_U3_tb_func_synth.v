// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri May  2 23:08:31 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/neuroSA_machine_N12_U3_tb_func_synth.v
// Design      : neuroSA_machine_verilog_wrapper_N8_A2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (Q,
    D,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    \membrane_storage_reg[3]_11 ,
    \membrane_storage_reg[2]_10 ,
    \membrane_storage_reg[1]_9 ,
    \membrane_storage_reg[0]_8 ,
    \membrane_storage_reg[7]_15 ,
    \membrane_storage_reg[6]_14 ,
    \membrane_storage_reg[5]_13 ,
    \membrane_storage_reg[4]_12 ,
    \state_reg[1]_0 ,
    clk_IBUF_BUFG);
  output [2:0]Q;
  output [15:0]D;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [15:0]\membrane_storage_reg[3]_11 ;
  input [15:0]\membrane_storage_reg[2]_10 ;
  input [15:0]\membrane_storage_reg[1]_9 ;
  input [15:0]\membrane_storage_reg[0]_8 ;
  input [15:0]\membrane_storage_reg[7]_15 ;
  input [15:0]\membrane_storage_reg[6]_14 ;
  input [15:0]\membrane_storage_reg[5]_13 ;
  input [15:0]\membrane_storage_reg[4]_12 ;
  input [0:0]\state_reg[1]_0 ;
  input clk_IBUF_BUFG;

  wire [15:0]D;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_8 ;
  wire [15:0]\membrane_storage_reg[1]_9 ;
  wire [15:0]\membrane_storage_reg[2]_10 ;
  wire [15:0]\membrane_storage_reg[3]_11 ;
  wire [15:0]\membrane_storage_reg[4]_12 ;
  wire [15:0]\membrane_storage_reg[5]_13 ;
  wire [15:0]\membrane_storage_reg[6]_14 ;
  wire [15:0]\membrane_storage_reg[7]_15 ;
  wire \selected_membrane[0]_i_2__0_n_0 ;
  wire \selected_membrane[0]_i_3__0_n_0 ;
  wire \selected_membrane[10]_i_2__0_n_0 ;
  wire \selected_membrane[10]_i_3__0_n_0 ;
  wire \selected_membrane[11]_i_2__0_n_0 ;
  wire \selected_membrane[11]_i_3__0_n_0 ;
  wire \selected_membrane[12]_i_2__0_n_0 ;
  wire \selected_membrane[12]_i_3__0_n_0 ;
  wire \selected_membrane[13]_i_2__0_n_0 ;
  wire \selected_membrane[13]_i_3__0_n_0 ;
  wire \selected_membrane[14]_i_2__0_n_0 ;
  wire \selected_membrane[14]_i_3__0_n_0 ;
  wire \selected_membrane[15]_i_2__0_n_0 ;
  wire \selected_membrane[15]_i_3__0_n_0 ;
  wire \selected_membrane[1]_i_2__0_n_0 ;
  wire \selected_membrane[1]_i_3__0_n_0 ;
  wire \selected_membrane[2]_i_2__0_n_0 ;
  wire \selected_membrane[2]_i_3__0_n_0 ;
  wire \selected_membrane[3]_i_2__0_n_0 ;
  wire \selected_membrane[3]_i_3__0_n_0 ;
  wire \selected_membrane[4]_i_2__0_n_0 ;
  wire \selected_membrane[4]_i_3__0_n_0 ;
  wire \selected_membrane[5]_i_2__0_n_0 ;
  wire \selected_membrane[5]_i_3__0_n_0 ;
  wire \selected_membrane[6]_i_2__0_n_0 ;
  wire \selected_membrane[6]_i_3__0_n_0 ;
  wire \selected_membrane[7]_i_2__0_n_0 ;
  wire \selected_membrane[7]_i_3__0_n_0 ;
  wire \selected_membrane[8]_i_2__0_n_0 ;
  wire \selected_membrane[8]_i_3__0_n_0 ;
  wire \selected_membrane[9]_i_2__0_n_0 ;
  wire \selected_membrane[9]_i_3__0_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__3_n_0 ;
  wire \state[3]_i_1__1_n_0 ;
  wire \state[4]_i_1__1_n_0 ;
  wire \state[5]_i_2__0_n_0 ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[0]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [0]),
        .I1(\membrane_storage_reg[2]_10 [0]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [0]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [0]),
        .O(\selected_membrane[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[0]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [0]),
        .I1(\membrane_storage_reg[6]_14 [0]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [0]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [0]),
        .O(\selected_membrane[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[10]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [10]),
        .I1(\membrane_storage_reg[2]_10 [10]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [10]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [10]),
        .O(\selected_membrane[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[10]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [10]),
        .I1(\membrane_storage_reg[6]_14 [10]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [10]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [10]),
        .O(\selected_membrane[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[11]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [11]),
        .I1(\membrane_storage_reg[2]_10 [11]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [11]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [11]),
        .O(\selected_membrane[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[11]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [11]),
        .I1(\membrane_storage_reg[6]_14 [11]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [11]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [11]),
        .O(\selected_membrane[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[12]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [12]),
        .I1(\membrane_storage_reg[2]_10 [12]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [12]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [12]),
        .O(\selected_membrane[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[12]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [12]),
        .I1(\membrane_storage_reg[6]_14 [12]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [12]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [12]),
        .O(\selected_membrane[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[13]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [13]),
        .I1(\membrane_storage_reg[2]_10 [13]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [13]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [13]),
        .O(\selected_membrane[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[13]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [13]),
        .I1(\membrane_storage_reg[6]_14 [13]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [13]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [13]),
        .O(\selected_membrane[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[14]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [14]),
        .I1(\membrane_storage_reg[2]_10 [14]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [14]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [14]),
        .O(\selected_membrane[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[14]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [14]),
        .I1(\membrane_storage_reg[6]_14 [14]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [14]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [14]),
        .O(\selected_membrane[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[15]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [15]),
        .I1(\membrane_storage_reg[2]_10 [15]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [15]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [15]),
        .O(\selected_membrane[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[15]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [15]),
        .I1(\membrane_storage_reg[6]_14 [15]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [15]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [15]),
        .O(\selected_membrane[15]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[1]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [1]),
        .I1(\membrane_storage_reg[2]_10 [1]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [1]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [1]),
        .O(\selected_membrane[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[1]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [1]),
        .I1(\membrane_storage_reg[6]_14 [1]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [1]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [1]),
        .O(\selected_membrane[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[2]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [2]),
        .I1(\membrane_storage_reg[2]_10 [2]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [2]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [2]),
        .O(\selected_membrane[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[2]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [2]),
        .I1(\membrane_storage_reg[6]_14 [2]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [2]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [2]),
        .O(\selected_membrane[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[3]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [3]),
        .I1(\membrane_storage_reg[2]_10 [3]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [3]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [3]),
        .O(\selected_membrane[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[3]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [3]),
        .I1(\membrane_storage_reg[6]_14 [3]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [3]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [3]),
        .O(\selected_membrane[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[4]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [4]),
        .I1(\membrane_storage_reg[2]_10 [4]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [4]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [4]),
        .O(\selected_membrane[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[4]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [4]),
        .I1(\membrane_storage_reg[6]_14 [4]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [4]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [4]),
        .O(\selected_membrane[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[5]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [5]),
        .I1(\membrane_storage_reg[2]_10 [5]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [5]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [5]),
        .O(\selected_membrane[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[5]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [5]),
        .I1(\membrane_storage_reg[6]_14 [5]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [5]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [5]),
        .O(\selected_membrane[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[6]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [6]),
        .I1(\membrane_storage_reg[2]_10 [6]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [6]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [6]),
        .O(\selected_membrane[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[6]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [6]),
        .I1(\membrane_storage_reg[6]_14 [6]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [6]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [6]),
        .O(\selected_membrane[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[7]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [7]),
        .I1(\membrane_storage_reg[2]_10 [7]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [7]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [7]),
        .O(\selected_membrane[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[7]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [7]),
        .I1(\membrane_storage_reg[6]_14 [7]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [7]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [7]),
        .O(\selected_membrane[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[8]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [8]),
        .I1(\membrane_storage_reg[2]_10 [8]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [8]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [8]),
        .O(\selected_membrane[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[8]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [8]),
        .I1(\membrane_storage_reg[6]_14 [8]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [8]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [8]),
        .O(\selected_membrane[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[9]_i_2__0 
       (.I0(\membrane_storage_reg[3]_11 [9]),
        .I1(\membrane_storage_reg[2]_10 [9]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_9 [9]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_8 [9]),
        .O(\selected_membrane[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[9]_i_3__0 
       (.I0(\membrane_storage_reg[7]_15 [9]),
        .I1(\membrane_storage_reg[6]_14 [9]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_13 [9]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_12 [9]),
        .O(\selected_membrane[9]_i_3__0_n_0 ));
  MUXF7 \selected_membrane_reg[0]_i_1__0 
       (.I0(\selected_membrane[0]_i_2__0_n_0 ),
        .I1(\selected_membrane[0]_i_3__0_n_0 ),
        .O(D[0]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[10]_i_1__0 
       (.I0(\selected_membrane[10]_i_2__0_n_0 ),
        .I1(\selected_membrane[10]_i_3__0_n_0 ),
        .O(D[10]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[11]_i_1__0 
       (.I0(\selected_membrane[11]_i_2__0_n_0 ),
        .I1(\selected_membrane[11]_i_3__0_n_0 ),
        .O(D[11]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[12]_i_1__0 
       (.I0(\selected_membrane[12]_i_2__0_n_0 ),
        .I1(\selected_membrane[12]_i_3__0_n_0 ),
        .O(D[12]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[13]_i_1__0 
       (.I0(\selected_membrane[13]_i_2__0_n_0 ),
        .I1(\selected_membrane[13]_i_3__0_n_0 ),
        .O(D[13]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[14]_i_1__0 
       (.I0(\selected_membrane[14]_i_2__0_n_0 ),
        .I1(\selected_membrane[14]_i_3__0_n_0 ),
        .O(D[14]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[15]_i_1__0 
       (.I0(\selected_membrane[15]_i_2__0_n_0 ),
        .I1(\selected_membrane[15]_i_3__0_n_0 ),
        .O(D[15]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[1]_i_1__0 
       (.I0(\selected_membrane[1]_i_2__0_n_0 ),
        .I1(\selected_membrane[1]_i_3__0_n_0 ),
        .O(D[1]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[2]_i_1__0 
       (.I0(\selected_membrane[2]_i_2__0_n_0 ),
        .I1(\selected_membrane[2]_i_3__0_n_0 ),
        .O(D[2]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[3]_i_1__0 
       (.I0(\selected_membrane[3]_i_2__0_n_0 ),
        .I1(\selected_membrane[3]_i_3__0_n_0 ),
        .O(D[3]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[4]_i_1__0 
       (.I0(\selected_membrane[4]_i_2__0_n_0 ),
        .I1(\selected_membrane[4]_i_3__0_n_0 ),
        .O(D[4]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[5]_i_1__0 
       (.I0(\selected_membrane[5]_i_2__0_n_0 ),
        .I1(\selected_membrane[5]_i_3__0_n_0 ),
        .O(D[5]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[6]_i_1__0 
       (.I0(\selected_membrane[6]_i_2__0_n_0 ),
        .I1(\selected_membrane[6]_i_3__0_n_0 ),
        .O(D[6]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[7]_i_1__0 
       (.I0(\selected_membrane[7]_i_2__0_n_0 ),
        .I1(\selected_membrane[7]_i_3__0_n_0 ),
        .O(D[7]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[8]_i_1__0 
       (.I0(\selected_membrane[8]_i_2__0_n_0 ),
        .I1(\selected_membrane[8]_i_3__0_n_0 ),
        .O(D[8]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[9]_i_1__0 
       (.I0(\selected_membrane[9]_i_2__0_n_0 ),
        .I1(\selected_membrane[9]_i_3__0_n_0 ),
        .O(D[9]),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \state[1]_i_1__1 
       (.I0(ensemble_seed_IBUF[0]),
        .I1(write_ensemble_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .I3(Q[2]),
        .O(\state[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__3 
       (.I0(ensemble_seed_IBUF[1]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[0]),
        .O(\state[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1__1 
       (.I0(ensemble_seed_IBUF[2]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[1]),
        .O(\state[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1__1 
       (.I0(ensemble_seed_IBUF[3]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[2]),
        .O(\state[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_2__0 
       (.I0(ensemble_seed_IBUF[4]),
        .I1(write_ensemble_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[2]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[3]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[4]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[5]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR_4
   (Q,
    D,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    \membrane_storage_reg[3]_3 ,
    \membrane_storage_reg[2]_2 ,
    \membrane_storage_reg[1]_1 ,
    \membrane_storage_reg[0]_0 ,
    \membrane_storage_reg[7]_7 ,
    \membrane_storage_reg[6]_6 ,
    \membrane_storage_reg[5]_5 ,
    \membrane_storage_reg[4]_4 ,
    \state_reg[1]_0 ,
    clk_IBUF_BUFG);
  output [2:0]Q;
  output [15:0]D;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [15:0]\membrane_storage_reg[3]_3 ;
  input [15:0]\membrane_storage_reg[2]_2 ;
  input [15:0]\membrane_storage_reg[1]_1 ;
  input [15:0]\membrane_storage_reg[0]_0 ;
  input [15:0]\membrane_storage_reg[7]_7 ;
  input [15:0]\membrane_storage_reg[6]_6 ;
  input [15:0]\membrane_storage_reg[5]_5 ;
  input [15:0]\membrane_storage_reg[4]_4 ;
  input [0:0]\state_reg[1]_0 ;
  input clk_IBUF_BUFG;

  wire [15:0]D;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_0 ;
  wire [15:0]\membrane_storage_reg[1]_1 ;
  wire [15:0]\membrane_storage_reg[2]_2 ;
  wire [15:0]\membrane_storage_reg[3]_3 ;
  wire [15:0]\membrane_storage_reg[4]_4 ;
  wire [15:0]\membrane_storage_reg[5]_5 ;
  wire [15:0]\membrane_storage_reg[6]_6 ;
  wire [15:0]\membrane_storage_reg[7]_7 ;
  wire \selected_membrane[0]_i_2_n_0 ;
  wire \selected_membrane[0]_i_3_n_0 ;
  wire \selected_membrane[10]_i_2_n_0 ;
  wire \selected_membrane[10]_i_3_n_0 ;
  wire \selected_membrane[11]_i_2_n_0 ;
  wire \selected_membrane[11]_i_3_n_0 ;
  wire \selected_membrane[12]_i_2_n_0 ;
  wire \selected_membrane[12]_i_3_n_0 ;
  wire \selected_membrane[13]_i_2_n_0 ;
  wire \selected_membrane[13]_i_3_n_0 ;
  wire \selected_membrane[14]_i_2_n_0 ;
  wire \selected_membrane[14]_i_3_n_0 ;
  wire \selected_membrane[15]_i_2_n_0 ;
  wire \selected_membrane[15]_i_3_n_0 ;
  wire \selected_membrane[1]_i_2_n_0 ;
  wire \selected_membrane[1]_i_3_n_0 ;
  wire \selected_membrane[2]_i_2_n_0 ;
  wire \selected_membrane[2]_i_3_n_0 ;
  wire \selected_membrane[3]_i_2_n_0 ;
  wire \selected_membrane[3]_i_3_n_0 ;
  wire \selected_membrane[4]_i_2_n_0 ;
  wire \selected_membrane[4]_i_3_n_0 ;
  wire \selected_membrane[5]_i_2_n_0 ;
  wire \selected_membrane[5]_i_3_n_0 ;
  wire \selected_membrane[6]_i_2_n_0 ;
  wire \selected_membrane[6]_i_3_n_0 ;
  wire \selected_membrane[7]_i_2_n_0 ;
  wire \selected_membrane[7]_i_3_n_0 ;
  wire \selected_membrane[8]_i_2_n_0 ;
  wire \selected_membrane[8]_i_3_n_0 ;
  wire \selected_membrane[9]_i_2_n_0 ;
  wire \selected_membrane[9]_i_3_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[0]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [0]),
        .I1(\membrane_storage_reg[2]_2 [0]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [0]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [0]),
        .O(\selected_membrane[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[0]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [0]),
        .I1(\membrane_storage_reg[6]_6 [0]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [0]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [0]),
        .O(\selected_membrane[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[10]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [10]),
        .I1(\membrane_storage_reg[2]_2 [10]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [10]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [10]),
        .O(\selected_membrane[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[10]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [10]),
        .I1(\membrane_storage_reg[6]_6 [10]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [10]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [10]),
        .O(\selected_membrane[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[11]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [11]),
        .I1(\membrane_storage_reg[2]_2 [11]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [11]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [11]),
        .O(\selected_membrane[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[11]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [11]),
        .I1(\membrane_storage_reg[6]_6 [11]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [11]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [11]),
        .O(\selected_membrane[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[12]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [12]),
        .I1(\membrane_storage_reg[2]_2 [12]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [12]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [12]),
        .O(\selected_membrane[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[12]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [12]),
        .I1(\membrane_storage_reg[6]_6 [12]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [12]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [12]),
        .O(\selected_membrane[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[13]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [13]),
        .I1(\membrane_storage_reg[2]_2 [13]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [13]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [13]),
        .O(\selected_membrane[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[13]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [13]),
        .I1(\membrane_storage_reg[6]_6 [13]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [13]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [13]),
        .O(\selected_membrane[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[14]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [14]),
        .I1(\membrane_storage_reg[2]_2 [14]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [14]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [14]),
        .O(\selected_membrane[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[14]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [14]),
        .I1(\membrane_storage_reg[6]_6 [14]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [14]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [14]),
        .O(\selected_membrane[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[15]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [15]),
        .I1(\membrane_storage_reg[2]_2 [15]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [15]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [15]),
        .O(\selected_membrane[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[15]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [15]),
        .I1(\membrane_storage_reg[6]_6 [15]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [15]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [15]),
        .O(\selected_membrane[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[1]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [1]),
        .I1(\membrane_storage_reg[2]_2 [1]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [1]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [1]),
        .O(\selected_membrane[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[1]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [1]),
        .I1(\membrane_storage_reg[6]_6 [1]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [1]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [1]),
        .O(\selected_membrane[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[2]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [2]),
        .I1(\membrane_storage_reg[2]_2 [2]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [2]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [2]),
        .O(\selected_membrane[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[2]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [2]),
        .I1(\membrane_storage_reg[6]_6 [2]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [2]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [2]),
        .O(\selected_membrane[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[3]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [3]),
        .I1(\membrane_storage_reg[2]_2 [3]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [3]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [3]),
        .O(\selected_membrane[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[3]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [3]),
        .I1(\membrane_storage_reg[6]_6 [3]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [3]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [3]),
        .O(\selected_membrane[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[4]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [4]),
        .I1(\membrane_storage_reg[2]_2 [4]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [4]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [4]),
        .O(\selected_membrane[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[4]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [4]),
        .I1(\membrane_storage_reg[6]_6 [4]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [4]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [4]),
        .O(\selected_membrane[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[5]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [5]),
        .I1(\membrane_storage_reg[2]_2 [5]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [5]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [5]),
        .O(\selected_membrane[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[5]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [5]),
        .I1(\membrane_storage_reg[6]_6 [5]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [5]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [5]),
        .O(\selected_membrane[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[6]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [6]),
        .I1(\membrane_storage_reg[2]_2 [6]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [6]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [6]),
        .O(\selected_membrane[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[6]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [6]),
        .I1(\membrane_storage_reg[6]_6 [6]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [6]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [6]),
        .O(\selected_membrane[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[7]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [7]),
        .I1(\membrane_storage_reg[2]_2 [7]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [7]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [7]),
        .O(\selected_membrane[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[7]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [7]),
        .I1(\membrane_storage_reg[6]_6 [7]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [7]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [7]),
        .O(\selected_membrane[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[8]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [8]),
        .I1(\membrane_storage_reg[2]_2 [8]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [8]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [8]),
        .O(\selected_membrane[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[8]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [8]),
        .I1(\membrane_storage_reg[6]_6 [8]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [8]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [8]),
        .O(\selected_membrane[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[9]_i_2 
       (.I0(\membrane_storage_reg[3]_3 [9]),
        .I1(\membrane_storage_reg[2]_2 [9]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[1]_1 [9]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[0]_0 [9]),
        .O(\selected_membrane[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selected_membrane[9]_i_3 
       (.I0(\membrane_storage_reg[7]_7 [9]),
        .I1(\membrane_storage_reg[6]_6 [9]),
        .I2(Q[1]),
        .I3(\membrane_storage_reg[5]_5 [9]),
        .I4(Q[0]),
        .I5(\membrane_storage_reg[4]_4 [9]),
        .O(\selected_membrane[9]_i_3_n_0 ));
  MUXF7 \selected_membrane_reg[0]_i_1 
       (.I0(\selected_membrane[0]_i_2_n_0 ),
        .I1(\selected_membrane[0]_i_3_n_0 ),
        .O(D[0]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[10]_i_1 
       (.I0(\selected_membrane[10]_i_2_n_0 ),
        .I1(\selected_membrane[10]_i_3_n_0 ),
        .O(D[10]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[11]_i_1 
       (.I0(\selected_membrane[11]_i_2_n_0 ),
        .I1(\selected_membrane[11]_i_3_n_0 ),
        .O(D[11]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[12]_i_1 
       (.I0(\selected_membrane[12]_i_2_n_0 ),
        .I1(\selected_membrane[12]_i_3_n_0 ),
        .O(D[12]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[13]_i_1 
       (.I0(\selected_membrane[13]_i_2_n_0 ),
        .I1(\selected_membrane[13]_i_3_n_0 ),
        .O(D[13]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[14]_i_1 
       (.I0(\selected_membrane[14]_i_2_n_0 ),
        .I1(\selected_membrane[14]_i_3_n_0 ),
        .O(D[14]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[15]_i_1 
       (.I0(\selected_membrane[15]_i_2_n_0 ),
        .I1(\selected_membrane[15]_i_3_n_0 ),
        .O(D[15]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[1]_i_1 
       (.I0(\selected_membrane[1]_i_2_n_0 ),
        .I1(\selected_membrane[1]_i_3_n_0 ),
        .O(D[1]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[2]_i_1 
       (.I0(\selected_membrane[2]_i_2_n_0 ),
        .I1(\selected_membrane[2]_i_3_n_0 ),
        .O(D[2]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[3]_i_1 
       (.I0(\selected_membrane[3]_i_2_n_0 ),
        .I1(\selected_membrane[3]_i_3_n_0 ),
        .O(D[3]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[4]_i_1 
       (.I0(\selected_membrane[4]_i_2_n_0 ),
        .I1(\selected_membrane[4]_i_3_n_0 ),
        .O(D[4]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[5]_i_1 
       (.I0(\selected_membrane[5]_i_2_n_0 ),
        .I1(\selected_membrane[5]_i_3_n_0 ),
        .O(D[5]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[6]_i_1 
       (.I0(\selected_membrane[6]_i_2_n_0 ),
        .I1(\selected_membrane[6]_i_3_n_0 ),
        .O(D[6]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[7]_i_1 
       (.I0(\selected_membrane[7]_i_2_n_0 ),
        .I1(\selected_membrane[7]_i_3_n_0 ),
        .O(D[7]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[8]_i_1 
       (.I0(\selected_membrane[8]_i_2_n_0 ),
        .I1(\selected_membrane[8]_i_3_n_0 ),
        .O(D[8]),
        .S(Q[2]));
  MUXF7 \selected_membrane_reg[9]_i_1 
       (.I0(\selected_membrane[9]_i_2_n_0 ),
        .I1(\selected_membrane[9]_i_3_n_0 ),
        .O(D[9]),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \state[1]_i_1 
       (.I0(ensemble_seed_IBUF[0]),
        .I1(write_ensemble_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .I3(Q[2]),
        .O(\state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__1 
       (.I0(ensemble_seed_IBUF[1]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[0]),
        .O(\state[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1 
       (.I0(ensemble_seed_IBUF[2]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[1]),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1 
       (.I0(ensemble_seed_IBUF[3]),
        .I1(write_ensemble_seed_IBUF),
        .I2(Q[2]),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_2 
       (.I0(ensemble_seed_IBUF[4]),
        .I1(write_ensemble_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]_0 ),
        .D(\state[5]_i_2_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [15:7]p_1_in;
  wire \state_reg_n_0_[10] ;
  wire \state_reg_n_0_[11] ;
  wire \state_reg_n_0_[12] ;
  wire \state_reg_n_0_[13] ;
  wire \state_reg_n_0_[14] ;
  wire \state_reg_n_0_[15] ;
  wire \state_reg_n_0_[16] ;
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

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[10]_i_1__0 
       (.I0(flipping_seed_IBUF[9]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[9] ),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[11]_i_1__0 
       (.I0(flipping_seed_IBUF[10]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[10] ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[12]_i_1__0 
       (.I0(flipping_seed_IBUF[11]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[11] ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[13]_i_1__0 
       (.I0(flipping_seed_IBUF[12]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[12] ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[14]_i_1__0 
       (.I0(flipping_seed_IBUF[13]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[13] ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[15]_i_1__0 
       (.I0(flipping_seed_IBUF[14]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[14] ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[16]_i_1__0 
       (.I0(flipping_seed_IBUF[15]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[15] ),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[8]_i_1__0 
       (.I0(flipping_seed_IBUF[7]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[7] ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[9]_i_1__0 
       (.I0(flipping_seed_IBUF[8]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[8] ),
        .O(p_1_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[9]),
        .Q(\state_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[10]),
        .Q(\state_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[11]),
        .Q(\state_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[12]),
        .Q(\state_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[13]),
        .Q(\state_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[14]),
        .Q(\state_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[15]),
        .Q(\state_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\state_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[7]),
        .Q(\state_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[8]),
        .Q(\state_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBFBE)) 
    state_reg_rep_i_1
       (.I0(write_flipping_seed_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_2
       (.I0(flipping_seed_IBUF[6]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[6] ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_3
       (.I0(flipping_seed_IBUF[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_4
       (.I0(flipping_seed_IBUF[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_5
       (.I0(flipping_seed_IBUF[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_6
       (.I0(flipping_seed_IBUF[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    state_reg_rep_i_7
       (.I0(flipping_seed_IBUF[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB88B8BB88BB8B88B)) 
    state_reg_rep_i_8
       (.I0(flipping_seed_IBUF[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[15] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[16] ),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0_8
   (DOBDO,
    A,
    clk_IBUF_BUFG,
    E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF);
  output [10:0]DOBDO;
  output [10:0]A;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;

  wire [10:0]A;
  wire [6:0]D;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire distribution_output00;
  wire [15:0]flipping_seed_IBUF;
  wire [15:0]p_1_in;
  wire \state[16]_i_1_n_0 ;
  wire \state_reg_n_0_[10] ;
  wire \state_reg_n_0_[11] ;
  wire \state_reg_n_0_[12] ;
  wire \state_reg_n_0_[13] ;
  wire \state_reg_n_0_[14] ;
  wire \state_reg_n_0_[15] ;
  wire \state_reg_n_0_[16] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire \state_reg_n_0_[8] ;
  wire \state_reg_n_0_[9] ;
  wire state_reg_rep_n_10;
  wire state_reg_rep_n_11;
  wire state_reg_rep_n_12;
  wire state_reg_rep_n_13;
  wire state_reg_rep_n_14;
  wire state_reg_rep_n_15;
  wire state_reg_rep_n_6;
  wire state_reg_rep_n_7;
  wire state_reg_rep_n_8;
  wire state_reg_rep_n_9;
  wire [0:0]write_flipping_seed_IBUF;
  wire [15:11]NLW_state_reg_rep_DOADO_UNCONNECTED;
  wire [15:11]NLW_state_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_state_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_state_reg_rep_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_10
       (.I0(state_reg_rep_n_12),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_11
       (.I0(state_reg_rep_n_13),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_12
       (.I0(state_reg_rep_n_14),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_13
       (.I0(state_reg_rep_n_15),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_3
       (.I0(distribution_output00),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[10]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_4
       (.I0(state_reg_rep_n_6),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[9]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_5
       (.I0(state_reg_rep_n_7),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_6
       (.I0(state_reg_rep_n_8),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[7]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_7
       (.I0(state_reg_rep_n_9),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[6]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_8
       (.I0(state_reg_rep_n_10),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_9
       (.I0(state_reg_rep_n_11),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(A[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[10]_i_1 
       (.I0(flipping_seed_IBUF[9]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[9] ),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[11]_i_1 
       (.I0(flipping_seed_IBUF[10]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[10] ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[12]_i_1 
       (.I0(flipping_seed_IBUF[11]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[11] ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[13]_i_1 
       (.I0(flipping_seed_IBUF[12]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[12] ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[14]_i_1 
       (.I0(flipping_seed_IBUF[13]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[13] ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[15]_i_1 
       (.I0(flipping_seed_IBUF[14]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[14] ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hBFBE)) 
    \state[16]_i_1 
       (.I0(write_flipping_seed_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\state[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[16]_i_2 
       (.I0(flipping_seed_IBUF[15]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[15] ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hB88B8BB88BB8B88B)) 
    \state[1]_i_1__0 
       (.I0(flipping_seed_IBUF[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[15] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[16] ),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__2 
       (.I0(flipping_seed_IBUF[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1__0 
       (.I0(flipping_seed_IBUF[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1__0 
       (.I0(flipping_seed_IBUF[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1__1 
       (.I0(flipping_seed_IBUF[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[6]_i_1 
       (.I0(flipping_seed_IBUF[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[7]_i_1 
       (.I0(flipping_seed_IBUF[6]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[8]_i_1 
       (.I0(flipping_seed_IBUF[7]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[7] ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[9]_i_1 
       (.I0(flipping_seed_IBUF[8]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[8] ),
        .O(p_1_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\state_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\state_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\state_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\state_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\state_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\state_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\state_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\state_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\state_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[16]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\state_reg_n_0_[9] ),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1408" *) 
  (* RTL_RAM_NAME = "neuron_ensemble/flipping_unit_tb/noise_generator/noise_source/lfsr/state_reg_rep" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "10" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h079F07990793078D0786077E0776076D0762075607470735071E06FE06C605AF),
    .INIT_01(256'h07D907D607D407D107CE07CB07C807C507C107BE07BA07B607B207AD07A907A4),
    .INIT_02(256'h07FA07F907F707F507F307F107EF07ED07EB07E907E707E507E307E007DE07DC),
    .INIT_03(256'h0011000F000E000D000B000A000900070006000400030001000107FF07FE07FC),
    .INIT_04(256'h0023002200210020001F001E001D001B001A0019001800170016001400130012),
    .INIT_05(256'h003200310030002F002E002D002C002B002B002A002900280027002600250024),
    .INIT_06(256'h003E003D003D003C003B003A003A003900380037003600360035003400330032),
    .INIT_07(256'h00490048004800470046004600450044004400430042004200410040003F003F),
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
    state_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,1'b0,p_1_in[6:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,D,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_state_reg_rep_DOADO_UNCONNECTED[15:11],distribution_output00,state_reg_rep_n_6,state_reg_rep_n_7,state_reg_rep_n_8,state_reg_rep_n_9,state_reg_rep_n_10,state_reg_rep_n_11,state_reg_rep_n_12,state_reg_rep_n_13,state_reg_rep_n_14,state_reg_rep_n_15}),
        .DOBDO({NLW_state_reg_rep_DOBDO_UNCONNECTED[15:11],DOBDO}),
        .DOPADOP(NLW_state_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_state_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(\state[16]_i_1_n_0 ),
        .ENBWREN(E),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module LFSR_inout
   (Q,
    D,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    \membrane_storage_reg[3]_11 ,
    \membrane_storage_reg[2]_10 ,
    \membrane_storage_reg[1]_9 ,
    \membrane_storage_reg[0]_8 ,
    \membrane_storage_reg[7]_15 ,
    \membrane_storage_reg[6]_14 ,
    \membrane_storage_reg[5]_13 ,
    \membrane_storage_reg[4]_12 ,
    \state_reg[1] ,
    clk_IBUF_BUFG);
  output [2:0]Q;
  output [15:0]D;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [15:0]\membrane_storage_reg[3]_11 ;
  input [15:0]\membrane_storage_reg[2]_10 ;
  input [15:0]\membrane_storage_reg[1]_9 ;
  input [15:0]\membrane_storage_reg[0]_8 ;
  input [15:0]\membrane_storage_reg[7]_15 ;
  input [15:0]\membrane_storage_reg[6]_14 ;
  input [15:0]\membrane_storage_reg[5]_13 ;
  input [15:0]\membrane_storage_reg[4]_12 ;
  input [0:0]\state_reg[1] ;
  input clk_IBUF_BUFG;

  wire [15:0]D;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_8 ;
  wire [15:0]\membrane_storage_reg[1]_9 ;
  wire [15:0]\membrane_storage_reg[2]_10 ;
  wire [15:0]\membrane_storage_reg[3]_11 ;
  wire [15:0]\membrane_storage_reg[4]_12 ;
  wire [15:0]\membrane_storage_reg[5]_13 ;
  wire [15:0]\membrane_storage_reg[6]_14 ;
  wire [15:0]\membrane_storage_reg[7]_15 ;
  wire [0:0]\state_reg[1] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR lfsr
       (.D(D),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_8 (\membrane_storage_reg[0]_8 ),
        .\membrane_storage_reg[1]_9 (\membrane_storage_reg[1]_9 ),
        .\membrane_storage_reg[2]_10 (\membrane_storage_reg[2]_10 ),
        .\membrane_storage_reg[3]_11 (\membrane_storage_reg[3]_11 ),
        .\membrane_storage_reg[4]_12 (\membrane_storage_reg[4]_12 ),
        .\membrane_storage_reg[5]_13 (\membrane_storage_reg[5]_13 ),
        .\membrane_storage_reg[6]_14 (\membrane_storage_reg[6]_14 ),
        .\membrane_storage_reg[7]_15 (\membrane_storage_reg[7]_15 ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout_3
   (Q,
    D,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    \membrane_storage_reg[3]_3 ,
    \membrane_storage_reg[2]_2 ,
    \membrane_storage_reg[1]_1 ,
    \membrane_storage_reg[0]_0 ,
    \membrane_storage_reg[7]_7 ,
    \membrane_storage_reg[6]_6 ,
    \membrane_storage_reg[5]_5 ,
    \membrane_storage_reg[4]_4 ,
    \state_reg[1] ,
    clk_IBUF_BUFG);
  output [2:0]Q;
  output [15:0]D;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [15:0]\membrane_storage_reg[3]_3 ;
  input [15:0]\membrane_storage_reg[2]_2 ;
  input [15:0]\membrane_storage_reg[1]_1 ;
  input [15:0]\membrane_storage_reg[0]_0 ;
  input [15:0]\membrane_storage_reg[7]_7 ;
  input [15:0]\membrane_storage_reg[6]_6 ;
  input [15:0]\membrane_storage_reg[5]_5 ;
  input [15:0]\membrane_storage_reg[4]_4 ;
  input [0:0]\state_reg[1] ;
  input clk_IBUF_BUFG;

  wire [15:0]D;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_0 ;
  wire [15:0]\membrane_storage_reg[1]_1 ;
  wire [15:0]\membrane_storage_reg[2]_2 ;
  wire [15:0]\membrane_storage_reg[3]_3 ;
  wire [15:0]\membrane_storage_reg[4]_4 ;
  wire [15:0]\membrane_storage_reg[5]_5 ;
  wire [15:0]\membrane_storage_reg[6]_6 ;
  wire [15:0]\membrane_storage_reg[7]_7 ;
  wire [0:0]\state_reg[1] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR_4 lfsr
       (.D(D),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_0 (\membrane_storage_reg[0]_0 ),
        .\membrane_storage_reg[1]_1 (\membrane_storage_reg[1]_1 ),
        .\membrane_storage_reg[2]_2 (\membrane_storage_reg[2]_2 ),
        .\membrane_storage_reg[3]_3 (\membrane_storage_reg[3]_3 ),
        .\membrane_storage_reg[4]_4 (\membrane_storage_reg[4]_4 ),
        .\membrane_storage_reg[5]_5 (\membrane_storage_reg[5]_5 ),
        .\membrane_storage_reg[6]_6 (\membrane_storage_reg[6]_6 ),
        .\membrane_storage_reg[7]_7 (\membrane_storage_reg[7]_7 ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0
   (E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0 lfsr
       (.D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0_7
   (DOBDO,
    A,
    clk_IBUF_BUFG,
    E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF);
  output [10:0]DOBDO;
  output [10:0]A;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;

  wire [10:0]A;
  wire [6:0]D;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0_8 lfsr
       (.A(A),
        .D(D),
        .DOBDO(DOBDO),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module flipping_unit
   (ADDRBWRADDR,
    DI,
    E,
    \current_state_reg[2] ,
    \flipping_output_reg_reg[7]_0 ,
    S,
    \selected_membrane_reg_reg[15] ,
    D,
    clk_IBUF_BUFG,
    B,
    Q,
    membrane_compare0,
    spike_carry__0,
    spike_carry__0_0,
    \x_reg[0] ,
    write_flipping_seed_IBUF,
    DOBDO,
    spike_carry,
    spike_carry_0,
    spike_carry_1,
    spike_carry__0_1,
    flipping_seed_IBUF);
  output [8:0]ADDRBWRADDR;
  output [3:0]DI;
  output [0:0]E;
  output [0:0]\current_state_reg[2] ;
  output [3:0]\flipping_output_reg_reg[7]_0 ;
  output [3:0]S;
  output [3:0]\selected_membrane_reg_reg[15] ;
  output [6:0]D;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [2:0]Q;
  input [14:0]membrane_compare0;
  input [0:0]spike_carry__0;
  input [15:0]spike_carry__0_0;
  input \x_reg[0] ;
  input [0:0]write_flipping_seed_IBUF;
  input [10:0]DOBDO;
  input spike_carry;
  input spike_carry_0;
  input spike_carry_1;
  input spike_carry__0_1;
  input [15:0]flipping_seed_IBUF;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [6:0]D;
  wire [3:0]DI;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [17:8]abs_val0;
  wire clk_IBUF_BUFG;
  wire [0:0]\current_state_reg[2] ;
  wire flipping_CE;
  wire [15:0]flipping_output_int;
  wire \flipping_output_reg[15]_i_4_n_0 ;
  wire \flipping_output_reg[15]_i_5__0_n_0 ;
  wire \flipping_output_reg[15]_i_6__0_n_0 ;
  wire \flipping_output_reg[15]_i_7__0_n_0 ;
  wire \flipping_output_reg[15]_i_8__0_n_0 ;
  wire \flipping_output_reg[15]_i_9__0_n_0 ;
  wire \flipping_output_reg[3]_i_10__0_n_0 ;
  wire \flipping_output_reg[3]_i_11__0_n_0 ;
  wire \flipping_output_reg[3]_i_12__0_n_0 ;
  wire \flipping_output_reg[3]_i_4__0_n_0 ;
  wire \flipping_output_reg[3]_i_5__0_n_0 ;
  wire \flipping_output_reg[3]_i_6__0_n_0 ;
  wire \flipping_output_reg[3]_i_7__0_n_0 ;
  wire \flipping_output_reg[3]_i_8__0_n_0 ;
  wire \flipping_output_reg[3]_i_9__0_n_0 ;
  wire \flipping_output_reg[4]_i_2__0_n_0 ;
  wire \flipping_output_reg[4]_i_4__0_n_0 ;
  wire \flipping_output_reg[4]_i_5__0_n_0 ;
  wire \flipping_output_reg[4]_i_6__0_n_0 ;
  wire \flipping_output_reg[4]_i_7__0_n_0 ;
  wire \flipping_output_reg[5]_i_2__0_n_0 ;
  wire \flipping_output_reg_reg[15]_i_3_n_0 ;
  wire \flipping_output_reg_reg[15]_i_3_n_1 ;
  wire \flipping_output_reg_reg[15]_i_3_n_2 ;
  wire \flipping_output_reg_reg[15]_i_3_n_3 ;
  wire \flipping_output_reg_reg[3]_i_2__0_n_0 ;
  wire \flipping_output_reg_reg[3]_i_2__0_n_1 ;
  wire \flipping_output_reg_reg[3]_i_2__0_n_2 ;
  wire \flipping_output_reg_reg[3]_i_2__0_n_3 ;
  wire \flipping_output_reg_reg[3]_i_3__0_n_0 ;
  wire \flipping_output_reg_reg[3]_i_3__0_n_1 ;
  wire \flipping_output_reg_reg[3]_i_3__0_n_2 ;
  wire \flipping_output_reg_reg[3]_i_3__0_n_3 ;
  wire \flipping_output_reg_reg[4]_i_3__0_n_0 ;
  wire \flipping_output_reg_reg[4]_i_3__0_n_1 ;
  wire \flipping_output_reg_reg[4]_i_3__0_n_2 ;
  wire \flipping_output_reg_reg[4]_i_3__0_n_3 ;
  wire [3:0]\flipping_output_reg_reg[7]_0 ;
  wire \flipping_output_reg_reg_n_0_[0] ;
  wire \flipping_output_reg_reg_n_0_[15] ;
  wire \flipping_output_reg_reg_n_0_[1] ;
  wire \flipping_output_reg_reg_n_0_[2] ;
  wire \flipping_output_reg_reg_n_0_[3] ;
  wire \flipping_output_reg_reg_n_0_[4] ;
  wire \flipping_output_reg_reg_n_0_[5] ;
  wire \flipping_output_reg_reg_n_0_[6] ;
  wire \flipping_output_reg_reg_n_0_[7] ;
  wire \flipping_output_reg_reg_n_0_[8] ;
  wire \flipping_output_reg_reg_n_0_[9] ;
  wire [15:0]flipping_seed_IBUF;
  wire [14:0]membrane_compare0;
  wire [17:0]noise_out;
  wire [17:0]noise_times_temp_reg_reg__0;
  wire noise_times_temp_reg_reg_n_100;
  wire noise_times_temp_reg_reg_n_101;
  wire noise_times_temp_reg_reg_n_102;
  wire noise_times_temp_reg_reg_n_103;
  wire noise_times_temp_reg_reg_n_104;
  wire noise_times_temp_reg_reg_n_105;
  wire noise_times_temp_reg_reg_n_98;
  wire noise_times_temp_reg_reg_n_99;
  wire reset_flipping;
  wire [3:0]\selected_membrane_reg_reg[15] ;
  wire spike_carry;
  wire spike_carry_0;
  wire spike_carry_1;
  wire [0:0]spike_carry__0;
  wire [15:0]spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_i_12__0_n_0;
  wire spike_carry_i_14__0_n_0;
  wire spike_carry_i_15__0_n_0;
  wire spike_carry_i_16__0_n_0;
  wire [0:0]write_flipping_seed_IBUF;
  wire \x_reg[0] ;
  wire [3:0]\NLW_flipping_output_reg_reg[15]_i_2__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_flipping_output_reg_reg[15]_i_2__0_O_UNCONNECTED ;
  wire [2:0]\NLW_flipping_output_reg_reg[3]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_flipping_output_reg_reg[3]_i_3__0_O_UNCONNECTED ;
  wire NLW_noise_times_temp_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_noise_times_temp_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_noise_times_temp_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_noise_times_temp_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_noise_times_temp_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_noise_times_temp_reg_reg_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \flipping_output_reg[0]_i_1__0 
       (.I0(abs_val0[8]),
        .I1(noise_times_temp_reg_reg__0[17]),
        .I2(noise_times_temp_reg_reg__0[8]),
        .O(flipping_output_int[0]));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \flipping_output_reg[15]_i_1 
       (.I0(abs_val0[17]),
        .I1(noise_times_temp_reg_reg__0[17]),
        .I2(abs_val0[16]),
        .I3(abs_val0[14]),
        .I4(\flipping_output_reg[15]_i_4_n_0 ),
        .I5(abs_val0[15]),
        .O(flipping_output_int[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \flipping_output_reg[15]_i_4 
       (.I0(abs_val0[12]),
        .I1(abs_val0[10]),
        .I2(abs_val0[8]),
        .I3(abs_val0[9]),
        .I4(abs_val0[11]),
        .I5(abs_val0[13]),
        .O(\flipping_output_reg[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_5__0 
       (.I0(noise_times_temp_reg_reg__0[17]),
        .O(\flipping_output_reg[15]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_6__0 
       (.I0(noise_times_temp_reg_reg__0[16]),
        .O(\flipping_output_reg[15]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_7__0 
       (.I0(noise_times_temp_reg_reg__0[15]),
        .O(\flipping_output_reg[15]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_8__0 
       (.I0(noise_times_temp_reg_reg__0[14]),
        .O(\flipping_output_reg[15]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_9__0 
       (.I0(noise_times_temp_reg_reg__0[13]),
        .O(\flipping_output_reg[15]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \flipping_output_reg[1]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[9]),
        .I1(noise_times_temp_reg_reg__0[17]),
        .I2(abs_val0[9]),
        .I3(abs_val0[8]),
        .O(flipping_output_int[1]));
  LUT5 #(
    .INIT(32'h03AAFCAA)) 
    \flipping_output_reg[2]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[10]),
        .I1(abs_val0[8]),
        .I2(abs_val0[9]),
        .I3(noise_times_temp_reg_reg__0[17]),
        .I4(abs_val0[10]),
        .O(flipping_output_int[2]));
  LUT6 #(
    .INIT(64'h0003AAAAFFFCAAAA)) 
    \flipping_output_reg[3]_i_1 
       (.I0(noise_times_temp_reg_reg__0[11]),
        .I1(abs_val0[9]),
        .I2(abs_val0[8]),
        .I3(abs_val0[10]),
        .I4(noise_times_temp_reg_reg__0[17]),
        .I5(abs_val0[11]),
        .O(flipping_output_int[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_10__0 
       (.I0(noise_times_temp_reg_reg__0[3]),
        .O(\flipping_output_reg[3]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_11__0 
       (.I0(noise_times_temp_reg_reg__0[2]),
        .O(\flipping_output_reg[3]_i_11__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_12__0 
       (.I0(noise_times_temp_reg_reg__0[1]),
        .O(\flipping_output_reg[3]_i_12__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_4__0 
       (.I0(noise_times_temp_reg_reg__0[8]),
        .O(\flipping_output_reg[3]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_5__0 
       (.I0(noise_times_temp_reg_reg__0[7]),
        .O(\flipping_output_reg[3]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_6__0 
       (.I0(noise_times_temp_reg_reg__0[6]),
        .O(\flipping_output_reg[3]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_7__0 
       (.I0(noise_times_temp_reg_reg__0[5]),
        .O(\flipping_output_reg[3]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_8__0 
       (.I0(noise_times_temp_reg_reg__0[0]),
        .O(\flipping_output_reg[3]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_9__0 
       (.I0(noise_times_temp_reg_reg__0[4]),
        .O(\flipping_output_reg[3]_i_9__0_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[4]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[12]),
        .I1(\flipping_output_reg[4]_i_2__0_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[12]),
        .O(flipping_output_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \flipping_output_reg[4]_i_2__0 
       (.I0(abs_val0[10]),
        .I1(abs_val0[8]),
        .I2(abs_val0[9]),
        .I3(abs_val0[11]),
        .O(\flipping_output_reg[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_4__0 
       (.I0(noise_times_temp_reg_reg__0[12]),
        .O(\flipping_output_reg[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_5__0 
       (.I0(noise_times_temp_reg_reg__0[11]),
        .O(\flipping_output_reg[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_6__0 
       (.I0(noise_times_temp_reg_reg__0[10]),
        .O(\flipping_output_reg[4]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_7__0 
       (.I0(noise_times_temp_reg_reg__0[9]),
        .O(\flipping_output_reg[4]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[5]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[13]),
        .I1(\flipping_output_reg[5]_i_2__0_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[13]),
        .O(flipping_output_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \flipping_output_reg[5]_i_2__0 
       (.I0(abs_val0[11]),
        .I1(abs_val0[9]),
        .I2(abs_val0[8]),
        .I3(abs_val0[10]),
        .I4(abs_val0[12]),
        .O(\flipping_output_reg[5]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[6]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[14]),
        .I1(\flipping_output_reg[15]_i_4_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[14]),
        .O(flipping_output_int[6]));
  LUT5 #(
    .INIT(32'h03AAFCAA)) 
    \flipping_output_reg[7]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[15]),
        .I1(\flipping_output_reg[15]_i_4_n_0 ),
        .I2(abs_val0[14]),
        .I3(noise_times_temp_reg_reg__0[17]),
        .I4(abs_val0[15]),
        .O(flipping_output_int[7]));
  LUT6 #(
    .INIT(64'h0003AAAAFFFCAAAA)) 
    \flipping_output_reg[8]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[16]),
        .I1(abs_val0[14]),
        .I2(\flipping_output_reg[15]_i_4_n_0 ),
        .I3(abs_val0[15]),
        .I4(noise_times_temp_reg_reg__0[17]),
        .I5(abs_val0[16]),
        .O(flipping_output_int[8]));
  LUT6 #(
    .INIT(64'h00010000FFFE0000)) 
    \flipping_output_reg[9]_i_1 
       (.I0(abs_val0[15]),
        .I1(\flipping_output_reg[15]_i_4_n_0 ),
        .I2(abs_val0[14]),
        .I3(abs_val0[16]),
        .I4(noise_times_temp_reg_reg__0[17]),
        .I5(abs_val0[17]),
        .O(flipping_output_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[0]),
        .Q(\flipping_output_reg_reg_n_0_[0] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[15]),
        .Q(\flipping_output_reg_reg_n_0_[15] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[15]_i_2__0 
       (.CI(\flipping_output_reg_reg[15]_i_3_n_0 ),
        .CO(\NLW_flipping_output_reg_reg[15]_i_2__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_flipping_output_reg_reg[15]_i_2__0_O_UNCONNECTED [3:1],abs_val0[17]}),
        .S({1'b0,1'b0,1'b0,\flipping_output_reg[15]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[15]_i_3 
       (.CI(\flipping_output_reg_reg[4]_i_3__0_n_0 ),
        .CO({\flipping_output_reg_reg[15]_i_3_n_0 ,\flipping_output_reg_reg[15]_i_3_n_1 ,\flipping_output_reg_reg[15]_i_3_n_2 ,\flipping_output_reg_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_val0[16:13]),
        .S({\flipping_output_reg[15]_i_6__0_n_0 ,\flipping_output_reg[15]_i_7__0_n_0 ,\flipping_output_reg[15]_i_8__0_n_0 ,\flipping_output_reg[15]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[1]),
        .Q(\flipping_output_reg_reg_n_0_[1] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[2]),
        .Q(\flipping_output_reg_reg_n_0_[2] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[3]),
        .Q(\flipping_output_reg_reg_n_0_[3] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[3]_i_2__0 
       (.CI(\flipping_output_reg_reg[3]_i_3__0_n_0 ),
        .CO({\flipping_output_reg_reg[3]_i_2__0_n_0 ,\flipping_output_reg_reg[3]_i_2__0_n_1 ,\flipping_output_reg_reg[3]_i_2__0_n_2 ,\flipping_output_reg_reg[3]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({abs_val0[8],\NLW_flipping_output_reg_reg[3]_i_2__0_O_UNCONNECTED [2:0]}),
        .S({\flipping_output_reg[3]_i_4__0_n_0 ,\flipping_output_reg[3]_i_5__0_n_0 ,\flipping_output_reg[3]_i_6__0_n_0 ,\flipping_output_reg[3]_i_7__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[3]_i_3__0 
       (.CI(1'b0),
        .CO({\flipping_output_reg_reg[3]_i_3__0_n_0 ,\flipping_output_reg_reg[3]_i_3__0_n_1 ,\flipping_output_reg_reg[3]_i_3__0_n_2 ,\flipping_output_reg_reg[3]_i_3__0_n_3 }),
        .CYINIT(\flipping_output_reg[3]_i_8__0_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_flipping_output_reg_reg[3]_i_3__0_O_UNCONNECTED [3:0]),
        .S({\flipping_output_reg[3]_i_9__0_n_0 ,\flipping_output_reg[3]_i_10__0_n_0 ,\flipping_output_reg[3]_i_11__0_n_0 ,\flipping_output_reg[3]_i_12__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[4]),
        .Q(\flipping_output_reg_reg_n_0_[4] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[4]_i_3__0 
       (.CI(\flipping_output_reg_reg[3]_i_2__0_n_0 ),
        .CO({\flipping_output_reg_reg[4]_i_3__0_n_0 ,\flipping_output_reg_reg[4]_i_3__0_n_1 ,\flipping_output_reg_reg[4]_i_3__0_n_2 ,\flipping_output_reg_reg[4]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_val0[12:9]),
        .S({\flipping_output_reg[4]_i_4__0_n_0 ,\flipping_output_reg[4]_i_5__0_n_0 ,\flipping_output_reg[4]_i_6__0_n_0 ,\flipping_output_reg[4]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[5]),
        .Q(\flipping_output_reg_reg_n_0_[5] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[6]),
        .Q(\flipping_output_reg_reg_n_0_[6] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[7]),
        .Q(\flipping_output_reg_reg_n_0_[7] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[8]),
        .Q(\flipping_output_reg_reg_n_0_[8] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[9]),
        .Q(\flipping_output_reg_reg_n_0_[9] ),
        .R(reset_flipping));
  log_noise_generator noise_generator
       (.D(D),
        .E(\current_state_reg[2] ),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
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
    noise_times_temp_reg_reg
       (.A({noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[10],noise_out[17],noise_out[8:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_noise_times_temp_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_noise_times_temp_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_noise_times_temp_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_noise_times_temp_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(flipping_CE),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(flipping_CE),
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
        .MULTSIGNOUT(NLW_noise_times_temp_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_noise_times_temp_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_noise_times_temp_reg_reg_P_UNCONNECTED[47:26],noise_times_temp_reg_reg__0,noise_times_temp_reg_reg_n_98,noise_times_temp_reg_reg_n_99,noise_times_temp_reg_reg_n_100,noise_times_temp_reg_reg_n_101,noise_times_temp_reg_reg_n_102,noise_times_temp_reg_reg_n_103,noise_times_temp_reg_reg_n_104,noise_times_temp_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_noise_times_temp_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_noise_times_temp_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_noise_times_temp_reg_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_noise_times_temp_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_10__0
       (.I0(DOBDO[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[3]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_11__0
       (.I0(DOBDO[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[2]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_12__0
       (.I0(DOBDO[1]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[1]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_13__0
       (.I0(DOBDO[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[0]));
  LUT3 #(
    .INIT(8'h76)) 
    noise_times_temp_reg_reg_i_1__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(flipping_CE));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_3__0
       (.I0(DOBDO[10]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[17]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_4__0
       (.I0(DOBDO[9]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[10]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_5__0
       (.I0(DOBDO[8]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[8]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_6__0
       (.I0(DOBDO[7]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[7]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_7__0
       (.I0(DOBDO[6]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[6]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_8__0
       (.I0(DOBDO[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[5]));
  LUT4 #(
    .INIT(16'h2A28)) 
    noise_times_temp_reg_reg_i_9__0
       (.I0(DOBDO[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(noise_out[4]));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry__0_i_12__0
       (.I0(\flipping_output_reg_reg_n_0_[9] ),
        .I1(membrane_compare0[8]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[9]),
        .O(spike_carry__0_i_12__0_n_0));
  LUT6 #(
    .INIT(64'h000000FCFAFA00FC)) 
    spike_carry__0_i_1__0
       (.I0(spike_carry__0_0[14]),
        .I1(membrane_compare0[13]),
        .I2(\flipping_output_reg_reg_n_0_[15] ),
        .I3(membrane_compare0[14]),
        .I4(spike_carry__0),
        .I5(spike_carry__0_0[15]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_carry__0_i_2__0
       (.I0(\flipping_output_reg_reg_n_0_[15] ),
        .I1(spike_carry__0_0[12]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[11]),
        .I4(spike_carry__0_0[13]),
        .I5(membrane_compare0[12]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_carry__0_i_3__0
       (.I0(\flipping_output_reg_reg_n_0_[15] ),
        .I1(spike_carry__0_0[10]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[9]),
        .I4(spike_carry__0_0[11]),
        .I5(membrane_compare0[10]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry__0_i_4__0
       (.I0(\flipping_output_reg_reg_n_0_[9] ),
        .I1(spike_carry__0_1),
        .I2(membrane_compare0[7]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[8]),
        .I5(\flipping_output_reg_reg_n_0_[8] ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_5__0
       (.I0(spike_carry__0_0[15]),
        .I1(membrane_compare0[14]),
        .I2(spike_carry__0_0[14]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[13]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [3]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_6__0
       (.I0(spike_carry__0_0[13]),
        .I1(membrane_compare0[12]),
        .I2(spike_carry__0_0[12]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[11]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [2]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_7__0
       (.I0(spike_carry__0_0[11]),
        .I1(membrane_compare0[10]),
        .I2(spike_carry__0_0[10]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[9]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [1]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry__0_i_8__0
       (.I0(spike_carry__0_i_12__0_n_0),
        .I1(spike_carry__0_0[8]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[7]),
        .I4(\flipping_output_reg_reg_n_0_[8] ),
        .O(\selected_membrane_reg_reg[15] [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_14__0
       (.I0(\flipping_output_reg_reg_n_0_[7] ),
        .I1(membrane_compare0[6]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[7]),
        .O(spike_carry_i_14__0_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_15__0
       (.I0(\flipping_output_reg_reg_n_0_[5] ),
        .I1(membrane_compare0[4]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[5]),
        .O(spike_carry_i_15__0_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_16__0
       (.I0(\flipping_output_reg_reg_n_0_[3] ),
        .I1(membrane_compare0[2]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[3]),
        .O(spike_carry_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_1__0
       (.I0(\flipping_output_reg_reg_n_0_[7] ),
        .I1(spike_carry_1),
        .I2(membrane_compare0[5]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[6]),
        .I5(\flipping_output_reg_reg_n_0_[6] ),
        .O(\flipping_output_reg_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_2__0
       (.I0(\flipping_output_reg_reg_n_0_[5] ),
        .I1(spike_carry_0),
        .I2(membrane_compare0[3]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[4]),
        .I5(\flipping_output_reg_reg_n_0_[4] ),
        .O(\flipping_output_reg_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_3__0
       (.I0(\flipping_output_reg_reg_n_0_[3] ),
        .I1(spike_carry),
        .I2(membrane_compare0[1]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[2]),
        .I5(\flipping_output_reg_reg_n_0_[2] ),
        .O(\flipping_output_reg_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h54045404FD5D5404)) 
    spike_carry_i_4__0
       (.I0(\flipping_output_reg_reg_n_0_[1] ),
        .I1(membrane_compare0[0]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[1]),
        .I4(spike_carry__0_0[0]),
        .I5(\flipping_output_reg_reg_n_0_[0] ),
        .O(\flipping_output_reg_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_5__0
       (.I0(spike_carry_i_14__0_n_0),
        .I1(spike_carry__0_0[6]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[5]),
        .I4(\flipping_output_reg_reg_n_0_[6] ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_6__0
       (.I0(spike_carry_i_15__0_n_0),
        .I1(spike_carry__0_0[4]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[3]),
        .I4(\flipping_output_reg_reg_n_0_[4] ),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_7__0
       (.I0(spike_carry_i_16__0_n_0),
        .I1(spike_carry__0_0[2]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[1]),
        .I4(\flipping_output_reg_reg_n_0_[2] ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    spike_carry_i_8__0
       (.I0(spike_carry__0_0[1]),
        .I1(spike_carry__0),
        .I2(membrane_compare0[0]),
        .I3(\flipping_output_reg_reg_n_0_[1] ),
        .I4(\flipping_output_reg_reg_n_0_[0] ),
        .I5(spike_carry__0_0[0]),
        .O(S[0]));
  temperature_module temperature_module_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_flipping(reset_flipping),
        .\x_reg[0]_0 (\x_reg[0] ));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module flipping_unit_1
   (DOBDO,
    B,
    DI,
    \x_reg[6] ,
    \flipping_output_reg_reg[7]_0 ,
    S,
    \selected_membrane_reg_reg[15] ,
    clk_IBUF_BUFG,
    E,
    D,
    x_reg_rep,
    x_reg_rep_0,
    ADDRBWRADDR,
    Q,
    membrane_compare0,
    spike_carry__0,
    spike_carry__0_0,
    write_flipping_seed_IBUF,
    \x_reg[0] ,
    spike_carry,
    spike_carry_0,
    spike_carry_1,
    spike_carry__0_1,
    flipping_seed_IBUF);
  output [10:0]DOBDO;
  output [17:0]B;
  output [3:0]DI;
  output [0:0]\x_reg[6] ;
  output [3:0]\flipping_output_reg_reg[7]_0 ;
  output [3:0]S;
  output [3:0]\selected_membrane_reg_reg[15] ;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input x_reg_rep;
  input x_reg_rep_0;
  input [8:0]ADDRBWRADDR;
  input [2:0]Q;
  input [14:0]membrane_compare0;
  input [0:0]spike_carry__0;
  input [15:0]spike_carry__0_0;
  input [0:0]write_flipping_seed_IBUF;
  input \x_reg[0] ;
  input spike_carry;
  input spike_carry_0;
  input spike_carry_1;
  input spike_carry__0_1;
  input [15:0]flipping_seed_IBUF;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [6:0]D;
  wire [3:0]DI;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [17:8]abs_val0;
  wire clk_IBUF_BUFG;
  wire flipping_CE;
  wire [15:0]flipping_output_int;
  wire \flipping_output_reg[15]_i_3_n_0 ;
  wire \flipping_output_reg[15]_i_5_n_0 ;
  wire \flipping_output_reg[15]_i_6_n_0 ;
  wire \flipping_output_reg[15]_i_7_n_0 ;
  wire \flipping_output_reg[15]_i_8_n_0 ;
  wire \flipping_output_reg[15]_i_9_n_0 ;
  wire \flipping_output_reg[3]_i_10_n_0 ;
  wire \flipping_output_reg[3]_i_11_n_0 ;
  wire \flipping_output_reg[3]_i_12_n_0 ;
  wire \flipping_output_reg[3]_i_4_n_0 ;
  wire \flipping_output_reg[3]_i_5_n_0 ;
  wire \flipping_output_reg[3]_i_6_n_0 ;
  wire \flipping_output_reg[3]_i_7_n_0 ;
  wire \flipping_output_reg[3]_i_8_n_0 ;
  wire \flipping_output_reg[3]_i_9_n_0 ;
  wire \flipping_output_reg[4]_i_2_n_0 ;
  wire \flipping_output_reg[4]_i_4_n_0 ;
  wire \flipping_output_reg[4]_i_5_n_0 ;
  wire \flipping_output_reg[4]_i_6_n_0 ;
  wire \flipping_output_reg[4]_i_7_n_0 ;
  wire \flipping_output_reg[5]_i_2_n_0 ;
  wire \flipping_output_reg_reg[15]_i_2_n_0 ;
  wire \flipping_output_reg_reg[15]_i_2_n_1 ;
  wire \flipping_output_reg_reg[15]_i_2_n_2 ;
  wire \flipping_output_reg_reg[15]_i_2_n_3 ;
  wire \flipping_output_reg_reg[3]_i_2_n_0 ;
  wire \flipping_output_reg_reg[3]_i_2_n_1 ;
  wire \flipping_output_reg_reg[3]_i_2_n_2 ;
  wire \flipping_output_reg_reg[3]_i_2_n_3 ;
  wire \flipping_output_reg_reg[3]_i_3_n_0 ;
  wire \flipping_output_reg_reg[3]_i_3_n_1 ;
  wire \flipping_output_reg_reg[3]_i_3_n_2 ;
  wire \flipping_output_reg_reg[3]_i_3_n_3 ;
  wire \flipping_output_reg_reg[4]_i_3_n_0 ;
  wire \flipping_output_reg_reg[4]_i_3_n_1 ;
  wire \flipping_output_reg_reg[4]_i_3_n_2 ;
  wire \flipping_output_reg_reg[4]_i_3_n_3 ;
  wire [3:0]\flipping_output_reg_reg[7]_0 ;
  wire \flipping_output_reg_reg_n_0_[0] ;
  wire \flipping_output_reg_reg_n_0_[15] ;
  wire \flipping_output_reg_reg_n_0_[1] ;
  wire \flipping_output_reg_reg_n_0_[2] ;
  wire \flipping_output_reg_reg_n_0_[3] ;
  wire \flipping_output_reg_reg_n_0_[4] ;
  wire \flipping_output_reg_reg_n_0_[5] ;
  wire \flipping_output_reg_reg_n_0_[6] ;
  wire \flipping_output_reg_reg_n_0_[7] ;
  wire \flipping_output_reg_reg_n_0_[8] ;
  wire \flipping_output_reg_reg_n_0_[9] ;
  wire [15:0]flipping_seed_IBUF;
  wire [14:0]membrane_compare0;
  wire [17:0]noise_out;
  wire [17:0]noise_times_temp_reg_reg__0;
  wire noise_times_temp_reg_reg_n_100;
  wire noise_times_temp_reg_reg_n_101;
  wire noise_times_temp_reg_reg_n_102;
  wire noise_times_temp_reg_reg_n_103;
  wire noise_times_temp_reg_reg_n_104;
  wire noise_times_temp_reg_reg_n_105;
  wire noise_times_temp_reg_reg_n_98;
  wire noise_times_temp_reg_reg_n_99;
  wire reset_flipping;
  wire [3:0]\selected_membrane_reg_reg[15] ;
  wire spike_carry;
  wire spike_carry_0;
  wire spike_carry_1;
  wire [0:0]spike_carry__0;
  wire [15:0]spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_i_12_n_0;
  wire spike_carry_i_14_n_0;
  wire spike_carry_i_15_n_0;
  wire spike_carry_i_16_n_0;
  wire [0:0]write_flipping_seed_IBUF;
  wire \x_reg[0] ;
  wire [0:0]\x_reg[6] ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire [17:0]y;
  wire [3:0]\NLW_flipping_output_reg_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_flipping_output_reg_reg[15]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_flipping_output_reg_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_flipping_output_reg_reg[3]_i_3_O_UNCONNECTED ;
  wire NLW_noise_times_temp_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_noise_times_temp_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_noise_times_temp_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_noise_times_temp_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_noise_times_temp_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_noise_times_temp_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_noise_times_temp_reg_reg_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \flipping_output_reg[0]_i_1 
       (.I0(abs_val0[8]),
        .I1(noise_times_temp_reg_reg__0[17]),
        .I2(noise_times_temp_reg_reg__0[8]),
        .O(flipping_output_int[0]));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \flipping_output_reg[15]_i_1__0 
       (.I0(abs_val0[14]),
        .I1(\flipping_output_reg[15]_i_3_n_0 ),
        .I2(abs_val0[15]),
        .I3(abs_val0[16]),
        .I4(abs_val0[17]),
        .I5(noise_times_temp_reg_reg__0[17]),
        .O(flipping_output_int[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \flipping_output_reg[15]_i_3 
       (.I0(abs_val0[12]),
        .I1(abs_val0[10]),
        .I2(abs_val0[8]),
        .I3(abs_val0[9]),
        .I4(abs_val0[11]),
        .I5(abs_val0[13]),
        .O(\flipping_output_reg[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_5 
       (.I0(noise_times_temp_reg_reg__0[16]),
        .O(\flipping_output_reg[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_6 
       (.I0(noise_times_temp_reg_reg__0[15]),
        .O(\flipping_output_reg[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_7 
       (.I0(noise_times_temp_reg_reg__0[14]),
        .O(\flipping_output_reg[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_8 
       (.I0(noise_times_temp_reg_reg__0[13]),
        .O(\flipping_output_reg[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[15]_i_9 
       (.I0(noise_times_temp_reg_reg__0[17]),
        .O(\flipping_output_reg[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \flipping_output_reg[1]_i_1 
       (.I0(noise_times_temp_reg_reg__0[9]),
        .I1(noise_times_temp_reg_reg__0[17]),
        .I2(abs_val0[9]),
        .I3(abs_val0[8]),
        .O(flipping_output_int[1]));
  LUT5 #(
    .INIT(32'h03AAFCAA)) 
    \flipping_output_reg[2]_i_1 
       (.I0(noise_times_temp_reg_reg__0[10]),
        .I1(abs_val0[8]),
        .I2(abs_val0[9]),
        .I3(noise_times_temp_reg_reg__0[17]),
        .I4(abs_val0[10]),
        .O(flipping_output_int[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_10 
       (.I0(noise_times_temp_reg_reg__0[3]),
        .O(\flipping_output_reg[3]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_11 
       (.I0(noise_times_temp_reg_reg__0[2]),
        .O(\flipping_output_reg[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_12 
       (.I0(noise_times_temp_reg_reg__0[1]),
        .O(\flipping_output_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4444444EEEEEEEE4)) 
    \flipping_output_reg[3]_i_1__0 
       (.I0(noise_times_temp_reg_reg__0[17]),
        .I1(noise_times_temp_reg_reg__0[11]),
        .I2(abs_val0[9]),
        .I3(abs_val0[8]),
        .I4(abs_val0[10]),
        .I5(abs_val0[11]),
        .O(flipping_output_int[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_4 
       (.I0(noise_times_temp_reg_reg__0[8]),
        .O(\flipping_output_reg[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_5 
       (.I0(noise_times_temp_reg_reg__0[7]),
        .O(\flipping_output_reg[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_6 
       (.I0(noise_times_temp_reg_reg__0[6]),
        .O(\flipping_output_reg[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_7 
       (.I0(noise_times_temp_reg_reg__0[5]),
        .O(\flipping_output_reg[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_8 
       (.I0(noise_times_temp_reg_reg__0[0]),
        .O(\flipping_output_reg[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[3]_i_9 
       (.I0(noise_times_temp_reg_reg__0[4]),
        .O(\flipping_output_reg[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[4]_i_1 
       (.I0(noise_times_temp_reg_reg__0[12]),
        .I1(\flipping_output_reg[4]_i_2_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[12]),
        .O(flipping_output_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \flipping_output_reg[4]_i_2 
       (.I0(abs_val0[10]),
        .I1(abs_val0[8]),
        .I2(abs_val0[9]),
        .I3(abs_val0[11]),
        .O(\flipping_output_reg[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_4 
       (.I0(noise_times_temp_reg_reg__0[12]),
        .O(\flipping_output_reg[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_5 
       (.I0(noise_times_temp_reg_reg__0[11]),
        .O(\flipping_output_reg[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_6 
       (.I0(noise_times_temp_reg_reg__0[10]),
        .O(\flipping_output_reg[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \flipping_output_reg[4]_i_7 
       (.I0(noise_times_temp_reg_reg__0[9]),
        .O(\flipping_output_reg[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[5]_i_1 
       (.I0(noise_times_temp_reg_reg__0[13]),
        .I1(\flipping_output_reg[5]_i_2_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[13]),
        .O(flipping_output_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \flipping_output_reg[5]_i_2 
       (.I0(abs_val0[11]),
        .I1(abs_val0[9]),
        .I2(abs_val0[8]),
        .I3(abs_val0[10]),
        .I4(abs_val0[12]),
        .O(\flipping_output_reg[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \flipping_output_reg[6]_i_1 
       (.I0(noise_times_temp_reg_reg__0[14]),
        .I1(\flipping_output_reg[15]_i_3_n_0 ),
        .I2(noise_times_temp_reg_reg__0[17]),
        .I3(abs_val0[14]),
        .O(flipping_output_int[6]));
  LUT5 #(
    .INIT(32'h03AAFCAA)) 
    \flipping_output_reg[7]_i_1 
       (.I0(noise_times_temp_reg_reg__0[15]),
        .I1(\flipping_output_reg[15]_i_3_n_0 ),
        .I2(abs_val0[14]),
        .I3(noise_times_temp_reg_reg__0[17]),
        .I4(abs_val0[15]),
        .O(flipping_output_int[7]));
  LUT6 #(
    .INIT(64'h0101FF00FEFEFF00)) 
    \flipping_output_reg[8]_i_1 
       (.I0(abs_val0[14]),
        .I1(\flipping_output_reg[15]_i_3_n_0 ),
        .I2(abs_val0[15]),
        .I3(noise_times_temp_reg_reg__0[16]),
        .I4(noise_times_temp_reg_reg__0[17]),
        .I5(abs_val0[16]),
        .O(flipping_output_int[8]));
  LUT6 #(
    .INIT(64'h0000FF000100FE00)) 
    \flipping_output_reg[9]_i_1__0 
       (.I0(abs_val0[14]),
        .I1(\flipping_output_reg[15]_i_3_n_0 ),
        .I2(abs_val0[15]),
        .I3(noise_times_temp_reg_reg__0[17]),
        .I4(abs_val0[17]),
        .I5(abs_val0[16]),
        .O(flipping_output_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[0]),
        .Q(\flipping_output_reg_reg_n_0_[0] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[15]),
        .Q(\flipping_output_reg_reg_n_0_[15] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[15]_i_2 
       (.CI(\flipping_output_reg_reg[4]_i_3_n_0 ),
        .CO({\flipping_output_reg_reg[15]_i_2_n_0 ,\flipping_output_reg_reg[15]_i_2_n_1 ,\flipping_output_reg_reg[15]_i_2_n_2 ,\flipping_output_reg_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_val0[16:13]),
        .S({\flipping_output_reg[15]_i_5_n_0 ,\flipping_output_reg[15]_i_6_n_0 ,\flipping_output_reg[15]_i_7_n_0 ,\flipping_output_reg[15]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[15]_i_4 
       (.CI(\flipping_output_reg_reg[15]_i_2_n_0 ),
        .CO(\NLW_flipping_output_reg_reg[15]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_flipping_output_reg_reg[15]_i_4_O_UNCONNECTED [3:1],abs_val0[17]}),
        .S({1'b0,1'b0,1'b0,\flipping_output_reg[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[1]),
        .Q(\flipping_output_reg_reg_n_0_[1] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[2]),
        .Q(\flipping_output_reg_reg_n_0_[2] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[3]),
        .Q(\flipping_output_reg_reg_n_0_[3] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[3]_i_2 
       (.CI(\flipping_output_reg_reg[3]_i_3_n_0 ),
        .CO({\flipping_output_reg_reg[3]_i_2_n_0 ,\flipping_output_reg_reg[3]_i_2_n_1 ,\flipping_output_reg_reg[3]_i_2_n_2 ,\flipping_output_reg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({abs_val0[8],\NLW_flipping_output_reg_reg[3]_i_2_O_UNCONNECTED [2:0]}),
        .S({\flipping_output_reg[3]_i_4_n_0 ,\flipping_output_reg[3]_i_5_n_0 ,\flipping_output_reg[3]_i_6_n_0 ,\flipping_output_reg[3]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\flipping_output_reg_reg[3]_i_3_n_0 ,\flipping_output_reg_reg[3]_i_3_n_1 ,\flipping_output_reg_reg[3]_i_3_n_2 ,\flipping_output_reg_reg[3]_i_3_n_3 }),
        .CYINIT(\flipping_output_reg[3]_i_8_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_flipping_output_reg_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({\flipping_output_reg[3]_i_9_n_0 ,\flipping_output_reg[3]_i_10_n_0 ,\flipping_output_reg[3]_i_11_n_0 ,\flipping_output_reg[3]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[4]),
        .Q(\flipping_output_reg_reg_n_0_[4] ),
        .R(reset_flipping));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \flipping_output_reg_reg[4]_i_3 
       (.CI(\flipping_output_reg_reg[3]_i_2_n_0 ),
        .CO({\flipping_output_reg_reg[4]_i_3_n_0 ,\flipping_output_reg_reg[4]_i_3_n_1 ,\flipping_output_reg_reg[4]_i_3_n_2 ,\flipping_output_reg_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_val0[12:9]),
        .S({\flipping_output_reg[4]_i_4_n_0 ,\flipping_output_reg[4]_i_5_n_0 ,\flipping_output_reg[4]_i_6_n_0 ,\flipping_output_reg[4]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[5]),
        .Q(\flipping_output_reg_reg_n_0_[5] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[6]),
        .Q(\flipping_output_reg_reg_n_0_[6] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[7]),
        .Q(\flipping_output_reg_reg_n_0_[7] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[8]),
        .Q(\flipping_output_reg_reg_n_0_[8] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \flipping_output_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(flipping_output_int[9]),
        .Q(\flipping_output_reg_reg_n_0_[9] ),
        .R(reset_flipping));
  log_noise_generator_5 noise_generator
       (.A({noise_out[17],noise_out[10],noise_out[8:0]}),
        .D(D),
        .DOBDO(DOBDO),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
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
    noise_times_temp_reg_reg
       (.A({noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[17],noise_out[10],noise_out[17],noise_out[8:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_noise_times_temp_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(y),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_noise_times_temp_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_noise_times_temp_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_noise_times_temp_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(flipping_CE),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(flipping_CE),
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
        .MULTSIGNOUT(NLW_noise_times_temp_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_noise_times_temp_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_noise_times_temp_reg_reg_P_UNCONNECTED[47:26],noise_times_temp_reg_reg__0,noise_times_temp_reg_reg_n_98,noise_times_temp_reg_reg_n_99,noise_times_temp_reg_reg_n_100,noise_times_temp_reg_reg_n_101,noise_times_temp_reg_reg_n_102,noise_times_temp_reg_reg_n_103,noise_times_temp_reg_reg_n_104,noise_times_temp_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_noise_times_temp_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_noise_times_temp_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_noise_times_temp_reg_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_noise_times_temp_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h76)) 
    noise_times_temp_reg_reg_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(flipping_CE));
  LUT6 #(
    .INIT(64'h000000FCFAFA00FC)) 
    spike_carry__0_i_1
       (.I0(spike_carry__0_0[14]),
        .I1(membrane_compare0[13]),
        .I2(\flipping_output_reg_reg_n_0_[15] ),
        .I3(membrane_compare0[14]),
        .I4(spike_carry__0),
        .I5(spike_carry__0_0[15]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry__0_i_12
       (.I0(\flipping_output_reg_reg_n_0_[9] ),
        .I1(membrane_compare0[8]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[9]),
        .O(spike_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_carry__0_i_2
       (.I0(\flipping_output_reg_reg_n_0_[15] ),
        .I1(spike_carry__0_0[12]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[11]),
        .I4(spike_carry__0_0[13]),
        .I5(membrane_compare0[12]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h5555454555504540)) 
    spike_carry__0_i_3
       (.I0(\flipping_output_reg_reg_n_0_[15] ),
        .I1(spike_carry__0_0[10]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[9]),
        .I4(spike_carry__0_0[11]),
        .I5(membrane_compare0[10]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry__0_i_4
       (.I0(\flipping_output_reg_reg_n_0_[9] ),
        .I1(spike_carry__0_1),
        .I2(membrane_compare0[7]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[8]),
        .I5(\flipping_output_reg_reg_n_0_[8] ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_5
       (.I0(spike_carry__0_0[15]),
        .I1(membrane_compare0[14]),
        .I2(spike_carry__0_0[14]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[13]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [3]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_6
       (.I0(spike_carry__0_0[13]),
        .I1(membrane_compare0[12]),
        .I2(spike_carry__0_0[12]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[11]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [2]));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    spike_carry__0_i_7
       (.I0(spike_carry__0_0[11]),
        .I1(membrane_compare0[10]),
        .I2(spike_carry__0_0[10]),
        .I3(spike_carry__0),
        .I4(membrane_compare0[9]),
        .I5(\flipping_output_reg_reg_n_0_[15] ),
        .O(\selected_membrane_reg_reg[15] [1]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry__0_i_8
       (.I0(spike_carry__0_i_12_n_0),
        .I1(spike_carry__0_0[8]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[7]),
        .I4(\flipping_output_reg_reg_n_0_[8] ),
        .O(\selected_membrane_reg_reg[15] [0]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_1
       (.I0(\flipping_output_reg_reg_n_0_[7] ),
        .I1(spike_carry_1),
        .I2(membrane_compare0[5]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[6]),
        .I5(\flipping_output_reg_reg_n_0_[6] ),
        .O(\flipping_output_reg_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_14
       (.I0(\flipping_output_reg_reg_n_0_[7] ),
        .I1(membrane_compare0[6]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[7]),
        .O(spike_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_15
       (.I0(\flipping_output_reg_reg_n_0_[5] ),
        .I1(membrane_compare0[4]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[5]),
        .O(spike_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    spike_carry_i_16
       (.I0(\flipping_output_reg_reg_n_0_[3] ),
        .I1(membrane_compare0[2]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[3]),
        .O(spike_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_2
       (.I0(\flipping_output_reg_reg_n_0_[5] ),
        .I1(spike_carry_0),
        .I2(membrane_compare0[3]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[4]),
        .I5(\flipping_output_reg_reg_n_0_[4] ),
        .O(\flipping_output_reg_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    spike_carry_i_3
       (.I0(\flipping_output_reg_reg_n_0_[3] ),
        .I1(spike_carry),
        .I2(membrane_compare0[1]),
        .I3(spike_carry__0),
        .I4(spike_carry__0_0[2]),
        .I5(\flipping_output_reg_reg_n_0_[2] ),
        .O(\flipping_output_reg_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h54045404FD5D5404)) 
    spike_carry_i_4
       (.I0(\flipping_output_reg_reg_n_0_[1] ),
        .I1(membrane_compare0[0]),
        .I2(spike_carry__0),
        .I3(spike_carry__0_0[1]),
        .I4(spike_carry__0_0[0]),
        .I5(\flipping_output_reg_reg_n_0_[0] ),
        .O(\flipping_output_reg_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_5
       (.I0(spike_carry_i_14_n_0),
        .I1(spike_carry__0_0[6]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[5]),
        .I4(\flipping_output_reg_reg_n_0_[6] ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_6
       (.I0(spike_carry_i_15_n_0),
        .I1(spike_carry__0_0[4]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[3]),
        .I4(\flipping_output_reg_reg_n_0_[4] ),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    spike_carry_i_7
       (.I0(spike_carry_i_16_n_0),
        .I1(spike_carry__0_0[2]),
        .I2(spike_carry__0),
        .I3(membrane_compare0[1]),
        .I4(\flipping_output_reg_reg_n_0_[2] ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    spike_carry_i_8
       (.I0(spike_carry__0_0[1]),
        .I1(spike_carry__0),
        .I2(membrane_compare0[0]),
        .I3(\flipping_output_reg_reg_n_0_[1] ),
        .I4(\flipping_output_reg_reg_n_0_[0] ),
        .I5(spike_carry__0_0[0]),
        .O(S[0]));
  temperature_module_6 temperature_module_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(y),
        .E(\x_reg[6] ),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_flipping(reset_flipping),
        .\x_reg[0]_0 (\x_reg[0] ),
        .x_reg_rep_0(B),
        .x_reg_rep_1(x_reg_rep),
        .x_reg_rep_2(x_reg_rep_0));
endmodule

module log_noise_generator
   (E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR_inout__parameterized0 noise_source
       (.D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module log_noise_generator_5
   (DOBDO,
    A,
    clk_IBUF_BUFG,
    E,
    D,
    write_flipping_seed_IBUF,
    Q,
    flipping_seed_IBUF);
  output [10:0]DOBDO;
  output [10:0]A;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input [15:0]flipping_seed_IBUF;

  wire [10:0]A;
  wire [6:0]D;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]flipping_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR_inout__parameterized0_7 noise_source
       (.A(A),
        .D(D),
        .DOBDO(DOBDO),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module neuroSA_machine
   (Q,
    S,
    \Q_control_reg_reg[0]_rep ,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0] ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \Q_control_reg_reg[0]_rep_10 ,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_rep_21 ,
    \cuts_best_reg[15] ,
    DI,
    \Q_control_reg_reg[0]_rep_22 ,
    \Q_control_reg_reg[0]_rep_23 ,
    \Q_control_reg_reg[0]_rep_24 ,
    \Q_control_reg_reg[0]_23 ,
    \Q_control_reg_reg[0]_24 ,
    \Q_control_reg_reg[0]_25 ,
    \Q_control_reg_reg[0]_26 ,
    \Q_control_reg_reg[0]_rep_25 ,
    \Q_control_reg_reg[0]_rep_26 ,
    \Q_control_reg_reg[0]_rep_27 ,
    \Q_control_reg_reg[0]_rep_28 ,
    \Q_control_reg_reg[0]_27 ,
    \Q_control_reg_reg[0]_28 ,
    \Q_control_reg_reg[0]_29 ,
    \Q_control_reg_reg[0]_30 ,
    \Q_control_reg_reg[0]_rep_29 ,
    \Q_control_reg_reg[0]_rep_30 ,
    \Q_control_reg_reg[0]_rep_31 ,
    \Q_control_reg_reg[0]_rep_32 ,
    \Q_control_reg_reg[0]_rep_33 ,
    \Q_control_reg_reg[0]_rep_34 ,
    \Q_control_reg_reg[0]_rep_35 ,
    \Q_control_reg_reg[0]_rep_36 ,
    \Q_control_reg_reg[0]_31 ,
    \Q_control_reg_reg[0]_32 ,
    \Q_control_reg_reg[0]_33 ,
    \Q_control_reg_reg[0]_34 ,
    \Q_control_reg_reg[0]_35 ,
    \Q_control_reg_reg[0]_36 ,
    \Q_control_reg_reg[0]_37 ,
    \Q_control_reg_reg[0]_38 ,
    \Q_control_reg_reg[0]_rep_37 ,
    \Q_control_reg_reg[0]_rep_38 ,
    \Q_control_reg_reg[0]_rep_39 ,
    \Q_control_reg_reg[0]_rep_40 ,
    \Q_control_reg_reg[0]_rep_41 ,
    \Q_control_reg_reg[0]_rep_42 ,
    \Q_control_reg_reg[0]_rep_43 ,
    \Q_control_reg_reg[0]_rep_44 ,
    \Q_control_reg_reg[0]_39 ,
    \Q_control_reg_reg[0]_40 ,
    \Q_control_reg_reg[0]_41 ,
    \Q_control_reg_reg[0]_42 ,
    \Q_control_reg_reg[0]_43 ,
    \Q_control_reg_reg[0]_44 ,
    \Q_control_reg_reg[0]_45 ,
    \Q_control_reg_reg[0]_46 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    O,
    \membrane_storage_reg[0][7] ,
    \membrane_storage_reg[0][11] ,
    \membrane_storage_reg[1][3] ,
    \membrane_storage_reg[1][7] ,
    \membrane_storage_reg[1][11] ,
    \membrane_storage_reg[2][3] ,
    \membrane_storage_reg[2][7] ,
    \membrane_storage_reg[2][11] ,
    \membrane_storage_reg[3][3] ,
    \membrane_storage_reg[3][7] ,
    \membrane_storage_reg[3][11] ,
    \membrane_storage_reg[4][3] ,
    \membrane_storage_reg[4][7] ,
    \membrane_storage_reg[4][11] ,
    \membrane_storage_reg[5][3] ,
    \membrane_storage_reg[5][7] ,
    \membrane_storage_reg[5][11] ,
    \membrane_storage_reg[6][3] ,
    \membrane_storage_reg[6][7] ,
    \membrane_storage_reg[6][11] ,
    \membrane_storage_reg[7][3] ,
    \membrane_storage_reg[7][7] ,
    \membrane_storage_reg[7][11] ,
    \membrane_storage_reg[0][3] ,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[4][3]_0 ,
    \membrane_storage_reg[4][7]_0 ,
    \membrane_storage_reg[4][11]_0 ,
    \membrane_storage_reg[5][3]_0 ,
    \membrane_storage_reg[5][7]_0 ,
    \membrane_storage_reg[5][11]_0 ,
    \membrane_storage_reg[6][3]_0 ,
    \membrane_storage_reg[6][7]_0 ,
    \membrane_storage_reg[6][11]_0 ,
    \membrane_storage_reg[7][3]_0 ,
    \membrane_storage_reg[7][7]_0 ,
    \membrane_storage_reg[7][11]_0 ,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    CO,
    \membrane_storage_reg[1][15] ,
    \membrane_storage_reg[2][15] ,
    \membrane_storage_reg[3][15] ,
    \membrane_storage_reg[4][15] ,
    \membrane_storage_reg[5][15] ,
    \membrane_storage_reg[6][15] ,
    \membrane_storage_reg[7][15] ,
    \membrane_storage_reg[0][15] ,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[4][15]_0 ,
    \membrane_storage_reg[5][15]_0 ,
    \membrane_storage_reg[6][15]_0 ,
    \membrane_storage_reg[7][15]_0 ,
    write_ensemble_seed_IBUF,
    write_flipping_seed_IBUF,
    halt_IBUF,
    ensemble_seed_IBUF,
    idx_to_write_IBUF,
    DOADO,
    \membrane_storage_reg[7][0] ,
    neuron_state_in_IBUF,
    flipping_seed_IBUF);
  output [2:0]Q;
  output [3:0]S;
  output [3:0]\Q_control_reg_reg[0]_rep ;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0] ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_11 ;
  output [3:0]\Q_control_reg_reg[0]_12 ;
  output [3:0]\Q_control_reg_reg[0]_13 ;
  output [3:0]\Q_control_reg_reg[0]_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [3:0]\Q_control_reg_reg[0]_rep_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_11 ;
  output [3:0]\Q_control_reg_reg[0]_rep_12 ;
  output [3:0]\Q_control_reg_reg[0]_rep_13 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_16 ;
  output [3:0]\Q_control_reg_reg[0]_17 ;
  output [3:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [3:0]\Q_control_reg_reg[0]_rep_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_16 ;
  output [3:0]\Q_control_reg_reg[0]_rep_17 ;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_rep_21 ;
  output [15:0]\cuts_best_reg[15] ;
  output [2:0]DI;
  output [2:0]\Q_control_reg_reg[0]_rep_22 ;
  output [2:0]\Q_control_reg_reg[0]_rep_23 ;
  output [2:0]\Q_control_reg_reg[0]_rep_24 ;
  output [2:0]\Q_control_reg_reg[0]_23 ;
  output [2:0]\Q_control_reg_reg[0]_24 ;
  output [2:0]\Q_control_reg_reg[0]_25 ;
  output [2:0]\Q_control_reg_reg[0]_26 ;
  output [2:0]\Q_control_reg_reg[0]_rep_25 ;
  output [2:0]\Q_control_reg_reg[0]_rep_26 ;
  output [2:0]\Q_control_reg_reg[0]_rep_27 ;
  output [2:0]\Q_control_reg_reg[0]_rep_28 ;
  output [2:0]\Q_control_reg_reg[0]_27 ;
  output [2:0]\Q_control_reg_reg[0]_28 ;
  output [2:0]\Q_control_reg_reg[0]_29 ;
  output [2:0]\Q_control_reg_reg[0]_30 ;
  output [3:0]\Q_control_reg_reg[0]_rep_29 ;
  output [3:0]\Q_control_reg_reg[0]_rep_30 ;
  output [3:0]\Q_control_reg_reg[0]_rep_31 ;
  output [3:0]\Q_control_reg_reg[0]_rep_32 ;
  output [3:0]\Q_control_reg_reg[0]_rep_33 ;
  output [3:0]\Q_control_reg_reg[0]_rep_34 ;
  output [3:0]\Q_control_reg_reg[0]_rep_35 ;
  output [3:0]\Q_control_reg_reg[0]_rep_36 ;
  output [3:0]\Q_control_reg_reg[0]_31 ;
  output [3:0]\Q_control_reg_reg[0]_32 ;
  output [3:0]\Q_control_reg_reg[0]_33 ;
  output [3:0]\Q_control_reg_reg[0]_34 ;
  output [3:0]\Q_control_reg_reg[0]_35 ;
  output [3:0]\Q_control_reg_reg[0]_36 ;
  output [3:0]\Q_control_reg_reg[0]_37 ;
  output [3:0]\Q_control_reg_reg[0]_38 ;
  output [3:0]\Q_control_reg_reg[0]_rep_37 ;
  output [3:0]\Q_control_reg_reg[0]_rep_38 ;
  output [3:0]\Q_control_reg_reg[0]_rep_39 ;
  output [3:0]\Q_control_reg_reg[0]_rep_40 ;
  output [3:0]\Q_control_reg_reg[0]_rep_41 ;
  output [3:0]\Q_control_reg_reg[0]_rep_42 ;
  output [3:0]\Q_control_reg_reg[0]_rep_43 ;
  output [3:0]\Q_control_reg_reg[0]_rep_44 ;
  output [3:0]\Q_control_reg_reg[0]_39 ;
  output [3:0]\Q_control_reg_reg[0]_40 ;
  output [3:0]\Q_control_reg_reg[0]_41 ;
  output [3:0]\Q_control_reg_reg[0]_42 ;
  output [3:0]\Q_control_reg_reg[0]_43 ;
  output [3:0]\Q_control_reg_reg[0]_44 ;
  output [3:0]\Q_control_reg_reg[0]_45 ;
  output [3:0]\Q_control_reg_reg[0]_46 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [3:0]O;
  input [3:0]\membrane_storage_reg[0][7] ;
  input [3:0]\membrane_storage_reg[0][11] ;
  input [3:0]\membrane_storage_reg[1][3] ;
  input [3:0]\membrane_storage_reg[1][7] ;
  input [3:0]\membrane_storage_reg[1][11] ;
  input [3:0]\membrane_storage_reg[2][3] ;
  input [3:0]\membrane_storage_reg[2][7] ;
  input [3:0]\membrane_storage_reg[2][11] ;
  input [3:0]\membrane_storage_reg[3][3] ;
  input [3:0]\membrane_storage_reg[3][7] ;
  input [3:0]\membrane_storage_reg[3][11] ;
  input [3:0]\membrane_storage_reg[4][3] ;
  input [3:0]\membrane_storage_reg[4][7] ;
  input [3:0]\membrane_storage_reg[4][11] ;
  input [3:0]\membrane_storage_reg[5][3] ;
  input [3:0]\membrane_storage_reg[5][7] ;
  input [3:0]\membrane_storage_reg[5][11] ;
  input [3:0]\membrane_storage_reg[6][3] ;
  input [3:0]\membrane_storage_reg[6][7] ;
  input [3:0]\membrane_storage_reg[6][11] ;
  input [3:0]\membrane_storage_reg[7][3] ;
  input [3:0]\membrane_storage_reg[7][7] ;
  input [3:0]\membrane_storage_reg[7][11] ;
  input [3:0]\membrane_storage_reg[0][3] ;
  input [3:0]\membrane_storage_reg[0][7]_0 ;
  input [3:0]\membrane_storage_reg[0][11]_0 ;
  input [3:0]\membrane_storage_reg[1][3]_0 ;
  input [3:0]\membrane_storage_reg[1][7]_0 ;
  input [3:0]\membrane_storage_reg[1][11]_0 ;
  input [3:0]\membrane_storage_reg[2][3]_0 ;
  input [3:0]\membrane_storage_reg[2][7]_0 ;
  input [3:0]\membrane_storage_reg[2][11]_0 ;
  input [3:0]\membrane_storage_reg[3][3]_0 ;
  input [3:0]\membrane_storage_reg[3][7]_0 ;
  input [3:0]\membrane_storage_reg[3][11]_0 ;
  input [3:0]\membrane_storage_reg[4][3]_0 ;
  input [3:0]\membrane_storage_reg[4][7]_0 ;
  input [3:0]\membrane_storage_reg[4][11]_0 ;
  input [3:0]\membrane_storage_reg[5][3]_0 ;
  input [3:0]\membrane_storage_reg[5][7]_0 ;
  input [3:0]\membrane_storage_reg[5][11]_0 ;
  input [3:0]\membrane_storage_reg[6][3]_0 ;
  input [3:0]\membrane_storage_reg[6][7]_0 ;
  input [3:0]\membrane_storage_reg[6][11]_0 ;
  input [3:0]\membrane_storage_reg[7][3]_0 ;
  input [3:0]\membrane_storage_reg[7][7]_0 ;
  input [3:0]\membrane_storage_reg[7][11]_0 ;
  input [15:0]membrane_data_in_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [0:0]CO;
  input [0:0]\membrane_storage_reg[1][15] ;
  input [0:0]\membrane_storage_reg[2][15] ;
  input [0:0]\membrane_storage_reg[3][15] ;
  input [0:0]\membrane_storage_reg[4][15] ;
  input [0:0]\membrane_storage_reg[5][15] ;
  input [0:0]\membrane_storage_reg[6][15] ;
  input [0:0]\membrane_storage_reg[7][15] ;
  input [0:0]\membrane_storage_reg[0][15] ;
  input [0:0]\membrane_storage_reg[1][15]_0 ;
  input [0:0]\membrane_storage_reg[2][15]_0 ;
  input [0:0]\membrane_storage_reg[3][15]_0 ;
  input [0:0]\membrane_storage_reg[4][15]_0 ;
  input [0:0]\membrane_storage_reg[5][15]_0 ;
  input [0:0]\membrane_storage_reg[6][15]_0 ;
  input [0:0]\membrane_storage_reg[7][15]_0 ;
  input [1:0]write_ensemble_seed_IBUF;
  input [1:0]write_flipping_seed_IBUF;
  input halt_IBUF;
  input [4:0]ensemble_seed_IBUF;
  input [2:0]idx_to_write_IBUF;
  input [7:0]DOADO;
  input [7:0]\membrane_storage_reg[7][0] ;
  input [3:0]neuron_state_in_IBUF;
  input [15:0]flipping_seed_IBUF;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [7:0]DOADO;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]\Q_control_reg_reg[0] ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [3:0]\Q_control_reg_reg[0]_11 ;
  wire [3:0]\Q_control_reg_reg[0]_12 ;
  wire [3:0]\Q_control_reg_reg[0]_13 ;
  wire [3:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [3:0]\Q_control_reg_reg[0]_16 ;
  wire [3:0]\Q_control_reg_reg[0]_17 ;
  wire [3:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire [2:0]\Q_control_reg_reg[0]_23 ;
  wire [2:0]\Q_control_reg_reg[0]_24 ;
  wire [2:0]\Q_control_reg_reg[0]_25 ;
  wire [2:0]\Q_control_reg_reg[0]_26 ;
  wire [2:0]\Q_control_reg_reg[0]_27 ;
  wire [2:0]\Q_control_reg_reg[0]_28 ;
  wire [2:0]\Q_control_reg_reg[0]_29 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [2:0]\Q_control_reg_reg[0]_30 ;
  wire [3:0]\Q_control_reg_reg[0]_31 ;
  wire [3:0]\Q_control_reg_reg[0]_32 ;
  wire [3:0]\Q_control_reg_reg[0]_33 ;
  wire [3:0]\Q_control_reg_reg[0]_34 ;
  wire [3:0]\Q_control_reg_reg[0]_35 ;
  wire [3:0]\Q_control_reg_reg[0]_36 ;
  wire [3:0]\Q_control_reg_reg[0]_37 ;
  wire [3:0]\Q_control_reg_reg[0]_38 ;
  wire [3:0]\Q_control_reg_reg[0]_39 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_40 ;
  wire [3:0]\Q_control_reg_reg[0]_41 ;
  wire [3:0]\Q_control_reg_reg[0]_42 ;
  wire [3:0]\Q_control_reg_reg[0]_43 ;
  wire [3:0]\Q_control_reg_reg[0]_44 ;
  wire [3:0]\Q_control_reg_reg[0]_45 ;
  wire [3:0]\Q_control_reg_reg[0]_46 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_21 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_22 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_23 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_24 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_25 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_26 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_27 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_28 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_29 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_30 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_31 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_32 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_33 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_34 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_35 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_36 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_37 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_38 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_39 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_40 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_41 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_42 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_43 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_44 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire [3:0]S;
  wire add_mem;
  wire [1:1]add_mems;
  wire [31:16]all_membranes;
  wire \buffer/spike_input ;
  wire clk_IBUF_BUFG;
  wire [15:0]\cuts_best_reg[15] ;
  wire [4:0]ensemble_seed_IBUF;
  wire flip_reg;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [2:0]idx_that_fired;
  wire [2:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [15:0]membrane;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]\membrane_storage_reg[0][11] ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [0:0]\membrane_storage_reg[0][15] ;
  wire [3:0]\membrane_storage_reg[0][3] ;
  wire [3:0]\membrane_storage_reg[0][7] ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [3:0]\membrane_storage_reg[1][11] ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [0:0]\membrane_storage_reg[1][15] ;
  wire [0:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][3] ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][7] ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [3:0]\membrane_storage_reg[2][11] ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [0:0]\membrane_storage_reg[2][15] ;
  wire [0:0]\membrane_storage_reg[2][15]_0 ;
  wire [3:0]\membrane_storage_reg[2][3] ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][7] ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [3:0]\membrane_storage_reg[3][11] ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [0:0]\membrane_storage_reg[3][15] ;
  wire [0:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][3] ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire [3:0]\membrane_storage_reg[3][7] ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [3:0]\membrane_storage_reg[4][11] ;
  wire [3:0]\membrane_storage_reg[4][11]_0 ;
  wire [0:0]\membrane_storage_reg[4][15] ;
  wire [0:0]\membrane_storage_reg[4][15]_0 ;
  wire [3:0]\membrane_storage_reg[4][3] ;
  wire [3:0]\membrane_storage_reg[4][3]_0 ;
  wire [3:0]\membrane_storage_reg[4][7] ;
  wire [3:0]\membrane_storage_reg[4][7]_0 ;
  wire [3:0]\membrane_storage_reg[5][11] ;
  wire [3:0]\membrane_storage_reg[5][11]_0 ;
  wire [0:0]\membrane_storage_reg[5][15] ;
  wire [0:0]\membrane_storage_reg[5][15]_0 ;
  wire [3:0]\membrane_storage_reg[5][3] ;
  wire [3:0]\membrane_storage_reg[5][3]_0 ;
  wire [3:0]\membrane_storage_reg[5][7] ;
  wire [3:0]\membrane_storage_reg[5][7]_0 ;
  wire [3:0]\membrane_storage_reg[6][11] ;
  wire [3:0]\membrane_storage_reg[6][11]_0 ;
  wire [0:0]\membrane_storage_reg[6][15] ;
  wire [0:0]\membrane_storage_reg[6][15]_0 ;
  wire [3:0]\membrane_storage_reg[6][3] ;
  wire [3:0]\membrane_storage_reg[6][3]_0 ;
  wire [3:0]\membrane_storage_reg[6][7] ;
  wire [3:0]\membrane_storage_reg[6][7]_0 ;
  wire [7:0]\membrane_storage_reg[7][0] ;
  wire [3:0]\membrane_storage_reg[7][11] ;
  wire [3:0]\membrane_storage_reg[7][11]_0 ;
  wire [0:0]\membrane_storage_reg[7][15] ;
  wire [0:0]\membrane_storage_reg[7][15]_0 ;
  wire [3:0]\membrane_storage_reg[7][3] ;
  wire [3:0]\membrane_storage_reg[7][3]_0 ;
  wire [3:0]\membrane_storage_reg[7][7] ;
  wire [3:0]\membrane_storage_reg[7][7]_0 ;
  wire \neuron_ensemble_inst/distribution_output00 ;
  wire [2:0]\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_2_in ;
  wire [6:0]\neuron_ensemble_inst/p_1_in ;
  wire [17:0]\neuron_ensemble_inst/y ;
  wire [3:0]neuron_state_in_IBUF;
  wire [5:3]offsets;
  wire reset_IBUF;
  wire reset_module;
  wire scheduler_instance_n_7;
  wire scheduler_instance_n_9;
  wire should_increment;
  wire [1:0]spikes;
  wire \unit_gen[0].unit_inst_n_1 ;
  wire \unit_gen[0].unit_inst_n_10 ;
  wire \unit_gen[0].unit_inst_n_109 ;
  wire \unit_gen[0].unit_inst_n_110 ;
  wire \unit_gen[0].unit_inst_n_111 ;
  wire \unit_gen[0].unit_inst_n_2 ;
  wire \unit_gen[0].unit_inst_n_3 ;
  wire \unit_gen[0].unit_inst_n_4 ;
  wire \unit_gen[0].unit_inst_n_5 ;
  wire \unit_gen[0].unit_inst_n_6 ;
  wire \unit_gen[0].unit_inst_n_7 ;
  wire \unit_gen[0].unit_inst_n_8 ;
  wire \unit_gen[0].unit_inst_n_9 ;
  wire \unit_gen[1].unit_inst_n_10 ;
  wire \unit_gen[1].unit_inst_n_108 ;
  wire \unit_gen[1].unit_inst_n_11 ;
  wire \unit_gen[1].unit_inst_n_2 ;
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
       (.D(idx_that_fired),
        .\FSM_onehot_state_reg[2]_0 (scheduler_instance_n_9),
        .Q({update_memory,reset_module}),
        .add_mem(add_mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[10]_0 (scheduler_instance_n_7),
        .\cuts_best_reg[15]_0 (\cuts_best_reg[15] ),
        .\fired_index_reg_reg[0]_0 (\unit_gen[0].unit_inst_n_111 ),
        .\fired_index_reg_reg[1]_0 (\unit_gen[0].unit_inst_n_110 ),
        .\fired_index_reg_reg[2]_0 (\unit_gen[0].unit_inst_n_109 ),
        .flip_reg(flip_reg),
        .\membrane_reg_reg[15]_0 (membrane),
        .reset_IBUF(reset_IBUF),
        .should_increment(should_increment),
        .spike_input(\buffer/spike_input ),
        .spikes(spikes));
  neuron_ensemble_with_memory_with_buff \unit_gen[0].unit_inst 
       (.ADDRBWRADDR({\unit_gen[1].unit_inst_n_3 ,\unit_gen[1].unit_inst_n_4 ,\unit_gen[1].unit_inst_n_5 ,\unit_gen[1].unit_inst_n_6 ,\unit_gen[1].unit_inst_n_7 ,\unit_gen[1].unit_inst_n_8 ,\unit_gen[1].unit_inst_n_9 ,\unit_gen[1].unit_inst_n_10 ,\unit_gen[1].unit_inst_n_11 }),
        .B(\neuron_ensemble_inst/y ),
        .CO(CO),
        .D(\neuron_ensemble_inst/p_1_in ),
        .DI(DI),
        .DOADO(DOADO),
        .DOBDO({\neuron_ensemble_inst/distribution_output00 ,\unit_gen[0].unit_inst_n_1 ,\unit_gen[0].unit_inst_n_2 ,\unit_gen[0].unit_inst_n_3 ,\unit_gen[0].unit_inst_n_4 ,\unit_gen[0].unit_inst_n_5 ,\unit_gen[0].unit_inst_n_6 ,\unit_gen[0].unit_inst_n_7 ,\unit_gen[0].unit_inst_n_8 ,\unit_gen[0].unit_inst_n_9 ,\unit_gen[0].unit_inst_n_10 }),
        .E(\unit_gen[1].unit_inst_n_108 ),
        .O(O),
        .Q({update_memory,reset_module}),
        .\Q_control_reg_reg[0] (\Q_control_reg_reg[0] ),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0]_0 ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_1 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_14 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_23 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_24 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_25 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_26 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_31 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_32 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_33 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_34 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_35 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_2 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_36 ),
        .\Q_control_reg_reg[0]_21 (\Q_control_reg_reg[0]_37 ),
        .\Q_control_reg_reg[0]_22 (\Q_control_reg_reg[0]_38 ),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_7 ),
        .\Q_control_reg_reg[0]_4 (\Q_control_reg_reg[0]_8 ),
        .\Q_control_reg_reg[0]_5 (\Q_control_reg_reg[0]_9 ),
        .\Q_control_reg_reg[0]_6 (\Q_control_reg_reg[0]_10 ),
        .\Q_control_reg_reg[0]_7 (\Q_control_reg_reg[0]_11 ),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_12 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_13 ),
        .\Q_control_reg_reg[0]_rep (\Q_control_reg_reg[0]_rep ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep_0 ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_1 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_22 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_23 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_24 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_29 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_30 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_31 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_32 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_33 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_34 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_35 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_6 ),
        .\Q_control_reg_reg[0]_rep_20 (\Q_control_reg_reg[0]_rep_36 ),
        .\Q_control_reg_reg[0]_rep_3 (\Q_control_reg_reg[0]_rep_7 ),
        .\Q_control_reg_reg[0]_rep_4 (\Q_control_reg_reg[0]_rep_8 ),
        .\Q_control_reg_reg[0]_rep_5 (\Q_control_reg_reg[0]_rep_9 ),
        .\Q_control_reg_reg[0]_rep_6 (\Q_control_reg_reg[0]_rep_10 ),
        .\Q_control_reg_reg[0]_rep_7 (\Q_control_reg_reg[0]_rep_11 ),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_12 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_13 ),
        .S(S),
        .add_mem(add_mem),
        .add_membrane_reg_reg(add_mems),
        .add_membrane_reg_reg_0(spikes[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\fired_index_reg_reg[2] (offsets),
        .flip_reg(flip_reg),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[2]_0 (Q),
        .\index_of_neuron_that_fired_reg_reg[2]_1 (idx_that_fired),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[15] (membrane),
        .\membrane_reg_reg[15]_0 (all_membranes),
        .\membrane_storage_reg[0][11] (\membrane_storage_reg[0][11] ),
        .\membrane_storage_reg[0][7] (\membrane_storage_reg[0][7] ),
        .\membrane_storage_reg[1][11] (\membrane_storage_reg[1][11] ),
        .\membrane_storage_reg[1][15] (\membrane_storage_reg[1][15] ),
        .\membrane_storage_reg[1][3] (\membrane_storage_reg[1][3] ),
        .\membrane_storage_reg[1][7] (\membrane_storage_reg[1][7] ),
        .\membrane_storage_reg[2][11] (\membrane_storage_reg[2][11] ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2][3] (\membrane_storage_reg[2][3] ),
        .\membrane_storage_reg[2][7] (\membrane_storage_reg[2][7] ),
        .\membrane_storage_reg[3][11] (\membrane_storage_reg[3][11] ),
        .\membrane_storage_reg[3][15] (\membrane_storage_reg[3][15] ),
        .\membrane_storage_reg[3][3] (\membrane_storage_reg[3][3] ),
        .\membrane_storage_reg[3][7] (\membrane_storage_reg[3][7] ),
        .\membrane_storage_reg[4][11] (\membrane_storage_reg[4][11] ),
        .\membrane_storage_reg[4][15] (\membrane_storage_reg[4][15] ),
        .\membrane_storage_reg[4][3] (\membrane_storage_reg[4][3] ),
        .\membrane_storage_reg[4][7] (\membrane_storage_reg[4][7] ),
        .\membrane_storage_reg[5][11] (\membrane_storage_reg[5][11] ),
        .\membrane_storage_reg[5][15] (\membrane_storage_reg[5][15] ),
        .\membrane_storage_reg[5][3] (\membrane_storage_reg[5][3] ),
        .\membrane_storage_reg[5][7] (\membrane_storage_reg[5][7] ),
        .\membrane_storage_reg[6][11] (\membrane_storage_reg[6][11] ),
        .\membrane_storage_reg[6][15] (\membrane_storage_reg[6][15] ),
        .\membrane_storage_reg[6][3] (\membrane_storage_reg[6][3] ),
        .\membrane_storage_reg[6][7] (\membrane_storage_reg[6][7] ),
        .\membrane_storage_reg[7][11] (\membrane_storage_reg[7][11] ),
        .\membrane_storage_reg[7][15] (\membrane_storage_reg[7][15] ),
        .\membrane_storage_reg[7][3] (\membrane_storage_reg[7][3] ),
        .\membrane_storage_reg[7][7] (\membrane_storage_reg[7][7] ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\offset_reg_reg[0] (\unit_gen[0].unit_inst_n_111 ),
        .\offset_reg_reg[1] (\unit_gen[0].unit_inst_n_110 ),
        .\offset_reg_reg[2] (\unit_gen[0].unit_inst_n_109 ),
        .p_2_in(\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_2_in ),
        .reset_IBUF(reset_IBUF),
        .should_increment(should_increment),
        .spike_input(\buffer/spike_input ),
        .spikes(spikes[0]),
        .\state_reg[2] (scheduler_instance_n_9),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[0]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[0]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (scheduler_instance_n_7),
        .x_reg_rep(\unit_gen[1].unit_inst_n_2 ));
  neuron_ensemble_with_memory_with_buff__parameterized0 \unit_gen[1].unit_inst 
       (.ADDRBWRADDR({\unit_gen[1].unit_inst_n_3 ,\unit_gen[1].unit_inst_n_4 ,\unit_gen[1].unit_inst_n_5 ,\unit_gen[1].unit_inst_n_6 ,\unit_gen[1].unit_inst_n_7 ,\unit_gen[1].unit_inst_n_8 ,\unit_gen[1].unit_inst_n_9 ,\unit_gen[1].unit_inst_n_10 ,\unit_gen[1].unit_inst_n_11 }),
        .B(\neuron_ensemble_inst/y ),
        .D(\neuron_ensemble_inst/p_1_in ),
        .DOBDO({\neuron_ensemble_inst/distribution_output00 ,\unit_gen[0].unit_inst_n_1 ,\unit_gen[0].unit_inst_n_2 ,\unit_gen[0].unit_inst_n_3 ,\unit_gen[0].unit_inst_n_4 ,\unit_gen[0].unit_inst_n_5 ,\unit_gen[0].unit_inst_n_6 ,\unit_gen[0].unit_inst_n_7 ,\unit_gen[0].unit_inst_n_8 ,\unit_gen[0].unit_inst_n_9 ,\unit_gen[0].unit_inst_n_10 }),
        .E(\unit_gen[1].unit_inst_n_108 ),
        .Q({update_memory,reset_module}),
        .\Q_control_reg_reg[0] (\Q_control_reg_reg[0]_3 ),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0]_4 ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_5 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_22 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_27 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_28 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_29 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_30 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_39 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_40 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_41 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_42 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_43 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_6 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_44 ),
        .\Q_control_reg_reg[0]_21 (\Q_control_reg_reg[0]_45 ),
        .\Q_control_reg_reg[0]_22 (\Q_control_reg_reg[0]_46 ),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_15 ),
        .\Q_control_reg_reg[0]_4 (\Q_control_reg_reg[0]_16 ),
        .\Q_control_reg_reg[0]_5 (\Q_control_reg_reg[0]_17 ),
        .\Q_control_reg_reg[0]_6 (\Q_control_reg_reg[0]_18 ),
        .\Q_control_reg_reg[0]_7 (\Q_control_reg_reg[0]_19 ),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_20 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_21 ),
        .\Q_control_reg_reg[0]_rep (\Q_control_reg_reg[0]_rep_2 ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep_3 ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_4 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_21 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_25 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_26 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_27 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_28 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_37 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_38 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_39 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_40 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_41 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_5 ),
        .\Q_control_reg_reg[0]_rep_20 (\Q_control_reg_reg[0]_rep_42 ),
        .\Q_control_reg_reg[0]_rep_21 (\Q_control_reg_reg[0]_rep_43 ),
        .\Q_control_reg_reg[0]_rep_22 (\Q_control_reg_reg[0]_rep_44 ),
        .\Q_control_reg_reg[0]_rep_3 (\Q_control_reg_reg[0]_rep_14 ),
        .\Q_control_reg_reg[0]_rep_4 (\Q_control_reg_reg[0]_rep_15 ),
        .\Q_control_reg_reg[0]_rep_5 (\Q_control_reg_reg[0]_rep_16 ),
        .\Q_control_reg_reg[0]_rep_6 (\Q_control_reg_reg[0]_rep_17 ),
        .\Q_control_reg_reg[0]_rep_7 (\Q_control_reg_reg[0]_rep_18 ),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_19 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_20 ),
        .add_mem_reg_reg(add_mems),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2]_0 (\unit_gen[1].unit_inst_n_2 ),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_offset_to_update(Q),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[15] (all_membranes),
        .\membrane_storage_reg[0][11] (\membrane_storage_reg[0][11]_0 ),
        .\membrane_storage_reg[0][15] (\membrane_storage_reg[0][15] ),
        .\membrane_storage_reg[0][3] (\membrane_storage_reg[0][3] ),
        .\membrane_storage_reg[0][7] (\membrane_storage_reg[0][7]_0 ),
        .\membrane_storage_reg[1][11] (\membrane_storage_reg[1][11]_0 ),
        .\membrane_storage_reg[1][15] (\membrane_storage_reg[1][15]_0 ),
        .\membrane_storage_reg[1][3] (\membrane_storage_reg[1][3]_0 ),
        .\membrane_storage_reg[1][7] (\membrane_storage_reg[1][7]_0 ),
        .\membrane_storage_reg[2][11] (\membrane_storage_reg[2][11]_0 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15]_0 ),
        .\membrane_storage_reg[2][3] (\membrane_storage_reg[2][3]_0 ),
        .\membrane_storage_reg[2][7] (\membrane_storage_reg[2][7]_0 ),
        .\membrane_storage_reg[3][11] (\membrane_storage_reg[3][11]_0 ),
        .\membrane_storage_reg[3][15] (\membrane_storage_reg[3][15]_0 ),
        .\membrane_storage_reg[3][3] (\membrane_storage_reg[3][3]_0 ),
        .\membrane_storage_reg[3][7] (\membrane_storage_reg[3][7]_0 ),
        .\membrane_storage_reg[4][11] (\membrane_storage_reg[4][11]_0 ),
        .\membrane_storage_reg[4][15] (\membrane_storage_reg[4][15]_0 ),
        .\membrane_storage_reg[4][3] (\membrane_storage_reg[4][3]_0 ),
        .\membrane_storage_reg[4][7] (\membrane_storage_reg[4][7]_0 ),
        .\membrane_storage_reg[5][11] (\membrane_storage_reg[5][11]_0 ),
        .\membrane_storage_reg[5][15] (\membrane_storage_reg[5][15]_0 ),
        .\membrane_storage_reg[5][3] (\membrane_storage_reg[5][3]_0 ),
        .\membrane_storage_reg[5][7] (\membrane_storage_reg[5][7]_0 ),
        .\membrane_storage_reg[6][11] (\membrane_storage_reg[6][11]_0 ),
        .\membrane_storage_reg[6][15] (\membrane_storage_reg[6][15]_0 ),
        .\membrane_storage_reg[6][3] (\membrane_storage_reg[6][3]_0 ),
        .\membrane_storage_reg[6][7] (\membrane_storage_reg[6][7]_0 ),
        .\membrane_storage_reg[7][0] (\membrane_storage_reg[7][0] ),
        .\membrane_storage_reg[7][11] (\membrane_storage_reg[7][11]_0 ),
        .\membrane_storage_reg[7][15] (\membrane_storage_reg[7][15]_0 ),
        .\membrane_storage_reg[7][3] (\membrane_storage_reg[7][3]_0 ),
        .\membrane_storage_reg[7][7] (\membrane_storage_reg[7][7]_0 ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\offset_reg_reg[2] (offsets),
        .p_2_in(\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_2_in ),
        .spike_input(\buffer/spike_input ),
        .spike_reg_reg(spikes[1]),
        .\state_reg[2] (scheduler_instance_n_9),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[1]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[1]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF[1]),
        .\x_reg[0] (scheduler_instance_n_7));
endmodule

(* COUNTER_WIDTH = "40" *) (* FLIPPING_OUTPUT_WIDTH = "16" *) (* FRACTIONAL_PART = "8" *) 
(* GRAPH_WIDTH = "8" *) (* IDX_THAT_FIRED_WIDTH = "3" *) (* LOG_LUT_BIT_SIZE = "7" *) 
(* LOG_NOISE_LUT_FILENAME = "log_noise_LUT_fixed_7bit.mif" *) (* LOG_NOISE_SOURCE_WIDTH = "16" *) (* MEMBRANE_WIDTH = "16" *) 
(* NEURONS_PER_UNIT = "8" *) (* NEURON_NUM_WIDTH = "3" *) (* NEURON_SEL_LFSR_WIDTH = "5" *) 
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
  input [15:0]membrane_data_in;
  input [3:0]neuron_state_in;
  input [2:0]idx_to_write;
  input [1:0]write_neuron_states;
  output [15:0]found_solution_value;

  wire NEURO_SA_n_1;
  wire NEURO_SA_n_10;
  wire NEURO_SA_n_100;
  wire NEURO_SA_n_101;
  wire NEURO_SA_n_102;
  wire NEURO_SA_n_103;
  wire NEURO_SA_n_104;
  wire NEURO_SA_n_105;
  wire NEURO_SA_n_106;
  wire NEURO_SA_n_107;
  wire NEURO_SA_n_108;
  wire NEURO_SA_n_109;
  wire NEURO_SA_n_11;
  wire NEURO_SA_n_110;
  wire NEURO_SA_n_111;
  wire NEURO_SA_n_112;
  wire NEURO_SA_n_113;
  wire NEURO_SA_n_114;
  wire NEURO_SA_n_115;
  wire NEURO_SA_n_116;
  wire NEURO_SA_n_117;
  wire NEURO_SA_n_118;
  wire NEURO_SA_n_119;
  wire NEURO_SA_n_12;
  wire NEURO_SA_n_120;
  wire NEURO_SA_n_121;
  wire NEURO_SA_n_122;
  wire NEURO_SA_n_123;
  wire NEURO_SA_n_124;
  wire NEURO_SA_n_125;
  wire NEURO_SA_n_126;
  wire NEURO_SA_n_127;
  wire NEURO_SA_n_128;
  wire NEURO_SA_n_129;
  wire NEURO_SA_n_13;
  wire NEURO_SA_n_130;
  wire NEURO_SA_n_131;
  wire NEURO_SA_n_132;
  wire NEURO_SA_n_133;
  wire NEURO_SA_n_134;
  wire NEURO_SA_n_135;
  wire NEURO_SA_n_136;
  wire NEURO_SA_n_137;
  wire NEURO_SA_n_138;
  wire NEURO_SA_n_139;
  wire NEURO_SA_n_14;
  wire NEURO_SA_n_140;
  wire NEURO_SA_n_141;
  wire NEURO_SA_n_142;
  wire NEURO_SA_n_143;
  wire NEURO_SA_n_144;
  wire NEURO_SA_n_145;
  wire NEURO_SA_n_146;
  wire NEURO_SA_n_147;
  wire NEURO_SA_n_148;
  wire NEURO_SA_n_149;
  wire NEURO_SA_n_15;
  wire NEURO_SA_n_150;
  wire NEURO_SA_n_151;
  wire NEURO_SA_n_152;
  wire NEURO_SA_n_153;
  wire NEURO_SA_n_154;
  wire NEURO_SA_n_155;
  wire NEURO_SA_n_156;
  wire NEURO_SA_n_157;
  wire NEURO_SA_n_158;
  wire NEURO_SA_n_159;
  wire NEURO_SA_n_16;
  wire NEURO_SA_n_160;
  wire NEURO_SA_n_161;
  wire NEURO_SA_n_162;
  wire NEURO_SA_n_163;
  wire NEURO_SA_n_164;
  wire NEURO_SA_n_165;
  wire NEURO_SA_n_166;
  wire NEURO_SA_n_167;
  wire NEURO_SA_n_168;
  wire NEURO_SA_n_169;
  wire NEURO_SA_n_17;
  wire NEURO_SA_n_170;
  wire NEURO_SA_n_171;
  wire NEURO_SA_n_172;
  wire NEURO_SA_n_173;
  wire NEURO_SA_n_174;
  wire NEURO_SA_n_175;
  wire NEURO_SA_n_176;
  wire NEURO_SA_n_177;
  wire NEURO_SA_n_178;
  wire NEURO_SA_n_179;
  wire NEURO_SA_n_18;
  wire NEURO_SA_n_180;
  wire NEURO_SA_n_181;
  wire NEURO_SA_n_182;
  wire NEURO_SA_n_183;
  wire NEURO_SA_n_184;
  wire NEURO_SA_n_185;
  wire NEURO_SA_n_186;
  wire NEURO_SA_n_187;
  wire NEURO_SA_n_188;
  wire NEURO_SA_n_189;
  wire NEURO_SA_n_19;
  wire NEURO_SA_n_190;
  wire NEURO_SA_n_191;
  wire NEURO_SA_n_192;
  wire NEURO_SA_n_193;
  wire NEURO_SA_n_194;
  wire NEURO_SA_n_2;
  wire NEURO_SA_n_20;
  wire NEURO_SA_n_21;
  wire NEURO_SA_n_211;
  wire NEURO_SA_n_212;
  wire NEURO_SA_n_213;
  wire NEURO_SA_n_214;
  wire NEURO_SA_n_215;
  wire NEURO_SA_n_216;
  wire NEURO_SA_n_217;
  wire NEURO_SA_n_218;
  wire NEURO_SA_n_219;
  wire NEURO_SA_n_22;
  wire NEURO_SA_n_220;
  wire NEURO_SA_n_221;
  wire NEURO_SA_n_222;
  wire NEURO_SA_n_223;
  wire NEURO_SA_n_224;
  wire NEURO_SA_n_225;
  wire NEURO_SA_n_226;
  wire NEURO_SA_n_227;
  wire NEURO_SA_n_228;
  wire NEURO_SA_n_229;
  wire NEURO_SA_n_23;
  wire NEURO_SA_n_230;
  wire NEURO_SA_n_231;
  wire NEURO_SA_n_232;
  wire NEURO_SA_n_233;
  wire NEURO_SA_n_234;
  wire NEURO_SA_n_235;
  wire NEURO_SA_n_236;
  wire NEURO_SA_n_237;
  wire NEURO_SA_n_238;
  wire NEURO_SA_n_239;
  wire NEURO_SA_n_24;
  wire NEURO_SA_n_240;
  wire NEURO_SA_n_241;
  wire NEURO_SA_n_242;
  wire NEURO_SA_n_243;
  wire NEURO_SA_n_244;
  wire NEURO_SA_n_245;
  wire NEURO_SA_n_246;
  wire NEURO_SA_n_247;
  wire NEURO_SA_n_248;
  wire NEURO_SA_n_249;
  wire NEURO_SA_n_25;
  wire NEURO_SA_n_250;
  wire NEURO_SA_n_251;
  wire NEURO_SA_n_252;
  wire NEURO_SA_n_253;
  wire NEURO_SA_n_254;
  wire NEURO_SA_n_255;
  wire NEURO_SA_n_256;
  wire NEURO_SA_n_257;
  wire NEURO_SA_n_258;
  wire NEURO_SA_n_259;
  wire NEURO_SA_n_26;
  wire NEURO_SA_n_260;
  wire NEURO_SA_n_261;
  wire NEURO_SA_n_262;
  wire NEURO_SA_n_263;
  wire NEURO_SA_n_264;
  wire NEURO_SA_n_265;
  wire NEURO_SA_n_266;
  wire NEURO_SA_n_267;
  wire NEURO_SA_n_268;
  wire NEURO_SA_n_269;
  wire NEURO_SA_n_27;
  wire NEURO_SA_n_270;
  wire NEURO_SA_n_271;
  wire NEURO_SA_n_272;
  wire NEURO_SA_n_273;
  wire NEURO_SA_n_274;
  wire NEURO_SA_n_275;
  wire NEURO_SA_n_276;
  wire NEURO_SA_n_277;
  wire NEURO_SA_n_278;
  wire NEURO_SA_n_279;
  wire NEURO_SA_n_28;
  wire NEURO_SA_n_280;
  wire NEURO_SA_n_281;
  wire NEURO_SA_n_282;
  wire NEURO_SA_n_283;
  wire NEURO_SA_n_284;
  wire NEURO_SA_n_285;
  wire NEURO_SA_n_286;
  wire NEURO_SA_n_287;
  wire NEURO_SA_n_288;
  wire NEURO_SA_n_289;
  wire NEURO_SA_n_29;
  wire NEURO_SA_n_290;
  wire NEURO_SA_n_291;
  wire NEURO_SA_n_292;
  wire NEURO_SA_n_293;
  wire NEURO_SA_n_294;
  wire NEURO_SA_n_295;
  wire NEURO_SA_n_296;
  wire NEURO_SA_n_297;
  wire NEURO_SA_n_298;
  wire NEURO_SA_n_299;
  wire NEURO_SA_n_3;
  wire NEURO_SA_n_30;
  wire NEURO_SA_n_300;
  wire NEURO_SA_n_301;
  wire NEURO_SA_n_302;
  wire NEURO_SA_n_303;
  wire NEURO_SA_n_304;
  wire NEURO_SA_n_305;
  wire NEURO_SA_n_306;
  wire NEURO_SA_n_307;
  wire NEURO_SA_n_308;
  wire NEURO_SA_n_309;
  wire NEURO_SA_n_31;
  wire NEURO_SA_n_310;
  wire NEURO_SA_n_311;
  wire NEURO_SA_n_312;
  wire NEURO_SA_n_313;
  wire NEURO_SA_n_314;
  wire NEURO_SA_n_315;
  wire NEURO_SA_n_316;
  wire NEURO_SA_n_317;
  wire NEURO_SA_n_318;
  wire NEURO_SA_n_319;
  wire NEURO_SA_n_32;
  wire NEURO_SA_n_320;
  wire NEURO_SA_n_321;
  wire NEURO_SA_n_322;
  wire NEURO_SA_n_323;
  wire NEURO_SA_n_324;
  wire NEURO_SA_n_325;
  wire NEURO_SA_n_326;
  wire NEURO_SA_n_327;
  wire NEURO_SA_n_328;
  wire NEURO_SA_n_329;
  wire NEURO_SA_n_33;
  wire NEURO_SA_n_330;
  wire NEURO_SA_n_331;
  wire NEURO_SA_n_332;
  wire NEURO_SA_n_333;
  wire NEURO_SA_n_334;
  wire NEURO_SA_n_335;
  wire NEURO_SA_n_336;
  wire NEURO_SA_n_337;
  wire NEURO_SA_n_338;
  wire NEURO_SA_n_339;
  wire NEURO_SA_n_34;
  wire NEURO_SA_n_340;
  wire NEURO_SA_n_341;
  wire NEURO_SA_n_342;
  wire NEURO_SA_n_343;
  wire NEURO_SA_n_344;
  wire NEURO_SA_n_345;
  wire NEURO_SA_n_346;
  wire NEURO_SA_n_347;
  wire NEURO_SA_n_348;
  wire NEURO_SA_n_349;
  wire NEURO_SA_n_35;
  wire NEURO_SA_n_350;
  wire NEURO_SA_n_351;
  wire NEURO_SA_n_352;
  wire NEURO_SA_n_353;
  wire NEURO_SA_n_354;
  wire NEURO_SA_n_355;
  wire NEURO_SA_n_356;
  wire NEURO_SA_n_357;
  wire NEURO_SA_n_358;
  wire NEURO_SA_n_359;
  wire NEURO_SA_n_36;
  wire NEURO_SA_n_360;
  wire NEURO_SA_n_361;
  wire NEURO_SA_n_362;
  wire NEURO_SA_n_363;
  wire NEURO_SA_n_364;
  wire NEURO_SA_n_365;
  wire NEURO_SA_n_366;
  wire NEURO_SA_n_367;
  wire NEURO_SA_n_368;
  wire NEURO_SA_n_369;
  wire NEURO_SA_n_37;
  wire NEURO_SA_n_370;
  wire NEURO_SA_n_371;
  wire NEURO_SA_n_372;
  wire NEURO_SA_n_373;
  wire NEURO_SA_n_374;
  wire NEURO_SA_n_375;
  wire NEURO_SA_n_376;
  wire NEURO_SA_n_377;
  wire NEURO_SA_n_378;
  wire NEURO_SA_n_379;
  wire NEURO_SA_n_38;
  wire NEURO_SA_n_380;
  wire NEURO_SA_n_381;
  wire NEURO_SA_n_382;
  wire NEURO_SA_n_383;
  wire NEURO_SA_n_384;
  wire NEURO_SA_n_385;
  wire NEURO_SA_n_386;
  wire NEURO_SA_n_39;
  wire NEURO_SA_n_4;
  wire NEURO_SA_n_40;
  wire NEURO_SA_n_41;
  wire NEURO_SA_n_42;
  wire NEURO_SA_n_43;
  wire NEURO_SA_n_44;
  wire NEURO_SA_n_45;
  wire NEURO_SA_n_46;
  wire NEURO_SA_n_47;
  wire NEURO_SA_n_48;
  wire NEURO_SA_n_49;
  wire NEURO_SA_n_5;
  wire NEURO_SA_n_50;
  wire NEURO_SA_n_51;
  wire NEURO_SA_n_52;
  wire NEURO_SA_n_53;
  wire NEURO_SA_n_54;
  wire NEURO_SA_n_55;
  wire NEURO_SA_n_56;
  wire NEURO_SA_n_57;
  wire NEURO_SA_n_58;
  wire NEURO_SA_n_59;
  wire NEURO_SA_n_6;
  wire NEURO_SA_n_60;
  wire NEURO_SA_n_61;
  wire NEURO_SA_n_62;
  wire NEURO_SA_n_63;
  wire NEURO_SA_n_64;
  wire NEURO_SA_n_65;
  wire NEURO_SA_n_66;
  wire NEURO_SA_n_67;
  wire NEURO_SA_n_68;
  wire NEURO_SA_n_69;
  wire NEURO_SA_n_7;
  wire NEURO_SA_n_70;
  wire NEURO_SA_n_71;
  wire NEURO_SA_n_72;
  wire NEURO_SA_n_73;
  wire NEURO_SA_n_74;
  wire NEURO_SA_n_75;
  wire NEURO_SA_n_76;
  wire NEURO_SA_n_77;
  wire NEURO_SA_n_78;
  wire NEURO_SA_n_79;
  wire NEURO_SA_n_8;
  wire NEURO_SA_n_80;
  wire NEURO_SA_n_81;
  wire NEURO_SA_n_82;
  wire NEURO_SA_n_83;
  wire NEURO_SA_n_84;
  wire NEURO_SA_n_85;
  wire NEURO_SA_n_86;
  wire NEURO_SA_n_87;
  wire NEURO_SA_n_88;
  wire NEURO_SA_n_89;
  wire NEURO_SA_n_9;
  wire NEURO_SA_n_90;
  wire NEURO_SA_n_91;
  wire NEURO_SA_n_92;
  wire NEURO_SA_n_93;
  wire NEURO_SA_n_94;
  wire NEURO_SA_n_95;
  wire NEURO_SA_n_96;
  wire NEURO_SA_n_97;
  wire NEURO_SA_n_98;
  wire NEURO_SA_n_99;
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
  wire [2:0]idx_to_write;
  wire [2:0]idx_to_write_IBUF;
  wire [15:0]membrane_data_in;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]neuron_state_in;
  wire [3:0]neuron_state_in_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]\unit_gen[0].unit_inst/Q_out ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_1 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_2 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_3 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ;
  wire \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 ;
  wire [7:0]\unit_gen[1].unit_inst/Q_out ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_1 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_2 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_3 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ;
  wire \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 ;
  wire \unit_gen[1].unit_inst/which_unit_fired ;
  wire [1:0]write_ensemble_seed;
  wire [1:0]write_ensemble_seed_IBUF;
  wire [1:0]write_flipping_seed;
  wire [1:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states;
  wire [1:0]write_neuron_states_IBUF;
  wire [15:8]\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOPBDOP_UNCONNECTED ;
  wire [15:8]\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOPBDOP_UNCONNECTED ;

  neuroSA_machine NEURO_SA
       (.CO(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ),
        .DI({NEURO_SA_n_211,NEURO_SA_n_212,NEURO_SA_n_213}),
        .DOADO(\unit_gen[0].unit_inst/Q_out ),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 }),
        .Q({\unit_gen[1].unit_inst/which_unit_fired ,NEURO_SA_n_1,NEURO_SA_n_2}),
        .\Q_control_reg_reg[0] ({NEURO_SA_n_19,NEURO_SA_n_20,NEURO_SA_n_21,NEURO_SA_n_22}),
        .\Q_control_reg_reg[0]_0 ({NEURO_SA_n_23,NEURO_SA_n_24,NEURO_SA_n_25,NEURO_SA_n_26}),
        .\Q_control_reg_reg[0]_1 ({NEURO_SA_n_27,NEURO_SA_n_28,NEURO_SA_n_29,NEURO_SA_n_30}),
        .\Q_control_reg_reg[0]_10 ({NEURO_SA_n_79,NEURO_SA_n_80,NEURO_SA_n_81,NEURO_SA_n_82}),
        .\Q_control_reg_reg[0]_11 ({NEURO_SA_n_83,NEURO_SA_n_84,NEURO_SA_n_85,NEURO_SA_n_86}),
        .\Q_control_reg_reg[0]_12 ({NEURO_SA_n_87,NEURO_SA_n_88,NEURO_SA_n_89,NEURO_SA_n_90}),
        .\Q_control_reg_reg[0]_13 ({NEURO_SA_n_91,NEURO_SA_n_92,NEURO_SA_n_93,NEURO_SA_n_94}),
        .\Q_control_reg_reg[0]_14 ({NEURO_SA_n_95,NEURO_SA_n_96,NEURO_SA_n_97,NEURO_SA_n_98}),
        .\Q_control_reg_reg[0]_15 ({NEURO_SA_n_131,NEURO_SA_n_132,NEURO_SA_n_133,NEURO_SA_n_134}),
        .\Q_control_reg_reg[0]_16 ({NEURO_SA_n_135,NEURO_SA_n_136,NEURO_SA_n_137,NEURO_SA_n_138}),
        .\Q_control_reg_reg[0]_17 ({NEURO_SA_n_139,NEURO_SA_n_140,NEURO_SA_n_141,NEURO_SA_n_142}),
        .\Q_control_reg_reg[0]_18 ({NEURO_SA_n_143,NEURO_SA_n_144,NEURO_SA_n_145,NEURO_SA_n_146}),
        .\Q_control_reg_reg[0]_19 ({NEURO_SA_n_147,NEURO_SA_n_148,NEURO_SA_n_149,NEURO_SA_n_150}),
        .\Q_control_reg_reg[0]_2 ({NEURO_SA_n_31,NEURO_SA_n_32,NEURO_SA_n_33,NEURO_SA_n_34}),
        .\Q_control_reg_reg[0]_20 ({NEURO_SA_n_151,NEURO_SA_n_152,NEURO_SA_n_153,NEURO_SA_n_154}),
        .\Q_control_reg_reg[0]_21 ({NEURO_SA_n_155,NEURO_SA_n_156,NEURO_SA_n_157,NEURO_SA_n_158}),
        .\Q_control_reg_reg[0]_22 ({NEURO_SA_n_159,NEURO_SA_n_160,NEURO_SA_n_161,NEURO_SA_n_162}),
        .\Q_control_reg_reg[0]_23 ({NEURO_SA_n_223,NEURO_SA_n_224,NEURO_SA_n_225}),
        .\Q_control_reg_reg[0]_24 ({NEURO_SA_n_226,NEURO_SA_n_227,NEURO_SA_n_228}),
        .\Q_control_reg_reg[0]_25 ({NEURO_SA_n_229,NEURO_SA_n_230,NEURO_SA_n_231}),
        .\Q_control_reg_reg[0]_26 ({NEURO_SA_n_232,NEURO_SA_n_233,NEURO_SA_n_234}),
        .\Q_control_reg_reg[0]_27 ({NEURO_SA_n_247,NEURO_SA_n_248,NEURO_SA_n_249}),
        .\Q_control_reg_reg[0]_28 ({NEURO_SA_n_250,NEURO_SA_n_251,NEURO_SA_n_252}),
        .\Q_control_reg_reg[0]_29 ({NEURO_SA_n_253,NEURO_SA_n_254,NEURO_SA_n_255}),
        .\Q_control_reg_reg[0]_3 ({NEURO_SA_n_51,NEURO_SA_n_52,NEURO_SA_n_53,NEURO_SA_n_54}),
        .\Q_control_reg_reg[0]_30 ({NEURO_SA_n_256,NEURO_SA_n_257,NEURO_SA_n_258}),
        .\Q_control_reg_reg[0]_31 ({NEURO_SA_n_291,NEURO_SA_n_292,NEURO_SA_n_293,NEURO_SA_n_294}),
        .\Q_control_reg_reg[0]_32 ({NEURO_SA_n_295,NEURO_SA_n_296,NEURO_SA_n_297,NEURO_SA_n_298}),
        .\Q_control_reg_reg[0]_33 ({NEURO_SA_n_299,NEURO_SA_n_300,NEURO_SA_n_301,NEURO_SA_n_302}),
        .\Q_control_reg_reg[0]_34 ({NEURO_SA_n_303,NEURO_SA_n_304,NEURO_SA_n_305,NEURO_SA_n_306}),
        .\Q_control_reg_reg[0]_35 ({NEURO_SA_n_307,NEURO_SA_n_308,NEURO_SA_n_309,NEURO_SA_n_310}),
        .\Q_control_reg_reg[0]_36 ({NEURO_SA_n_311,NEURO_SA_n_312,NEURO_SA_n_313,NEURO_SA_n_314}),
        .\Q_control_reg_reg[0]_37 ({NEURO_SA_n_315,NEURO_SA_n_316,NEURO_SA_n_317,NEURO_SA_n_318}),
        .\Q_control_reg_reg[0]_38 ({NEURO_SA_n_319,NEURO_SA_n_320,NEURO_SA_n_321,NEURO_SA_n_322}),
        .\Q_control_reg_reg[0]_39 ({NEURO_SA_n_355,NEURO_SA_n_356,NEURO_SA_n_357,NEURO_SA_n_358}),
        .\Q_control_reg_reg[0]_4 ({NEURO_SA_n_55,NEURO_SA_n_56,NEURO_SA_n_57,NEURO_SA_n_58}),
        .\Q_control_reg_reg[0]_40 ({NEURO_SA_n_359,NEURO_SA_n_360,NEURO_SA_n_361,NEURO_SA_n_362}),
        .\Q_control_reg_reg[0]_41 ({NEURO_SA_n_363,NEURO_SA_n_364,NEURO_SA_n_365,NEURO_SA_n_366}),
        .\Q_control_reg_reg[0]_42 ({NEURO_SA_n_367,NEURO_SA_n_368,NEURO_SA_n_369,NEURO_SA_n_370}),
        .\Q_control_reg_reg[0]_43 ({NEURO_SA_n_371,NEURO_SA_n_372,NEURO_SA_n_373,NEURO_SA_n_374}),
        .\Q_control_reg_reg[0]_44 ({NEURO_SA_n_375,NEURO_SA_n_376,NEURO_SA_n_377,NEURO_SA_n_378}),
        .\Q_control_reg_reg[0]_45 ({NEURO_SA_n_379,NEURO_SA_n_380,NEURO_SA_n_381,NEURO_SA_n_382}),
        .\Q_control_reg_reg[0]_46 ({NEURO_SA_n_383,NEURO_SA_n_384,NEURO_SA_n_385,NEURO_SA_n_386}),
        .\Q_control_reg_reg[0]_5 ({NEURO_SA_n_59,NEURO_SA_n_60,NEURO_SA_n_61,NEURO_SA_n_62}),
        .\Q_control_reg_reg[0]_6 ({NEURO_SA_n_63,NEURO_SA_n_64,NEURO_SA_n_65,NEURO_SA_n_66}),
        .\Q_control_reg_reg[0]_7 ({NEURO_SA_n_67,NEURO_SA_n_68,NEURO_SA_n_69,NEURO_SA_n_70}),
        .\Q_control_reg_reg[0]_8 ({NEURO_SA_n_71,NEURO_SA_n_72,NEURO_SA_n_73,NEURO_SA_n_74}),
        .\Q_control_reg_reg[0]_9 ({NEURO_SA_n_75,NEURO_SA_n_76,NEURO_SA_n_77,NEURO_SA_n_78}),
        .\Q_control_reg_reg[0]_rep ({NEURO_SA_n_7,NEURO_SA_n_8,NEURO_SA_n_9,NEURO_SA_n_10}),
        .\Q_control_reg_reg[0]_rep_0 ({NEURO_SA_n_11,NEURO_SA_n_12,NEURO_SA_n_13,NEURO_SA_n_14}),
        .\Q_control_reg_reg[0]_rep_1 ({NEURO_SA_n_15,NEURO_SA_n_16,NEURO_SA_n_17,NEURO_SA_n_18}),
        .\Q_control_reg_reg[0]_rep_10 ({NEURO_SA_n_115,NEURO_SA_n_116,NEURO_SA_n_117,NEURO_SA_n_118}),
        .\Q_control_reg_reg[0]_rep_11 ({NEURO_SA_n_119,NEURO_SA_n_120,NEURO_SA_n_121,NEURO_SA_n_122}),
        .\Q_control_reg_reg[0]_rep_12 ({NEURO_SA_n_123,NEURO_SA_n_124,NEURO_SA_n_125,NEURO_SA_n_126}),
        .\Q_control_reg_reg[0]_rep_13 ({NEURO_SA_n_127,NEURO_SA_n_128,NEURO_SA_n_129,NEURO_SA_n_130}),
        .\Q_control_reg_reg[0]_rep_14 ({NEURO_SA_n_163,NEURO_SA_n_164,NEURO_SA_n_165,NEURO_SA_n_166}),
        .\Q_control_reg_reg[0]_rep_15 ({NEURO_SA_n_167,NEURO_SA_n_168,NEURO_SA_n_169,NEURO_SA_n_170}),
        .\Q_control_reg_reg[0]_rep_16 ({NEURO_SA_n_171,NEURO_SA_n_172,NEURO_SA_n_173,NEURO_SA_n_174}),
        .\Q_control_reg_reg[0]_rep_17 ({NEURO_SA_n_175,NEURO_SA_n_176,NEURO_SA_n_177,NEURO_SA_n_178}),
        .\Q_control_reg_reg[0]_rep_18 ({NEURO_SA_n_179,NEURO_SA_n_180,NEURO_SA_n_181,NEURO_SA_n_182}),
        .\Q_control_reg_reg[0]_rep_19 ({NEURO_SA_n_183,NEURO_SA_n_184,NEURO_SA_n_185,NEURO_SA_n_186}),
        .\Q_control_reg_reg[0]_rep_2 ({NEURO_SA_n_35,NEURO_SA_n_36,NEURO_SA_n_37,NEURO_SA_n_38}),
        .\Q_control_reg_reg[0]_rep_20 ({NEURO_SA_n_187,NEURO_SA_n_188,NEURO_SA_n_189,NEURO_SA_n_190}),
        .\Q_control_reg_reg[0]_rep_21 ({NEURO_SA_n_191,NEURO_SA_n_192,NEURO_SA_n_193,NEURO_SA_n_194}),
        .\Q_control_reg_reg[0]_rep_22 ({NEURO_SA_n_214,NEURO_SA_n_215,NEURO_SA_n_216}),
        .\Q_control_reg_reg[0]_rep_23 ({NEURO_SA_n_217,NEURO_SA_n_218,NEURO_SA_n_219}),
        .\Q_control_reg_reg[0]_rep_24 ({NEURO_SA_n_220,NEURO_SA_n_221,NEURO_SA_n_222}),
        .\Q_control_reg_reg[0]_rep_25 ({NEURO_SA_n_235,NEURO_SA_n_236,NEURO_SA_n_237}),
        .\Q_control_reg_reg[0]_rep_26 ({NEURO_SA_n_238,NEURO_SA_n_239,NEURO_SA_n_240}),
        .\Q_control_reg_reg[0]_rep_27 ({NEURO_SA_n_241,NEURO_SA_n_242,NEURO_SA_n_243}),
        .\Q_control_reg_reg[0]_rep_28 ({NEURO_SA_n_244,NEURO_SA_n_245,NEURO_SA_n_246}),
        .\Q_control_reg_reg[0]_rep_29 ({NEURO_SA_n_259,NEURO_SA_n_260,NEURO_SA_n_261,NEURO_SA_n_262}),
        .\Q_control_reg_reg[0]_rep_3 ({NEURO_SA_n_39,NEURO_SA_n_40,NEURO_SA_n_41,NEURO_SA_n_42}),
        .\Q_control_reg_reg[0]_rep_30 ({NEURO_SA_n_263,NEURO_SA_n_264,NEURO_SA_n_265,NEURO_SA_n_266}),
        .\Q_control_reg_reg[0]_rep_31 ({NEURO_SA_n_267,NEURO_SA_n_268,NEURO_SA_n_269,NEURO_SA_n_270}),
        .\Q_control_reg_reg[0]_rep_32 ({NEURO_SA_n_271,NEURO_SA_n_272,NEURO_SA_n_273,NEURO_SA_n_274}),
        .\Q_control_reg_reg[0]_rep_33 ({NEURO_SA_n_275,NEURO_SA_n_276,NEURO_SA_n_277,NEURO_SA_n_278}),
        .\Q_control_reg_reg[0]_rep_34 ({NEURO_SA_n_279,NEURO_SA_n_280,NEURO_SA_n_281,NEURO_SA_n_282}),
        .\Q_control_reg_reg[0]_rep_35 ({NEURO_SA_n_283,NEURO_SA_n_284,NEURO_SA_n_285,NEURO_SA_n_286}),
        .\Q_control_reg_reg[0]_rep_36 ({NEURO_SA_n_287,NEURO_SA_n_288,NEURO_SA_n_289,NEURO_SA_n_290}),
        .\Q_control_reg_reg[0]_rep_37 ({NEURO_SA_n_323,NEURO_SA_n_324,NEURO_SA_n_325,NEURO_SA_n_326}),
        .\Q_control_reg_reg[0]_rep_38 ({NEURO_SA_n_327,NEURO_SA_n_328,NEURO_SA_n_329,NEURO_SA_n_330}),
        .\Q_control_reg_reg[0]_rep_39 ({NEURO_SA_n_331,NEURO_SA_n_332,NEURO_SA_n_333,NEURO_SA_n_334}),
        .\Q_control_reg_reg[0]_rep_4 ({NEURO_SA_n_43,NEURO_SA_n_44,NEURO_SA_n_45,NEURO_SA_n_46}),
        .\Q_control_reg_reg[0]_rep_40 ({NEURO_SA_n_335,NEURO_SA_n_336,NEURO_SA_n_337,NEURO_SA_n_338}),
        .\Q_control_reg_reg[0]_rep_41 ({NEURO_SA_n_339,NEURO_SA_n_340,NEURO_SA_n_341,NEURO_SA_n_342}),
        .\Q_control_reg_reg[0]_rep_42 ({NEURO_SA_n_343,NEURO_SA_n_344,NEURO_SA_n_345,NEURO_SA_n_346}),
        .\Q_control_reg_reg[0]_rep_43 ({NEURO_SA_n_347,NEURO_SA_n_348,NEURO_SA_n_349,NEURO_SA_n_350}),
        .\Q_control_reg_reg[0]_rep_44 ({NEURO_SA_n_351,NEURO_SA_n_352,NEURO_SA_n_353,NEURO_SA_n_354}),
        .\Q_control_reg_reg[0]_rep_5 ({NEURO_SA_n_47,NEURO_SA_n_48,NEURO_SA_n_49,NEURO_SA_n_50}),
        .\Q_control_reg_reg[0]_rep_6 ({NEURO_SA_n_99,NEURO_SA_n_100,NEURO_SA_n_101,NEURO_SA_n_102}),
        .\Q_control_reg_reg[0]_rep_7 ({NEURO_SA_n_103,NEURO_SA_n_104,NEURO_SA_n_105,NEURO_SA_n_106}),
        .\Q_control_reg_reg[0]_rep_8 ({NEURO_SA_n_107,NEURO_SA_n_108,NEURO_SA_n_109,NEURO_SA_n_110}),
        .\Q_control_reg_reg[0]_rep_9 ({NEURO_SA_n_111,NEURO_SA_n_112,NEURO_SA_n_113,NEURO_SA_n_114}),
        .S({NEURO_SA_n_3,NEURO_SA_n_4,NEURO_SA_n_5,NEURO_SA_n_6}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cuts_best_reg[15] (found_solution_value_OBUF),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 }),
        .\membrane_storage_reg[0][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 }),
        .\membrane_storage_reg[0][15] (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ),
        .\membrane_storage_reg[0][3] ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 }),
        .\membrane_storage_reg[0][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 }),
        .\membrane_storage_reg[0][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 }),
        .\membrane_storage_reg[1][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 }),
        .\membrane_storage_reg[1][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 }),
        .\membrane_storage_reg[1][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ),
        .\membrane_storage_reg[1][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ),
        .\membrane_storage_reg[1][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 }),
        .\membrane_storage_reg[1][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 }),
        .\membrane_storage_reg[1][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 }),
        .\membrane_storage_reg[1][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 }),
        .\membrane_storage_reg[2][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 }),
        .\membrane_storage_reg[2][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 }),
        .\membrane_storage_reg[2][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ),
        .\membrane_storage_reg[2][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ),
        .\membrane_storage_reg[2][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 }),
        .\membrane_storage_reg[2][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 }),
        .\membrane_storage_reg[2][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 }),
        .\membrane_storage_reg[2][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 }),
        .\membrane_storage_reg[3][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 }),
        .\membrane_storage_reg[3][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 }),
        .\membrane_storage_reg[3][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ),
        .\membrane_storage_reg[3][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ),
        .\membrane_storage_reg[3][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 }),
        .\membrane_storage_reg[3][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 }),
        .\membrane_storage_reg[3][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 }),
        .\membrane_storage_reg[3][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 }),
        .\membrane_storage_reg[4][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 }),
        .\membrane_storage_reg[4][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 }),
        .\membrane_storage_reg[4][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ),
        .\membrane_storage_reg[4][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ),
        .\membrane_storage_reg[4][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 }),
        .\membrane_storage_reg[4][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 }),
        .\membrane_storage_reg[4][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 }),
        .\membrane_storage_reg[4][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 }),
        .\membrane_storage_reg[5][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 }),
        .\membrane_storage_reg[5][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 }),
        .\membrane_storage_reg[5][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ),
        .\membrane_storage_reg[5][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ),
        .\membrane_storage_reg[5][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 }),
        .\membrane_storage_reg[5][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 }),
        .\membrane_storage_reg[5][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 }),
        .\membrane_storage_reg[5][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 }),
        .\membrane_storage_reg[6][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 }),
        .\membrane_storage_reg[6][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 }),
        .\membrane_storage_reg[6][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ),
        .\membrane_storage_reg[6][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ),
        .\membrane_storage_reg[6][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 }),
        .\membrane_storage_reg[6][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 }),
        .\membrane_storage_reg[6][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 }),
        .\membrane_storage_reg[6][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 }),
        .\membrane_storage_reg[7][0] (\unit_gen[1].unit_inst/Q_out ),
        .\membrane_storage_reg[7][11] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 }),
        .\membrane_storage_reg[7][11]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 }),
        .\membrane_storage_reg[7][15] (\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ),
        .\membrane_storage_reg[7][15]_0 (\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ),
        .\membrane_storage_reg[7][3] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 }),
        .\membrane_storage_reg[7][3]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 }),
        .\membrane_storage_reg[7][7] ({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 }),
        .\membrane_storage_reg[7][7]_0 ({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 }),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .reset_IBUF(reset_IBUF),
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
  IBUF \idx_to_write_IBUF[2]_inst 
       (.I(idx_to_write[2]),
        .O(idx_to_write_IBUF[2]));
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
  IBUF \neuron_state_in_IBUF[2]_inst 
       (.I(neuron_state_in[2]),
        .O(neuron_state_in_IBUF[2]));
  IBUF \neuron_state_in_IBUF[3]_inst 
       (.I(neuron_state_in[3]),
        .O(neuron_state_in_IBUF[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "distributed_graph_memory/Q_out_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000020004000A00030007000B000C000C),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    \unit_gen[0].unit_inst/G_memory/Q_out_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\unit_gen[1].unit_inst/which_unit_fired ,NEURO_SA_n_1,NEURO_SA_n_2,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOADO_UNCONNECTED [15:8],\unit_gen[0].unit_inst/Q_out }),
        .DOBDO(\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_unit_gen[0].unit_inst/G_memory/Q_out_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_220,NEURO_SA_n_221,NEURO_SA_n_222,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 }),
        .S({NEURO_SA_n_15,NEURO_SA_n_16,NEURO_SA_n_17,NEURO_SA_n_18}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_283,NEURO_SA_n_284,NEURO_SA_n_285,NEURO_SA_n_286}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 }),
        .S({NEURO_SA_n_103,NEURO_SA_n_104,NEURO_SA_n_105,NEURO_SA_n_106}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_287,NEURO_SA_n_288,NEURO_SA_n_289,NEURO_SA_n_290}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 }),
        .S({NEURO_SA_n_99,NEURO_SA_n_100,NEURO_SA_n_101,NEURO_SA_n_102}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_223,NEURO_SA_n_224,NEURO_SA_n_225,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 }),
        .S({NEURO_SA_n_19,NEURO_SA_n_20,NEURO_SA_n_21,NEURO_SA_n_22}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_291,NEURO_SA_n_292,NEURO_SA_n_293,NEURO_SA_n_294}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 }),
        .S({NEURO_SA_n_95,NEURO_SA_n_96,NEURO_SA_n_97,NEURO_SA_n_98}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_295,NEURO_SA_n_296,NEURO_SA_n_297,NEURO_SA_n_298}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 }),
        .S({NEURO_SA_n_91,NEURO_SA_n_92,NEURO_SA_n_93,NEURO_SA_n_94}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_226,NEURO_SA_n_227,NEURO_SA_n_228,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 }),
        .S({NEURO_SA_n_23,NEURO_SA_n_24,NEURO_SA_n_25,NEURO_SA_n_26}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_299,NEURO_SA_n_300,NEURO_SA_n_301,NEURO_SA_n_302}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 }),
        .S({NEURO_SA_n_87,NEURO_SA_n_88,NEURO_SA_n_89,NEURO_SA_n_90}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_303,NEURO_SA_n_304,NEURO_SA_n_305,NEURO_SA_n_306}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 }),
        .S({NEURO_SA_n_83,NEURO_SA_n_84,NEURO_SA_n_85,NEURO_SA_n_86}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_229,NEURO_SA_n_230,NEURO_SA_n_231,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 }),
        .S({NEURO_SA_n_27,NEURO_SA_n_28,NEURO_SA_n_29,NEURO_SA_n_30}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_307,NEURO_SA_n_308,NEURO_SA_n_309,NEURO_SA_n_310}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 }),
        .S({NEURO_SA_n_79,NEURO_SA_n_80,NEURO_SA_n_81,NEURO_SA_n_82}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_311,NEURO_SA_n_312,NEURO_SA_n_313,NEURO_SA_n_314}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 }),
        .S({NEURO_SA_n_75,NEURO_SA_n_76,NEURO_SA_n_77,NEURO_SA_n_78}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_232,NEURO_SA_n_233,NEURO_SA_n_234,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 }),
        .S({NEURO_SA_n_31,NEURO_SA_n_32,NEURO_SA_n_33,NEURO_SA_n_34}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_315,NEURO_SA_n_316,NEURO_SA_n_317,NEURO_SA_n_318}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 }),
        .S({NEURO_SA_n_71,NEURO_SA_n_72,NEURO_SA_n_73,NEURO_SA_n_74}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_319,NEURO_SA_n_320,NEURO_SA_n_321,NEURO_SA_n_322}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 }),
        .S({NEURO_SA_n_67,NEURO_SA_n_68,NEURO_SA_n_69,NEURO_SA_n_70}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_214,NEURO_SA_n_215,NEURO_SA_n_216,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 }),
        .S({NEURO_SA_n_7,NEURO_SA_n_8,NEURO_SA_n_9,NEURO_SA_n_10}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_267,NEURO_SA_n_268,NEURO_SA_n_269,NEURO_SA_n_270}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 }),
        .S({NEURO_SA_n_119,NEURO_SA_n_120,NEURO_SA_n_121,NEURO_SA_n_122}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_271,NEURO_SA_n_272,NEURO_SA_n_273,NEURO_SA_n_274}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 }),
        .S({NEURO_SA_n_115,NEURO_SA_n_116,NEURO_SA_n_117,NEURO_SA_n_118}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_217,NEURO_SA_n_218,NEURO_SA_n_219,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 }),
        .S({NEURO_SA_n_11,NEURO_SA_n_12,NEURO_SA_n_13,NEURO_SA_n_14}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_275,NEURO_SA_n_276,NEURO_SA_n_277,NEURO_SA_n_278}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 }),
        .S({NEURO_SA_n_111,NEURO_SA_n_112,NEURO_SA_n_113,NEURO_SA_n_114}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_279,NEURO_SA_n_280,NEURO_SA_n_281,NEURO_SA_n_282}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 }),
        .S({NEURO_SA_n_107,NEURO_SA_n_108,NEURO_SA_n_109,NEURO_SA_n_110}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_211,NEURO_SA_n_212,NEURO_SA_n_213,1'b0}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 }),
        .S({NEURO_SA_n_3,NEURO_SA_n_4,NEURO_SA_n_5,NEURO_SA_n_6}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_259,NEURO_SA_n_260,NEURO_SA_n_261,NEURO_SA_n_262}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 }),
        .S({NEURO_SA_n_127,NEURO_SA_n_128,NEURO_SA_n_129,NEURO_SA_n_130}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1 
       (.CI(\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ),
        .CO({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_1 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_2 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_263,NEURO_SA_n_264,NEURO_SA_n_265,NEURO_SA_n_266}),
        .O({\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ,\unit_gen[0].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 }),
        .S({NEURO_SA_n_123,NEURO_SA_n_124,NEURO_SA_n_125,NEURO_SA_n_126}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "distributed_graph_memory/Q_out_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000006000B000D000600020004000B0001),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    \unit_gen[1].unit_inst/G_memory/Q_out_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\unit_gen[1].unit_inst/which_unit_fired ,NEURO_SA_n_1,NEURO_SA_n_2,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOADO_UNCONNECTED [15:8],\unit_gen[1].unit_inst/Q_out }),
        .DOBDO(\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_unit_gen[1].unit_inst/G_memory/Q_out_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_244,NEURO_SA_n_245,NEURO_SA_n_246,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_7 }),
        .S({NEURO_SA_n_47,NEURO_SA_n_48,NEURO_SA_n_49,NEURO_SA_n_50}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_347,NEURO_SA_n_348,NEURO_SA_n_349,NEURO_SA_n_350}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_7 }),
        .S({NEURO_SA_n_167,NEURO_SA_n_168,NEURO_SA_n_169,NEURO_SA_n_170}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_351,NEURO_SA_n_352,NEURO_SA_n_353,NEURO_SA_n_354}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___134_carry__1_n_7 }),
        .S({NEURO_SA_n_163,NEURO_SA_n_164,NEURO_SA_n_165,NEURO_SA_n_166}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_247,NEURO_SA_n_248,NEURO_SA_n_249,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_7 }),
        .S({NEURO_SA_n_51,NEURO_SA_n_52,NEURO_SA_n_53,NEURO_SA_n_54}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_355,NEURO_SA_n_356,NEURO_SA_n_357,NEURO_SA_n_358}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_7 }),
        .S({NEURO_SA_n_159,NEURO_SA_n_160,NEURO_SA_n_161,NEURO_SA_n_162}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_359,NEURO_SA_n_360,NEURO_SA_n_361,NEURO_SA_n_362}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___179_carry__1_n_7 }),
        .S({NEURO_SA_n_155,NEURO_SA_n_156,NEURO_SA_n_157,NEURO_SA_n_158}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_250,NEURO_SA_n_251,NEURO_SA_n_252,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_7 }),
        .S({NEURO_SA_n_55,NEURO_SA_n_56,NEURO_SA_n_57,NEURO_SA_n_58}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_363,NEURO_SA_n_364,NEURO_SA_n_365,NEURO_SA_n_366}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_7 }),
        .S({NEURO_SA_n_151,NEURO_SA_n_152,NEURO_SA_n_153,NEURO_SA_n_154}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_367,NEURO_SA_n_368,NEURO_SA_n_369,NEURO_SA_n_370}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___224_carry__1_n_7 }),
        .S({NEURO_SA_n_147,NEURO_SA_n_148,NEURO_SA_n_149,NEURO_SA_n_150}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_253,NEURO_SA_n_254,NEURO_SA_n_255,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_7 }),
        .S({NEURO_SA_n_59,NEURO_SA_n_60,NEURO_SA_n_61,NEURO_SA_n_62}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_371,NEURO_SA_n_372,NEURO_SA_n_373,NEURO_SA_n_374}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_7 }),
        .S({NEURO_SA_n_143,NEURO_SA_n_144,NEURO_SA_n_145,NEURO_SA_n_146}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_375,NEURO_SA_n_376,NEURO_SA_n_377,NEURO_SA_n_378}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___269_carry__1_n_7 }),
        .S({NEURO_SA_n_139,NEURO_SA_n_140,NEURO_SA_n_141,NEURO_SA_n_142}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_256,NEURO_SA_n_257,NEURO_SA_n_258,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_7 }),
        .S({NEURO_SA_n_63,NEURO_SA_n_64,NEURO_SA_n_65,NEURO_SA_n_66}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_379,NEURO_SA_n_380,NEURO_SA_n_381,NEURO_SA_n_382}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_7 }),
        .S({NEURO_SA_n_135,NEURO_SA_n_136,NEURO_SA_n_137,NEURO_SA_n_138}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_383,NEURO_SA_n_384,NEURO_SA_n_385,NEURO_SA_n_386}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___314_carry__1_n_7 }),
        .S({NEURO_SA_n_131,NEURO_SA_n_132,NEURO_SA_n_133,NEURO_SA_n_134}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_238,NEURO_SA_n_239,NEURO_SA_n_240,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_7 }),
        .S({NEURO_SA_n_39,NEURO_SA_n_40,NEURO_SA_n_41,NEURO_SA_n_42}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_331,NEURO_SA_n_332,NEURO_SA_n_333,NEURO_SA_n_334}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_7 }),
        .S({NEURO_SA_n_183,NEURO_SA_n_184,NEURO_SA_n_185,NEURO_SA_n_186}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_335,NEURO_SA_n_336,NEURO_SA_n_337,NEURO_SA_n_338}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___44_carry__1_n_7 }),
        .S({NEURO_SA_n_179,NEURO_SA_n_180,NEURO_SA_n_181,NEURO_SA_n_182}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_241,NEURO_SA_n_242,NEURO_SA_n_243,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_7 }),
        .S({NEURO_SA_n_43,NEURO_SA_n_44,NEURO_SA_n_45,NEURO_SA_n_46}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_339,NEURO_SA_n_340,NEURO_SA_n_341,NEURO_SA_n_342}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_7 }),
        .S({NEURO_SA_n_175,NEURO_SA_n_176,NEURO_SA_n_177,NEURO_SA_n_178}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_343,NEURO_SA_n_344,NEURO_SA_n_345,NEURO_SA_n_346}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i___89_carry__1_n_7 }),
        .S({NEURO_SA_n_171,NEURO_SA_n_172,NEURO_SA_n_173,NEURO_SA_n_174}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_235,NEURO_SA_n_236,NEURO_SA_n_237,1'b0}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_7 }),
        .S({NEURO_SA_n_35,NEURO_SA_n_36,NEURO_SA_n_37,NEURO_SA_n_38}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_323,NEURO_SA_n_324,NEURO_SA_n_325,NEURO_SA_n_326}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_7 }),
        .S({NEURO_SA_n_191,NEURO_SA_n_192,NEURO_SA_n_193,NEURO_SA_n_194}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1 
       (.CI(\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__0_n_0 ),
        .CO({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_0 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_1 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_2 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({NEURO_SA_n_327,NEURO_SA_n_328,NEURO_SA_n_329,NEURO_SA_n_330}),
        .O({\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_4 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_5 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_6 ,\unit_gen[1].unit_inst/neuron_ensemble_inst/i_/i_/i__carry__1_n_7 }),
        .S({NEURO_SA_n_187,NEURO_SA_n_188,NEURO_SA_n_189,NEURO_SA_n_190}));
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
   (DOBDO,
    CO,
    S,
    \Q_control_reg_reg[0]_rep ,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0] ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \selected_membrane_reg_reg[15]_0 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    DI,
    \Q_control_reg_reg[0]_rep_10 ,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    p_2_in,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \neuron_state_reg_reg[0]_0 ,
    B,
    \selected_idx_offset_reg_reg[2]_0 ,
    clk_IBUF_BUFG,
    E,
    D,
    O,
    \membrane_storage_reg[0][7] ,
    \membrane_storage_reg[0][11] ,
    \membrane_storage_reg[1][3] ,
    \membrane_storage_reg[1][7] ,
    \membrane_storage_reg[1][11] ,
    \membrane_storage_reg[2][3] ,
    \membrane_storage_reg[2][7] ,
    \membrane_storage_reg[2][11] ,
    \membrane_storage_reg[3][3] ,
    \membrane_storage_reg[3][7] ,
    \membrane_storage_reg[3][11] ,
    \membrane_storage_reg[4][3] ,
    \membrane_storage_reg[4][7] ,
    \membrane_storage_reg[4][11] ,
    \membrane_storage_reg[5][3] ,
    \membrane_storage_reg[5][7] ,
    \membrane_storage_reg[5][11] ,
    \membrane_storage_reg[6][3] ,
    \membrane_storage_reg[6][7] ,
    \membrane_storage_reg[6][11] ,
    \membrane_storage_reg[7][3] ,
    \membrane_storage_reg[7][7] ,
    \membrane_storage_reg[7][11] ,
    \membrane_storage_reg[0][15] ,
    \membrane_storage_reg[1][15] ,
    \membrane_storage_reg[2][15] ,
    \membrane_storage_reg[3][15] ,
    \membrane_storage_reg[4][15] ,
    \membrane_storage_reg[5][15] ,
    \membrane_storage_reg[6][15] ,
    \membrane_storage_reg[7][15] ,
    Q,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    write_flipping_seed_IBUF,
    \Q_control_reg_reg[0]_23 ,
    \x_reg[0] ,
    update_ds_reg_reg,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    idx_to_write_IBUF,
    DOADO,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    \state_reg[1] ,
    x_reg_rep,
    ADDRBWRADDR);
  output [10:0]DOBDO;
  output [0:0]CO;
  output [3:0]S;
  output [3:0]\Q_control_reg_reg[0]_rep ;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0] ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [15:0]\selected_membrane_reg_reg[15]_0 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [2:0]DI;
  output [2:0]\Q_control_reg_reg[0]_rep_10 ;
  output [2:0]\Q_control_reg_reg[0]_rep_11 ;
  output [2:0]\Q_control_reg_reg[0]_rep_12 ;
  output [2:0]\Q_control_reg_reg[0]_11 ;
  output [2:0]\Q_control_reg_reg[0]_12 ;
  output [2:0]\Q_control_reg_reg[0]_13 ;
  output [2:0]\Q_control_reg_reg[0]_14 ;
  output [2:0]p_2_in;
  output [3:0]\Q_control_reg_reg[0]_rep_13 ;
  output [3:0]\Q_control_reg_reg[0]_rep_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_16 ;
  output [3:0]\Q_control_reg_reg[0]_rep_17 ;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_16 ;
  output [3:0]\Q_control_reg_reg[0]_17 ;
  output [3:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [0:0]\neuron_state_reg_reg[0]_0 ;
  output [17:0]B;
  output [2:0]\selected_idx_offset_reg_reg[2]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input [3:0]O;
  input [3:0]\membrane_storage_reg[0][7] ;
  input [3:0]\membrane_storage_reg[0][11] ;
  input [3:0]\membrane_storage_reg[1][3] ;
  input [3:0]\membrane_storage_reg[1][7] ;
  input [3:0]\membrane_storage_reg[1][11] ;
  input [3:0]\membrane_storage_reg[2][3] ;
  input [3:0]\membrane_storage_reg[2][7] ;
  input [3:0]\membrane_storage_reg[2][11] ;
  input [3:0]\membrane_storage_reg[3][3] ;
  input [3:0]\membrane_storage_reg[3][7] ;
  input [3:0]\membrane_storage_reg[3][11] ;
  input [3:0]\membrane_storage_reg[4][3] ;
  input [3:0]\membrane_storage_reg[4][7] ;
  input [3:0]\membrane_storage_reg[4][11] ;
  input [3:0]\membrane_storage_reg[5][3] ;
  input [3:0]\membrane_storage_reg[5][7] ;
  input [3:0]\membrane_storage_reg[5][11] ;
  input [3:0]\membrane_storage_reg[6][3] ;
  input [3:0]\membrane_storage_reg[6][7] ;
  input [3:0]\membrane_storage_reg[6][11] ;
  input [3:0]\membrane_storage_reg[7][3] ;
  input [3:0]\membrane_storage_reg[7][7] ;
  input [3:0]\membrane_storage_reg[7][11] ;
  input [0:0]\membrane_storage_reg[0][15] ;
  input [0:0]\membrane_storage_reg[1][15] ;
  input [0:0]\membrane_storage_reg[2][15] ;
  input [0:0]\membrane_storage_reg[3][15] ;
  input [0:0]\membrane_storage_reg[4][15] ;
  input [0:0]\membrane_storage_reg[5][15] ;
  input [0:0]\membrane_storage_reg[6][15] ;
  input [0:0]\membrane_storage_reg[7][15] ;
  input [2:0]Q;
  input [15:0]membrane_data_in_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \Q_control_reg_reg[0]_23 ;
  input \x_reg[0] ;
  input [2:0]update_ds_reg_reg;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [2:0]idx_to_write_IBUF;
  input [7:0]DOADO;
  input [3:0]neuron_state_in_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]\state_reg[1] ;
  input x_reg_rep;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [2:0]DI;
  wire [7:0]DOADO;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]\Q_control_reg_reg[0] ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [2:0]\Q_control_reg_reg[0]_11 ;
  wire [2:0]\Q_control_reg_reg[0]_12 ;
  wire [2:0]\Q_control_reg_reg[0]_13 ;
  wire [2:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [3:0]\Q_control_reg_reg[0]_16 ;
  wire [3:0]\Q_control_reg_reg[0]_17 ;
  wire [3:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire \Q_control_reg_reg[0]_23 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire flipping_unit_tb_n_29;
  wire flipping_unit_tb_n_30;
  wire flipping_unit_tb_n_31;
  wire flipping_unit_tb_n_32;
  wire flipping_unit_tb_n_33;
  wire flipping_unit_tb_n_34;
  wire flipping_unit_tb_n_35;
  wire flipping_unit_tb_n_36;
  wire flipping_unit_tb_n_37;
  wire flipping_unit_tb_n_38;
  wire flipping_unit_tb_n_39;
  wire flipping_unit_tb_n_40;
  wire flipping_unit_tb_n_41;
  wire flipping_unit_tb_n_42;
  wire flipping_unit_tb_n_43;
  wire flipping_unit_tb_n_44;
  wire flipping_unit_tb_n_45;
  wire \i_/i_/i___134_carry__2_n_1 ;
  wire \i_/i_/i___134_carry__2_n_2 ;
  wire \i_/i_/i___134_carry__2_n_3 ;
  wire \i_/i_/i___134_carry__2_n_4 ;
  wire \i_/i_/i___134_carry__2_n_5 ;
  wire \i_/i_/i___134_carry__2_n_6 ;
  wire \i_/i_/i___134_carry__2_n_7 ;
  wire \i_/i_/i___179_carry__2_n_1 ;
  wire \i_/i_/i___179_carry__2_n_2 ;
  wire \i_/i_/i___179_carry__2_n_3 ;
  wire \i_/i_/i___179_carry__2_n_4 ;
  wire \i_/i_/i___179_carry__2_n_5 ;
  wire \i_/i_/i___179_carry__2_n_6 ;
  wire \i_/i_/i___179_carry__2_n_7 ;
  wire \i_/i_/i___224_carry__2_n_1 ;
  wire \i_/i_/i___224_carry__2_n_2 ;
  wire \i_/i_/i___224_carry__2_n_3 ;
  wire \i_/i_/i___224_carry__2_n_4 ;
  wire \i_/i_/i___224_carry__2_n_5 ;
  wire \i_/i_/i___224_carry__2_n_6 ;
  wire \i_/i_/i___224_carry__2_n_7 ;
  wire \i_/i_/i___269_carry__2_n_1 ;
  wire \i_/i_/i___269_carry__2_n_2 ;
  wire \i_/i_/i___269_carry__2_n_3 ;
  wire \i_/i_/i___269_carry__2_n_4 ;
  wire \i_/i_/i___269_carry__2_n_5 ;
  wire \i_/i_/i___269_carry__2_n_6 ;
  wire \i_/i_/i___269_carry__2_n_7 ;
  wire \i_/i_/i___314_carry__2_n_1 ;
  wire \i_/i_/i___314_carry__2_n_2 ;
  wire \i_/i_/i___314_carry__2_n_3 ;
  wire \i_/i_/i___314_carry__2_n_4 ;
  wire \i_/i_/i___314_carry__2_n_5 ;
  wire \i_/i_/i___314_carry__2_n_6 ;
  wire \i_/i_/i___314_carry__2_n_7 ;
  wire \i_/i_/i___44_carry__2_n_1 ;
  wire \i_/i_/i___44_carry__2_n_2 ;
  wire \i_/i_/i___44_carry__2_n_3 ;
  wire \i_/i_/i___44_carry__2_n_4 ;
  wire \i_/i_/i___44_carry__2_n_5 ;
  wire \i_/i_/i___44_carry__2_n_6 ;
  wire \i_/i_/i___44_carry__2_n_7 ;
  wire \i_/i_/i___89_carry__2_n_1 ;
  wire \i_/i_/i___89_carry__2_n_2 ;
  wire \i_/i_/i___89_carry__2_n_3 ;
  wire \i_/i_/i___89_carry__2_n_4 ;
  wire \i_/i_/i___89_carry__2_n_5 ;
  wire \i_/i_/i___89_carry__2_n_6 ;
  wire \i_/i_/i___89_carry__2_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/x_reg_rep_i_1_n_0 ;
  wire [2:0]idx_to_write_IBUF;
  wire [15:1]membrane_compare0;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]\membrane_storage_reg[0][11] ;
  wire [0:0]\membrane_storage_reg[0][15] ;
  wire [3:0]\membrane_storage_reg[0][7] ;
  wire [3:0]\membrane_storage_reg[1][11] ;
  wire [0:0]\membrane_storage_reg[1][15] ;
  wire [3:0]\membrane_storage_reg[1][3] ;
  wire [3:0]\membrane_storage_reg[1][7] ;
  wire [3:0]\membrane_storage_reg[2][11] ;
  wire [0:0]\membrane_storage_reg[2][15] ;
  wire [3:0]\membrane_storage_reg[2][3] ;
  wire [3:0]\membrane_storage_reg[2][7] ;
  wire [3:0]\membrane_storage_reg[3][11] ;
  wire [0:0]\membrane_storage_reg[3][15] ;
  wire [3:0]\membrane_storage_reg[3][3] ;
  wire [3:0]\membrane_storage_reg[3][7] ;
  wire [3:0]\membrane_storage_reg[4][11] ;
  wire [0:0]\membrane_storage_reg[4][15] ;
  wire [3:0]\membrane_storage_reg[4][3] ;
  wire [3:0]\membrane_storage_reg[4][7] ;
  wire [3:0]\membrane_storage_reg[5][11] ;
  wire [0:0]\membrane_storage_reg[5][15] ;
  wire [3:0]\membrane_storage_reg[5][3] ;
  wire [3:0]\membrane_storage_reg[5][7] ;
  wire [3:0]\membrane_storage_reg[6][11] ;
  wire [0:0]\membrane_storage_reg[6][15] ;
  wire [3:0]\membrane_storage_reg[6][3] ;
  wire [3:0]\membrane_storage_reg[6][7] ;
  wire [3:0]\membrane_storage_reg[7][11] ;
  wire [0:0]\membrane_storage_reg[7][15] ;
  wire [3:0]\membrane_storage_reg[7][3] ;
  wire [3:0]\membrane_storage_reg[7][7] ;
  wire neuron_ensemble_storage_inst_n_163;
  wire neuron_ensemble_storage_inst_n_164;
  wire neuron_ensemble_storage_inst_n_165;
  wire neuron_ensemble_storage_inst_n_174;
  wire neuron_ensemble_storage_inst_n_175;
  wire neuron_ensemble_storage_inst_n_176;
  wire neuron_ensemble_storage_inst_n_185;
  wire neuron_ensemble_storage_inst_n_186;
  wire neuron_ensemble_storage_inst_n_187;
  wire neuron_ensemble_storage_inst_n_196;
  wire neuron_ensemble_storage_inst_n_197;
  wire neuron_ensemble_storage_inst_n_198;
  wire neuron_ensemble_storage_inst_n_207;
  wire neuron_ensemble_storage_inst_n_208;
  wire neuron_ensemble_storage_inst_n_209;
  wire neuron_ensemble_storage_inst_n_218;
  wire neuron_ensemble_storage_inst_n_219;
  wire neuron_ensemble_storage_inst_n_220;
  wire neuron_ensemble_storage_inst_n_229;
  wire neuron_ensemble_storage_inst_n_230;
  wire neuron_ensemble_storage_inst_n_231;
  wire neuron_ensemble_storage_inst_n_240;
  wire neuron_ensemble_storage_inst_n_241;
  wire neuron_ensemble_storage_inst_n_242;
  wire neuron_ensemble_storage_inst_n_32;
  wire neuron_ensemble_storage_inst_n_33;
  wire neuron_ensemble_storage_inst_n_34;
  wire neuron_ensemble_storage_inst_n_35;
  wire neuron_ensemble_storage_inst_n_36;
  wire neuron_ensemble_storage_inst_n_37;
  wire neuron_ensemble_storage_inst_n_38;
  wire neuron_ensemble_storage_inst_n_39;
  wire neuron_ensemble_storage_inst_n_40;
  wire neuron_ensemble_storage_inst_n_41;
  wire neuron_ensemble_storage_inst_n_42;
  wire neuron_ensemble_storage_inst_n_43;
  wire neuron_ensemble_storage_inst_n_44;
  wire neuron_ensemble_storage_inst_n_45;
  wire neuron_ensemble_storage_inst_n_46;
  wire neuron_ensemble_storage_inst_n_47;
  wire neuron_ensemble_storage_inst_n_48;
  wire neuron_ensemble_storage_inst_n_49;
  wire neuron_ensemble_storage_inst_n_50;
  wire neuron_ensemble_storage_inst_n_51;
  wire neuron_ensemble_storage_inst_n_52;
  wire neuron_ensemble_storage_inst_n_53;
  wire neuron_ensemble_storage_inst_n_54;
  wire neuron_ensemble_storage_inst_n_55;
  wire neuron_ensemble_storage_inst_n_56;
  wire neuron_ensemble_storage_inst_n_57;
  wire neuron_ensemble_storage_inst_n_58;
  wire neuron_ensemble_storage_inst_n_59;
  wire neuron_ensemble_storage_inst_n_60;
  wire neuron_ensemble_storage_inst_n_61;
  wire neuron_ensemble_storage_inst_n_62;
  wire neuron_ensemble_storage_inst_n_63;
  wire [1:0]neuron_state;
  wire [3:0]neuron_state_in_IBUF;
  wire neuron_state_reg;
  wire [0:0]\neuron_state_reg_reg[0]_0 ;
  wire \neuron_state_reg_reg_n_0_[1] ;
  wire [15:0]p_0_in;
  wire [2:0]p_2_in;
  wire [2:0]selected_idx_offset;
  wire [2:0]\selected_idx_offset_reg_reg[2]_0 ;
  wire [15:0]selected_membrane;
  wire [15:0]\selected_membrane_reg_reg[15]_0 ;
  wire spike_carry__0_i_10_n_0;
  wire spike_carry__0_i_10_n_1;
  wire spike_carry__0_i_10_n_2;
  wire spike_carry__0_i_10_n_3;
  wire spike_carry__0_i_11_n_0;
  wire spike_carry__0_i_9_n_2;
  wire spike_carry__0_i_9_n_3;
  wire spike_carry__0_n_1;
  wire spike_carry__0_n_2;
  wire spike_carry__0_n_3;
  wire spike_carry_i_10_n_0;
  wire spike_carry_i_10_n_1;
  wire spike_carry_i_10_n_2;
  wire spike_carry_i_10_n_3;
  wire spike_carry_i_11_n_0;
  wire spike_carry_i_12_n_0;
  wire spike_carry_i_12_n_1;
  wire spike_carry_i_12_n_2;
  wire spike_carry_i_12_n_3;
  wire spike_carry_i_13_n_0;
  wire spike_carry_i_9_n_0;
  wire spike_carry_n_0;
  wire spike_carry_n_1;
  wire spike_carry_n_2;
  wire spike_carry_n_3;
  wire [0:0]\state_reg[1] ;
  wire storage_CE;
  wire [2:0]update_ds_reg_reg;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire x_reg_rep;
  wire [3:3]\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___179_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___224_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___269_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___314_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_9_O_UNCONNECTED;

  flipping_unit_1 flipping_unit_tb
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .D(D),
        .DI({flipping_unit_tb_n_29,flipping_unit_tb_n_30,flipping_unit_tb_n_31,flipping_unit_tb_n_32}),
        .DOBDO(DOBDO),
        .E(E),
        .Q(Q),
        .S({flipping_unit_tb_n_38,flipping_unit_tb_n_39,flipping_unit_tb_n_40,flipping_unit_tb_n_41}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\flipping_output_reg_reg[7]_0 ({flipping_unit_tb_n_34,flipping_unit_tb_n_35,flipping_unit_tb_n_36,flipping_unit_tb_n_37}),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .membrane_compare0(membrane_compare0),
        .\selected_membrane_reg_reg[15] ({flipping_unit_tb_n_42,flipping_unit_tb_n_43,flipping_unit_tb_n_44,flipping_unit_tb_n_45}),
        .spike_carry(spike_carry_i_13_n_0),
        .spike_carry_0(spike_carry_i_11_n_0),
        .spike_carry_1(spike_carry_i_9_n_0),
        .spike_carry__0(\neuron_state_reg_reg_n_0_[1] ),
        .spike_carry__0_0(\selected_membrane_reg_reg[15]_0 ),
        .spike_carry__0_1(spike_carry__0_i_11_n_0),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .\x_reg[6] (flipping_unit_tb_n_33),
        .x_reg_rep(\i_/x_reg_rep_i_1_n_0 ),
        .x_reg_rep_0(x_reg_rep));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__2 
       (.CI(\membrane_storage_reg[3][15] ),
        .CO({\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED [3],\i_/i_/i___134_carry__2_n_1 ,\i_/i_/i___134_carry__2_n_2 ,\i_/i_/i___134_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_196,neuron_ensemble_storage_inst_n_197,neuron_ensemble_storage_inst_n_198}),
        .O({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_48,neuron_ensemble_storage_inst_n_49,neuron_ensemble_storage_inst_n_50,neuron_ensemble_storage_inst_n_51}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___179_carry__2 
       (.CI(\membrane_storage_reg[4][15] ),
        .CO({\NLW_i_/i_/i___179_carry__2_CO_UNCONNECTED [3],\i_/i_/i___179_carry__2_n_1 ,\i_/i_/i___179_carry__2_n_2 ,\i_/i_/i___179_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_207,neuron_ensemble_storage_inst_n_208,neuron_ensemble_storage_inst_n_209}),
        .O({\i_/i_/i___179_carry__2_n_4 ,\i_/i_/i___179_carry__2_n_5 ,\i_/i_/i___179_carry__2_n_6 ,\i_/i_/i___179_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_44,neuron_ensemble_storage_inst_n_45,neuron_ensemble_storage_inst_n_46,neuron_ensemble_storage_inst_n_47}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___224_carry__2 
       (.CI(\membrane_storage_reg[5][15] ),
        .CO({\NLW_i_/i_/i___224_carry__2_CO_UNCONNECTED [3],\i_/i_/i___224_carry__2_n_1 ,\i_/i_/i___224_carry__2_n_2 ,\i_/i_/i___224_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_218,neuron_ensemble_storage_inst_n_219,neuron_ensemble_storage_inst_n_220}),
        .O({\i_/i_/i___224_carry__2_n_4 ,\i_/i_/i___224_carry__2_n_5 ,\i_/i_/i___224_carry__2_n_6 ,\i_/i_/i___224_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41,neuron_ensemble_storage_inst_n_42,neuron_ensemble_storage_inst_n_43}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___269_carry__2 
       (.CI(\membrane_storage_reg[6][15] ),
        .CO({\NLW_i_/i_/i___269_carry__2_CO_UNCONNECTED [3],\i_/i_/i___269_carry__2_n_1 ,\i_/i_/i___269_carry__2_n_2 ,\i_/i_/i___269_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_229,neuron_ensemble_storage_inst_n_230,neuron_ensemble_storage_inst_n_231}),
        .O({\i_/i_/i___269_carry__2_n_4 ,\i_/i_/i___269_carry__2_n_5 ,\i_/i_/i___269_carry__2_n_6 ,\i_/i_/i___269_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37,neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___314_carry__2 
       (.CI(\membrane_storage_reg[7][15] ),
        .CO({\NLW_i_/i_/i___314_carry__2_CO_UNCONNECTED [3],\i_/i_/i___314_carry__2_n_1 ,\i_/i_/i___314_carry__2_n_2 ,\i_/i_/i___314_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_240,neuron_ensemble_storage_inst_n_241,neuron_ensemble_storage_inst_n_242}),
        .O({\i_/i_/i___314_carry__2_n_4 ,\i_/i_/i___314_carry__2_n_5 ,\i_/i_/i___314_carry__2_n_6 ,\i_/i_/i___314_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__2 
       (.CI(\membrane_storage_reg[1][15] ),
        .CO({\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED [3],\i_/i_/i___44_carry__2_n_1 ,\i_/i_/i___44_carry__2_n_2 ,\i_/i_/i___44_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_174,neuron_ensemble_storage_inst_n_175,neuron_ensemble_storage_inst_n_176}),
        .O({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_56,neuron_ensemble_storage_inst_n_57,neuron_ensemble_storage_inst_n_58,neuron_ensemble_storage_inst_n_59}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__2 
       (.CI(\membrane_storage_reg[2][15] ),
        .CO({\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED [3],\i_/i_/i___89_carry__2_n_1 ,\i_/i_/i___89_carry__2_n_2 ,\i_/i_/i___89_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_185,neuron_ensemble_storage_inst_n_186,neuron_ensemble_storage_inst_n_187}),
        .O({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_52,neuron_ensemble_storage_inst_n_53,neuron_ensemble_storage_inst_n_54,neuron_ensemble_storage_inst_n_55}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\membrane_storage_reg[0][15] ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_163,neuron_ensemble_storage_inst_n_164,neuron_ensemble_storage_inst_n_165}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_60,neuron_ensemble_storage_inst_n_61,neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63}));
  LUT4 #(
    .INIT(16'hFF89)) 
    \i_/x_reg_rep_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(flipping_unit_tb_n_33),
        .O(\i_/x_reg_rep_i_1_n_0 ));
  neuron_ensemble_storage_2 neuron_ensemble_storage_inst
       (.DI(DI),
        .DOADO(DOADO),
        .O(O),
        .Q(Q),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0] ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_0 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_5 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_6 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_7 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_8 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_9 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_10 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_11 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_12 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_13 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_14 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_1 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_15 ),
        .\Q_control_reg_reg[0]_21 (\Q_control_reg_reg[0]_16 ),
        .\Q_control_reg_reg[0]_22 ({neuron_ensemble_storage_inst_n_207,neuron_ensemble_storage_inst_n_208,neuron_ensemble_storage_inst_n_209}),
        .\Q_control_reg_reg[0]_23 (\Q_control_reg_reg[0]_17 ),
        .\Q_control_reg_reg[0]_24 (\Q_control_reg_reg[0]_18 ),
        .\Q_control_reg_reg[0]_25 ({neuron_ensemble_storage_inst_n_218,neuron_ensemble_storage_inst_n_219,neuron_ensemble_storage_inst_n_220}),
        .\Q_control_reg_reg[0]_26 (\Q_control_reg_reg[0]_19 ),
        .\Q_control_reg_reg[0]_27 (\Q_control_reg_reg[0]_20 ),
        .\Q_control_reg_reg[0]_28 ({neuron_ensemble_storage_inst_n_229,neuron_ensemble_storage_inst_n_230,neuron_ensemble_storage_inst_n_231}),
        .\Q_control_reg_reg[0]_29 (\Q_control_reg_reg[0]_21 ),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_2 ),
        .\Q_control_reg_reg[0]_30 (\Q_control_reg_reg[0]_22 ),
        .\Q_control_reg_reg[0]_31 ({neuron_ensemble_storage_inst_n_240,neuron_ensemble_storage_inst_n_241,neuron_ensemble_storage_inst_n_242}),
        .\Q_control_reg_reg[0]_32 (\Q_control_reg_reg[0]_23 ),
        .\Q_control_reg_reg[0]_4 ({neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35}),
        .\Q_control_reg_reg[0]_5 ({neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37,neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39}),
        .\Q_control_reg_reg[0]_6 ({neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41,neuron_ensemble_storage_inst_n_42,neuron_ensemble_storage_inst_n_43}),
        .\Q_control_reg_reg[0]_7 ({neuron_ensemble_storage_inst_n_44,neuron_ensemble_storage_inst_n_45,neuron_ensemble_storage_inst_n_46,neuron_ensemble_storage_inst_n_47}),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_3 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_4 ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_0 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_5 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_6 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_7 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_8 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_9 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_10 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_11 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_12 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_13 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_14 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_1 ),
        .\Q_control_reg_reg[0]_rep_20 ({neuron_ensemble_storage_inst_n_163,neuron_ensemble_storage_inst_n_164,neuron_ensemble_storage_inst_n_165}),
        .\Q_control_reg_reg[0]_rep_21 (\Q_control_reg_reg[0]_rep_15 ),
        .\Q_control_reg_reg[0]_rep_22 (\Q_control_reg_reg[0]_rep_16 ),
        .\Q_control_reg_reg[0]_rep_23 ({neuron_ensemble_storage_inst_n_174,neuron_ensemble_storage_inst_n_175,neuron_ensemble_storage_inst_n_176}),
        .\Q_control_reg_reg[0]_rep_24 (\Q_control_reg_reg[0]_rep_17 ),
        .\Q_control_reg_reg[0]_rep_25 (\Q_control_reg_reg[0]_rep_18 ),
        .\Q_control_reg_reg[0]_rep_26 ({neuron_ensemble_storage_inst_n_185,neuron_ensemble_storage_inst_n_186,neuron_ensemble_storage_inst_n_187}),
        .\Q_control_reg_reg[0]_rep_27 (\Q_control_reg_reg[0]_rep_19 ),
        .\Q_control_reg_reg[0]_rep_28 (\Q_control_reg_reg[0]_rep_20 ),
        .\Q_control_reg_reg[0]_rep_29 ({neuron_ensemble_storage_inst_n_196,neuron_ensemble_storage_inst_n_197,neuron_ensemble_storage_inst_n_198}),
        .\Q_control_reg_reg[0]_rep_3 ({neuron_ensemble_storage_inst_n_48,neuron_ensemble_storage_inst_n_49,neuron_ensemble_storage_inst_n_50,neuron_ensemble_storage_inst_n_51}),
        .\Q_control_reg_reg[0]_rep_4 ({neuron_ensemble_storage_inst_n_52,neuron_ensemble_storage_inst_n_53,neuron_ensemble_storage_inst_n_54,neuron_ensemble_storage_inst_n_55}),
        .\Q_control_reg_reg[0]_rep_5 ({neuron_ensemble_storage_inst_n_56,neuron_ensemble_storage_inst_n_57,neuron_ensemble_storage_inst_n_58,neuron_ensemble_storage_inst_n_59}),
        .\Q_control_reg_reg[0]_rep_6 ({neuron_ensemble_storage_inst_n_60,neuron_ensemble_storage_inst_n_61,neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63}),
        .\Q_control_reg_reg[0]_rep_7 (\Q_control_reg_reg[0]_rep_2 ),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_3 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_4 ),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11]_0 (\membrane_storage_reg[0][11] ),
        .\membrane_storage_reg[0][15]_0 ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\membrane_storage_reg[0][7]_0 (\membrane_storage_reg[0][7] ),
        .\membrane_storage_reg[1][11]_0 (\membrane_storage_reg[1][11] ),
        .\membrane_storage_reg[1][15]_0 ({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .\membrane_storage_reg[1][3]_0 (\membrane_storage_reg[1][3] ),
        .\membrane_storage_reg[1][7]_0 (\membrane_storage_reg[1][7] ),
        .\membrane_storage_reg[2][11]_0 (\membrane_storage_reg[2][11] ),
        .\membrane_storage_reg[2][15]_0 ({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .\membrane_storage_reg[2][3]_0 (\membrane_storage_reg[2][3] ),
        .\membrane_storage_reg[2][7]_0 (\membrane_storage_reg[2][7] ),
        .\membrane_storage_reg[3][11]_0 (\membrane_storage_reg[3][11] ),
        .\membrane_storage_reg[3][15]_0 ({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .\membrane_storage_reg[3][3]_0 (\membrane_storage_reg[3][3] ),
        .\membrane_storage_reg[3][7]_0 (\membrane_storage_reg[3][7] ),
        .\membrane_storage_reg[4][11]_0 (\membrane_storage_reg[4][11] ),
        .\membrane_storage_reg[4][15]_0 ({\i_/i_/i___179_carry__2_n_4 ,\i_/i_/i___179_carry__2_n_5 ,\i_/i_/i___179_carry__2_n_6 ,\i_/i_/i___179_carry__2_n_7 }),
        .\membrane_storage_reg[4][3]_0 (\membrane_storage_reg[4][3] ),
        .\membrane_storage_reg[4][7]_0 (\membrane_storage_reg[4][7] ),
        .\membrane_storage_reg[5][11]_0 (\membrane_storage_reg[5][11] ),
        .\membrane_storage_reg[5][15]_0 ({\i_/i_/i___224_carry__2_n_4 ,\i_/i_/i___224_carry__2_n_5 ,\i_/i_/i___224_carry__2_n_6 ,\i_/i_/i___224_carry__2_n_7 }),
        .\membrane_storage_reg[5][3]_0 (\membrane_storage_reg[5][3] ),
        .\membrane_storage_reg[5][7]_0 (\membrane_storage_reg[5][7] ),
        .\membrane_storage_reg[6][11]_0 (\membrane_storage_reg[6][11] ),
        .\membrane_storage_reg[6][15]_0 ({\i_/i_/i___269_carry__2_n_4 ,\i_/i_/i___269_carry__2_n_5 ,\i_/i_/i___269_carry__2_n_6 ,\i_/i_/i___269_carry__2_n_7 }),
        .\membrane_storage_reg[6][3]_0 (\membrane_storage_reg[6][3] ),
        .\membrane_storage_reg[6][7]_0 (\membrane_storage_reg[6][7] ),
        .\membrane_storage_reg[7][11]_0 (\membrane_storage_reg[7][11] ),
        .\membrane_storage_reg[7][15]_0 ({\i_/i_/i___314_carry__2_n_4 ,\i_/i_/i___314_carry__2_n_5 ,\i_/i_/i___314_carry__2_n_6 ,\i_/i_/i___314_carry__2_n_7 }),
        .\membrane_storage_reg[7][3]_0 (\membrane_storage_reg[7][3] ),
        .\membrane_storage_reg[7][7]_0 (\membrane_storage_reg[7][7] ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg[1]_0 (neuron_state),
        .p_2_in(p_2_in),
        .\selected_idx_offset_reg[2]_0 (selected_idx_offset),
        .\selected_membrane_reg[15]_0 (selected_membrane),
        .\state_reg[1] (\state_reg[1] ),
        .update_ds_reg_reg_0(update_ds_reg_reg),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  LUT4 #(
    .INIT(16'h0002)) 
    \neuron_state_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\Q_control_reg_reg[0]_23 ),
        .O(neuron_state_reg));
  LUT3 #(
    .INIT(8'h35)) 
    \neuron_state_reg[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(storage_CE));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[0]),
        .Q(\neuron_state_reg_reg[0]_0 ),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[1]),
        .Q(\neuron_state_reg_reg_n_0_[1] ),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[0]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [0]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[1]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [1]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[2]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [2]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\selected_membrane_reg_reg[15]_0 [0]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(\selected_membrane_reg_reg[15]_0 [10]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(\selected_membrane_reg_reg[15]_0 [11]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(\selected_membrane_reg_reg[15]_0 [12]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(\selected_membrane_reg_reg[15]_0 [13]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(\selected_membrane_reg_reg[15]_0 [14]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(\selected_membrane_reg_reg[15]_0 [15]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\selected_membrane_reg_reg[15]_0 [1]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\selected_membrane_reg_reg[15]_0 [2]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\selected_membrane_reg_reg[15]_0 [3]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\selected_membrane_reg_reg[15]_0 [4]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\selected_membrane_reg_reg[15]_0 [5]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\selected_membrane_reg_reg[15]_0 [6]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\selected_membrane_reg_reg[15]_0 [7]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\selected_membrane_reg_reg[15]_0 [8]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\selected_membrane_reg_reg[15]_0 [9]),
        .R(neuron_state_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry
       (.CI(1'b0),
        .CO({spike_carry_n_0,spike_carry_n_1,spike_carry_n_2,spike_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_34,flipping_unit_tb_n_35,flipping_unit_tb_n_36,flipping_unit_tb_n_37}),
        .O(NLW_spike_carry_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_38,flipping_unit_tb_n_39,flipping_unit_tb_n_40,flipping_unit_tb_n_41}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry__0
       (.CI(spike_carry_n_0),
        .CO({CO,spike_carry__0_n_1,spike_carry__0_n_2,spike_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_29,flipping_unit_tb_n_30,flipping_unit_tb_n_31,flipping_unit_tb_n_32}),
        .O(NLW_spike_carry__0_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_42,flipping_unit_tb_n_43,flipping_unit_tb_n_44,flipping_unit_tb_n_45}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_10
       (.CI(spike_carry_i_10_n_0),
        .CO({spike_carry__0_i_10_n_0,spike_carry__0_i_10_n_1,spike_carry__0_i_10_n_2,spike_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[12:9]),
        .S(p_0_in[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_11
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[9]),
        .O(spike_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_13
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_14
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_15
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_16
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_17
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_18
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_19
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .O(p_0_in[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_9
       (.CI(spike_carry__0_i_10_n_0),
        .CO({NLW_spike_carry__0_i_9_CO_UNCONNECTED[3:2],spike_carry__0_i_9_n_2,spike_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_9_O_UNCONNECTED[3],membrane_compare0[15:13]}),
        .S({1'b0,p_0_in[15:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_10
       (.CI(spike_carry_i_12_n_0),
        .CO({spike_carry_i_10_n_0,spike_carry_i_10_n_1,spike_carry_i_10_n_2,spike_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[8:5]),
        .S(p_0_in[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_11
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[5]),
        .O(spike_carry_i_11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_12
       (.CI(1'b0),
        .CO({spike_carry_i_12_n_0,spike_carry_i_12_n_1,spike_carry_i_12_n_2,spike_carry_i_12_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[4:1]),
        .S(p_0_in[4:1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_13
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[3]),
        .O(spike_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_17
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_18
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_19
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_20
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_21
       (.I0(\selected_membrane_reg_reg[15]_0 [0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_22
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_23
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_24
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_25
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_9
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[7]),
        .O(spike_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module neuron_ensemble__parameterized0
   (CO,
    \current_state_reg[2] ,
    ADDRBWRADDR,
    \Q_control_reg_reg[0]_rep ,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0] ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \selected_membrane_reg_reg[15]_0 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \Q_control_reg_reg[0]_rep_10 ,
    E,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    D,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_rep_21 ,
    \Q_control_reg_reg[0]_rep_22 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \neuron_state_reg_reg[0]_0 ,
    \selected_idx_offset_reg_reg[2]_0 ,
    idx_offset_to_update,
    clk_IBUF_BUFG,
    B,
    \membrane_storage_reg[0][3] ,
    \membrane_storage_reg[0][7] ,
    \membrane_storage_reg[0][11] ,
    \membrane_storage_reg[1][3] ,
    \membrane_storage_reg[1][7] ,
    \membrane_storage_reg[1][11] ,
    \membrane_storage_reg[2][3] ,
    \membrane_storage_reg[2][7] ,
    \membrane_storage_reg[2][11] ,
    \membrane_storage_reg[3][3] ,
    \membrane_storage_reg[3][7] ,
    \membrane_storage_reg[3][11] ,
    \membrane_storage_reg[4][3] ,
    \membrane_storage_reg[4][7] ,
    \membrane_storage_reg[4][11] ,
    \membrane_storage_reg[5][3] ,
    \membrane_storage_reg[5][7] ,
    \membrane_storage_reg[5][11] ,
    \membrane_storage_reg[6][3] ,
    \membrane_storage_reg[6][7] ,
    \membrane_storage_reg[6][11] ,
    \membrane_storage_reg[7][3] ,
    \membrane_storage_reg[7][7] ,
    \membrane_storage_reg[7][11] ,
    \membrane_storage_reg[0][15] ,
    \membrane_storage_reg[1][15] ,
    \membrane_storage_reg[2][15] ,
    \membrane_storage_reg[3][15] ,
    \membrane_storage_reg[4][15] ,
    \membrane_storage_reg[5][15] ,
    \membrane_storage_reg[6][15] ,
    \membrane_storage_reg[7][15] ,
    Q,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    \x_reg[0] ,
    write_flipping_seed_IBUF,
    incrementing_reg,
    DOBDO,
    idx_to_write_IBUF,
    \membrane_storage_reg[7][0] ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    \state_reg[1] ,
    p_2_in);
  output [0:0]CO;
  output \current_state_reg[2] ;
  output [8:0]ADDRBWRADDR;
  output [3:0]\Q_control_reg_reg[0]_rep ;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0] ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [15:0]\selected_membrane_reg_reg[15]_0 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [3:0]\Q_control_reg_reg[0]_rep_10 ;
  output [0:0]E;
  output [2:0]\Q_control_reg_reg[0]_rep_11 ;
  output [2:0]\Q_control_reg_reg[0]_rep_12 ;
  output [2:0]\Q_control_reg_reg[0]_rep_13 ;
  output [2:0]\Q_control_reg_reg[0]_rep_14 ;
  output [2:0]\Q_control_reg_reg[0]_11 ;
  output [2:0]\Q_control_reg_reg[0]_12 ;
  output [2:0]\Q_control_reg_reg[0]_13 ;
  output [2:0]\Q_control_reg_reg[0]_14 ;
  output [6:0]D;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_16 ;
  output [3:0]\Q_control_reg_reg[0]_rep_17 ;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_rep_21 ;
  output [3:0]\Q_control_reg_reg[0]_rep_22 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_16 ;
  output [3:0]\Q_control_reg_reg[0]_17 ;
  output [3:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [0:0]\neuron_state_reg_reg[0]_0 ;
  output [2:0]\selected_idx_offset_reg_reg[2]_0 ;
  input [2:0]idx_offset_to_update;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [3:0]\membrane_storage_reg[0][3] ;
  input [3:0]\membrane_storage_reg[0][7] ;
  input [3:0]\membrane_storage_reg[0][11] ;
  input [3:0]\membrane_storage_reg[1][3] ;
  input [3:0]\membrane_storage_reg[1][7] ;
  input [3:0]\membrane_storage_reg[1][11] ;
  input [3:0]\membrane_storage_reg[2][3] ;
  input [3:0]\membrane_storage_reg[2][7] ;
  input [3:0]\membrane_storage_reg[2][11] ;
  input [3:0]\membrane_storage_reg[3][3] ;
  input [3:0]\membrane_storage_reg[3][7] ;
  input [3:0]\membrane_storage_reg[3][11] ;
  input [3:0]\membrane_storage_reg[4][3] ;
  input [3:0]\membrane_storage_reg[4][7] ;
  input [3:0]\membrane_storage_reg[4][11] ;
  input [3:0]\membrane_storage_reg[5][3] ;
  input [3:0]\membrane_storage_reg[5][7] ;
  input [3:0]\membrane_storage_reg[5][11] ;
  input [3:0]\membrane_storage_reg[6][3] ;
  input [3:0]\membrane_storage_reg[6][7] ;
  input [3:0]\membrane_storage_reg[6][11] ;
  input [3:0]\membrane_storage_reg[7][3] ;
  input [3:0]\membrane_storage_reg[7][7] ;
  input [3:0]\membrane_storage_reg[7][11] ;
  input [0:0]\membrane_storage_reg[0][15] ;
  input [0:0]\membrane_storage_reg[1][15] ;
  input [0:0]\membrane_storage_reg[2][15] ;
  input [0:0]\membrane_storage_reg[3][15] ;
  input [0:0]\membrane_storage_reg[4][15] ;
  input [0:0]\membrane_storage_reg[5][15] ;
  input [0:0]\membrane_storage_reg[6][15] ;
  input [0:0]\membrane_storage_reg[7][15] ;
  input [2:0]Q;
  input [15:0]membrane_data_in_IBUF;
  input [0:0]write_neuron_states_IBUF;
  input \x_reg[0] ;
  input [0:0]write_flipping_seed_IBUF;
  input incrementing_reg;
  input [10:0]DOBDO;
  input [2:0]idx_to_write_IBUF;
  input [7:0]\membrane_storage_reg[7][0] ;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_state_in_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [0:0]\state_reg[1] ;
  input [2:0]p_2_in;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]\Q_control_reg_reg[0] ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [2:0]\Q_control_reg_reg[0]_11 ;
  wire [2:0]\Q_control_reg_reg[0]_12 ;
  wire [2:0]\Q_control_reg_reg[0]_13 ;
  wire [2:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [3:0]\Q_control_reg_reg[0]_16 ;
  wire [3:0]\Q_control_reg_reg[0]_17 ;
  wire [3:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_21 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_22 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire flipping_unit_tb_n_10;
  wire flipping_unit_tb_n_11;
  wire flipping_unit_tb_n_12;
  wire flipping_unit_tb_n_13;
  wire flipping_unit_tb_n_15;
  wire flipping_unit_tb_n_16;
  wire flipping_unit_tb_n_17;
  wire flipping_unit_tb_n_18;
  wire flipping_unit_tb_n_19;
  wire flipping_unit_tb_n_20;
  wire flipping_unit_tb_n_21;
  wire flipping_unit_tb_n_22;
  wire flipping_unit_tb_n_23;
  wire flipping_unit_tb_n_24;
  wire flipping_unit_tb_n_25;
  wire flipping_unit_tb_n_26;
  wire flipping_unit_tb_n_9;
  wire \i_/i_/i___134_carry__2_n_1 ;
  wire \i_/i_/i___134_carry__2_n_2 ;
  wire \i_/i_/i___134_carry__2_n_3 ;
  wire \i_/i_/i___134_carry__2_n_4 ;
  wire \i_/i_/i___134_carry__2_n_5 ;
  wire \i_/i_/i___134_carry__2_n_6 ;
  wire \i_/i_/i___134_carry__2_n_7 ;
  wire \i_/i_/i___179_carry__2_n_1 ;
  wire \i_/i_/i___179_carry__2_n_2 ;
  wire \i_/i_/i___179_carry__2_n_3 ;
  wire \i_/i_/i___179_carry__2_n_4 ;
  wire \i_/i_/i___179_carry__2_n_5 ;
  wire \i_/i_/i___179_carry__2_n_6 ;
  wire \i_/i_/i___179_carry__2_n_7 ;
  wire \i_/i_/i___224_carry__2_n_1 ;
  wire \i_/i_/i___224_carry__2_n_2 ;
  wire \i_/i_/i___224_carry__2_n_3 ;
  wire \i_/i_/i___224_carry__2_n_4 ;
  wire \i_/i_/i___224_carry__2_n_5 ;
  wire \i_/i_/i___224_carry__2_n_6 ;
  wire \i_/i_/i___224_carry__2_n_7 ;
  wire \i_/i_/i___269_carry__2_n_1 ;
  wire \i_/i_/i___269_carry__2_n_2 ;
  wire \i_/i_/i___269_carry__2_n_3 ;
  wire \i_/i_/i___269_carry__2_n_4 ;
  wire \i_/i_/i___269_carry__2_n_5 ;
  wire \i_/i_/i___269_carry__2_n_6 ;
  wire \i_/i_/i___269_carry__2_n_7 ;
  wire \i_/i_/i___314_carry__2_n_1 ;
  wire \i_/i_/i___314_carry__2_n_2 ;
  wire \i_/i_/i___314_carry__2_n_3 ;
  wire \i_/i_/i___314_carry__2_n_4 ;
  wire \i_/i_/i___314_carry__2_n_5 ;
  wire \i_/i_/i___314_carry__2_n_6 ;
  wire \i_/i_/i___314_carry__2_n_7 ;
  wire \i_/i_/i___44_carry__2_n_1 ;
  wire \i_/i_/i___44_carry__2_n_2 ;
  wire \i_/i_/i___44_carry__2_n_3 ;
  wire \i_/i_/i___44_carry__2_n_4 ;
  wire \i_/i_/i___44_carry__2_n_5 ;
  wire \i_/i_/i___44_carry__2_n_6 ;
  wire \i_/i_/i___44_carry__2_n_7 ;
  wire \i_/i_/i___89_carry__2_n_1 ;
  wire \i_/i_/i___89_carry__2_n_2 ;
  wire \i_/i_/i___89_carry__2_n_3 ;
  wire \i_/i_/i___89_carry__2_n_4 ;
  wire \i_/i_/i___89_carry__2_n_5 ;
  wire \i_/i_/i___89_carry__2_n_6 ;
  wire \i_/i_/i___89_carry__2_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire [2:0]idx_offset_to_update;
  wire [2:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [15:1]membrane_compare0;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]\membrane_storage_reg[0][11] ;
  wire [0:0]\membrane_storage_reg[0][15] ;
  wire [3:0]\membrane_storage_reg[0][3] ;
  wire [3:0]\membrane_storage_reg[0][7] ;
  wire [3:0]\membrane_storage_reg[1][11] ;
  wire [0:0]\membrane_storage_reg[1][15] ;
  wire [3:0]\membrane_storage_reg[1][3] ;
  wire [3:0]\membrane_storage_reg[1][7] ;
  wire [3:0]\membrane_storage_reg[2][11] ;
  wire [0:0]\membrane_storage_reg[2][15] ;
  wire [3:0]\membrane_storage_reg[2][3] ;
  wire [3:0]\membrane_storage_reg[2][7] ;
  wire [3:0]\membrane_storage_reg[3][11] ;
  wire [0:0]\membrane_storage_reg[3][15] ;
  wire [3:0]\membrane_storage_reg[3][3] ;
  wire [3:0]\membrane_storage_reg[3][7] ;
  wire [3:0]\membrane_storage_reg[4][11] ;
  wire [0:0]\membrane_storage_reg[4][15] ;
  wire [3:0]\membrane_storage_reg[4][3] ;
  wire [3:0]\membrane_storage_reg[4][7] ;
  wire [3:0]\membrane_storage_reg[5][11] ;
  wire [0:0]\membrane_storage_reg[5][15] ;
  wire [3:0]\membrane_storage_reg[5][3] ;
  wire [3:0]\membrane_storage_reg[5][7] ;
  wire [3:0]\membrane_storage_reg[6][11] ;
  wire [0:0]\membrane_storage_reg[6][15] ;
  wire [3:0]\membrane_storage_reg[6][3] ;
  wire [3:0]\membrane_storage_reg[6][7] ;
  wire [7:0]\membrane_storage_reg[7][0] ;
  wire [3:0]\membrane_storage_reg[7][11] ;
  wire [0:0]\membrane_storage_reg[7][15] ;
  wire [3:0]\membrane_storage_reg[7][3] ;
  wire [3:0]\membrane_storage_reg[7][7] ;
  wire neuron_ensemble_storage_inst_n_160;
  wire neuron_ensemble_storage_inst_n_161;
  wire neuron_ensemble_storage_inst_n_162;
  wire neuron_ensemble_storage_inst_n_171;
  wire neuron_ensemble_storage_inst_n_172;
  wire neuron_ensemble_storage_inst_n_173;
  wire neuron_ensemble_storage_inst_n_182;
  wire neuron_ensemble_storage_inst_n_183;
  wire neuron_ensemble_storage_inst_n_184;
  wire neuron_ensemble_storage_inst_n_193;
  wire neuron_ensemble_storage_inst_n_194;
  wire neuron_ensemble_storage_inst_n_195;
  wire neuron_ensemble_storage_inst_n_204;
  wire neuron_ensemble_storage_inst_n_205;
  wire neuron_ensemble_storage_inst_n_206;
  wire neuron_ensemble_storage_inst_n_215;
  wire neuron_ensemble_storage_inst_n_216;
  wire neuron_ensemble_storage_inst_n_217;
  wire neuron_ensemble_storage_inst_n_226;
  wire neuron_ensemble_storage_inst_n_227;
  wire neuron_ensemble_storage_inst_n_228;
  wire neuron_ensemble_storage_inst_n_237;
  wire neuron_ensemble_storage_inst_n_238;
  wire neuron_ensemble_storage_inst_n_239;
  wire neuron_ensemble_storage_inst_n_32;
  wire neuron_ensemble_storage_inst_n_33;
  wire neuron_ensemble_storage_inst_n_34;
  wire neuron_ensemble_storage_inst_n_35;
  wire neuron_ensemble_storage_inst_n_36;
  wire neuron_ensemble_storage_inst_n_37;
  wire neuron_ensemble_storage_inst_n_38;
  wire neuron_ensemble_storage_inst_n_39;
  wire neuron_ensemble_storage_inst_n_40;
  wire neuron_ensemble_storage_inst_n_41;
  wire neuron_ensemble_storage_inst_n_42;
  wire neuron_ensemble_storage_inst_n_43;
  wire neuron_ensemble_storage_inst_n_44;
  wire neuron_ensemble_storage_inst_n_45;
  wire neuron_ensemble_storage_inst_n_46;
  wire neuron_ensemble_storage_inst_n_47;
  wire neuron_ensemble_storage_inst_n_48;
  wire neuron_ensemble_storage_inst_n_49;
  wire neuron_ensemble_storage_inst_n_50;
  wire neuron_ensemble_storage_inst_n_51;
  wire neuron_ensemble_storage_inst_n_52;
  wire neuron_ensemble_storage_inst_n_53;
  wire neuron_ensemble_storage_inst_n_54;
  wire neuron_ensemble_storage_inst_n_55;
  wire neuron_ensemble_storage_inst_n_56;
  wire neuron_ensemble_storage_inst_n_57;
  wire neuron_ensemble_storage_inst_n_58;
  wire neuron_ensemble_storage_inst_n_59;
  wire neuron_ensemble_storage_inst_n_60;
  wire neuron_ensemble_storage_inst_n_61;
  wire neuron_ensemble_storage_inst_n_62;
  wire neuron_ensemble_storage_inst_n_63;
  wire [1:0]neuron_state;
  wire [3:0]neuron_state_in_IBUF;
  wire neuron_state_reg;
  wire [0:0]\neuron_state_reg_reg[0]_0 ;
  wire \neuron_state_reg_reg_n_0_[1] ;
  wire [15:0]p_0_in;
  wire [2:0]p_2_in;
  wire [2:0]selected_idx_offset;
  wire [2:0]\selected_idx_offset_reg_reg[2]_0 ;
  wire [15:0]selected_membrane;
  wire [15:0]\selected_membrane_reg_reg[15]_0 ;
  wire spike_carry__0_i_10__0_n_0;
  wire spike_carry__0_i_10__0_n_1;
  wire spike_carry__0_i_10__0_n_2;
  wire spike_carry__0_i_10__0_n_3;
  wire spike_carry__0_i_11__0_n_0;
  wire spike_carry__0_i_9__0_n_2;
  wire spike_carry__0_i_9__0_n_3;
  wire spike_carry__0_n_1;
  wire spike_carry__0_n_2;
  wire spike_carry__0_n_3;
  wire spike_carry_i_10__0_n_0;
  wire spike_carry_i_10__0_n_1;
  wire spike_carry_i_10__0_n_2;
  wire spike_carry_i_10__0_n_3;
  wire spike_carry_i_11__0_n_0;
  wire spike_carry_i_12__0_n_0;
  wire spike_carry_i_12__0_n_1;
  wire spike_carry_i_12__0_n_2;
  wire spike_carry_i_12__0_n_3;
  wire spike_carry_i_13__0_n_0;
  wire spike_carry_i_9__0_n_0;
  wire spike_carry_n_0;
  wire spike_carry_n_1;
  wire spike_carry_n_2;
  wire spike_carry_n_3;
  wire [0:0]\state_reg[1] ;
  wire storage_CE;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire [3:3]\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___179_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___224_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___269_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___314_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_9__0_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_9__0_O_UNCONNECTED;

  flipping_unit flipping_unit_tb
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .D(D),
        .DI({flipping_unit_tb_n_9,flipping_unit_tb_n_10,flipping_unit_tb_n_11,flipping_unit_tb_n_12}),
        .DOBDO(DOBDO),
        .E(flipping_unit_tb_n_13),
        .Q(Q),
        .S({flipping_unit_tb_n_19,flipping_unit_tb_n_20,flipping_unit_tb_n_21,flipping_unit_tb_n_22}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (E),
        .\flipping_output_reg_reg[7]_0 ({flipping_unit_tb_n_15,flipping_unit_tb_n_16,flipping_unit_tb_n_17,flipping_unit_tb_n_18}),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .membrane_compare0(membrane_compare0),
        .\selected_membrane_reg_reg[15] ({flipping_unit_tb_n_23,flipping_unit_tb_n_24,flipping_unit_tb_n_25,flipping_unit_tb_n_26}),
        .spike_carry(spike_carry_i_13__0_n_0),
        .spike_carry_0(spike_carry_i_11__0_n_0),
        .spike_carry_1(spike_carry_i_9__0_n_0),
        .spike_carry__0(\neuron_state_reg_reg_n_0_[1] ),
        .spike_carry__0_0(\selected_membrane_reg_reg[15]_0 ),
        .spike_carry__0_1(spike_carry__0_i_11__0_n_0),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .\x_reg[0] (\x_reg[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__2 
       (.CI(\membrane_storage_reg[3][15] ),
        .CO({\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED [3],\i_/i_/i___134_carry__2_n_1 ,\i_/i_/i___134_carry__2_n_2 ,\i_/i_/i___134_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_193,neuron_ensemble_storage_inst_n_194,neuron_ensemble_storage_inst_n_195}),
        .O({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_48,neuron_ensemble_storage_inst_n_49,neuron_ensemble_storage_inst_n_50,neuron_ensemble_storage_inst_n_51}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___179_carry__2 
       (.CI(\membrane_storage_reg[4][15] ),
        .CO({\NLW_i_/i_/i___179_carry__2_CO_UNCONNECTED [3],\i_/i_/i___179_carry__2_n_1 ,\i_/i_/i___179_carry__2_n_2 ,\i_/i_/i___179_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_204,neuron_ensemble_storage_inst_n_205,neuron_ensemble_storage_inst_n_206}),
        .O({\i_/i_/i___179_carry__2_n_4 ,\i_/i_/i___179_carry__2_n_5 ,\i_/i_/i___179_carry__2_n_6 ,\i_/i_/i___179_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_44,neuron_ensemble_storage_inst_n_45,neuron_ensemble_storage_inst_n_46,neuron_ensemble_storage_inst_n_47}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___224_carry__2 
       (.CI(\membrane_storage_reg[5][15] ),
        .CO({\NLW_i_/i_/i___224_carry__2_CO_UNCONNECTED [3],\i_/i_/i___224_carry__2_n_1 ,\i_/i_/i___224_carry__2_n_2 ,\i_/i_/i___224_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_215,neuron_ensemble_storage_inst_n_216,neuron_ensemble_storage_inst_n_217}),
        .O({\i_/i_/i___224_carry__2_n_4 ,\i_/i_/i___224_carry__2_n_5 ,\i_/i_/i___224_carry__2_n_6 ,\i_/i_/i___224_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41,neuron_ensemble_storage_inst_n_42,neuron_ensemble_storage_inst_n_43}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___269_carry__2 
       (.CI(\membrane_storage_reg[6][15] ),
        .CO({\NLW_i_/i_/i___269_carry__2_CO_UNCONNECTED [3],\i_/i_/i___269_carry__2_n_1 ,\i_/i_/i___269_carry__2_n_2 ,\i_/i_/i___269_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_226,neuron_ensemble_storage_inst_n_227,neuron_ensemble_storage_inst_n_228}),
        .O({\i_/i_/i___269_carry__2_n_4 ,\i_/i_/i___269_carry__2_n_5 ,\i_/i_/i___269_carry__2_n_6 ,\i_/i_/i___269_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37,neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___314_carry__2 
       (.CI(\membrane_storage_reg[7][15] ),
        .CO({\NLW_i_/i_/i___314_carry__2_CO_UNCONNECTED [3],\i_/i_/i___314_carry__2_n_1 ,\i_/i_/i___314_carry__2_n_2 ,\i_/i_/i___314_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_237,neuron_ensemble_storage_inst_n_238,neuron_ensemble_storage_inst_n_239}),
        .O({\i_/i_/i___314_carry__2_n_4 ,\i_/i_/i___314_carry__2_n_5 ,\i_/i_/i___314_carry__2_n_6 ,\i_/i_/i___314_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__2 
       (.CI(\membrane_storage_reg[1][15] ),
        .CO({\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED [3],\i_/i_/i___44_carry__2_n_1 ,\i_/i_/i___44_carry__2_n_2 ,\i_/i_/i___44_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_171,neuron_ensemble_storage_inst_n_172,neuron_ensemble_storage_inst_n_173}),
        .O({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_56,neuron_ensemble_storage_inst_n_57,neuron_ensemble_storage_inst_n_58,neuron_ensemble_storage_inst_n_59}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__2 
       (.CI(\membrane_storage_reg[2][15] ),
        .CO({\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED [3],\i_/i_/i___89_carry__2_n_1 ,\i_/i_/i___89_carry__2_n_2 ,\i_/i_/i___89_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_182,neuron_ensemble_storage_inst_n_183,neuron_ensemble_storage_inst_n_184}),
        .O({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_52,neuron_ensemble_storage_inst_n_53,neuron_ensemble_storage_inst_n_54,neuron_ensemble_storage_inst_n_55}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\membrane_storage_reg[0][15] ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,neuron_ensemble_storage_inst_n_160,neuron_ensemble_storage_inst_n_161,neuron_ensemble_storage_inst_n_162}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_60,neuron_ensemble_storage_inst_n_61,neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63}));
  LUT4 #(
    .INIT(16'hFF89)) 
    \i_/i___1/i_ 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(flipping_unit_tb_n_13),
        .O(\current_state_reg[2] ));
  neuron_ensemble_storage neuron_ensemble_storage_inst
       (.DI({neuron_ensemble_storage_inst_n_160,neuron_ensemble_storage_inst_n_161,neuron_ensemble_storage_inst_n_162}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .Q(Q),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0] ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_0 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_6 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_7 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_8 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_9 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_10 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_11 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_12 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_13 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_14 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_15 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_1 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_16 ),
        .\Q_control_reg_reg[0]_21 ({neuron_ensemble_storage_inst_n_204,neuron_ensemble_storage_inst_n_205,neuron_ensemble_storage_inst_n_206}),
        .\Q_control_reg_reg[0]_22 (\Q_control_reg_reg[0]_17 ),
        .\Q_control_reg_reg[0]_23 (\Q_control_reg_reg[0]_18 ),
        .\Q_control_reg_reg[0]_24 ({neuron_ensemble_storage_inst_n_215,neuron_ensemble_storage_inst_n_216,neuron_ensemble_storage_inst_n_217}),
        .\Q_control_reg_reg[0]_25 (\Q_control_reg_reg[0]_19 ),
        .\Q_control_reg_reg[0]_26 (\Q_control_reg_reg[0]_20 ),
        .\Q_control_reg_reg[0]_27 ({neuron_ensemble_storage_inst_n_226,neuron_ensemble_storage_inst_n_227,neuron_ensemble_storage_inst_n_228}),
        .\Q_control_reg_reg[0]_28 (\Q_control_reg_reg[0]_21 ),
        .\Q_control_reg_reg[0]_29 (\Q_control_reg_reg[0]_22 ),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_2 ),
        .\Q_control_reg_reg[0]_30 ({neuron_ensemble_storage_inst_n_237,neuron_ensemble_storage_inst_n_238,neuron_ensemble_storage_inst_n_239}),
        .\Q_control_reg_reg[0]_4 ({neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37,neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39}),
        .\Q_control_reg_reg[0]_5 ({neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41,neuron_ensemble_storage_inst_n_42,neuron_ensemble_storage_inst_n_43}),
        .\Q_control_reg_reg[0]_6 ({neuron_ensemble_storage_inst_n_44,neuron_ensemble_storage_inst_n_45,neuron_ensemble_storage_inst_n_46,neuron_ensemble_storage_inst_n_47}),
        .\Q_control_reg_reg[0]_7 (\Q_control_reg_reg[0]_3 ),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_4 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_5 ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_0 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_5 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_6 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_7 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_8 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_9 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_10 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_11 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_12 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_13 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_14 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_1 ),
        .\Q_control_reg_reg[0]_rep_20 (\Q_control_reg_reg[0]_rep_15 ),
        .\Q_control_reg_reg[0]_rep_21 (\Q_control_reg_reg[0]_rep_16 ),
        .\Q_control_reg_reg[0]_rep_22 (\Q_control_reg_reg[0]_rep_17 ),
        .\Q_control_reg_reg[0]_rep_23 (\Q_control_reg_reg[0]_rep_18 ),
        .\Q_control_reg_reg[0]_rep_24 ({neuron_ensemble_storage_inst_n_171,neuron_ensemble_storage_inst_n_172,neuron_ensemble_storage_inst_n_173}),
        .\Q_control_reg_reg[0]_rep_25 (\Q_control_reg_reg[0]_rep_19 ),
        .\Q_control_reg_reg[0]_rep_26 (\Q_control_reg_reg[0]_rep_20 ),
        .\Q_control_reg_reg[0]_rep_27 ({neuron_ensemble_storage_inst_n_182,neuron_ensemble_storage_inst_n_183,neuron_ensemble_storage_inst_n_184}),
        .\Q_control_reg_reg[0]_rep_28 (\Q_control_reg_reg[0]_rep_21 ),
        .\Q_control_reg_reg[0]_rep_29 (\Q_control_reg_reg[0]_rep_22 ),
        .\Q_control_reg_reg[0]_rep_3 (\Q_control_reg_reg[0]_rep_2 ),
        .\Q_control_reg_reg[0]_rep_30 ({neuron_ensemble_storage_inst_n_193,neuron_ensemble_storage_inst_n_194,neuron_ensemble_storage_inst_n_195}),
        .\Q_control_reg_reg[0]_rep_4 ({neuron_ensemble_storage_inst_n_48,neuron_ensemble_storage_inst_n_49,neuron_ensemble_storage_inst_n_50,neuron_ensemble_storage_inst_n_51}),
        .\Q_control_reg_reg[0]_rep_5 ({neuron_ensemble_storage_inst_n_52,neuron_ensemble_storage_inst_n_53,neuron_ensemble_storage_inst_n_54,neuron_ensemble_storage_inst_n_55}),
        .\Q_control_reg_reg[0]_rep_6 ({neuron_ensemble_storage_inst_n_56,neuron_ensemble_storage_inst_n_57,neuron_ensemble_storage_inst_n_58,neuron_ensemble_storage_inst_n_59}),
        .\Q_control_reg_reg[0]_rep_7 ({neuron_ensemble_storage_inst_n_60,neuron_ensemble_storage_inst_n_61,neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63}),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_3 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_4 ),
        .S({neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .idx_offset_to_update(idx_offset_to_update),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11]_0 (\membrane_storage_reg[0][11] ),
        .\membrane_storage_reg[0][3]_0 (\membrane_storage_reg[0][3] ),
        .\membrane_storage_reg[0][7]_0 (\membrane_storage_reg[0][7] ),
        .\membrane_storage_reg[1][11]_0 (\membrane_storage_reg[1][11] ),
        .\membrane_storage_reg[1][15]_0 ({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .\membrane_storage_reg[1][3]_0 (\membrane_storage_reg[1][3] ),
        .\membrane_storage_reg[1][7]_0 (\membrane_storage_reg[1][7] ),
        .\membrane_storage_reg[2][11]_0 (\membrane_storage_reg[2][11] ),
        .\membrane_storage_reg[2][15]_0 ({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .\membrane_storage_reg[2][3]_0 (\membrane_storage_reg[2][3] ),
        .\membrane_storage_reg[2][7]_0 (\membrane_storage_reg[2][7] ),
        .\membrane_storage_reg[3][11]_0 (\membrane_storage_reg[3][11] ),
        .\membrane_storage_reg[3][15]_0 ({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .\membrane_storage_reg[3][3]_0 (\membrane_storage_reg[3][3] ),
        .\membrane_storage_reg[3][7]_0 (\membrane_storage_reg[3][7] ),
        .\membrane_storage_reg[4][11]_0 (\membrane_storage_reg[4][11] ),
        .\membrane_storage_reg[4][15]_0 ({\i_/i_/i___179_carry__2_n_4 ,\i_/i_/i___179_carry__2_n_5 ,\i_/i_/i___179_carry__2_n_6 ,\i_/i_/i___179_carry__2_n_7 }),
        .\membrane_storage_reg[4][3]_0 (\membrane_storage_reg[4][3] ),
        .\membrane_storage_reg[4][7]_0 (\membrane_storage_reg[4][7] ),
        .\membrane_storage_reg[5][11]_0 (\membrane_storage_reg[5][11] ),
        .\membrane_storage_reg[5][15]_0 ({\i_/i_/i___224_carry__2_n_4 ,\i_/i_/i___224_carry__2_n_5 ,\i_/i_/i___224_carry__2_n_6 ,\i_/i_/i___224_carry__2_n_7 }),
        .\membrane_storage_reg[5][3]_0 (\membrane_storage_reg[5][3] ),
        .\membrane_storage_reg[5][7]_0 (\membrane_storage_reg[5][7] ),
        .\membrane_storage_reg[6][11]_0 (\membrane_storage_reg[6][11] ),
        .\membrane_storage_reg[6][15]_0 ({\i_/i_/i___269_carry__2_n_4 ,\i_/i_/i___269_carry__2_n_5 ,\i_/i_/i___269_carry__2_n_6 ,\i_/i_/i___269_carry__2_n_7 }),
        .\membrane_storage_reg[6][3]_0 (\membrane_storage_reg[6][3] ),
        .\membrane_storage_reg[6][7]_0 (\membrane_storage_reg[6][7] ),
        .\membrane_storage_reg[7][0]_0 (\membrane_storage_reg[7][0] ),
        .\membrane_storage_reg[7][11]_0 (\membrane_storage_reg[7][11] ),
        .\membrane_storage_reg[7][15]_0 ({\i_/i_/i___314_carry__2_n_4 ,\i_/i_/i___314_carry__2_n_5 ,\i_/i_/i___314_carry__2_n_6 ,\i_/i_/i___314_carry__2_n_7 }),
        .\membrane_storage_reg[7][3]_0 (\membrane_storage_reg[7][3] ),
        .\membrane_storage_reg[7][7]_0 (\membrane_storage_reg[7][7] ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg[1]_0 (neuron_state),
        .p_2_in(p_2_in),
        .\selected_idx_offset_reg[2]_0 (selected_idx_offset),
        .\selected_membrane_reg[15]_0 (selected_membrane),
        .\state_reg[1] (\state_reg[1] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  LUT4 #(
    .INIT(16'h0002)) 
    \neuron_state_reg[1]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(incrementing_reg),
        .O(neuron_state_reg));
  LUT3 #(
    .INIT(8'h35)) 
    \neuron_state_reg[1]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(storage_CE));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[0]),
        .Q(\neuron_state_reg_reg[0]_0 ),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state[1]),
        .Q(\neuron_state_reg_reg_n_0_[1] ),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[0]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [0]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[1]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [1]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_idx_offset[2]),
        .Q(\selected_idx_offset_reg_reg[2]_0 [2]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\selected_membrane_reg_reg[15]_0 [0]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(\selected_membrane_reg_reg[15]_0 [10]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(\selected_membrane_reg_reg[15]_0 [11]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(\selected_membrane_reg_reg[15]_0 [12]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(\selected_membrane_reg_reg[15]_0 [13]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(\selected_membrane_reg_reg[15]_0 [14]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(\selected_membrane_reg_reg[15]_0 [15]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\selected_membrane_reg_reg[15]_0 [1]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\selected_membrane_reg_reg[15]_0 [2]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\selected_membrane_reg_reg[15]_0 [3]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\selected_membrane_reg_reg[15]_0 [4]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\selected_membrane_reg_reg[15]_0 [5]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\selected_membrane_reg_reg[15]_0 [6]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\selected_membrane_reg_reg[15]_0 [7]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\selected_membrane_reg_reg[15]_0 [8]),
        .R(neuron_state_reg));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\selected_membrane_reg_reg[15]_0 [9]),
        .R(neuron_state_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry
       (.CI(1'b0),
        .CO({spike_carry_n_0,spike_carry_n_1,spike_carry_n_2,spike_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_15,flipping_unit_tb_n_16,flipping_unit_tb_n_17,flipping_unit_tb_n_18}),
        .O(NLW_spike_carry_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_19,flipping_unit_tb_n_20,flipping_unit_tb_n_21,flipping_unit_tb_n_22}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry__0
       (.CI(spike_carry_n_0),
        .CO({CO,spike_carry__0_n_1,spike_carry__0_n_2,spike_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_9,flipping_unit_tb_n_10,flipping_unit_tb_n_11,flipping_unit_tb_n_12}),
        .O(NLW_spike_carry__0_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_23,flipping_unit_tb_n_24,flipping_unit_tb_n_25,flipping_unit_tb_n_26}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_10__0
       (.CI(spike_carry_i_10__0_n_0),
        .CO({spike_carry__0_i_10__0_n_0,spike_carry__0_i_10__0_n_1,spike_carry__0_i_10__0_n_2,spike_carry__0_i_10__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[12:9]),
        .S(p_0_in[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_11__0
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[9]),
        .O(spike_carry__0_i_11__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_13__0
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_14__0
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_15__0
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_16__0
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_17__0
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_18__0
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_19__0
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .O(p_0_in[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_9__0
       (.CI(spike_carry__0_i_10__0_n_0),
        .CO({NLW_spike_carry__0_i_9__0_CO_UNCONNECTED[3:2],spike_carry__0_i_9__0_n_2,spike_carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_9__0_O_UNCONNECTED[3],membrane_compare0[15:13]}),
        .S({1'b0,p_0_in[15:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_10__0
       (.CI(spike_carry_i_12__0_n_0),
        .CO({spike_carry_i_10__0_n_0,spike_carry_i_10__0_n_1,spike_carry_i_10__0_n_2,spike_carry_i_10__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[8:5]),
        .S(p_0_in[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_11__0
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[5]),
        .O(spike_carry_i_11__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_12__0
       (.CI(1'b0),
        .CO({spike_carry_i_12__0_n_0,spike_carry_i_12__0_n_1,spike_carry_i_12__0_n_2,spike_carry_i_12__0_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[4:1]),
        .S(p_0_in[4:1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_13__0
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[3]),
        .O(spike_carry_i_13__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_17__0
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_18__0
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_19__0
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_20__0
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_21__0
       (.I0(\selected_membrane_reg_reg[15]_0 [0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_22__0
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_23__0
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_24__0
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_25__0
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_9__0
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .I1(\neuron_state_reg_reg_n_0_[1] ),
        .I2(membrane_compare0[7]),
        .O(spike_carry_i_9__0_n_0));
endmodule

module neuron_ensemble_storage
   (\Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \Q_control_reg_reg[0]_3 ,
    S,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \Q_control_reg_reg[0]_rep_10 ,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_rep_21 ,
    DI,
    \Q_control_reg_reg[0]_rep_22 ,
    \Q_control_reg_reg[0]_rep_23 ,
    \Q_control_reg_reg[0]_rep_24 ,
    \Q_control_reg_reg[0]_rep_25 ,
    \Q_control_reg_reg[0]_rep_26 ,
    \Q_control_reg_reg[0]_rep_27 ,
    \Q_control_reg_reg[0]_rep_28 ,
    \Q_control_reg_reg[0]_rep_29 ,
    \Q_control_reg_reg[0]_rep_30 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \Q_control_reg_reg[0]_23 ,
    \Q_control_reg_reg[0]_24 ,
    \Q_control_reg_reg[0]_25 ,
    \Q_control_reg_reg[0]_26 ,
    \Q_control_reg_reg[0]_27 ,
    \Q_control_reg_reg[0]_28 ,
    \Q_control_reg_reg[0]_29 ,
    \Q_control_reg_reg[0]_30 ,
    \selected_membrane_reg[15]_0 ,
    \selected_idx_offset_reg[2]_0 ,
    \neuron_state_reg[1]_0 ,
    idx_offset_to_update,
    clk_IBUF_BUFG,
    \membrane_storage_reg[0][3]_0 ,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    O,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[4][3]_0 ,
    \membrane_storage_reg[4][7]_0 ,
    \membrane_storage_reg[4][11]_0 ,
    \membrane_storage_reg[4][15]_0 ,
    \membrane_storage_reg[5][3]_0 ,
    \membrane_storage_reg[5][7]_0 ,
    \membrane_storage_reg[5][11]_0 ,
    \membrane_storage_reg[5][15]_0 ,
    \membrane_storage_reg[6][3]_0 ,
    \membrane_storage_reg[6][7]_0 ,
    \membrane_storage_reg[6][11]_0 ,
    \membrane_storage_reg[6][15]_0 ,
    \membrane_storage_reg[7][3]_0 ,
    \membrane_storage_reg[7][7]_0 ,
    \membrane_storage_reg[7][11]_0 ,
    \membrane_storage_reg[7][15]_0 ,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    Q,
    incrementing_reg,
    idx_to_write_IBUF,
    \membrane_storage_reg[7][0]_0 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_state_in_IBUF,
    \state_reg[1] ,
    p_2_in);
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]S;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_11 ;
  output [3:0]\Q_control_reg_reg[0]_12 ;
  output [3:0]\Q_control_reg_reg[0]_13 ;
  output [3:0]\Q_control_reg_reg[0]_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [3:0]\Q_control_reg_reg[0]_rep_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_11 ;
  output [3:0]\Q_control_reg_reg[0]_rep_12 ;
  output [3:0]\Q_control_reg_reg[0]_rep_13 ;
  output [3:0]\Q_control_reg_reg[0]_rep_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [2:0]\Q_control_reg_reg[0]_rep_16 ;
  output [2:0]\Q_control_reg_reg[0]_rep_17 ;
  output [2:0]\Q_control_reg_reg[0]_rep_18 ;
  output [2:0]\Q_control_reg_reg[0]_rep_19 ;
  output [2:0]\Q_control_reg_reg[0]_15 ;
  output [2:0]\Q_control_reg_reg[0]_16 ;
  output [2:0]\Q_control_reg_reg[0]_17 ;
  output [2:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_rep_21 ;
  output [2:0]DI;
  output [3:0]\Q_control_reg_reg[0]_rep_22 ;
  output [3:0]\Q_control_reg_reg[0]_rep_23 ;
  output [2:0]\Q_control_reg_reg[0]_rep_24 ;
  output [3:0]\Q_control_reg_reg[0]_rep_25 ;
  output [3:0]\Q_control_reg_reg[0]_rep_26 ;
  output [2:0]\Q_control_reg_reg[0]_rep_27 ;
  output [3:0]\Q_control_reg_reg[0]_rep_28 ;
  output [3:0]\Q_control_reg_reg[0]_rep_29 ;
  output [2:0]\Q_control_reg_reg[0]_rep_30 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [2:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [3:0]\Q_control_reg_reg[0]_23 ;
  output [2:0]\Q_control_reg_reg[0]_24 ;
  output [3:0]\Q_control_reg_reg[0]_25 ;
  output [3:0]\Q_control_reg_reg[0]_26 ;
  output [2:0]\Q_control_reg_reg[0]_27 ;
  output [3:0]\Q_control_reg_reg[0]_28 ;
  output [3:0]\Q_control_reg_reg[0]_29 ;
  output [2:0]\Q_control_reg_reg[0]_30 ;
  output [15:0]\selected_membrane_reg[15]_0 ;
  output [2:0]\selected_idx_offset_reg[2]_0 ;
  output [1:0]\neuron_state_reg[1]_0 ;
  input [2:0]idx_offset_to_update;
  input clk_IBUF_BUFG;
  input [3:0]\membrane_storage_reg[0][3]_0 ;
  input [3:0]\membrane_storage_reg[0][7]_0 ;
  input [3:0]\membrane_storage_reg[0][11]_0 ;
  input [3:0]O;
  input [3:0]\membrane_storage_reg[1][3]_0 ;
  input [3:0]\membrane_storage_reg[1][7]_0 ;
  input [3:0]\membrane_storage_reg[1][11]_0 ;
  input [3:0]\membrane_storage_reg[1][15]_0 ;
  input [3:0]\membrane_storage_reg[2][3]_0 ;
  input [3:0]\membrane_storage_reg[2][7]_0 ;
  input [3:0]\membrane_storage_reg[2][11]_0 ;
  input [3:0]\membrane_storage_reg[2][15]_0 ;
  input [3:0]\membrane_storage_reg[3][3]_0 ;
  input [3:0]\membrane_storage_reg[3][7]_0 ;
  input [3:0]\membrane_storage_reg[3][11]_0 ;
  input [3:0]\membrane_storage_reg[3][15]_0 ;
  input [3:0]\membrane_storage_reg[4][3]_0 ;
  input [3:0]\membrane_storage_reg[4][7]_0 ;
  input [3:0]\membrane_storage_reg[4][11]_0 ;
  input [3:0]\membrane_storage_reg[4][15]_0 ;
  input [3:0]\membrane_storage_reg[5][3]_0 ;
  input [3:0]\membrane_storage_reg[5][7]_0 ;
  input [3:0]\membrane_storage_reg[5][11]_0 ;
  input [3:0]\membrane_storage_reg[5][15]_0 ;
  input [3:0]\membrane_storage_reg[6][3]_0 ;
  input [3:0]\membrane_storage_reg[6][7]_0 ;
  input [3:0]\membrane_storage_reg[6][11]_0 ;
  input [3:0]\membrane_storage_reg[6][15]_0 ;
  input [3:0]\membrane_storage_reg[7][3]_0 ;
  input [3:0]\membrane_storage_reg[7][7]_0 ;
  input [3:0]\membrane_storage_reg[7][11]_0 ;
  input [3:0]\membrane_storage_reg[7][15]_0 ;
  input [15:0]membrane_data_in_IBUF;
  input [0:0]write_neuron_states_IBUF;
  input [2:0]Q;
  input incrementing_reg;
  input [2:0]idx_to_write_IBUF;
  input [7:0]\membrane_storage_reg[7][0]_0 ;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_state_in_IBUF;
  input [0:0]\state_reg[1] ;
  input [2:0]p_2_in;

  wire [2:0]DI;
  wire [3:0]O;
  wire [2:0]Q;
  wire [1:0]Q_control_reg;
  wire \Q_control_reg[0]_rep_i_1__0_n_0 ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [3:0]\Q_control_reg_reg[0]_11 ;
  wire [3:0]\Q_control_reg_reg[0]_12 ;
  wire [3:0]\Q_control_reg_reg[0]_13 ;
  wire [3:0]\Q_control_reg_reg[0]_14 ;
  wire [2:0]\Q_control_reg_reg[0]_15 ;
  wire [2:0]\Q_control_reg_reg[0]_16 ;
  wire [2:0]\Q_control_reg_reg[0]_17 ;
  wire [2:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [2:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire [3:0]\Q_control_reg_reg[0]_23 ;
  wire [2:0]\Q_control_reg_reg[0]_24 ;
  wire [3:0]\Q_control_reg_reg[0]_25 ;
  wire [3:0]\Q_control_reg_reg[0]_26 ;
  wire [2:0]\Q_control_reg_reg[0]_27 ;
  wire [3:0]\Q_control_reg_reg[0]_28 ;
  wire [3:0]\Q_control_reg_reg[0]_29 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [2:0]\Q_control_reg_reg[0]_30 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_21 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_22 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_23 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_24 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_25 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_26 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_27 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_28 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_29 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_30 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire \Q_control_reg_reg[0]_rep_n_0 ;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [2:0]idx_offset_to_update;
  wire [2:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire index_selection_n_0;
  wire index_selection_n_1;
  wire index_selection_n_2;
  wire [15:0]membrane_data_in_IBUF;
  wire [15:0]membrane_storage;
  wire \membrane_storage[0][0]_i_1__0_n_0 ;
  wire \membrane_storage[1][0]_i_1__0_n_0 ;
  wire \membrane_storage[2][0]_i_1__0_n_0 ;
  wire \membrane_storage[3][0]_i_1__0_n_0 ;
  wire \membrane_storage[4][0]_i_1_n_0 ;
  wire \membrane_storage[5][0]_i_1__0_n_0 ;
  wire \membrane_storage[6][0]_i_1__0_n_0 ;
  wire \membrane_storage[7][0]_i_1_n_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_0 ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [15:0]\membrane_storage_reg[0]_8 ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [3:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [15:0]\membrane_storage_reg[1]_9 ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [3:0]\membrane_storage_reg[2][15]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [15:0]\membrane_storage_reg[2]_10 ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [3:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [15:0]\membrane_storage_reg[3]_11 ;
  wire [3:0]\membrane_storage_reg[4][11]_0 ;
  wire [3:0]\membrane_storage_reg[4][15]_0 ;
  wire [3:0]\membrane_storage_reg[4][3]_0 ;
  wire [3:0]\membrane_storage_reg[4][7]_0 ;
  wire [15:0]\membrane_storage_reg[4]_12 ;
  wire [3:0]\membrane_storage_reg[5][11]_0 ;
  wire [3:0]\membrane_storage_reg[5][15]_0 ;
  wire [3:0]\membrane_storage_reg[5][3]_0 ;
  wire [3:0]\membrane_storage_reg[5][7]_0 ;
  wire [15:0]\membrane_storage_reg[5]_13 ;
  wire [3:0]\membrane_storage_reg[6][11]_0 ;
  wire [3:0]\membrane_storage_reg[6][15]_0 ;
  wire [3:0]\membrane_storage_reg[6][3]_0 ;
  wire [3:0]\membrane_storage_reg[6][7]_0 ;
  wire [15:0]\membrane_storage_reg[6]_14 ;
  wire [7:0]\membrane_storage_reg[7][0]_0 ;
  wire [3:0]\membrane_storage_reg[7][11]_0 ;
  wire [3:0]\membrane_storage_reg[7][15]_0 ;
  wire [3:0]\membrane_storage_reg[7][3]_0 ;
  wire [3:0]\membrane_storage_reg[7][7]_0 ;
  wire [15:0]\membrane_storage_reg[7]_15 ;
  wire [1:0]neuron_ensemble_control;
  wire [1:0]neuron_state0__0;
  wire \neuron_state[1]_i_1__0_n_0 ;
  wire [3:0]neuron_state_in_IBUF;
  wire [1:0]\neuron_state_reg[1]_0 ;
  wire neuron_states_storage;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_1;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_2;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_3;
  wire neuron_states_storage_reg_r2_0_7_0_3_n_2;
  wire neuron_states_storage_reg_r2_0_7_0_3_n_3;
  wire p_1_in;
  wire [2:0]p_2_in;
  wire [3:0]p_3_in;
  wire [2:0]\selected_idx_offset_reg[2]_0 ;
  wire [15:0]\selected_membrane_reg[15]_0 ;
  wire [0:0]\state_reg[1] ;
  wire update_ds_reg;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_7_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_7_0_3_DOD_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_7_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_7_0_3_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h898B)) 
    \Q_control_reg[0]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(incrementing_reg),
        .O(neuron_ensemble_control[0]));
  LUT4 #(
    .INIT(16'h898B)) 
    \Q_control_reg[0]_rep_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(incrementing_reg),
        .O(\Q_control_reg[0]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q_control_reg[1]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(neuron_ensemble_control[1]));
  (* ORIG_CELL_NAME = "Q_control_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(neuron_ensemble_control[0]),
        .Q(Q_control_reg[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "Q_control_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[0]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Q_control_reg[0]_rep_i_1__0_n_0 ),
        .Q(\Q_control_reg_reg[0]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(neuron_ensemble_control[1]),
        .Q(Q_control_reg[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_28 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_28 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_28 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_28 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_9 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_9 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_9 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_9 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_29 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_29 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_29 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_29 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_8 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_8 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_8 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_8 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_30 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_30 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_30 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_4 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_4 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_4 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_19 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_19 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___134_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [1]),
        .O(\Q_control_reg_reg[0]_rep_19 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_3 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_3 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___134_carry_i_6__0
       (.I0(\membrane_storage_reg[3]_11 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_3 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___134_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[3]_11 [0]),
        .O(\Q_control_reg_reg[0]_rep_3 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_19 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_19 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_19 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_19 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_14 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_14 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_14 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_14 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_20 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_20 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_20 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_20 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_13 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_13 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_13 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_13 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_21 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_21 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_21 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_6 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_6 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_6 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_6 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_15 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_15 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___179_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [1]),
        .O(\Q_control_reg_reg[0]_15 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_0 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___179_carry_i_6__0
       (.I0(\membrane_storage_reg[4]_12 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___179_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[4]_12 [0]),
        .O(\Q_control_reg_reg[0]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_22 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_22 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_22 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_22 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_12 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_12 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_12 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_12 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_23 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_23 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_23 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_23 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_11 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_11 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_11 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_11 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_24 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_24 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_24 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_5 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_5 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_5 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_5 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_16 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_16 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___224_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [1]),
        .O(\Q_control_reg_reg[0]_16 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_1 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___224_carry_i_6__0
       (.I0(\membrane_storage_reg[5]_13 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___224_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[5]_13 [0]),
        .O(\Q_control_reg_reg[0]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_25 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_25 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_25 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_25 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_10 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_10 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_10 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_10 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_26 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_26 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_26 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_26 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_9 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_9 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_9 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_9 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_27 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_27 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_27 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_4 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_4 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_4 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_17 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_17 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___269_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [1]),
        .O(\Q_control_reg_reg[0]_17 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_2 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_2 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___269_carry_i_6__0
       (.I0(\membrane_storage_reg[6]_14 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_2 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___269_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[6]_14 [0]),
        .O(\Q_control_reg_reg[0]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_28 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_28 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_28 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_28 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_8 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_8 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_8 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_8 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_29 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_29 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_29 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_29 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_7 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_7 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_7 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_8__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_7 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_30 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_30 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_3__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_30 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_6__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_7__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry_i_1__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_18 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry_i_2__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_18 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___314_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [1]),
        .O(\Q_control_reg_reg[0]_18 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry_i_4__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_3 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry_i_5__0
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_3 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___314_carry_i_6__0
       (.I0(\membrane_storage_reg[7]_15 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_3 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___314_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[7]_15 [0]),
        .O(\Q_control_reg_reg[0]_3 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_22 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_22 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_22 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_22 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_13 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_13 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_13 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_13 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_23 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_23 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_23 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_23 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_12 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_12 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_12 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_12 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_24 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_24 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_24 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_6 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_6 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_6 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_6 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_17 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_17 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___44_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [1]),
        .O(\Q_control_reg_reg[0]_rep_17 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_1 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_1 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___44_carry_i_6__0
       (.I0(\membrane_storage_reg[1]_9 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___44_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[1]_9 [0]),
        .O(\Q_control_reg_reg[0]_rep_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_25 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_25 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_25 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_25 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_11 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_11 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_11 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_11 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_26 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_26 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_26 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_26 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_10 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_10 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_10 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_10 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_27 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_27 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_27 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_5 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_5 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_5 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_5 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_18 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_18 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___89_carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [1]),
        .O(\Q_control_reg_reg[0]_rep_18 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_2 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_2 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___89_carry_i_6__0
       (.I0(\membrane_storage_reg[2]_10 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_2 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___89_carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[2]_10 [0]),
        .O(\Q_control_reg_reg[0]_rep_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_20 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_20 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_20 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_20 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_5__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_15 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_6__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_15 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_7__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_15 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_8__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_15 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_21 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_21 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_21 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_21 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_14 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_14 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_14 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_14 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_7 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_7 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_7 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_7 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_16 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_16 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [1]),
        .O(\Q_control_reg_reg[0]_rep_16 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry_i_4__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_0 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry_i_5__1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_0 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i__carry_i_6__1
       (.I0(\membrane_storage_reg[0]_8 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\Q_control_reg_reg[0]_rep_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_7__0
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(\membrane_storage_reg[0]_8 [0]),
        .O(\Q_control_reg_reg[0]_rep_0 [0]));
  LFSR_inout index_selection
       (.D(membrane_storage),
        .Q({index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_8 (\membrane_storage_reg[0]_8 ),
        .\membrane_storage_reg[1]_9 (\membrane_storage_reg[1]_9 ),
        .\membrane_storage_reg[2]_10 (\membrane_storage_reg[2]_10 ),
        .\membrane_storage_reg[3]_11 (\membrane_storage_reg[3]_11 ),
        .\membrane_storage_reg[4]_12 (\membrane_storage_reg[4]_12 ),
        .\membrane_storage_reg[5]_13 (\membrane_storage_reg[5]_13 ),
        .\membrane_storage_reg[6]_14 (\membrane_storage_reg[6]_14 ),
        .\membrane_storage_reg[7]_15 (\membrane_storage_reg[7]_15 ),
        .\state_reg[1] (\state_reg[1] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT6 #(
    .INIT(64'h01FF010001000100)) 
    \membrane_storage[0][0]_i_1__0 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [0]),
        .O(\membrane_storage[0][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \membrane_storage[1][0]_i_1__0 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[0]),
        .I2(idx_to_write_IBUF[1]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [1]),
        .O(\membrane_storage[1][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \membrane_storage[2][0]_i_1__0 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[2]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [2]),
        .O(\membrane_storage[2][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[3][0]_i_1__0 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [3]),
        .O(\membrane_storage[3][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020002000200)) 
    \membrane_storage[4][0]_i_1 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [4]),
        .O(\membrane_storage[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[5][0]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[2]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [5]),
        .O(\membrane_storage[5][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[6][0]_i_1__0 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[2]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [6]),
        .O(\membrane_storage[6][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h80FF800080008000)) 
    \membrane_storage[7][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[2]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF),
        .I4(Q_control_reg[1]),
        .I5(\membrane_storage_reg[7][0]_0 [7]),
        .O(\membrane_storage[7][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][3]_0 [0]),
        .Q(\membrane_storage_reg[0]_8 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [2]),
        .Q(\membrane_storage_reg[0]_8 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [3]),
        .Q(\membrane_storage_reg[0]_8 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(O[0]),
        .Q(\membrane_storage_reg[0]_8 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(O[1]),
        .Q(\membrane_storage_reg[0]_8 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(O[2]),
        .Q(\membrane_storage_reg[0]_8 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(O[3]),
        .Q(\membrane_storage_reg[0]_8 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][3]_0 [1]),
        .Q(\membrane_storage_reg[0]_8 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][3]_0 [2]),
        .Q(\membrane_storage_reg[0]_8 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][3]_0 [3]),
        .Q(\membrane_storage_reg[0]_8 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [0]),
        .Q(\membrane_storage_reg[0]_8 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [1]),
        .Q(\membrane_storage_reg[0]_8 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [2]),
        .Q(\membrane_storage_reg[0]_8 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [3]),
        .Q(\membrane_storage_reg[0]_8 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [0]),
        .Q(\membrane_storage_reg[0]_8 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [1]),
        .Q(\membrane_storage_reg[0]_8 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [0]),
        .Q(\membrane_storage_reg[1]_9 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [2]),
        .Q(\membrane_storage_reg[1]_9 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [3]),
        .Q(\membrane_storage_reg[1]_9 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [0]),
        .Q(\membrane_storage_reg[1]_9 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [1]),
        .Q(\membrane_storage_reg[1]_9 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [2]),
        .Q(\membrane_storage_reg[1]_9 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [3]),
        .Q(\membrane_storage_reg[1]_9 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [1]),
        .Q(\membrane_storage_reg[1]_9 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [2]),
        .Q(\membrane_storage_reg[1]_9 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [3]),
        .Q(\membrane_storage_reg[1]_9 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [0]),
        .Q(\membrane_storage_reg[1]_9 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [1]),
        .Q(\membrane_storage_reg[1]_9 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [2]),
        .Q(\membrane_storage_reg[1]_9 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [3]),
        .Q(\membrane_storage_reg[1]_9 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [0]),
        .Q(\membrane_storage_reg[1]_9 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [1]),
        .Q(\membrane_storage_reg[1]_9 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [0]),
        .Q(\membrane_storage_reg[2]_10 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [2]),
        .Q(\membrane_storage_reg[2]_10 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [3]),
        .Q(\membrane_storage_reg[2]_10 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [0]),
        .Q(\membrane_storage_reg[2]_10 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [1]),
        .Q(\membrane_storage_reg[2]_10 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [2]),
        .Q(\membrane_storage_reg[2]_10 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [3]),
        .Q(\membrane_storage_reg[2]_10 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [1]),
        .Q(\membrane_storage_reg[2]_10 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [2]),
        .Q(\membrane_storage_reg[2]_10 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [3]),
        .Q(\membrane_storage_reg[2]_10 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [0]),
        .Q(\membrane_storage_reg[2]_10 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [1]),
        .Q(\membrane_storage_reg[2]_10 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [2]),
        .Q(\membrane_storage_reg[2]_10 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [3]),
        .Q(\membrane_storage_reg[2]_10 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [0]),
        .Q(\membrane_storage_reg[2]_10 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [1]),
        .Q(\membrane_storage_reg[2]_10 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [0]),
        .Q(\membrane_storage_reg[3]_11 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [2]),
        .Q(\membrane_storage_reg[3]_11 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [3]),
        .Q(\membrane_storage_reg[3]_11 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [0]),
        .Q(\membrane_storage_reg[3]_11 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [1]),
        .Q(\membrane_storage_reg[3]_11 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [2]),
        .Q(\membrane_storage_reg[3]_11 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [3]),
        .Q(\membrane_storage_reg[3]_11 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [1]),
        .Q(\membrane_storage_reg[3]_11 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [2]),
        .Q(\membrane_storage_reg[3]_11 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [3]),
        .Q(\membrane_storage_reg[3]_11 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [0]),
        .Q(\membrane_storage_reg[3]_11 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [1]),
        .Q(\membrane_storage_reg[3]_11 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [2]),
        .Q(\membrane_storage_reg[3]_11 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [3]),
        .Q(\membrane_storage_reg[3]_11 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [0]),
        .Q(\membrane_storage_reg[3]_11 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [1]),
        .Q(\membrane_storage_reg[3]_11 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [0]),
        .Q(\membrane_storage_reg[4]_12 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [2]),
        .Q(\membrane_storage_reg[4]_12 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [3]),
        .Q(\membrane_storage_reg[4]_12 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [0]),
        .Q(\membrane_storage_reg[4]_12 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [1]),
        .Q(\membrane_storage_reg[4]_12 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [2]),
        .Q(\membrane_storage_reg[4]_12 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [3]),
        .Q(\membrane_storage_reg[4]_12 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [1]),
        .Q(\membrane_storage_reg[4]_12 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [2]),
        .Q(\membrane_storage_reg[4]_12 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [3]),
        .Q(\membrane_storage_reg[4]_12 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [0]),
        .Q(\membrane_storage_reg[4]_12 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [1]),
        .Q(\membrane_storage_reg[4]_12 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [2]),
        .Q(\membrane_storage_reg[4]_12 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [3]),
        .Q(\membrane_storage_reg[4]_12 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [0]),
        .Q(\membrane_storage_reg[4]_12 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [1]),
        .Q(\membrane_storage_reg[4]_12 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [0]),
        .Q(\membrane_storage_reg[5]_13 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [2]),
        .Q(\membrane_storage_reg[5]_13 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [3]),
        .Q(\membrane_storage_reg[5]_13 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [0]),
        .Q(\membrane_storage_reg[5]_13 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [1]),
        .Q(\membrane_storage_reg[5]_13 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [2]),
        .Q(\membrane_storage_reg[5]_13 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [3]),
        .Q(\membrane_storage_reg[5]_13 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [1]),
        .Q(\membrane_storage_reg[5]_13 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [2]),
        .Q(\membrane_storage_reg[5]_13 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [3]),
        .Q(\membrane_storage_reg[5]_13 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [0]),
        .Q(\membrane_storage_reg[5]_13 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [1]),
        .Q(\membrane_storage_reg[5]_13 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [2]),
        .Q(\membrane_storage_reg[5]_13 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [3]),
        .Q(\membrane_storage_reg[5]_13 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [0]),
        .Q(\membrane_storage_reg[5]_13 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [1]),
        .Q(\membrane_storage_reg[5]_13 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [0]),
        .Q(\membrane_storage_reg[6]_14 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [2]),
        .Q(\membrane_storage_reg[6]_14 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [3]),
        .Q(\membrane_storage_reg[6]_14 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [0]),
        .Q(\membrane_storage_reg[6]_14 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [1]),
        .Q(\membrane_storage_reg[6]_14 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [2]),
        .Q(\membrane_storage_reg[6]_14 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [3]),
        .Q(\membrane_storage_reg[6]_14 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [1]),
        .Q(\membrane_storage_reg[6]_14 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [2]),
        .Q(\membrane_storage_reg[6]_14 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [3]),
        .Q(\membrane_storage_reg[6]_14 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [0]),
        .Q(\membrane_storage_reg[6]_14 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [1]),
        .Q(\membrane_storage_reg[6]_14 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [2]),
        .Q(\membrane_storage_reg[6]_14 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [3]),
        .Q(\membrane_storage_reg[6]_14 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [0]),
        .Q(\membrane_storage_reg[6]_14 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [1]),
        .Q(\membrane_storage_reg[6]_14 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [0]),
        .Q(\membrane_storage_reg[7]_15 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [2]),
        .Q(\membrane_storage_reg[7]_15 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [3]),
        .Q(\membrane_storage_reg[7]_15 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [0]),
        .Q(\membrane_storage_reg[7]_15 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [1]),
        .Q(\membrane_storage_reg[7]_15 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [2]),
        .Q(\membrane_storage_reg[7]_15 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [3]),
        .Q(\membrane_storage_reg[7]_15 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [1]),
        .Q(\membrane_storage_reg[7]_15 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [2]),
        .Q(\membrane_storage_reg[7]_15 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [3]),
        .Q(\membrane_storage_reg[7]_15 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [0]),
        .Q(\membrane_storage_reg[7]_15 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [1]),
        .Q(\membrane_storage_reg[7]_15 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [2]),
        .Q(\membrane_storage_reg[7]_15 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [3]),
        .Q(\membrane_storage_reg[7]_15 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [0]),
        .Q(\membrane_storage_reg[7]_15 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [1]),
        .Q(\membrane_storage_reg[7]_15 [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \neuron_state[1]_i_1__0 
       (.I0(write_neuron_states_IBUF),
        .O(\neuron_state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(neuron_state0__0[0]),
        .Q(\neuron_state_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(neuron_state0__0[1]),
        .Q(\neuron_state_reg[1]_0 [1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "neuroSA_machine_verilog_wrapper_N8_A2/NEURO_SA/unit_gen[1].unit_inst/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r1_0_7_0_3
       (.ADDRA({1'b0,1'b0,idx_offset_to_update}),
        .ADDRB({1'b0,1'b0,idx_offset_to_update}),
        .ADDRC({1'b0,1'b0,idx_offset_to_update}),
        .ADDRD({1'b0,1'b0,p_2_in}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({p_1_in,neuron_states_storage_reg_r1_0_7_0_3_n_1}),
        .DOB({neuron_states_storage_reg_r1_0_7_0_3_n_2,neuron_states_storage_reg_r1_0_7_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r1_0_7_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r1_0_7_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  LUT2 #(
    .INIT(4'hE)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_1__0
       (.I0(write_neuron_states_IBUF),
        .I1(Q_control_reg[1]),
        .O(neuron_states_storage));
  LUT4 #(
    .INIT(16'h8BB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_2__0
       (.I0(neuron_state_in_IBUF[1]),
        .I1(write_neuron_states_IBUF),
        .I2(update_ds_reg),
        .I3(p_1_in),
        .O(p_3_in[1]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_3__0
       (.I0(neuron_state_in_IBUF[0]),
        .I1(write_neuron_states_IBUF),
        .I2(update_ds_reg),
        .I3(neuron_states_storage_reg_r1_0_7_0_3_n_1),
        .O(p_3_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_4__0
       (.I0(neuron_state_in_IBUF[3]),
        .I1(write_neuron_states_IBUF),
        .I2(neuron_states_storage_reg_r1_0_7_0_3_n_1),
        .I3(update_ds_reg),
        .I4(neuron_states_storage_reg_r1_0_7_0_3_n_2),
        .O(p_3_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_5__0
       (.I0(neuron_state_in_IBUF[2]),
        .I1(write_neuron_states_IBUF),
        .I2(p_1_in),
        .I3(update_ds_reg),
        .I4(neuron_states_storage_reg_r1_0_7_0_3_n_3),
        .O(p_3_in[2]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "neuroSA_machine_verilog_wrapper_N8_A2/NEURO_SA/unit_gen[1].unit_inst/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r2_0_7_0_3
       (.ADDRA({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRB({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRC({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRD({1'b0,1'b0,p_2_in}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(neuron_state0__0),
        .DOB({neuron_states_storage_reg_r2_0_7_0_3_n_2,neuron_states_storage_reg_r2_0_7_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r2_0_7_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r2_0_7_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(index_selection_n_2),
        .Q(\selected_idx_offset_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(index_selection_n_1),
        .Q(\selected_idx_offset_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(index_selection_n_0),
        .Q(\selected_idx_offset_reg[2]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[0]),
        .Q(\selected_membrane_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[10]),
        .Q(\selected_membrane_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[11]),
        .Q(\selected_membrane_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[12]),
        .Q(\selected_membrane_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[13]),
        .Q(\selected_membrane_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[14]),
        .Q(\selected_membrane_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[15]),
        .Q(\selected_membrane_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[1]),
        .Q(\selected_membrane_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[2]),
        .Q(\selected_membrane_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[3]),
        .Q(\selected_membrane_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[4]),
        .Q(\selected_membrane_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[5]),
        .Q(\selected_membrane_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[6]),
        .Q(\selected_membrane_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[7]),
        .Q(\selected_membrane_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[8]),
        .Q(\selected_membrane_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1__0_n_0 ),
        .D(membrane_storage[9]),
        .Q(\selected_membrane_reg[15]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    update_ds_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_offset_to_update[2]),
        .Q(update_ds_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module neuron_ensemble_storage_2
   (S,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \Q_control_reg_reg[0]_rep_10 ,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    DI,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    p_2_in,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_rep_21 ,
    \Q_control_reg_reg[0]_rep_22 ,
    \Q_control_reg_reg[0]_rep_23 ,
    \Q_control_reg_reg[0]_rep_24 ,
    \Q_control_reg_reg[0]_rep_25 ,
    \Q_control_reg_reg[0]_rep_26 ,
    \Q_control_reg_reg[0]_rep_27 ,
    \Q_control_reg_reg[0]_rep_28 ,
    \Q_control_reg_reg[0]_rep_29 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \Q_control_reg_reg[0]_23 ,
    \Q_control_reg_reg[0]_24 ,
    \Q_control_reg_reg[0]_25 ,
    \Q_control_reg_reg[0]_26 ,
    \Q_control_reg_reg[0]_27 ,
    \Q_control_reg_reg[0]_28 ,
    \Q_control_reg_reg[0]_29 ,
    \Q_control_reg_reg[0]_30 ,
    \Q_control_reg_reg[0]_31 ,
    \selected_membrane_reg[15]_0 ,
    \selected_idx_offset_reg[2]_0 ,
    \neuron_state_reg[1]_0 ,
    clk_IBUF_BUFG,
    O,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    \membrane_storage_reg[0][15]_0 ,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[4][3]_0 ,
    \membrane_storage_reg[4][7]_0 ,
    \membrane_storage_reg[4][11]_0 ,
    \membrane_storage_reg[4][15]_0 ,
    \membrane_storage_reg[5][3]_0 ,
    \membrane_storage_reg[5][7]_0 ,
    \membrane_storage_reg[5][11]_0 ,
    \membrane_storage_reg[5][15]_0 ,
    \membrane_storage_reg[6][3]_0 ,
    \membrane_storage_reg[6][7]_0 ,
    \membrane_storage_reg[6][11]_0 ,
    \membrane_storage_reg[6][15]_0 ,
    \membrane_storage_reg[7][3]_0 ,
    \membrane_storage_reg[7][7]_0 ,
    \membrane_storage_reg[7][11]_0 ,
    \membrane_storage_reg[7][15]_0 ,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    Q,
    \Q_control_reg_reg[0]_32 ,
    update_ds_reg_reg_0,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    idx_to_write_IBUF,
    DOADO,
    neuron_state_in_IBUF,
    \state_reg[1] );
  output [3:0]S;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_11 ;
  output [3:0]\Q_control_reg_reg[0]_12 ;
  output [3:0]\Q_control_reg_reg[0]_13 ;
  output [3:0]\Q_control_reg_reg[0]_14 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [3:0]\Q_control_reg_reg[0]_rep_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_11 ;
  output [3:0]\Q_control_reg_reg[0]_rep_12 ;
  output [3:0]\Q_control_reg_reg[0]_rep_13 ;
  output [3:0]\Q_control_reg_reg[0]_rep_14 ;
  output [2:0]DI;
  output [2:0]\Q_control_reg_reg[0]_rep_15 ;
  output [2:0]\Q_control_reg_reg[0]_rep_16 ;
  output [2:0]\Q_control_reg_reg[0]_rep_17 ;
  output [2:0]\Q_control_reg_reg[0]_16 ;
  output [2:0]\Q_control_reg_reg[0]_17 ;
  output [2:0]\Q_control_reg_reg[0]_18 ;
  output [2:0]\Q_control_reg_reg[0]_19 ;
  output [2:0]p_2_in;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [2:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_rep_21 ;
  output [3:0]\Q_control_reg_reg[0]_rep_22 ;
  output [2:0]\Q_control_reg_reg[0]_rep_23 ;
  output [3:0]\Q_control_reg_reg[0]_rep_24 ;
  output [3:0]\Q_control_reg_reg[0]_rep_25 ;
  output [2:0]\Q_control_reg_reg[0]_rep_26 ;
  output [3:0]\Q_control_reg_reg[0]_rep_27 ;
  output [3:0]\Q_control_reg_reg[0]_rep_28 ;
  output [2:0]\Q_control_reg_reg[0]_rep_29 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [2:0]\Q_control_reg_reg[0]_22 ;
  output [3:0]\Q_control_reg_reg[0]_23 ;
  output [3:0]\Q_control_reg_reg[0]_24 ;
  output [2:0]\Q_control_reg_reg[0]_25 ;
  output [3:0]\Q_control_reg_reg[0]_26 ;
  output [3:0]\Q_control_reg_reg[0]_27 ;
  output [2:0]\Q_control_reg_reg[0]_28 ;
  output [3:0]\Q_control_reg_reg[0]_29 ;
  output [3:0]\Q_control_reg_reg[0]_30 ;
  output [2:0]\Q_control_reg_reg[0]_31 ;
  output [15:0]\selected_membrane_reg[15]_0 ;
  output [2:0]\selected_idx_offset_reg[2]_0 ;
  output [1:0]\neuron_state_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input [3:0]O;
  input [3:0]\membrane_storage_reg[0][7]_0 ;
  input [3:0]\membrane_storage_reg[0][11]_0 ;
  input [3:0]\membrane_storage_reg[0][15]_0 ;
  input [3:0]\membrane_storage_reg[1][3]_0 ;
  input [3:0]\membrane_storage_reg[1][7]_0 ;
  input [3:0]\membrane_storage_reg[1][11]_0 ;
  input [3:0]\membrane_storage_reg[1][15]_0 ;
  input [3:0]\membrane_storage_reg[2][3]_0 ;
  input [3:0]\membrane_storage_reg[2][7]_0 ;
  input [3:0]\membrane_storage_reg[2][11]_0 ;
  input [3:0]\membrane_storage_reg[2][15]_0 ;
  input [3:0]\membrane_storage_reg[3][3]_0 ;
  input [3:0]\membrane_storage_reg[3][7]_0 ;
  input [3:0]\membrane_storage_reg[3][11]_0 ;
  input [3:0]\membrane_storage_reg[3][15]_0 ;
  input [3:0]\membrane_storage_reg[4][3]_0 ;
  input [3:0]\membrane_storage_reg[4][7]_0 ;
  input [3:0]\membrane_storage_reg[4][11]_0 ;
  input [3:0]\membrane_storage_reg[4][15]_0 ;
  input [3:0]\membrane_storage_reg[5][3]_0 ;
  input [3:0]\membrane_storage_reg[5][7]_0 ;
  input [3:0]\membrane_storage_reg[5][11]_0 ;
  input [3:0]\membrane_storage_reg[5][15]_0 ;
  input [3:0]\membrane_storage_reg[6][3]_0 ;
  input [3:0]\membrane_storage_reg[6][7]_0 ;
  input [3:0]\membrane_storage_reg[6][11]_0 ;
  input [3:0]\membrane_storage_reg[6][15]_0 ;
  input [3:0]\membrane_storage_reg[7][3]_0 ;
  input [3:0]\membrane_storage_reg[7][7]_0 ;
  input [3:0]\membrane_storage_reg[7][11]_0 ;
  input [3:0]\membrane_storage_reg[7][15]_0 ;
  input [15:0]membrane_data_in_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [2:0]Q;
  input \Q_control_reg_reg[0]_32 ;
  input [2:0]update_ds_reg_reg_0;
  input [4:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [2:0]idx_to_write_IBUF;
  input [7:0]DOADO;
  input [3:0]neuron_state_in_IBUF;
  input [0:0]\state_reg[1] ;

  wire [2:0]DI;
  wire [7:0]DOADO;
  wire [3:0]O;
  wire [2:0]Q;
  wire [1:0]Q_control_reg;
  wire \Q_control_reg[0]_rep_i_1_n_0 ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [3:0]\Q_control_reg_reg[0]_11 ;
  wire [3:0]\Q_control_reg_reg[0]_12 ;
  wire [3:0]\Q_control_reg_reg[0]_13 ;
  wire [3:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [2:0]\Q_control_reg_reg[0]_16 ;
  wire [2:0]\Q_control_reg_reg[0]_17 ;
  wire [2:0]\Q_control_reg_reg[0]_18 ;
  wire [2:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [2:0]\Q_control_reg_reg[0]_22 ;
  wire [3:0]\Q_control_reg_reg[0]_23 ;
  wire [3:0]\Q_control_reg_reg[0]_24 ;
  wire [2:0]\Q_control_reg_reg[0]_25 ;
  wire [3:0]\Q_control_reg_reg[0]_26 ;
  wire [3:0]\Q_control_reg_reg[0]_27 ;
  wire [2:0]\Q_control_reg_reg[0]_28 ;
  wire [3:0]\Q_control_reg_reg[0]_29 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [3:0]\Q_control_reg_reg[0]_30 ;
  wire [2:0]\Q_control_reg_reg[0]_31 ;
  wire \Q_control_reg_reg[0]_32 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_21 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_22 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_23 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_24 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_25 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_26 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_27 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_28 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_29 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire \Q_control_reg_reg[0]_rep_n_0 ;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [4:0]ensemble_seed_IBUF;
  wire [2:0]idx_to_write_IBUF;
  wire index_selection_n_0;
  wire index_selection_n_1;
  wire index_selection_n_2;
  wire [15:0]membrane_data_in_IBUF;
  wire [15:0]membrane_storage;
  wire \membrane_storage[0][0]_i_1_n_0 ;
  wire \membrane_storage[1][0]_i_1_n_0 ;
  wire \membrane_storage[2][0]_i_1_n_0 ;
  wire \membrane_storage[3][0]_i_1_n_0 ;
  wire \membrane_storage[4][0]_i_1__0_n_0 ;
  wire \membrane_storage[5][0]_i_1_n_0 ;
  wire \membrane_storage[6][0]_i_1_n_0 ;
  wire \membrane_storage[7][0]_i_1__0_n_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [3:0]\membrane_storage_reg[0][15]_0 ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [15:0]\membrane_storage_reg[0]_0 ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [3:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [15:0]\membrane_storage_reg[1]_1 ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [3:0]\membrane_storage_reg[2][15]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [15:0]\membrane_storage_reg[2]_2 ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [3:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [15:0]\membrane_storage_reg[3]_3 ;
  wire [3:0]\membrane_storage_reg[4][11]_0 ;
  wire [3:0]\membrane_storage_reg[4][15]_0 ;
  wire [3:0]\membrane_storage_reg[4][3]_0 ;
  wire [3:0]\membrane_storage_reg[4][7]_0 ;
  wire [15:0]\membrane_storage_reg[4]_4 ;
  wire [3:0]\membrane_storage_reg[5][11]_0 ;
  wire [3:0]\membrane_storage_reg[5][15]_0 ;
  wire [3:0]\membrane_storage_reg[5][3]_0 ;
  wire [3:0]\membrane_storage_reg[5][7]_0 ;
  wire [15:0]\membrane_storage_reg[5]_5 ;
  wire [3:0]\membrane_storage_reg[6][11]_0 ;
  wire [3:0]\membrane_storage_reg[6][15]_0 ;
  wire [3:0]\membrane_storage_reg[6][3]_0 ;
  wire [3:0]\membrane_storage_reg[6][7]_0 ;
  wire [15:0]\membrane_storage_reg[6]_6 ;
  wire [3:0]\membrane_storage_reg[7][11]_0 ;
  wire [3:0]\membrane_storage_reg[7][15]_0 ;
  wire [3:0]\membrane_storage_reg[7][3]_0 ;
  wire [3:0]\membrane_storage_reg[7][7]_0 ;
  wire [15:0]\membrane_storage_reg[7]_7 ;
  wire [1:0]neuron_ensemble_control;
  wire [1:0]neuron_state0;
  wire \neuron_state[1]_i_1_n_0 ;
  wire [3:0]neuron_state_in_IBUF;
  wire [1:0]\neuron_state_reg[1]_0 ;
  wire neuron_states_storage;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_1;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_2;
  wire neuron_states_storage_reg_r1_0_7_0_3_n_3;
  wire neuron_states_storage_reg_r2_0_7_0_3_n_2;
  wire neuron_states_storage_reg_r2_0_7_0_3_n_3;
  wire p_1_in;
  wire [2:0]p_2_in;
  wire [2:0]p_2_in_0;
  wire [3:0]p_3_in;
  wire [2:0]\selected_idx_offset_reg[2]_0 ;
  wire [15:0]\selected_membrane_reg[15]_0 ;
  wire [0:0]\state_reg[1] ;
  wire update_ds;
  wire update_ds_reg;
  wire [2:0]update_ds_reg_reg_0;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_7_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_7_0_3_DOD_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_7_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_7_0_3_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h898B)) 
    \Q_control_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\Q_control_reg_reg[0]_32 ),
        .O(neuron_ensemble_control[0]));
  LUT4 #(
    .INIT(16'h898B)) 
    \Q_control_reg[0]_rep_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\Q_control_reg_reg[0]_32 ),
        .O(\Q_control_reg[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q_control_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(neuron_ensemble_control[1]));
  (* ORIG_CELL_NAME = "Q_control_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(neuron_ensemble_control[0]),
        .Q(Q_control_reg[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "Q_control_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[0]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Q_control_reg[0]_rep_i_1_n_0 ),
        .Q(\Q_control_reg_reg[0]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_control_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(neuron_ensemble_control[1]),
        .Q(Q_control_reg[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_27 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_27 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_27 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__0_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_27 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_8 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_8 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_8 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__0_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_8 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_28 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_28 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_28 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__1_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_28 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_7 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_7 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_7 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__1_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_7 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_29 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_29 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry__2_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_29 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_3 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_3 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_3 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry__2_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_3 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_17 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___134_carry_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_17 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___134_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [1]),
        .O(\Q_control_reg_reg[0]_rep_17 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_2 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___134_carry_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_2 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___134_carry_i_6
       (.I0(\membrane_storage_reg[3]_3 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_2 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___134_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[3]_3 [0]),
        .O(\Q_control_reg_reg[0]_rep_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_20 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_20 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_20 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__0_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_20 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_15 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_15 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_15 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__0_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_15 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_21 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_21 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_21 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__1_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_21 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_14 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_14 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_14 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__1_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_14 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_22 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_22 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry__2_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_22 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_7 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_7 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_7 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry__2_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_7 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_16 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___179_carry_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_16 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___179_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [1]),
        .O(\Q_control_reg_reg[0]_16 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___179_carry_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_0 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___179_carry_i_6
       (.I0(\membrane_storage_reg[4]_4 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___179_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[4]_4 [0]),
        .O(\Q_control_reg_reg[0]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_23 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_23 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_23 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__0_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_23 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_13 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_13 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_13 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__0_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_13 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_24 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_24 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_24 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__1_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_24 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_12 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_12 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_12 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__1_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_12 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_25 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_25 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry__2_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_25 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_6 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_6 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_6 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry__2_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_6 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_17 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___224_carry_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_17 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___224_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [1]),
        .O(\Q_control_reg_reg[0]_17 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___224_carry_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_1 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___224_carry_i_6
       (.I0(\membrane_storage_reg[5]_5 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___224_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[5]_5 [0]),
        .O(\Q_control_reg_reg[0]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_26 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_26 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_26 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__0_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_26 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_11 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_11 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_11 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__0_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_11 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_27 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_27 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_27 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__1_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_27 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_10 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_10 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_10 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__1_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_10 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_28 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_28 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry__2_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_28 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_5 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_5 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_5 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry__2_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_5 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_18 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___269_carry_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_18 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___269_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [1]),
        .O(\Q_control_reg_reg[0]_18 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_2 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___269_carry_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_2 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___269_carry_i_6
       (.I0(\membrane_storage_reg[6]_6 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_2 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___269_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[6]_6 [0]),
        .O(\Q_control_reg_reg[0]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_29 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_29 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_29 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__0_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_29 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_9 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_9 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_9 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__0_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_9 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_30 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_30 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_30 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__1_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_30 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_8 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_8 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_8 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__1_i_8
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_8 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_31 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_31 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry__2_i_3
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_31 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_4 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_4 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_6
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_4 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry__2_i_7
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry_i_1
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_19 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___314_carry_i_2
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_19 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___314_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [1]),
        .O(\Q_control_reg_reg[0]_19 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry_i_4
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_3 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___314_carry_i_5
       (.I0(Q_control_reg[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_3 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___314_carry_i_6
       (.I0(\membrane_storage_reg[7]_7 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_3 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___314_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[7]_7 [0]),
        .O(\Q_control_reg_reg[0]_3 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_21 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_21 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_21 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__0_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_21 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_12 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_12 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_12 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__0_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_12 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_22 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_22 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_22 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__1_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_22 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_11 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_11 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_11 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__1_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_11 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_23 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_23 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry__2_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_23 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_5 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_5 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_5 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry__2_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_5 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_15 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___44_carry_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_15 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___44_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [1]),
        .O(\Q_control_reg_reg[0]_rep_15 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_0 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___44_carry_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_0 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___44_carry_i_6
       (.I0(\membrane_storage_reg[1]_1 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___44_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[1]_1 [0]),
        .O(\Q_control_reg_reg[0]_rep_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_24 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_24 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_24 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__0_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_24 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_10 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_10 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_10 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__0_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_10 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_25 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_25 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_25 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__1_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_25 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_9 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_9 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_9 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__1_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_9 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_26 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_26 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry__2_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_26 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_4 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_4 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_4 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry__2_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_16 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___89_carry_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_16 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___89_carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [1]),
        .O(\Q_control_reg_reg[0]_rep_16 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(\Q_control_reg_reg[0]_rep_1 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i___89_carry_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(\Q_control_reg_reg[0]_rep_1 [2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i___89_carry_i_6
       (.I0(\membrane_storage_reg[2]_2 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___89_carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[2]_2 [0]),
        .O(\Q_control_reg_reg[0]_rep_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_18 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_18 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_18 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_18 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [7]),
        .I3(membrane_data_in_IBUF[7]),
        .O(\Q_control_reg_reg[0]_rep_14 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_6__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [6]),
        .I3(membrane_data_in_IBUF[6]),
        .O(\Q_control_reg_reg[0]_rep_14 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_7__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [5]),
        .I3(membrane_data_in_IBUF[5]),
        .O(\Q_control_reg_reg[0]_rep_14 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__0_i_8__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [4]),
        .I3(membrane_data_in_IBUF[4]),
        .O(\Q_control_reg_reg[0]_rep_14 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_19 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_19 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_19 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_19 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [11]),
        .I3(membrane_data_in_IBUF[11]),
        .O(\Q_control_reg_reg[0]_rep_13 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [10]),
        .I3(membrane_data_in_IBUF[10]),
        .O(\Q_control_reg_reg[0]_rep_13 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [9]),
        .I3(membrane_data_in_IBUF[9]),
        .O(\Q_control_reg_reg[0]_rep_13 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__1_i_8
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [8]),
        .I3(membrane_data_in_IBUF[8]),
        .O(\Q_control_reg_reg[0]_rep_13 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_20 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_2
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_20 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_3
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(\Q_control_reg_reg[0]_rep_20 [0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_4
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [15]),
        .I3(membrane_data_in_IBUF[15]),
        .O(\Q_control_reg_reg[0]_rep_6 [3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_5
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [14]),
        .I3(membrane_data_in_IBUF[14]),
        .O(\Q_control_reg_reg[0]_rep_6 [2]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_6
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [13]),
        .I3(membrane_data_in_IBUF[13]),
        .O(\Q_control_reg_reg[0]_rep_6 [1]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry__2_i_7
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [12]),
        .I3(membrane_data_in_IBUF[12]),
        .O(\Q_control_reg_reg[0]_rep_6 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry_i_4__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [3]),
        .I3(membrane_data_in_IBUF[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hDE12)) 
    i__carry_i_5__0
       (.I0(\Q_control_reg_reg[0]_rep_n_0 ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [2]),
        .I3(membrane_data_in_IBUF[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hC5)) 
    i__carry_i_6__0
       (.I0(\membrane_storage_reg[0]_0 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_7
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\membrane_storage_reg[0]_0 [0]),
        .O(S[0]));
  LFSR_inout_3 index_selection
       (.D(membrane_storage),
        .Q({index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_0 (\membrane_storage_reg[0]_0 ),
        .\membrane_storage_reg[1]_1 (\membrane_storage_reg[1]_1 ),
        .\membrane_storage_reg[2]_2 (\membrane_storage_reg[2]_2 ),
        .\membrane_storage_reg[3]_3 (\membrane_storage_reg[3]_3 ),
        .\membrane_storage_reg[4]_4 (\membrane_storage_reg[4]_4 ),
        .\membrane_storage_reg[5]_5 (\membrane_storage_reg[5]_5 ),
        .\membrane_storage_reg[6]_6 (\membrane_storage_reg[6]_6 ),
        .\membrane_storage_reg[7]_7 (\membrane_storage_reg[7]_7 ),
        .\state_reg[1] (\state_reg[1] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT6 #(
    .INIT(64'h01FF010001000100)) 
    \membrane_storage[0][0]_i_1 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[0]),
        .O(\membrane_storage[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \membrane_storage[1][0]_i_1 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[0]),
        .I2(idx_to_write_IBUF[1]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[1]),
        .O(\membrane_storage[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \membrane_storage[2][0]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[2]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[2]),
        .O(\membrane_storage[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[3][0]_i_1 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[3]),
        .O(\membrane_storage[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020002000200)) 
    \membrane_storage[4][0]_i_1__0 
       (.I0(idx_to_write_IBUF[2]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[4]),
        .O(\membrane_storage[4][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[5][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[2]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[5]),
        .O(\membrane_storage[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \membrane_storage[6][0]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(idx_to_write_IBUF[2]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[6]),
        .O(\membrane_storage[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF800080008000)) 
    \membrane_storage[7][0]_i_1__0 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[2]),
        .I2(idx_to_write_IBUF[0]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(Q_control_reg[1]),
        .I5(DOADO[7]),
        .O(\membrane_storage[7][0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(O[0]),
        .Q(\membrane_storage_reg[0]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [2]),
        .Q(\membrane_storage_reg[0]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [3]),
        .Q(\membrane_storage_reg[0]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][15]_0 [0]),
        .Q(\membrane_storage_reg[0]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][15]_0 [1]),
        .Q(\membrane_storage_reg[0]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][15]_0 [2]),
        .Q(\membrane_storage_reg[0]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][15]_0 [3]),
        .Q(\membrane_storage_reg[0]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(O[1]),
        .Q(\membrane_storage_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(O[2]),
        .Q(\membrane_storage_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(O[3]),
        .Q(\membrane_storage_reg[0]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [0]),
        .Q(\membrane_storage_reg[0]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [1]),
        .Q(\membrane_storage_reg[0]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [2]),
        .Q(\membrane_storage_reg[0]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][7]_0 [3]),
        .Q(\membrane_storage_reg[0]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [0]),
        .Q(\membrane_storage_reg[0]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[0][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[0][11]_0 [1]),
        .Q(\membrane_storage_reg[0]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [0]),
        .Q(\membrane_storage_reg[1]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [2]),
        .Q(\membrane_storage_reg[1]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [3]),
        .Q(\membrane_storage_reg[1]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [0]),
        .Q(\membrane_storage_reg[1]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [1]),
        .Q(\membrane_storage_reg[1]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [2]),
        .Q(\membrane_storage_reg[1]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_0 [3]),
        .Q(\membrane_storage_reg[1]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [1]),
        .Q(\membrane_storage_reg[1]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [2]),
        .Q(\membrane_storage_reg[1]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_0 [3]),
        .Q(\membrane_storage_reg[1]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [0]),
        .Q(\membrane_storage_reg[1]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [1]),
        .Q(\membrane_storage_reg[1]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [2]),
        .Q(\membrane_storage_reg[1]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_0 [3]),
        .Q(\membrane_storage_reg[1]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [0]),
        .Q(\membrane_storage_reg[1]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_0 [1]),
        .Q(\membrane_storage_reg[1]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [0]),
        .Q(\membrane_storage_reg[2]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [2]),
        .Q(\membrane_storage_reg[2]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [3]),
        .Q(\membrane_storage_reg[2]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [0]),
        .Q(\membrane_storage_reg[2]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [1]),
        .Q(\membrane_storage_reg[2]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [2]),
        .Q(\membrane_storage_reg[2]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_0 [3]),
        .Q(\membrane_storage_reg[2]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [1]),
        .Q(\membrane_storage_reg[2]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [2]),
        .Q(\membrane_storage_reg[2]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_0 [3]),
        .Q(\membrane_storage_reg[2]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [0]),
        .Q(\membrane_storage_reg[2]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [1]),
        .Q(\membrane_storage_reg[2]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [2]),
        .Q(\membrane_storage_reg[2]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_0 [3]),
        .Q(\membrane_storage_reg[2]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [0]),
        .Q(\membrane_storage_reg[2]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_0 [1]),
        .Q(\membrane_storage_reg[2]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [0]),
        .Q(\membrane_storage_reg[3]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [2]),
        .Q(\membrane_storage_reg[3]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [3]),
        .Q(\membrane_storage_reg[3]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [0]),
        .Q(\membrane_storage_reg[3]_3 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [1]),
        .Q(\membrane_storage_reg[3]_3 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [2]),
        .Q(\membrane_storage_reg[3]_3 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_0 [3]),
        .Q(\membrane_storage_reg[3]_3 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [1]),
        .Q(\membrane_storage_reg[3]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [2]),
        .Q(\membrane_storage_reg[3]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][3]_0 [3]),
        .Q(\membrane_storage_reg[3]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [0]),
        .Q(\membrane_storage_reg[3]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [1]),
        .Q(\membrane_storage_reg[3]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [2]),
        .Q(\membrane_storage_reg[3]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_0 [3]),
        .Q(\membrane_storage_reg[3]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [0]),
        .Q(\membrane_storage_reg[3]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_0 [1]),
        .Q(\membrane_storage_reg[3]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [0]),
        .Q(\membrane_storage_reg[4]_4 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [2]),
        .Q(\membrane_storage_reg[4]_4 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [3]),
        .Q(\membrane_storage_reg[4]_4 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [0]),
        .Q(\membrane_storage_reg[4]_4 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [1]),
        .Q(\membrane_storage_reg[4]_4 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [2]),
        .Q(\membrane_storage_reg[4]_4 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][15]_0 [3]),
        .Q(\membrane_storage_reg[4]_4 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [1]),
        .Q(\membrane_storage_reg[4]_4 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [2]),
        .Q(\membrane_storage_reg[4]_4 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][3]_0 [3]),
        .Q(\membrane_storage_reg[4]_4 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [0]),
        .Q(\membrane_storage_reg[4]_4 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [1]),
        .Q(\membrane_storage_reg[4]_4 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [2]),
        .Q(\membrane_storage_reg[4]_4 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][7]_0 [3]),
        .Q(\membrane_storage_reg[4]_4 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [0]),
        .Q(\membrane_storage_reg[4]_4 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[4][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[4][11]_0 [1]),
        .Q(\membrane_storage_reg[4]_4 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [0]),
        .Q(\membrane_storage_reg[5]_5 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [2]),
        .Q(\membrane_storage_reg[5]_5 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [3]),
        .Q(\membrane_storage_reg[5]_5 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [0]),
        .Q(\membrane_storage_reg[5]_5 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [1]),
        .Q(\membrane_storage_reg[5]_5 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [2]),
        .Q(\membrane_storage_reg[5]_5 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][15]_0 [3]),
        .Q(\membrane_storage_reg[5]_5 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [1]),
        .Q(\membrane_storage_reg[5]_5 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [2]),
        .Q(\membrane_storage_reg[5]_5 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][3]_0 [3]),
        .Q(\membrane_storage_reg[5]_5 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [0]),
        .Q(\membrane_storage_reg[5]_5 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [1]),
        .Q(\membrane_storage_reg[5]_5 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [2]),
        .Q(\membrane_storage_reg[5]_5 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][7]_0 [3]),
        .Q(\membrane_storage_reg[5]_5 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [0]),
        .Q(\membrane_storage_reg[5]_5 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[5][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[5][11]_0 [1]),
        .Q(\membrane_storage_reg[5]_5 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [0]),
        .Q(\membrane_storage_reg[6]_6 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [2]),
        .Q(\membrane_storage_reg[6]_6 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [3]),
        .Q(\membrane_storage_reg[6]_6 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [0]),
        .Q(\membrane_storage_reg[6]_6 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [1]),
        .Q(\membrane_storage_reg[6]_6 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [2]),
        .Q(\membrane_storage_reg[6]_6 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][15]_0 [3]),
        .Q(\membrane_storage_reg[6]_6 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [1]),
        .Q(\membrane_storage_reg[6]_6 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [2]),
        .Q(\membrane_storage_reg[6]_6 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][3]_0 [3]),
        .Q(\membrane_storage_reg[6]_6 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [0]),
        .Q(\membrane_storage_reg[6]_6 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [1]),
        .Q(\membrane_storage_reg[6]_6 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [2]),
        .Q(\membrane_storage_reg[6]_6 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][7]_0 [3]),
        .Q(\membrane_storage_reg[6]_6 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [0]),
        .Q(\membrane_storage_reg[6]_6 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[6][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[6][11]_0 [1]),
        .Q(\membrane_storage_reg[6]_6 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [0]),
        .Q(\membrane_storage_reg[7]_7 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [2]),
        .Q(\membrane_storage_reg[7]_7 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [3]),
        .Q(\membrane_storage_reg[7]_7 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [0]),
        .Q(\membrane_storage_reg[7]_7 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [1]),
        .Q(\membrane_storage_reg[7]_7 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [2]),
        .Q(\membrane_storage_reg[7]_7 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][15]_0 [3]),
        .Q(\membrane_storage_reg[7]_7 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [1]),
        .Q(\membrane_storage_reg[7]_7 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [2]),
        .Q(\membrane_storage_reg[7]_7 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][3]_0 [3]),
        .Q(\membrane_storage_reg[7]_7 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [0]),
        .Q(\membrane_storage_reg[7]_7 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [1]),
        .Q(\membrane_storage_reg[7]_7 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [2]),
        .Q(\membrane_storage_reg[7]_7 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][7]_0 [3]),
        .Q(\membrane_storage_reg[7]_7 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [0]),
        .Q(\membrane_storage_reg[7]_7 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[7][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[7][11]_0 [1]),
        .Q(\membrane_storage_reg[7]_7 [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \neuron_state[1]_i_1 
       (.I0(write_neuron_states_IBUF[0]),
        .O(\neuron_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(neuron_state0[0]),
        .Q(\neuron_state_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(neuron_state0[1]),
        .Q(\neuron_state_reg[1]_0 [1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "neuroSA_machine_verilog_wrapper_N8_A2/NEURO_SA/unit_gen[0].unit_inst/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r1_0_7_0_3
       (.ADDRA({1'b0,1'b0,update_ds_reg_reg_0}),
        .ADDRB({1'b0,1'b0,update_ds_reg_reg_0}),
        .ADDRC({1'b0,1'b0,update_ds_reg_reg_0}),
        .ADDRD({1'b0,1'b0,p_2_in_0}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({p_1_in,neuron_states_storage_reg_r1_0_7_0_3_n_1}),
        .DOB({neuron_states_storage_reg_r1_0_7_0_3_n_2,neuron_states_storage_reg_r1_0_7_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r1_0_7_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r1_0_7_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  LUT2 #(
    .INIT(4'hE)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_1
       (.I0(write_neuron_states_IBUF[0]),
        .I1(Q_control_reg[1]),
        .O(neuron_states_storage));
  LUT4 #(
    .INIT(16'h8BB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_2
       (.I0(neuron_state_in_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(update_ds_reg),
        .I3(p_1_in),
        .O(p_3_in[1]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_3
       (.I0(neuron_state_in_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(update_ds_reg),
        .I3(neuron_states_storage_reg_r1_0_7_0_3_n_1),
        .O(p_3_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_4
       (.I0(neuron_state_in_IBUF[3]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(neuron_states_storage_reg_r1_0_7_0_3_n_1),
        .I3(update_ds_reg),
        .I4(neuron_states_storage_reg_r1_0_7_0_3_n_2),
        .O(p_3_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_5
       (.I0(neuron_state_in_IBUF[2]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(p_1_in),
        .I3(update_ds_reg),
        .I4(neuron_states_storage_reg_r1_0_7_0_3_n_3),
        .O(p_3_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_6
       (.I0(idx_to_write_IBUF[2]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(update_ds_reg_reg_0[2]),
        .O(p_2_in_0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_6__0
       (.I0(idx_to_write_IBUF[2]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(update_ds_reg_reg_0[2]),
        .O(p_2_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_7
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(update_ds_reg_reg_0[1]),
        .O(p_2_in_0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_7__0
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(update_ds_reg_reg_0[1]),
        .O(p_2_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_8
       (.I0(idx_to_write_IBUF[0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(update_ds_reg_reg_0[0]),
        .O(p_2_in_0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_7_0_3_i_8__0
       (.I0(idx_to_write_IBUF[0]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(update_ds_reg_reg_0[0]),
        .O(p_2_in[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "neuroSA_machine_verilog_wrapper_N8_A2/NEURO_SA/unit_gen[0].unit_inst/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r2_0_7_0_3
       (.ADDRA({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRB({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRC({1'b0,1'b0,index_selection_n_0,index_selection_n_1,index_selection_n_2}),
        .ADDRD({1'b0,1'b0,p_2_in_0}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(neuron_state0),
        .DOB({neuron_states_storage_reg_r2_0_7_0_3_n_2,neuron_states_storage_reg_r2_0_7_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r2_0_7_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r2_0_7_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(index_selection_n_2),
        .Q(\selected_idx_offset_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(index_selection_n_1),
        .Q(\selected_idx_offset_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(index_selection_n_0),
        .Q(\selected_idx_offset_reg[2]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[0]),
        .Q(\selected_membrane_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[10]),
        .Q(\selected_membrane_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[11]),
        .Q(\selected_membrane_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[12]),
        .Q(\selected_membrane_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[13]),
        .Q(\selected_membrane_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[14]),
        .Q(\selected_membrane_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[15]),
        .Q(\selected_membrane_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[1]),
        .Q(\selected_membrane_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[2]),
        .Q(\selected_membrane_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[3]),
        .Q(\selected_membrane_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[4]),
        .Q(\selected_membrane_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[5]),
        .Q(\selected_membrane_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[6]),
        .Q(\selected_membrane_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[7]),
        .Q(\selected_membrane_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[8]),
        .Q(\selected_membrane_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\neuron_state[1]_i_1_n_0 ),
        .D(membrane_storage[9]),
        .Q(\selected_membrane_reg[15]_0 [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    update_ds_reg_i_1
       (.I0(update_ds_reg_reg_0[2]),
        .O(update_ds));
  FDRE #(
    .INIT(1'b0)) 
    update_ds_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(update_ds),
        .Q(update_ds_reg),
        .R(1'b0));
endmodule

module neuron_ensemble_with_memory_with_buff
   (DOBDO,
    incrementing_reg,
    spikes,
    S,
    \Q_control_reg_reg[0]_rep ,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0] ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \offset_reg_reg[2] ,
    \offset_reg_reg[1] ,
    \offset_reg_reg[0] ,
    DI,
    \Q_control_reg_reg[0]_rep_10 ,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    \membrane_reg_reg[15] ,
    add_mem,
    \index_of_neuron_that_fired_reg_reg[2]_0 ,
    p_2_in,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    B,
    clk_IBUF_BUFG,
    E,
    D,
    Q,
    add_membrane_reg_reg,
    should_increment,
    O,
    \membrane_storage_reg[0][7] ,
    \membrane_storage_reg[0][11] ,
    \membrane_storage_reg[1][3] ,
    \membrane_storage_reg[1][7] ,
    \membrane_storage_reg[1][11] ,
    \membrane_storage_reg[2][3] ,
    \membrane_storage_reg[2][7] ,
    \membrane_storage_reg[2][11] ,
    \membrane_storage_reg[3][3] ,
    \membrane_storage_reg[3][7] ,
    \membrane_storage_reg[3][11] ,
    \membrane_storage_reg[4][3] ,
    \membrane_storage_reg[4][7] ,
    \membrane_storage_reg[4][11] ,
    \membrane_storage_reg[5][3] ,
    \membrane_storage_reg[5][7] ,
    \membrane_storage_reg[5][11] ,
    \membrane_storage_reg[6][3] ,
    \membrane_storage_reg[6][7] ,
    \membrane_storage_reg[6][11] ,
    \membrane_storage_reg[7][3] ,
    \membrane_storage_reg[7][7] ,
    \membrane_storage_reg[7][11] ,
    spike_input,
    CO,
    \membrane_storage_reg[1][15] ,
    \membrane_storage_reg[2][15] ,
    \membrane_storage_reg[3][15] ,
    \membrane_storage_reg[4][15] ,
    \membrane_storage_reg[5][15] ,
    \membrane_storage_reg[6][15] ,
    \membrane_storage_reg[7][15] ,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    \fired_index_reg_reg[2] ,
    flip_reg,
    reset_IBUF,
    \index_of_neuron_that_fired_reg_reg[2]_1 ,
    write_ensemble_seed_IBUF,
    write_flipping_seed_IBUF,
    halt_IBUF,
    \x_reg[0] ,
    \state_reg[2] ,
    \membrane_reg_reg[15]_0 ,
    add_membrane_reg_reg_0,
    ensemble_seed_IBUF,
    idx_to_write_IBUF,
    DOADO,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    x_reg_rep,
    ADDRBWRADDR);
  output [10:0]DOBDO;
  output incrementing_reg;
  output [0:0]spikes;
  output [3:0]S;
  output [3:0]\Q_control_reg_reg[0]_rep ;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0] ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output \offset_reg_reg[2] ;
  output \offset_reg_reg[1] ;
  output \offset_reg_reg[0] ;
  output [2:0]DI;
  output [2:0]\Q_control_reg_reg[0]_rep_10 ;
  output [2:0]\Q_control_reg_reg[0]_rep_11 ;
  output [2:0]\Q_control_reg_reg[0]_rep_12 ;
  output [2:0]\Q_control_reg_reg[0]_11 ;
  output [2:0]\Q_control_reg_reg[0]_12 ;
  output [2:0]\Q_control_reg_reg[0]_13 ;
  output [2:0]\Q_control_reg_reg[0]_14 ;
  output [15:0]\membrane_reg_reg[15] ;
  output add_mem;
  output [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  output [2:0]p_2_in;
  output [3:0]\Q_control_reg_reg[0]_rep_13 ;
  output [3:0]\Q_control_reg_reg[0]_rep_14 ;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_16 ;
  output [3:0]\Q_control_reg_reg[0]_rep_17 ;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_16 ;
  output [3:0]\Q_control_reg_reg[0]_17 ;
  output [3:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [17:0]B;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [6:0]D;
  input [1:0]Q;
  input [0:0]add_membrane_reg_reg;
  input should_increment;
  input [3:0]O;
  input [3:0]\membrane_storage_reg[0][7] ;
  input [3:0]\membrane_storage_reg[0][11] ;
  input [3:0]\membrane_storage_reg[1][3] ;
  input [3:0]\membrane_storage_reg[1][7] ;
  input [3:0]\membrane_storage_reg[1][11] ;
  input [3:0]\membrane_storage_reg[2][3] ;
  input [3:0]\membrane_storage_reg[2][7] ;
  input [3:0]\membrane_storage_reg[2][11] ;
  input [3:0]\membrane_storage_reg[3][3] ;
  input [3:0]\membrane_storage_reg[3][7] ;
  input [3:0]\membrane_storage_reg[3][11] ;
  input [3:0]\membrane_storage_reg[4][3] ;
  input [3:0]\membrane_storage_reg[4][7] ;
  input [3:0]\membrane_storage_reg[4][11] ;
  input [3:0]\membrane_storage_reg[5][3] ;
  input [3:0]\membrane_storage_reg[5][7] ;
  input [3:0]\membrane_storage_reg[5][11] ;
  input [3:0]\membrane_storage_reg[6][3] ;
  input [3:0]\membrane_storage_reg[6][7] ;
  input [3:0]\membrane_storage_reg[6][11] ;
  input [3:0]\membrane_storage_reg[7][3] ;
  input [3:0]\membrane_storage_reg[7][7] ;
  input [3:0]\membrane_storage_reg[7][11] ;
  input spike_input;
  input [0:0]CO;
  input [0:0]\membrane_storage_reg[1][15] ;
  input [0:0]\membrane_storage_reg[2][15] ;
  input [0:0]\membrane_storage_reg[3][15] ;
  input [0:0]\membrane_storage_reg[4][15] ;
  input [0:0]\membrane_storage_reg[5][15] ;
  input [0:0]\membrane_storage_reg[6][15] ;
  input [0:0]\membrane_storage_reg[7][15] ;
  input [15:0]membrane_data_in_IBUF;
  input [1:0]write_neuron_states_IBUF;
  input [2:0]\fired_index_reg_reg[2] ;
  input flip_reg;
  input reset_IBUF;
  input [2:0]\index_of_neuron_that_fired_reg_reg[2]_1 ;
  input [0:0]write_ensemble_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input halt_IBUF;
  input \x_reg[0] ;
  input \state_reg[2] ;
  input [15:0]\membrane_reg_reg[15]_0 ;
  input [0:0]add_membrane_reg_reg_0;
  input [4:0]ensemble_seed_IBUF;
  input [2:0]idx_to_write_IBUF;
  input [7:0]DOADO;
  input [3:0]neuron_state_in_IBUF;
  input [15:0]flipping_seed_IBUF;
  input x_reg_rep;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [6:0]D;
  wire [2:0]DI;
  wire [7:0]DOADO;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]\Q_control_reg_reg[0] ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [2:0]\Q_control_reg_reg[0]_11 ;
  wire [2:0]\Q_control_reg_reg[0]_12 ;
  wire [2:0]\Q_control_reg_reg[0]_13 ;
  wire [2:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [3:0]\Q_control_reg_reg[0]_16 ;
  wire [3:0]\Q_control_reg_reg[0]_17 ;
  wire [3:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire [3:0]S;
  wire add_mem;
  wire add_mem_0;
  wire [0:0]add_membrane_reg_reg;
  wire [0:0]add_membrane_reg_reg_0;
  wire buffer_n_4;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire [4:0]ensemble_seed_IBUF;
  wire [2:0]\fired_index_reg_reg[2] ;
  wire flip_reg;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [2:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  wire [2:0]\index_of_neuron_that_fired_reg_reg[2]_1 ;
  wire [15:0]membrane;
  wire [15:0]membrane_data_in_IBUF;
  wire [15:0]\membrane_reg_reg[15] ;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire [3:0]\membrane_storage_reg[0][11] ;
  wire [3:0]\membrane_storage_reg[0][7] ;
  wire [3:0]\membrane_storage_reg[1][11] ;
  wire [0:0]\membrane_storage_reg[1][15] ;
  wire [3:0]\membrane_storage_reg[1][3] ;
  wire [3:0]\membrane_storage_reg[1][7] ;
  wire [3:0]\membrane_storage_reg[2][11] ;
  wire [0:0]\membrane_storage_reg[2][15] ;
  wire [3:0]\membrane_storage_reg[2][3] ;
  wire [3:0]\membrane_storage_reg[2][7] ;
  wire [3:0]\membrane_storage_reg[3][11] ;
  wire [0:0]\membrane_storage_reg[3][15] ;
  wire [3:0]\membrane_storage_reg[3][3] ;
  wire [3:0]\membrane_storage_reg[3][7] ;
  wire [3:0]\membrane_storage_reg[4][11] ;
  wire [0:0]\membrane_storage_reg[4][15] ;
  wire [3:0]\membrane_storage_reg[4][3] ;
  wire [3:0]\membrane_storage_reg[4][7] ;
  wire [3:0]\membrane_storage_reg[5][11] ;
  wire [0:0]\membrane_storage_reg[5][15] ;
  wire [3:0]\membrane_storage_reg[5][3] ;
  wire [3:0]\membrane_storage_reg[5][7] ;
  wire [3:0]\membrane_storage_reg[6][11] ;
  wire [0:0]\membrane_storage_reg[6][15] ;
  wire [3:0]\membrane_storage_reg[6][3] ;
  wire [3:0]\membrane_storage_reg[6][7] ;
  wire [3:0]\membrane_storage_reg[7][11] ;
  wire [0:0]\membrane_storage_reg[7][15] ;
  wire [3:0]\membrane_storage_reg[7][3] ;
  wire [3:0]\membrane_storage_reg[7][7] ;
  wire [3:0]neuron_state_in_IBUF;
  wire [2:0]offset;
  wire \offset_reg_reg[0] ;
  wire \offset_reg_reg[1] ;
  wire \offset_reg_reg[2] ;
  wire [2:0]p_2_in;
  wire reset_IBUF;
  wire should_increment;
  wire spike_ensemble_wire;
  wire spike_input;
  wire [0:0]spikes;
  wire \state_reg[2] ;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [1:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;
  wire x_reg_rep;

  transmit_buffer_0 buffer
       (.CO(spike_ensemble_wire),
        .E(buffer_n_4),
        .Q(Q),
        .add_mem(add_mem),
        .add_mem_input_reg_0(add_mem_0),
        .add_membrane_reg_reg(add_membrane_reg_reg_0),
        .add_membrane_reg_reg_0(add_membrane_reg_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\fired_index_reg_reg[2] (\fired_index_reg_reg[2] ),
        .\fired_index_reg_reg[2]_0 (\index_of_neuron_that_fired_reg_reg[2]_1 ),
        .flip_reg(flip_reg),
        .\idx_offset_input_reg[2]_0 (offset),
        .\membrane_input_reg[15]_0 (membrane),
        .\membrane_reg_reg[15]_0 (\membrane_reg_reg[15] ),
        .\membrane_reg_reg[15]_1 (\membrane_reg_reg[15]_0 ),
        .\offset_reg_reg[0]_0 (\offset_reg_reg[0] ),
        .\offset_reg_reg[1]_0 (\offset_reg_reg[1] ),
        .\offset_reg_reg[2]_0 (\offset_reg_reg[2] ),
        .reset_IBUF(reset_IBUF),
        .spike_input(spike_input),
        .spike_reg_reg_0(spikes),
        .\state_reg[2]_0 (\state_reg[2] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT6 #(
    .INIT(64'h5151515051505151)) 
    \current_state[0]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(halt_IBUF),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(current_state[0]));
  LUT6 #(
    .INIT(64'h0A0A0A0B0A0B0A0A)) 
    \current_state[1]_i_1__0 
       (.I0(halt_IBUF),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(current_state[1]));
  LUT6 #(
    .INIT(64'h1111111100000010)) 
    \current_state[2]_i_1 
       (.I0(halt_IBUF),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Q[1]),
        .O(current_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_state[0]),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_state[1]),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_state[2]),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    incrementing_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(should_increment),
        .Q(incrementing_reg),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(\index_of_neuron_that_fired_reg_reg[2]_1 [0]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [0]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(\index_of_neuron_that_fired_reg_reg[2]_1 [1]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [1]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Q[1]),
        .D(\index_of_neuron_that_fired_reg_reg[2]_1 [2]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [2]),
        .R(Q[0]));
  neuron_ensemble neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(spike_ensemble_wire),
        .D(D),
        .DI(DI),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .E(E),
        .O(O),
        .Q({\current_state_reg_n_0_[2] ,\current_state_reg_n_0_[1] ,\current_state_reg_n_0_[0] }),
        .\Q_control_reg_reg[0] (\Q_control_reg_reg[0] ),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0]_0 ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_1 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_10 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_11 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_12 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_13 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_14 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_15 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_16 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_17 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_18 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_19 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_2 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_20 ),
        .\Q_control_reg_reg[0]_21 (\Q_control_reg_reg[0]_21 ),
        .\Q_control_reg_reg[0]_22 (\Q_control_reg_reg[0]_22 ),
        .\Q_control_reg_reg[0]_23 (incrementing_reg),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_3 ),
        .\Q_control_reg_reg[0]_4 (\Q_control_reg_reg[0]_4 ),
        .\Q_control_reg_reg[0]_5 (\Q_control_reg_reg[0]_5 ),
        .\Q_control_reg_reg[0]_6 (\Q_control_reg_reg[0]_6 ),
        .\Q_control_reg_reg[0]_7 (\Q_control_reg_reg[0]_7 ),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_8 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_9 ),
        .\Q_control_reg_reg[0]_rep (\Q_control_reg_reg[0]_rep ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep_0 ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_1 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_10 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_11 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_12 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_13 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_14 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_15 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_16 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_17 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_18 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_19 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_2 ),
        .\Q_control_reg_reg[0]_rep_20 (\Q_control_reg_reg[0]_rep_20 ),
        .\Q_control_reg_reg[0]_rep_3 (\Q_control_reg_reg[0]_rep_3 ),
        .\Q_control_reg_reg[0]_rep_4 (\Q_control_reg_reg[0]_rep_4 ),
        .\Q_control_reg_reg[0]_rep_5 (\Q_control_reg_reg[0]_rep_5 ),
        .\Q_control_reg_reg[0]_rep_6 (\Q_control_reg_reg[0]_rep_6 ),
        .\Q_control_reg_reg[0]_rep_7 (\Q_control_reg_reg[0]_rep_7 ),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_8 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_9 ),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11] (\membrane_storage_reg[0][11] ),
        .\membrane_storage_reg[0][15] (CO),
        .\membrane_storage_reg[0][7] (\membrane_storage_reg[0][7] ),
        .\membrane_storage_reg[1][11] (\membrane_storage_reg[1][11] ),
        .\membrane_storage_reg[1][15] (\membrane_storage_reg[1][15] ),
        .\membrane_storage_reg[1][3] (\membrane_storage_reg[1][3] ),
        .\membrane_storage_reg[1][7] (\membrane_storage_reg[1][7] ),
        .\membrane_storage_reg[2][11] (\membrane_storage_reg[2][11] ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2][3] (\membrane_storage_reg[2][3] ),
        .\membrane_storage_reg[2][7] (\membrane_storage_reg[2][7] ),
        .\membrane_storage_reg[3][11] (\membrane_storage_reg[3][11] ),
        .\membrane_storage_reg[3][15] (\membrane_storage_reg[3][15] ),
        .\membrane_storage_reg[3][3] (\membrane_storage_reg[3][3] ),
        .\membrane_storage_reg[3][7] (\membrane_storage_reg[3][7] ),
        .\membrane_storage_reg[4][11] (\membrane_storage_reg[4][11] ),
        .\membrane_storage_reg[4][15] (\membrane_storage_reg[4][15] ),
        .\membrane_storage_reg[4][3] (\membrane_storage_reg[4][3] ),
        .\membrane_storage_reg[4][7] (\membrane_storage_reg[4][7] ),
        .\membrane_storage_reg[5][11] (\membrane_storage_reg[5][11] ),
        .\membrane_storage_reg[5][15] (\membrane_storage_reg[5][15] ),
        .\membrane_storage_reg[5][3] (\membrane_storage_reg[5][3] ),
        .\membrane_storage_reg[5][7] (\membrane_storage_reg[5][7] ),
        .\membrane_storage_reg[6][11] (\membrane_storage_reg[6][11] ),
        .\membrane_storage_reg[6][15] (\membrane_storage_reg[6][15] ),
        .\membrane_storage_reg[6][3] (\membrane_storage_reg[6][3] ),
        .\membrane_storage_reg[6][7] (\membrane_storage_reg[6][7] ),
        .\membrane_storage_reg[7][11] (\membrane_storage_reg[7][11] ),
        .\membrane_storage_reg[7][15] (\membrane_storage_reg[7][15] ),
        .\membrane_storage_reg[7][3] (\membrane_storage_reg[7][3] ),
        .\membrane_storage_reg[7][7] (\membrane_storage_reg[7][7] ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg_reg[0]_0 (add_mem_0),
        .p_2_in(p_2_in),
        .\selected_idx_offset_reg_reg[2]_0 (offset),
        .\selected_membrane_reg_reg[15]_0 (membrane),
        .\state_reg[1] (buffer_n_4),
        .update_ds_reg_reg(\index_of_neuron_that_fired_reg_reg[2]_0 ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (\x_reg[0] ),
        .x_reg_rep(x_reg_rep));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory_with_buff" *) 
module neuron_ensemble_with_memory_with_buff__parameterized0
   (add_mem_reg_reg,
    spike_reg_reg,
    \current_state_reg[2]_0 ,
    ADDRBWRADDR,
    \Q_control_reg_reg[0]_rep ,
    \Q_control_reg_reg[0]_rep_0 ,
    \Q_control_reg_reg[0]_rep_1 ,
    \Q_control_reg_reg[0]_rep_2 ,
    \Q_control_reg_reg[0] ,
    \Q_control_reg_reg[0]_0 ,
    \Q_control_reg_reg[0]_1 ,
    \Q_control_reg_reg[0]_2 ,
    \Q_control_reg_reg[0]_3 ,
    \Q_control_reg_reg[0]_4 ,
    \Q_control_reg_reg[0]_5 ,
    \Q_control_reg_reg[0]_6 ,
    \Q_control_reg_reg[0]_7 ,
    \Q_control_reg_reg[0]_8 ,
    \Q_control_reg_reg[0]_9 ,
    \Q_control_reg_reg[0]_10 ,
    \Q_control_reg_reg[0]_rep_3 ,
    \Q_control_reg_reg[0]_rep_4 ,
    \Q_control_reg_reg[0]_rep_5 ,
    \Q_control_reg_reg[0]_rep_6 ,
    \Q_control_reg_reg[0]_rep_7 ,
    \Q_control_reg_reg[0]_rep_8 ,
    \Q_control_reg_reg[0]_rep_9 ,
    \Q_control_reg_reg[0]_rep_10 ,
    E,
    \Q_control_reg_reg[0]_rep_11 ,
    \Q_control_reg_reg[0]_rep_12 ,
    \Q_control_reg_reg[0]_rep_13 ,
    \Q_control_reg_reg[0]_rep_14 ,
    \Q_control_reg_reg[0]_11 ,
    \Q_control_reg_reg[0]_12 ,
    \Q_control_reg_reg[0]_13 ,
    \Q_control_reg_reg[0]_14 ,
    D,
    \Q_control_reg_reg[0]_rep_15 ,
    \Q_control_reg_reg[0]_rep_16 ,
    \Q_control_reg_reg[0]_rep_17 ,
    \Q_control_reg_reg[0]_rep_18 ,
    \Q_control_reg_reg[0]_rep_19 ,
    \Q_control_reg_reg[0]_rep_20 ,
    \Q_control_reg_reg[0]_rep_21 ,
    \Q_control_reg_reg[0]_rep_22 ,
    \Q_control_reg_reg[0]_15 ,
    \Q_control_reg_reg[0]_16 ,
    \Q_control_reg_reg[0]_17 ,
    \Q_control_reg_reg[0]_18 ,
    \Q_control_reg_reg[0]_19 ,
    \Q_control_reg_reg[0]_20 ,
    \Q_control_reg_reg[0]_21 ,
    \Q_control_reg_reg[0]_22 ,
    \offset_reg_reg[2] ,
    \membrane_reg_reg[15] ,
    idx_offset_to_update,
    clk_IBUF_BUFG,
    B,
    Q,
    \membrane_storage_reg[0][3] ,
    \membrane_storage_reg[0][7] ,
    \membrane_storage_reg[0][11] ,
    \membrane_storage_reg[1][3] ,
    \membrane_storage_reg[1][7] ,
    \membrane_storage_reg[1][11] ,
    \membrane_storage_reg[2][3] ,
    \membrane_storage_reg[2][7] ,
    \membrane_storage_reg[2][11] ,
    \membrane_storage_reg[3][3] ,
    \membrane_storage_reg[3][7] ,
    \membrane_storage_reg[3][11] ,
    \membrane_storage_reg[4][3] ,
    \membrane_storage_reg[4][7] ,
    \membrane_storage_reg[4][11] ,
    \membrane_storage_reg[5][3] ,
    \membrane_storage_reg[5][7] ,
    \membrane_storage_reg[5][11] ,
    \membrane_storage_reg[6][3] ,
    \membrane_storage_reg[6][7] ,
    \membrane_storage_reg[6][11] ,
    \membrane_storage_reg[7][3] ,
    \membrane_storage_reg[7][7] ,
    \membrane_storage_reg[7][11] ,
    spike_input,
    \membrane_storage_reg[0][15] ,
    \membrane_storage_reg[1][15] ,
    \membrane_storage_reg[2][15] ,
    \membrane_storage_reg[3][15] ,
    \membrane_storage_reg[4][15] ,
    \membrane_storage_reg[5][15] ,
    \membrane_storage_reg[6][15] ,
    \membrane_storage_reg[7][15] ,
    membrane_data_in_IBUF,
    write_neuron_states_IBUF,
    \x_reg[0] ,
    halt_IBUF,
    \state_reg[2] ,
    write_ensemble_seed_IBUF,
    write_flipping_seed_IBUF,
    incrementing_reg,
    DOBDO,
    idx_to_write_IBUF,
    \membrane_storage_reg[7][0] ,
    ensemble_seed_IBUF,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    p_2_in);
  output [0:0]add_mem_reg_reg;
  output [0:0]spike_reg_reg;
  output \current_state_reg[2]_0 ;
  output [8:0]ADDRBWRADDR;
  output [3:0]\Q_control_reg_reg[0]_rep ;
  output [3:0]\Q_control_reg_reg[0]_rep_0 ;
  output [3:0]\Q_control_reg_reg[0]_rep_1 ;
  output [3:0]\Q_control_reg_reg[0]_rep_2 ;
  output [3:0]\Q_control_reg_reg[0] ;
  output [3:0]\Q_control_reg_reg[0]_0 ;
  output [3:0]\Q_control_reg_reg[0]_1 ;
  output [3:0]\Q_control_reg_reg[0]_2 ;
  output [3:0]\Q_control_reg_reg[0]_3 ;
  output [3:0]\Q_control_reg_reg[0]_4 ;
  output [3:0]\Q_control_reg_reg[0]_5 ;
  output [3:0]\Q_control_reg_reg[0]_6 ;
  output [3:0]\Q_control_reg_reg[0]_7 ;
  output [3:0]\Q_control_reg_reg[0]_8 ;
  output [3:0]\Q_control_reg_reg[0]_9 ;
  output [3:0]\Q_control_reg_reg[0]_10 ;
  output [3:0]\Q_control_reg_reg[0]_rep_3 ;
  output [3:0]\Q_control_reg_reg[0]_rep_4 ;
  output [3:0]\Q_control_reg_reg[0]_rep_5 ;
  output [3:0]\Q_control_reg_reg[0]_rep_6 ;
  output [3:0]\Q_control_reg_reg[0]_rep_7 ;
  output [3:0]\Q_control_reg_reg[0]_rep_8 ;
  output [3:0]\Q_control_reg_reg[0]_rep_9 ;
  output [3:0]\Q_control_reg_reg[0]_rep_10 ;
  output [0:0]E;
  output [2:0]\Q_control_reg_reg[0]_rep_11 ;
  output [2:0]\Q_control_reg_reg[0]_rep_12 ;
  output [2:0]\Q_control_reg_reg[0]_rep_13 ;
  output [2:0]\Q_control_reg_reg[0]_rep_14 ;
  output [2:0]\Q_control_reg_reg[0]_11 ;
  output [2:0]\Q_control_reg_reg[0]_12 ;
  output [2:0]\Q_control_reg_reg[0]_13 ;
  output [2:0]\Q_control_reg_reg[0]_14 ;
  output [6:0]D;
  output [3:0]\Q_control_reg_reg[0]_rep_15 ;
  output [3:0]\Q_control_reg_reg[0]_rep_16 ;
  output [3:0]\Q_control_reg_reg[0]_rep_17 ;
  output [3:0]\Q_control_reg_reg[0]_rep_18 ;
  output [3:0]\Q_control_reg_reg[0]_rep_19 ;
  output [3:0]\Q_control_reg_reg[0]_rep_20 ;
  output [3:0]\Q_control_reg_reg[0]_rep_21 ;
  output [3:0]\Q_control_reg_reg[0]_rep_22 ;
  output [3:0]\Q_control_reg_reg[0]_15 ;
  output [3:0]\Q_control_reg_reg[0]_16 ;
  output [3:0]\Q_control_reg_reg[0]_17 ;
  output [3:0]\Q_control_reg_reg[0]_18 ;
  output [3:0]\Q_control_reg_reg[0]_19 ;
  output [3:0]\Q_control_reg_reg[0]_20 ;
  output [3:0]\Q_control_reg_reg[0]_21 ;
  output [3:0]\Q_control_reg_reg[0]_22 ;
  output [2:0]\offset_reg_reg[2] ;
  output [15:0]\membrane_reg_reg[15] ;
  input [2:0]idx_offset_to_update;
  input clk_IBUF_BUFG;
  input [17:0]B;
  input [1:0]Q;
  input [3:0]\membrane_storage_reg[0][3] ;
  input [3:0]\membrane_storage_reg[0][7] ;
  input [3:0]\membrane_storage_reg[0][11] ;
  input [3:0]\membrane_storage_reg[1][3] ;
  input [3:0]\membrane_storage_reg[1][7] ;
  input [3:0]\membrane_storage_reg[1][11] ;
  input [3:0]\membrane_storage_reg[2][3] ;
  input [3:0]\membrane_storage_reg[2][7] ;
  input [3:0]\membrane_storage_reg[2][11] ;
  input [3:0]\membrane_storage_reg[3][3] ;
  input [3:0]\membrane_storage_reg[3][7] ;
  input [3:0]\membrane_storage_reg[3][11] ;
  input [3:0]\membrane_storage_reg[4][3] ;
  input [3:0]\membrane_storage_reg[4][7] ;
  input [3:0]\membrane_storage_reg[4][11] ;
  input [3:0]\membrane_storage_reg[5][3] ;
  input [3:0]\membrane_storage_reg[5][7] ;
  input [3:0]\membrane_storage_reg[5][11] ;
  input [3:0]\membrane_storage_reg[6][3] ;
  input [3:0]\membrane_storage_reg[6][7] ;
  input [3:0]\membrane_storage_reg[6][11] ;
  input [3:0]\membrane_storage_reg[7][3] ;
  input [3:0]\membrane_storage_reg[7][7] ;
  input [3:0]\membrane_storage_reg[7][11] ;
  input spike_input;
  input [0:0]\membrane_storage_reg[0][15] ;
  input [0:0]\membrane_storage_reg[1][15] ;
  input [0:0]\membrane_storage_reg[2][15] ;
  input [0:0]\membrane_storage_reg[3][15] ;
  input [0:0]\membrane_storage_reg[4][15] ;
  input [0:0]\membrane_storage_reg[5][15] ;
  input [0:0]\membrane_storage_reg[6][15] ;
  input [0:0]\membrane_storage_reg[7][15] ;
  input [15:0]membrane_data_in_IBUF;
  input [0:0]write_neuron_states_IBUF;
  input \x_reg[0] ;
  input halt_IBUF;
  input \state_reg[2] ;
  input [0:0]write_ensemble_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input incrementing_reg;
  input [10:0]DOBDO;
  input [2:0]idx_to_write_IBUF;
  input [7:0]\membrane_storage_reg[7][0] ;
  input [4:0]ensemble_seed_IBUF;
  input [3:0]neuron_state_in_IBUF;
  input [15:0]flipping_seed_IBUF;
  input [2:0]p_2_in;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [6:0]D;
  wire [10:0]DOBDO;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]\Q_control_reg_reg[0] ;
  wire [3:0]\Q_control_reg_reg[0]_0 ;
  wire [3:0]\Q_control_reg_reg[0]_1 ;
  wire [3:0]\Q_control_reg_reg[0]_10 ;
  wire [2:0]\Q_control_reg_reg[0]_11 ;
  wire [2:0]\Q_control_reg_reg[0]_12 ;
  wire [2:0]\Q_control_reg_reg[0]_13 ;
  wire [2:0]\Q_control_reg_reg[0]_14 ;
  wire [3:0]\Q_control_reg_reg[0]_15 ;
  wire [3:0]\Q_control_reg_reg[0]_16 ;
  wire [3:0]\Q_control_reg_reg[0]_17 ;
  wire [3:0]\Q_control_reg_reg[0]_18 ;
  wire [3:0]\Q_control_reg_reg[0]_19 ;
  wire [3:0]\Q_control_reg_reg[0]_2 ;
  wire [3:0]\Q_control_reg_reg[0]_20 ;
  wire [3:0]\Q_control_reg_reg[0]_21 ;
  wire [3:0]\Q_control_reg_reg[0]_22 ;
  wire [3:0]\Q_control_reg_reg[0]_3 ;
  wire [3:0]\Q_control_reg_reg[0]_4 ;
  wire [3:0]\Q_control_reg_reg[0]_5 ;
  wire [3:0]\Q_control_reg_reg[0]_6 ;
  wire [3:0]\Q_control_reg_reg[0]_7 ;
  wire [3:0]\Q_control_reg_reg[0]_8 ;
  wire [3:0]\Q_control_reg_reg[0]_9 ;
  wire [3:0]\Q_control_reg_reg[0]_rep ;
  wire [3:0]\Q_control_reg_reg[0]_rep_0 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_1 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_10 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_11 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_12 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_13 ;
  wire [2:0]\Q_control_reg_reg[0]_rep_14 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_15 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_16 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_17 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_18 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_19 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_2 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_20 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_21 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_22 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_3 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_4 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_5 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_6 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_7 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_8 ;
  wire [3:0]\Q_control_reg_reg[0]_rep_9 ;
  wire add_mem;
  wire [0:0]add_mem_reg_reg;
  wire buffer_n_2;
  wire clk_IBUF_BUFG;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[2]_i_1__0_n_0 ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire [4:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [2:0]idx_offset_to_update;
  wire [2:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [15:0]membrane;
  wire [15:0]membrane_data_in_IBUF;
  wire [15:0]\membrane_reg_reg[15] ;
  wire [3:0]\membrane_storage_reg[0][11] ;
  wire [0:0]\membrane_storage_reg[0][15] ;
  wire [3:0]\membrane_storage_reg[0][3] ;
  wire [3:0]\membrane_storage_reg[0][7] ;
  wire [3:0]\membrane_storage_reg[1][11] ;
  wire [0:0]\membrane_storage_reg[1][15] ;
  wire [3:0]\membrane_storage_reg[1][3] ;
  wire [3:0]\membrane_storage_reg[1][7] ;
  wire [3:0]\membrane_storage_reg[2][11] ;
  wire [0:0]\membrane_storage_reg[2][15] ;
  wire [3:0]\membrane_storage_reg[2][3] ;
  wire [3:0]\membrane_storage_reg[2][7] ;
  wire [3:0]\membrane_storage_reg[3][11] ;
  wire [0:0]\membrane_storage_reg[3][15] ;
  wire [3:0]\membrane_storage_reg[3][3] ;
  wire [3:0]\membrane_storage_reg[3][7] ;
  wire [3:0]\membrane_storage_reg[4][11] ;
  wire [0:0]\membrane_storage_reg[4][15] ;
  wire [3:0]\membrane_storage_reg[4][3] ;
  wire [3:0]\membrane_storage_reg[4][7] ;
  wire [3:0]\membrane_storage_reg[5][11] ;
  wire [0:0]\membrane_storage_reg[5][15] ;
  wire [3:0]\membrane_storage_reg[5][3] ;
  wire [3:0]\membrane_storage_reg[5][7] ;
  wire [3:0]\membrane_storage_reg[6][11] ;
  wire [0:0]\membrane_storage_reg[6][15] ;
  wire [3:0]\membrane_storage_reg[6][3] ;
  wire [3:0]\membrane_storage_reg[6][7] ;
  wire [7:0]\membrane_storage_reg[7][0] ;
  wire [3:0]\membrane_storage_reg[7][11] ;
  wire [0:0]\membrane_storage_reg[7][15] ;
  wire [3:0]\membrane_storage_reg[7][3] ;
  wire [3:0]\membrane_storage_reg[7][7] ;
  wire [3:0]neuron_state_in_IBUF;
  wire [2:0]offset;
  wire [2:0]\offset_reg_reg[2] ;
  wire [2:0]p_2_in;
  wire spike_ensemble_wire;
  wire spike_input;
  wire [0:0]spike_reg_reg;
  wire \state_reg[2] ;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire \x_reg[0] ;

  transmit_buffer buffer
       (.CO(spike_ensemble_wire),
        .E(buffer_n_2),
        .Q(Q),
        .add_mem_input_reg_0(add_mem),
        .add_mem_reg_reg_0(add_mem_reg_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\idx_offset_input_reg[2]_0 (offset),
        .\membrane_input_reg[15]_0 (membrane),
        .\membrane_reg_reg[15]_0 (\membrane_reg_reg[15] ),
        .\offset_reg_reg[2]_0 (\offset_reg_reg[2] ),
        .spike_input(spike_input),
        .spike_reg_reg_0(spike_reg_reg),
        .\state_reg[2]_0 (\state_reg[2] ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT6 #(
    .INIT(64'h5151515051505151)) 
    \current_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(halt_IBUF),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0B0A0B0A0A)) 
    \current_state[1]_i_1 
       (.I0(halt_IBUF),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111100000010)) 
    \current_state[2]_i_1__0 
       (.I0(halt_IBUF),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(Q[1]),
        .O(\current_state[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[2]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  neuron_ensemble__parameterized0 neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(spike_ensemble_wire),
        .D(D),
        .DOBDO(DOBDO),
        .E(E),
        .Q({\current_state_reg_n_0_[2] ,\current_state_reg_n_0_[1] ,\current_state_reg_n_0_[0] }),
        .\Q_control_reg_reg[0] (\Q_control_reg_reg[0] ),
        .\Q_control_reg_reg[0]_0 (\Q_control_reg_reg[0]_0 ),
        .\Q_control_reg_reg[0]_1 (\Q_control_reg_reg[0]_1 ),
        .\Q_control_reg_reg[0]_10 (\Q_control_reg_reg[0]_10 ),
        .\Q_control_reg_reg[0]_11 (\Q_control_reg_reg[0]_11 ),
        .\Q_control_reg_reg[0]_12 (\Q_control_reg_reg[0]_12 ),
        .\Q_control_reg_reg[0]_13 (\Q_control_reg_reg[0]_13 ),
        .\Q_control_reg_reg[0]_14 (\Q_control_reg_reg[0]_14 ),
        .\Q_control_reg_reg[0]_15 (\Q_control_reg_reg[0]_15 ),
        .\Q_control_reg_reg[0]_16 (\Q_control_reg_reg[0]_16 ),
        .\Q_control_reg_reg[0]_17 (\Q_control_reg_reg[0]_17 ),
        .\Q_control_reg_reg[0]_18 (\Q_control_reg_reg[0]_18 ),
        .\Q_control_reg_reg[0]_19 (\Q_control_reg_reg[0]_19 ),
        .\Q_control_reg_reg[0]_2 (\Q_control_reg_reg[0]_2 ),
        .\Q_control_reg_reg[0]_20 (\Q_control_reg_reg[0]_20 ),
        .\Q_control_reg_reg[0]_21 (\Q_control_reg_reg[0]_21 ),
        .\Q_control_reg_reg[0]_22 (\Q_control_reg_reg[0]_22 ),
        .\Q_control_reg_reg[0]_3 (\Q_control_reg_reg[0]_3 ),
        .\Q_control_reg_reg[0]_4 (\Q_control_reg_reg[0]_4 ),
        .\Q_control_reg_reg[0]_5 (\Q_control_reg_reg[0]_5 ),
        .\Q_control_reg_reg[0]_6 (\Q_control_reg_reg[0]_6 ),
        .\Q_control_reg_reg[0]_7 (\Q_control_reg_reg[0]_7 ),
        .\Q_control_reg_reg[0]_8 (\Q_control_reg_reg[0]_8 ),
        .\Q_control_reg_reg[0]_9 (\Q_control_reg_reg[0]_9 ),
        .\Q_control_reg_reg[0]_rep (\Q_control_reg_reg[0]_rep ),
        .\Q_control_reg_reg[0]_rep_0 (\Q_control_reg_reg[0]_rep_0 ),
        .\Q_control_reg_reg[0]_rep_1 (\Q_control_reg_reg[0]_rep_1 ),
        .\Q_control_reg_reg[0]_rep_10 (\Q_control_reg_reg[0]_rep_10 ),
        .\Q_control_reg_reg[0]_rep_11 (\Q_control_reg_reg[0]_rep_11 ),
        .\Q_control_reg_reg[0]_rep_12 (\Q_control_reg_reg[0]_rep_12 ),
        .\Q_control_reg_reg[0]_rep_13 (\Q_control_reg_reg[0]_rep_13 ),
        .\Q_control_reg_reg[0]_rep_14 (\Q_control_reg_reg[0]_rep_14 ),
        .\Q_control_reg_reg[0]_rep_15 (\Q_control_reg_reg[0]_rep_15 ),
        .\Q_control_reg_reg[0]_rep_16 (\Q_control_reg_reg[0]_rep_16 ),
        .\Q_control_reg_reg[0]_rep_17 (\Q_control_reg_reg[0]_rep_17 ),
        .\Q_control_reg_reg[0]_rep_18 (\Q_control_reg_reg[0]_rep_18 ),
        .\Q_control_reg_reg[0]_rep_19 (\Q_control_reg_reg[0]_rep_19 ),
        .\Q_control_reg_reg[0]_rep_2 (\Q_control_reg_reg[0]_rep_2 ),
        .\Q_control_reg_reg[0]_rep_20 (\Q_control_reg_reg[0]_rep_20 ),
        .\Q_control_reg_reg[0]_rep_21 (\Q_control_reg_reg[0]_rep_21 ),
        .\Q_control_reg_reg[0]_rep_22 (\Q_control_reg_reg[0]_rep_22 ),
        .\Q_control_reg_reg[0]_rep_3 (\Q_control_reg_reg[0]_rep_3 ),
        .\Q_control_reg_reg[0]_rep_4 (\Q_control_reg_reg[0]_rep_4 ),
        .\Q_control_reg_reg[0]_rep_5 (\Q_control_reg_reg[0]_rep_5 ),
        .\Q_control_reg_reg[0]_rep_6 (\Q_control_reg_reg[0]_rep_6 ),
        .\Q_control_reg_reg[0]_rep_7 (\Q_control_reg_reg[0]_rep_7 ),
        .\Q_control_reg_reg[0]_rep_8 (\Q_control_reg_reg[0]_rep_8 ),
        .\Q_control_reg_reg[0]_rep_9 (\Q_control_reg_reg[0]_rep_9 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (\current_state_reg[2]_0 ),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .idx_offset_to_update(idx_offset_to_update),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11] (\membrane_storage_reg[0][11] ),
        .\membrane_storage_reg[0][15] (\membrane_storage_reg[0][15] ),
        .\membrane_storage_reg[0][3] (\membrane_storage_reg[0][3] ),
        .\membrane_storage_reg[0][7] (\membrane_storage_reg[0][7] ),
        .\membrane_storage_reg[1][11] (\membrane_storage_reg[1][11] ),
        .\membrane_storage_reg[1][15] (\membrane_storage_reg[1][15] ),
        .\membrane_storage_reg[1][3] (\membrane_storage_reg[1][3] ),
        .\membrane_storage_reg[1][7] (\membrane_storage_reg[1][7] ),
        .\membrane_storage_reg[2][11] (\membrane_storage_reg[2][11] ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2][3] (\membrane_storage_reg[2][3] ),
        .\membrane_storage_reg[2][7] (\membrane_storage_reg[2][7] ),
        .\membrane_storage_reg[3][11] (\membrane_storage_reg[3][11] ),
        .\membrane_storage_reg[3][15] (\membrane_storage_reg[3][15] ),
        .\membrane_storage_reg[3][3] (\membrane_storage_reg[3][3] ),
        .\membrane_storage_reg[3][7] (\membrane_storage_reg[3][7] ),
        .\membrane_storage_reg[4][11] (\membrane_storage_reg[4][11] ),
        .\membrane_storage_reg[4][15] (\membrane_storage_reg[4][15] ),
        .\membrane_storage_reg[4][3] (\membrane_storage_reg[4][3] ),
        .\membrane_storage_reg[4][7] (\membrane_storage_reg[4][7] ),
        .\membrane_storage_reg[5][11] (\membrane_storage_reg[5][11] ),
        .\membrane_storage_reg[5][15] (\membrane_storage_reg[5][15] ),
        .\membrane_storage_reg[5][3] (\membrane_storage_reg[5][3] ),
        .\membrane_storage_reg[5][7] (\membrane_storage_reg[5][7] ),
        .\membrane_storage_reg[6][11] (\membrane_storage_reg[6][11] ),
        .\membrane_storage_reg[6][15] (\membrane_storage_reg[6][15] ),
        .\membrane_storage_reg[6][3] (\membrane_storage_reg[6][3] ),
        .\membrane_storage_reg[6][7] (\membrane_storage_reg[6][7] ),
        .\membrane_storage_reg[7][0] (\membrane_storage_reg[7][0] ),
        .\membrane_storage_reg[7][11] (\membrane_storage_reg[7][11] ),
        .\membrane_storage_reg[7][15] (\membrane_storage_reg[7][15] ),
        .\membrane_storage_reg[7][3] (\membrane_storage_reg[7][3] ),
        .\membrane_storage_reg[7][7] (\membrane_storage_reg[7][7] ),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg_reg[0]_0 (add_mem),
        .p_2_in(p_2_in),
        .\selected_idx_offset_reg_reg[2]_0 (offset),
        .\selected_membrane_reg_reg[15]_0 (membrane),
        .\state_reg[1] (buffer_n_2),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .\x_reg[0] (\x_reg[0] ));
endmodule

module scheduler_2
   (should_increment,
    flip_reg,
    D,
    Q,
    \counter_reg[10]_0 ,
    spike_input,
    \FSM_onehot_state_reg[2]_0 ,
    \cuts_best_reg[15]_0 ,
    reset_IBUF,
    add_mem,
    clk_IBUF_BUFG,
    \fired_index_reg_reg[2]_0 ,
    \fired_index_reg_reg[1]_0 ,
    \fired_index_reg_reg[0]_0 ,
    spikes,
    \membrane_reg_reg[15]_0 );
  output should_increment;
  output flip_reg;
  output [2:0]D;
  output [1:0]Q;
  output \counter_reg[10]_0 ;
  output spike_input;
  output \FSM_onehot_state_reg[2]_0 ;
  output [15:0]\cuts_best_reg[15]_0 ;
  input reset_IBUF;
  input add_mem;
  input clk_IBUF_BUFG;
  input \fired_index_reg_reg[2]_0 ;
  input \fired_index_reg_reg[1]_0 ;
  input \fired_index_reg_reg[0]_0 ;
  input [1:0]spikes;
  input [15:0]\membrane_reg_reg[15]_0 ;

  wire [2:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [1:0]Q;
  wire add_mem;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire [11:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[10]_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \curr_cuts[0]_i_1_n_0 ;
  wire \curr_cuts[0]_i_3_n_0 ;
  wire \curr_cuts[0]_i_4_n_0 ;
  wire \curr_cuts[0]_i_5_n_0 ;
  wire \curr_cuts[0]_i_6_n_0 ;
  wire \curr_cuts[12]_i_2_n_0 ;
  wire \curr_cuts[12]_i_3_n_0 ;
  wire \curr_cuts[12]_i_4_n_0 ;
  wire \curr_cuts[12]_i_5_n_0 ;
  wire \curr_cuts[4]_i_2_n_0 ;
  wire \curr_cuts[4]_i_3_n_0 ;
  wire \curr_cuts[4]_i_4_n_0 ;
  wire \curr_cuts[4]_i_5_n_0 ;
  wire \curr_cuts[8]_i_2_n_0 ;
  wire \curr_cuts[8]_i_3_n_0 ;
  wire \curr_cuts[8]_i_4_n_0 ;
  wire \curr_cuts[8]_i_5_n_0 ;
  wire [15:0]curr_cuts_reg;
  wire \curr_cuts_reg[0]_i_2_n_0 ;
  wire \curr_cuts_reg[0]_i_2_n_1 ;
  wire \curr_cuts_reg[0]_i_2_n_2 ;
  wire \curr_cuts_reg[0]_i_2_n_3 ;
  wire \curr_cuts_reg[0]_i_2_n_4 ;
  wire \curr_cuts_reg[0]_i_2_n_5 ;
  wire \curr_cuts_reg[0]_i_2_n_6 ;
  wire \curr_cuts_reg[0]_i_2_n_7 ;
  wire \curr_cuts_reg[12]_i_1_n_1 ;
  wire \curr_cuts_reg[12]_i_1_n_2 ;
  wire \curr_cuts_reg[12]_i_1_n_3 ;
  wire \curr_cuts_reg[12]_i_1_n_4 ;
  wire \curr_cuts_reg[12]_i_1_n_5 ;
  wire \curr_cuts_reg[12]_i_1_n_6 ;
  wire \curr_cuts_reg[12]_i_1_n_7 ;
  wire \curr_cuts_reg[4]_i_1_n_0 ;
  wire \curr_cuts_reg[4]_i_1_n_1 ;
  wire \curr_cuts_reg[4]_i_1_n_2 ;
  wire \curr_cuts_reg[4]_i_1_n_3 ;
  wire \curr_cuts_reg[4]_i_1_n_4 ;
  wire \curr_cuts_reg[4]_i_1_n_5 ;
  wire \curr_cuts_reg[4]_i_1_n_6 ;
  wire \curr_cuts_reg[4]_i_1_n_7 ;
  wire \curr_cuts_reg[8]_i_1_n_0 ;
  wire \curr_cuts_reg[8]_i_1_n_1 ;
  wire \curr_cuts_reg[8]_i_1_n_2 ;
  wire \curr_cuts_reg[8]_i_1_n_3 ;
  wire \curr_cuts_reg[8]_i_1_n_4 ;
  wire \curr_cuts_reg[8]_i_1_n_5 ;
  wire \curr_cuts_reg[8]_i_1_n_6 ;
  wire \curr_cuts_reg[8]_i_1_n_7 ;
  wire cuts_best0_carry__0_i_1_n_0;
  wire cuts_best0_carry__0_i_2_n_0;
  wire cuts_best0_carry__0_i_3_n_0;
  wire cuts_best0_carry__0_i_4_n_0;
  wire cuts_best0_carry__0_n_0;
  wire cuts_best0_carry__0_n_1;
  wire cuts_best0_carry__0_n_2;
  wire cuts_best0_carry__0_n_3;
  wire cuts_best0_carry__0_n_4;
  wire cuts_best0_carry__0_n_5;
  wire cuts_best0_carry__0_n_6;
  wire cuts_best0_carry__0_n_7;
  wire cuts_best0_carry__1_i_1_n_0;
  wire cuts_best0_carry__1_i_2_n_0;
  wire cuts_best0_carry__1_i_3_n_0;
  wire cuts_best0_carry__1_i_4_n_0;
  wire cuts_best0_carry__1_n_0;
  wire cuts_best0_carry__1_n_1;
  wire cuts_best0_carry__1_n_2;
  wire cuts_best0_carry__1_n_3;
  wire cuts_best0_carry__1_n_4;
  wire cuts_best0_carry__1_n_5;
  wire cuts_best0_carry__1_n_6;
  wire cuts_best0_carry__1_n_7;
  wire cuts_best0_carry__2_i_1_n_0;
  wire cuts_best0_carry__2_i_2_n_0;
  wire cuts_best0_carry__2_i_3_n_0;
  wire cuts_best0_carry__2_i_4_n_0;
  wire cuts_best0_carry__2_n_1;
  wire cuts_best0_carry__2_n_2;
  wire cuts_best0_carry__2_n_3;
  wire cuts_best0_carry__2_n_4;
  wire cuts_best0_carry__2_n_5;
  wire cuts_best0_carry__2_n_6;
  wire cuts_best0_carry__2_n_7;
  wire cuts_best0_carry_i_1_n_0;
  wire cuts_best0_carry_i_2_n_0;
  wire cuts_best0_carry_i_3_n_0;
  wire cuts_best0_carry_i_4_n_0;
  wire cuts_best0_carry_n_0;
  wire cuts_best0_carry_n_1;
  wire cuts_best0_carry_n_2;
  wire cuts_best0_carry_n_3;
  wire cuts_best0_carry_n_4;
  wire cuts_best0_carry_n_5;
  wire cuts_best0_carry_n_6;
  wire cuts_best0_carry_n_7;
  wire \cuts_best0_inferred__0/i__carry__0_n_0 ;
  wire \cuts_best0_inferred__0/i__carry__0_n_1 ;
  wire \cuts_best0_inferred__0/i__carry__0_n_2 ;
  wire \cuts_best0_inferred__0/i__carry__0_n_3 ;
  wire \cuts_best0_inferred__0/i__carry_n_0 ;
  wire \cuts_best0_inferred__0/i__carry_n_1 ;
  wire \cuts_best0_inferred__0/i__carry_n_2 ;
  wire \cuts_best0_inferred__0/i__carry_n_3 ;
  wire \cuts_best[15]_i_1_n_0 ;
  wire [15:0]\cuts_best_reg[15]_0 ;
  wire \fired_index_reg_reg[0]_0 ;
  wire \fired_index_reg_reg[1]_0 ;
  wire \fired_index_reg_reg[2]_0 ;
  wire flip_reg;
  wire flip_reg_i_1_n_0;
  wire flip_reg_reg_n_0;
  wire halt_counter;
  wire \halt_counter[0]_i_1_n_0 ;
  wire \halt_counter[1]_i_1_n_0 ;
  wire \halt_counter[2]_i_1_n_0 ;
  wire \halt_counter[2]_i_2_n_0 ;
  wire [2:0]halt_counter__0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8_n_0;
  wire i__i_3_n_0;
  wire i__i_4_n_0;
  wire [15:0]membrane_reg;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire reset_IBUF;
  wire should_increment;
  wire spike_input;
  wire [1:0]spikes;
  wire [3:3]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_curr_cuts_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_cuts_best0_carry__2_CO_UNCONNECTED;
  wire [3:0]\NLW_cuts_best0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_cuts_best0_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(halt_counter),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(halt_counter),
        .I1(halt_counter__0[2]),
        .I2(halt_counter__0[0]),
        .I3(halt_counter__0[1]),
        .I4(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(flip_reg_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESETED:0001,STATE_WAITING_FOR_SPIKES:0010,STATE_DATA_CAPTURED:0100,STATE_HALTED:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(Q[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_RESETED:0001,STATE_WAITING_FOR_SPIKES:0010,STATE_DATA_CAPTURED:0100,STATE_HALTED:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_RESETED:0001,STATE_WAITING_FOR_SPIKES:0010,STATE_DATA_CAPTURED:0100,STATE_HALTED:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_RESETED:0001,STATE_WAITING_FOR_SPIKES:0010,STATE_DATA_CAPTURED:0100,STATE_HALTED:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(Q[1]),
        .Q(halt_counter),
        .R(reset_IBUF));
  LUT3 #(
    .INIT(8'hA8)) 
    add_membrane_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(spikes[1]),
        .I2(spikes[0]),
        .O(flip_reg));
  FDRE #(
    .INIT(1'b0)) 
    add_membrane_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(add_mem),
        .Q(should_increment),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(spike_input));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [3],\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h02AA)) 
    \curr_cuts[0]_i_1 
       (.I0(Q[1]),
        .I1(spikes[0]),
        .I2(spikes[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\curr_cuts[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[0]_i_3 
       (.I0(membrane_reg[3]),
        .I1(should_increment),
        .I2(curr_cuts_reg[3]),
        .O(\curr_cuts[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[0]_i_4 
       (.I0(membrane_reg[2]),
        .I1(should_increment),
        .I2(curr_cuts_reg[2]),
        .O(\curr_cuts[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[0]_i_5 
       (.I0(membrane_reg[1]),
        .I1(should_increment),
        .I2(curr_cuts_reg[1]),
        .O(\curr_cuts[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[0]_i_6 
       (.I0(membrane_reg[0]),
        .I1(should_increment),
        .I2(curr_cuts_reg[0]),
        .O(\curr_cuts[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[12]_i_2 
       (.I0(should_increment),
        .I1(membrane_reg[15]),
        .I2(curr_cuts_reg[15]),
        .O(\curr_cuts[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[12]_i_3 
       (.I0(membrane_reg[14]),
        .I1(should_increment),
        .I2(curr_cuts_reg[14]),
        .O(\curr_cuts[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[12]_i_4 
       (.I0(membrane_reg[13]),
        .I1(should_increment),
        .I2(curr_cuts_reg[13]),
        .O(\curr_cuts[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[12]_i_5 
       (.I0(membrane_reg[12]),
        .I1(should_increment),
        .I2(curr_cuts_reg[12]),
        .O(\curr_cuts[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[4]_i_2 
       (.I0(membrane_reg[7]),
        .I1(should_increment),
        .I2(curr_cuts_reg[7]),
        .O(\curr_cuts[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[4]_i_3 
       (.I0(membrane_reg[6]),
        .I1(should_increment),
        .I2(curr_cuts_reg[6]),
        .O(\curr_cuts[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[4]_i_4 
       (.I0(membrane_reg[5]),
        .I1(should_increment),
        .I2(curr_cuts_reg[5]),
        .O(\curr_cuts[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[4]_i_5 
       (.I0(membrane_reg[4]),
        .I1(should_increment),
        .I2(curr_cuts_reg[4]),
        .O(\curr_cuts[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[8]_i_2 
       (.I0(membrane_reg[11]),
        .I1(should_increment),
        .I2(curr_cuts_reg[11]),
        .O(\curr_cuts[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[8]_i_3 
       (.I0(membrane_reg[10]),
        .I1(should_increment),
        .I2(curr_cuts_reg[10]),
        .O(\curr_cuts[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[8]_i_4 
       (.I0(membrane_reg[9]),
        .I1(should_increment),
        .I2(curr_cuts_reg[9]),
        .O(\curr_cuts[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \curr_cuts[8]_i_5 
       (.I0(membrane_reg[8]),
        .I1(should_increment),
        .I2(curr_cuts_reg[8]),
        .O(\curr_cuts[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[0]_i_2_n_7 ),
        .Q(curr_cuts_reg[0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\curr_cuts_reg[0]_i_2_n_0 ,\curr_cuts_reg[0]_i_2_n_1 ,\curr_cuts_reg[0]_i_2_n_2 ,\curr_cuts_reg[0]_i_2_n_3 }),
        .CYINIT(should_increment),
        .DI(curr_cuts_reg[3:0]),
        .O({\curr_cuts_reg[0]_i_2_n_4 ,\curr_cuts_reg[0]_i_2_n_5 ,\curr_cuts_reg[0]_i_2_n_6 ,\curr_cuts_reg[0]_i_2_n_7 }),
        .S({\curr_cuts[0]_i_3_n_0 ,\curr_cuts[0]_i_4_n_0 ,\curr_cuts[0]_i_5_n_0 ,\curr_cuts[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[8]_i_1_n_5 ),
        .Q(curr_cuts_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[8]_i_1_n_4 ),
        .Q(curr_cuts_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[12]_i_1_n_7 ),
        .Q(curr_cuts_reg[12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[12]_i_1 
       (.CI(\curr_cuts_reg[8]_i_1_n_0 ),
        .CO({\NLW_curr_cuts_reg[12]_i_1_CO_UNCONNECTED [3],\curr_cuts_reg[12]_i_1_n_1 ,\curr_cuts_reg[12]_i_1_n_2 ,\curr_cuts_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,curr_cuts_reg[14:12]}),
        .O({\curr_cuts_reg[12]_i_1_n_4 ,\curr_cuts_reg[12]_i_1_n_5 ,\curr_cuts_reg[12]_i_1_n_6 ,\curr_cuts_reg[12]_i_1_n_7 }),
        .S({\curr_cuts[12]_i_2_n_0 ,\curr_cuts[12]_i_3_n_0 ,\curr_cuts[12]_i_4_n_0 ,\curr_cuts[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[12]_i_1_n_6 ),
        .Q(curr_cuts_reg[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[12]_i_1_n_5 ),
        .Q(curr_cuts_reg[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[12]_i_1_n_4 ),
        .Q(curr_cuts_reg[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[0]_i_2_n_6 ),
        .Q(curr_cuts_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[0]_i_2_n_5 ),
        .Q(curr_cuts_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[0]_i_2_n_4 ),
        .Q(curr_cuts_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[4]_i_1_n_7 ),
        .Q(curr_cuts_reg[4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[4]_i_1 
       (.CI(\curr_cuts_reg[0]_i_2_n_0 ),
        .CO({\curr_cuts_reg[4]_i_1_n_0 ,\curr_cuts_reg[4]_i_1_n_1 ,\curr_cuts_reg[4]_i_1_n_2 ,\curr_cuts_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[7:4]),
        .O({\curr_cuts_reg[4]_i_1_n_4 ,\curr_cuts_reg[4]_i_1_n_5 ,\curr_cuts_reg[4]_i_1_n_6 ,\curr_cuts_reg[4]_i_1_n_7 }),
        .S({\curr_cuts[4]_i_2_n_0 ,\curr_cuts[4]_i_3_n_0 ,\curr_cuts[4]_i_4_n_0 ,\curr_cuts[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[4]_i_1_n_6 ),
        .Q(curr_cuts_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[4]_i_1_n_5 ),
        .Q(curr_cuts_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[4]_i_1_n_4 ),
        .Q(curr_cuts_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[8]_i_1_n_7 ),
        .Q(curr_cuts_reg[8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[8]_i_1 
       (.CI(\curr_cuts_reg[4]_i_1_n_0 ),
        .CO({\curr_cuts_reg[8]_i_1_n_0 ,\curr_cuts_reg[8]_i_1_n_1 ,\curr_cuts_reg[8]_i_1_n_2 ,\curr_cuts_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[11:8]),
        .O({\curr_cuts_reg[8]_i_1_n_4 ,\curr_cuts_reg[8]_i_1_n_5 ,\curr_cuts_reg[8]_i_1_n_6 ,\curr_cuts_reg[8]_i_1_n_7 }),
        .S({\curr_cuts[8]_i_2_n_0 ,\curr_cuts[8]_i_3_n_0 ,\curr_cuts[8]_i_4_n_0 ,\curr_cuts[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .D(\curr_cuts_reg[8]_i_1_n_6 ),
        .Q(curr_cuts_reg[9]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry
       (.CI(1'b0),
        .CO({cuts_best0_carry_n_0,cuts_best0_carry_n_1,cuts_best0_carry_n_2,cuts_best0_carry_n_3}),
        .CYINIT(should_increment),
        .DI(curr_cuts_reg[3:0]),
        .O({cuts_best0_carry_n_4,cuts_best0_carry_n_5,cuts_best0_carry_n_6,cuts_best0_carry_n_7}),
        .S({cuts_best0_carry_i_1_n_0,cuts_best0_carry_i_2_n_0,cuts_best0_carry_i_3_n_0,cuts_best0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry__0
       (.CI(cuts_best0_carry_n_0),
        .CO({cuts_best0_carry__0_n_0,cuts_best0_carry__0_n_1,cuts_best0_carry__0_n_2,cuts_best0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[7:4]),
        .O({cuts_best0_carry__0_n_4,cuts_best0_carry__0_n_5,cuts_best0_carry__0_n_6,cuts_best0_carry__0_n_7}),
        .S({cuts_best0_carry__0_i_1_n_0,cuts_best0_carry__0_i_2_n_0,cuts_best0_carry__0_i_3_n_0,cuts_best0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__0_i_1
       (.I0(curr_cuts_reg[7]),
        .I1(membrane_reg[7]),
        .I2(should_increment),
        .O(cuts_best0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__0_i_2
       (.I0(curr_cuts_reg[6]),
        .I1(membrane_reg[6]),
        .I2(should_increment),
        .O(cuts_best0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__0_i_3
       (.I0(curr_cuts_reg[5]),
        .I1(membrane_reg[5]),
        .I2(should_increment),
        .O(cuts_best0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__0_i_4
       (.I0(curr_cuts_reg[4]),
        .I1(membrane_reg[4]),
        .I2(should_increment),
        .O(cuts_best0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry__1
       (.CI(cuts_best0_carry__0_n_0),
        .CO({cuts_best0_carry__1_n_0,cuts_best0_carry__1_n_1,cuts_best0_carry__1_n_2,cuts_best0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[11:8]),
        .O({cuts_best0_carry__1_n_4,cuts_best0_carry__1_n_5,cuts_best0_carry__1_n_6,cuts_best0_carry__1_n_7}),
        .S({cuts_best0_carry__1_i_1_n_0,cuts_best0_carry__1_i_2_n_0,cuts_best0_carry__1_i_3_n_0,cuts_best0_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__1_i_1
       (.I0(curr_cuts_reg[11]),
        .I1(membrane_reg[11]),
        .I2(should_increment),
        .O(cuts_best0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__1_i_2
       (.I0(curr_cuts_reg[10]),
        .I1(membrane_reg[10]),
        .I2(should_increment),
        .O(cuts_best0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__1_i_3
       (.I0(curr_cuts_reg[9]),
        .I1(membrane_reg[9]),
        .I2(should_increment),
        .O(cuts_best0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__1_i_4
       (.I0(curr_cuts_reg[8]),
        .I1(membrane_reg[8]),
        .I2(should_increment),
        .O(cuts_best0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cuts_best0_carry__2
       (.CI(cuts_best0_carry__1_n_0),
        .CO({NLW_cuts_best0_carry__2_CO_UNCONNECTED[3],cuts_best0_carry__2_n_1,cuts_best0_carry__2_n_2,cuts_best0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,curr_cuts_reg[14:12]}),
        .O({cuts_best0_carry__2_n_4,cuts_best0_carry__2_n_5,cuts_best0_carry__2_n_6,cuts_best0_carry__2_n_7}),
        .S({cuts_best0_carry__2_i_1_n_0,cuts_best0_carry__2_i_2_n_0,cuts_best0_carry__2_i_3_n_0,cuts_best0_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__2_i_1
       (.I0(should_increment),
        .I1(membrane_reg[15]),
        .I2(curr_cuts_reg[15]),
        .O(cuts_best0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__2_i_2
       (.I0(curr_cuts_reg[14]),
        .I1(membrane_reg[14]),
        .I2(should_increment),
        .O(cuts_best0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__2_i_3
       (.I0(curr_cuts_reg[13]),
        .I1(membrane_reg[13]),
        .I2(should_increment),
        .O(cuts_best0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry__2_i_4
       (.I0(curr_cuts_reg[12]),
        .I1(membrane_reg[12]),
        .I2(should_increment),
        .O(cuts_best0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry_i_1
       (.I0(curr_cuts_reg[3]),
        .I1(membrane_reg[3]),
        .I2(should_increment),
        .O(cuts_best0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry_i_2
       (.I0(curr_cuts_reg[2]),
        .I1(membrane_reg[2]),
        .I2(should_increment),
        .O(cuts_best0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry_i_3
       (.I0(curr_cuts_reg[1]),
        .I1(membrane_reg[1]),
        .I2(should_increment),
        .O(cuts_best0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cuts_best0_carry_i_4
       (.I0(curr_cuts_reg[0]),
        .I1(membrane_reg[0]),
        .I2(should_increment),
        .O(cuts_best0_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cuts_best0_inferred__0/i__carry_n_0 ,\cuts_best0_inferred__0/i__carry_n_1 ,\cuts_best0_inferred__0/i__carry_n_2 ,\cuts_best0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__1_n_0,i__carry_i_4_n_0}),
        .O(\NLW_cuts_best0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7__1_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best0_inferred__0/i__carry__0 
       (.CI(\cuts_best0_inferred__0/i__carry_n_0 ),
        .CO({\cuts_best0_inferred__0/i__carry__0_n_0 ,\cuts_best0_inferred__0/i__carry__0_n_1 ,\cuts_best0_inferred__0/i__carry__0_n_2 ,\cuts_best0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_cuts_best0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h222A0000)) 
    \cuts_best[15]_i_1 
       (.I0(\cuts_best0_inferred__0/i__carry__0_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(spikes[1]),
        .I3(spikes[0]),
        .I4(Q[1]),
        .O(\cuts_best[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry_n_7),
        .Q(\cuts_best_reg[15]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__1_n_5),
        .Q(\cuts_best_reg[15]_0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__1_n_4),
        .Q(\cuts_best_reg[15]_0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__2_n_7),
        .Q(\cuts_best_reg[15]_0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__2_n_6),
        .Q(\cuts_best_reg[15]_0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__2_n_5),
        .Q(\cuts_best_reg[15]_0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__2_n_4),
        .Q(\cuts_best_reg[15]_0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry_n_6),
        .Q(\cuts_best_reg[15]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry_n_5),
        .Q(\cuts_best_reg[15]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry_n_4),
        .Q(\cuts_best_reg[15]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__0_n_7),
        .Q(\cuts_best_reg[15]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__0_n_6),
        .Q(\cuts_best_reg[15]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__0_n_5),
        .Q(\cuts_best_reg[15]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__0_n_4),
        .Q(\cuts_best_reg[15]_0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__1_n_7),
        .Q(\cuts_best_reg[15]_0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .D(cuts_best0_carry__1_n_6),
        .Q(\cuts_best_reg[15]_0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \fired_index_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\fired_index_reg_reg[0]_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fired_index_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\fired_index_reg_reg[1]_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fired_index_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\fired_index_reg_reg[2]_0 ),
        .Q(D[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFD55FC00)) 
    flip_reg_i_1
       (.I0(Q[1]),
        .I1(spikes[0]),
        .I2(spikes[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(flip_reg_reg_n_0),
        .O(flip_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flip_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(flip_reg_i_1_n_0),
        .Q(flip_reg_reg_n_0),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'h0000AA06)) 
    \halt_counter[0]_i_1 
       (.I0(halt_counter__0[0]),
        .I1(halt_counter),
        .I2(Q[1]),
        .I3(flip_reg),
        .I4(reset_IBUF),
        .O(\halt_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA006A)) 
    \halt_counter[1]_i_1 
       (.I0(halt_counter__0[1]),
        .I1(halt_counter),
        .I2(halt_counter__0[0]),
        .I3(Q[1]),
        .I4(flip_reg),
        .I5(reset_IBUF),
        .O(\halt_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \halt_counter[2]_i_1 
       (.I0(halt_counter__0[2]),
        .I1(flip_reg),
        .I2(halt_counter),
        .I3(halt_counter__0[0]),
        .I4(halt_counter__0[1]),
        .I5(\halt_counter[2]_i_2_n_0 ),
        .O(\halt_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFAAAA)) 
    \halt_counter[2]_i_2 
       (.I0(reset_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(spikes[1]),
        .I3(spikes[0]),
        .I4(Q[1]),
        .O(\halt_counter[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \halt_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_counter[0]_i_1_n_0 ),
        .Q(halt_counter__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \halt_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_counter[1]_i_1_n_0 ),
        .Q(halt_counter__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \halt_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_counter[2]_i_1_n_0 ),
        .Q(halt_counter__0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(cuts_best0_carry__2_n_4),
        .I1(\cuts_best_reg[15]_0 [15]),
        .I2(cuts_best0_carry__2_n_5),
        .I3(\cuts_best_reg[15]_0 [14]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(cuts_best0_carry__2_n_6),
        .I1(\cuts_best_reg[15]_0 [13]),
        .I2(cuts_best0_carry__2_n_7),
        .I3(\cuts_best_reg[15]_0 [12]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(cuts_best0_carry__1_n_4),
        .I1(\cuts_best_reg[15]_0 [11]),
        .I2(cuts_best0_carry__1_n_5),
        .I3(\cuts_best_reg[15]_0 [10]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(cuts_best0_carry__1_n_6),
        .I1(\cuts_best_reg[15]_0 [9]),
        .I2(cuts_best0_carry__1_n_7),
        .I3(\cuts_best_reg[15]_0 [8]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\cuts_best_reg[15]_0 [15]),
        .I1(cuts_best0_carry__2_n_4),
        .I2(\cuts_best_reg[15]_0 [14]),
        .I3(cuts_best0_carry__2_n_5),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\cuts_best_reg[15]_0 [13]),
        .I1(cuts_best0_carry__2_n_6),
        .I2(\cuts_best_reg[15]_0 [12]),
        .I3(cuts_best0_carry__2_n_7),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\cuts_best_reg[15]_0 [11]),
        .I1(cuts_best0_carry__1_n_4),
        .I2(\cuts_best_reg[15]_0 [10]),
        .I3(cuts_best0_carry__1_n_5),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\cuts_best_reg[15]_0 [9]),
        .I1(cuts_best0_carry__1_n_6),
        .I2(\cuts_best_reg[15]_0 [8]),
        .I3(cuts_best0_carry__1_n_7),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(cuts_best0_carry__0_n_4),
        .I1(\cuts_best_reg[15]_0 [7]),
        .I2(cuts_best0_carry__0_n_5),
        .I3(\cuts_best_reg[15]_0 [6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(cuts_best0_carry__0_n_6),
        .I1(\cuts_best_reg[15]_0 [5]),
        .I2(cuts_best0_carry__0_n_7),
        .I3(\cuts_best_reg[15]_0 [4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(cuts_best0_carry_n_4),
        .I1(\cuts_best_reg[15]_0 [3]),
        .I2(cuts_best0_carry_n_5),
        .I3(\cuts_best_reg[15]_0 [2]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(cuts_best0_carry_n_6),
        .I1(\cuts_best_reg[15]_0 [1]),
        .I2(cuts_best0_carry_n_7),
        .I3(\cuts_best_reg[15]_0 [0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\cuts_best_reg[15]_0 [7]),
        .I1(cuts_best0_carry__0_n_4),
        .I2(\cuts_best_reg[15]_0 [6]),
        .I3(cuts_best0_carry__0_n_5),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\cuts_best_reg[15]_0 [5]),
        .I1(cuts_best0_carry__0_n_6),
        .I2(\cuts_best_reg[15]_0 [4]),
        .I3(cuts_best0_carry__0_n_7),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(\cuts_best_reg[15]_0 [3]),
        .I1(cuts_best0_carry_n_4),
        .I2(\cuts_best_reg[15]_0 [2]),
        .I3(cuts_best0_carry_n_5),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\cuts_best_reg[15]_0 [1]),
        .I1(cuts_best0_carry_n_6),
        .I2(\cuts_best_reg[15]_0 [0]),
        .I3(cuts_best0_carry_n_7),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    i__i_2
       (.I0(counter_reg[10]),
        .I1(counter_reg[7]),
        .I2(counter_reg[9]),
        .I3(counter_reg[1]),
        .I4(i__i_3_n_0),
        .I5(i__i_4_n_0),
        .O(\counter_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__i_3
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[5]),
        .O(i__i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__i_4
       (.I0(counter_reg[3]),
        .I1(counter_reg[11]),
        .I2(counter_reg[6]),
        .I3(counter_reg[8]),
        .O(i__i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [0]),
        .Q(membrane_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [10]),
        .Q(membrane_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [11]),
        .Q(membrane_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [12]),
        .Q(membrane_reg[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [13]),
        .Q(membrane_reg[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [14]),
        .Q(membrane_reg[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [15]),
        .Q(membrane_reg[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [1]),
        .Q(membrane_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [2]),
        .Q(membrane_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [3]),
        .Q(membrane_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [4]),
        .Q(membrane_reg[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [5]),
        .Q(membrane_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [6]),
        .Q(membrane_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [7]),
        .Q(membrane_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [8]),
        .Q(membrane_reg[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(flip_reg),
        .D(\membrane_reg_reg[15]_0 [9]),
        .Q(membrane_reg[9]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state_reg[2]_0 ));
endmodule

module temperature_module
   (ADDRBWRADDR,
    reset_flipping,
    E,
    Q,
    \x_reg[0]_0 ,
    clk_IBUF_BUFG);
  output [8:0]ADDRBWRADDR;
  output reset_flipping;
  output [0:0]E;
  input [2:0]Q;
  input \x_reg[0]_0 ;
  input clk_IBUF_BUFG;

  wire [8:0]ADDRBWRADDR;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire reset_flipping;
  wire \x[0]_i_1__0_n_0 ;
  wire \x[1]_i_1__0_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[6]_i_1__0_n_0 ;
  wire \x[7]_i_1__0_n_0 ;
  wire \x[8]_i_1__0_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[0]_0 ;
  wire x_reg_rep_i_22_n_0;
  wire x_reg_rep_i_23_n_0;

  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    i__i_1
       (.I0(\x_reg[0]_0 ),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[7]),
        .I3(x_reg[6]),
        .I4(x_reg[8]),
        .O(E));
  LUT3 #(
    .INIT(8'hC1)) 
    noise_times_temp_reg_reg_i_2__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(reset_flipping));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__0 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1__0 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[3]_i_1 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x[4]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[1]),
        .I3(x_reg[0]),
        .I4(x_reg[3]),
        .O(\x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x[5]_i_1 
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[2]),
        .I5(x_reg[4]),
        .O(\x[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[6]_i_1__0 
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_22_n_0),
        .O(\x[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x[7]_i_1__0 
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[6]),
        .O(\x[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[8]_i_1__0 
       (.I0(x_reg[8]),
        .I1(x_reg[6]),
        .I2(x_reg[7]),
        .I3(x_reg_rep_i_22_n_0),
        .O(\x[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[0]_i_1__0_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[1]_i_1__0_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[2]_i_1_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[3]_i_1_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[4]_i_1_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[5]_i_1_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[6]_i_1__0_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[7]_i_1__0_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[8]_i_1__0_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_11
       (.I0(x_reg_rep_i_22_n_0),
        .I1(x_reg[7]),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[8]));
  LUT6 #(
    .INIT(64'h0078787800787800)) 
    x_reg_rep_i_12
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[7]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(ADDRBWRADDR[7]));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_13
       (.I0(x_reg_rep_i_22_n_0),
        .I1(x_reg[6]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'h0078787800787800)) 
    x_reg_rep_i_14
       (.I0(x_reg[4]),
        .I1(x_reg_rep_i_23_n_0),
        .I2(x_reg[5]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    x_reg_rep_i_15
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .I5(reset_flipping),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_16
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'h006A6A6A006A6A00)) 
    x_reg_rep_i_17
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_18
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'h1514)) 
    x_reg_rep_i_19
       (.I0(x_reg[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    x_reg_rep_i_22
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(x_reg[5]),
        .I5(x_reg[4]),
        .O(x_reg_rep_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    x_reg_rep_i_23
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(x_reg_rep_i_23_n_0));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module temperature_module_6
   (B,
    x_reg_rep_0,
    reset_flipping,
    E,
    clk_IBUF_BUFG,
    x_reg_rep_1,
    x_reg_rep_2,
    ADDRBWRADDR,
    Q,
    \x_reg[0]_0 );
  output [17:0]B;
  output [17:0]x_reg_rep_0;
  output reset_flipping;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input x_reg_rep_1;
  input x_reg_rep_2;
  input [8:0]ADDRBWRADDR;
  input [2:0]Q;
  input \x_reg[0]_0 ;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire reset_flipping;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1__0_n_0 ;
  wire \x[3]_i_1__0_n_0 ;
  wire \x[4]_i_1__0_n_0 ;
  wire \x[5]_i_1__0_n_0 ;
  wire \x[6]_i_1_n_0 ;
  wire \x[7]_i_1_n_0 ;
  wire \x[8]_i_2_n_0 ;
  wire \x[8]_i_3_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[0]_0 ;
  wire [17:0]x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_i_10_n_0;
  wire x_reg_rep_i_20_n_0;
  wire x_reg_rep_i_21_n_0;
  wire x_reg_rep_i_2_n_0;
  wire x_reg_rep_i_3_n_0;
  wire x_reg_rep_i_4_n_0;
  wire x_reg_rep_i_5_n_0;
  wire x_reg_rep_i_6_n_0;
  wire x_reg_rep_i_7_n_0;
  wire x_reg_rep_i_8_n_0;
  wire x_reg_rep_i_9_n_0;

  LUT3 #(
    .INIT(8'hC1)) 
    noise_times_temp_reg_reg_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(reset_flipping));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1__0 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[3]_i_1__0 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(\x[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x[4]_i_1__0 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[1]),
        .I3(x_reg[0]),
        .I4(x_reg[3]),
        .O(\x[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x[5]_i_1__0 
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[2]),
        .I5(x_reg[4]),
        .O(\x[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[6]_i_1 
       (.I0(x_reg[6]),
        .I1(x_reg[4]),
        .I2(x_reg[5]),
        .I3(x_reg_rep_i_21_n_0),
        .O(\x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x[7]_i_1 
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[5]),
        .I3(x_reg[4]),
        .I4(x_reg[6]),
        .O(\x[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \x[8]_i_1 
       (.I0(\x_reg[0]_0 ),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .I4(x_reg[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x[8]_i_2 
       (.I0(x_reg[8]),
        .I1(x_reg[6]),
        .I2(x_reg[4]),
        .I3(x_reg[5]),
        .I4(x_reg_rep_i_21_n_0),
        .I5(x_reg[7]),
        .O(\x[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x[8]_i_3 
       (.I0(x_reg[5]),
        .I1(x_reg[4]),
        .I2(x_reg[0]),
        .I3(x_reg[7]),
        .I4(x_reg[1]),
        .I5(x_reg[2]),
        .O(\x[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[0]_i_1_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[1]_i_1_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[2]_i_1__0_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[3]_i_1__0_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[4]_i_1__0_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[5]_i_1__0_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[6]_i_1_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[7]_i_1_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[8]_i_2_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "neuron_ensemble/flipping_unit_tb/temperature_module_inst/x_reg_rep" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
       (.ADDRARDADDR({1'b0,x_reg_rep_i_2_n_0,x_reg_rep_i_3_n_0,x_reg_rep_i_4_n_0,x_reg_rep_i_5_n_0,x_reg_rep_i_6_n_0,x_reg_rep_i_7_n_0,x_reg_rep_i_8_n_0,x_reg_rep_i_9_n_0,x_reg_rep_i_10_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(B[15:0]),
        .DOBDO(x_reg_rep_0[15:0]),
        .DOPADOP(B[17:16]),
        .DOPBDOP(x_reg_rep_0[17:16]),
        .ENARDEN(x_reg_rep_1),
        .ENBWREN(x_reg_rep_2),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1514)) 
    x_reg_rep_i_10
       (.I0(x_reg[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(x_reg_rep_i_10_n_0));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_2
       (.I0(x_reg[7]),
        .I1(x_reg_rep_i_20_n_0),
        .I2(x_reg[6]),
        .I3(x_reg[8]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    x_reg_rep_i_20
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(x_reg[5]),
        .I5(x_reg[4]),
        .O(x_reg_rep_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    x_reg_rep_i_21
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(x_reg_rep_i_21_n_0));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    x_reg_rep_i_3
       (.I0(x_reg[6]),
        .I1(x_reg[4]),
        .I2(x_reg[5]),
        .I3(x_reg_rep_i_21_n_0),
        .I4(x_reg[7]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_3_n_0));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_4
       (.I0(x_reg_rep_i_21_n_0),
        .I1(x_reg[5]),
        .I2(x_reg[4]),
        .I3(x_reg[6]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_4_n_0));
  LUT6 #(
    .INIT(64'h0078787800787800)) 
    x_reg_rep_i_5
       (.I0(x_reg[4]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[5]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(x_reg_rep_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    x_reg_rep_i_6
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_6_n_0));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_7
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_7_n_0));
  LUT6 #(
    .INIT(64'h006A6A6A006A6A00)) 
    x_reg_rep_i_8
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(x_reg_rep_i_8_n_0));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_9
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(x_reg_rep_i_9_n_0));
endmodule

module transmit_buffer
   (add_mem_reg_reg_0,
    spike_reg_reg_0,
    E,
    \offset_reg_reg[2]_0 ,
    \membrane_reg_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    add_mem_input_reg_0,
    spike_input,
    CO,
    \state_reg[2]_0 ,
    write_ensemble_seed_IBUF,
    \idx_offset_input_reg[2]_0 ,
    \membrane_input_reg[15]_0 );
  output [0:0]add_mem_reg_reg_0;
  output [0:0]spike_reg_reg_0;
  output [0:0]E;
  output [2:0]\offset_reg_reg[2]_0 ;
  output [15:0]\membrane_reg_reg[15]_0 ;
  input [1:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]add_mem_input_reg_0;
  input spike_input;
  input [0:0]CO;
  input \state_reg[2]_0 ;
  input [0:0]write_ensemble_seed_IBUF;
  input [2:0]\idx_offset_input_reg[2]_0 ;
  input [15:0]\membrane_input_reg[15]_0 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire add_mem_input;
  wire [0:0]add_mem_input_reg_0;
  wire [0:0]add_mem_reg_reg_0;
  wire clk_IBUF_BUFG;
  wire [1:0]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [2:0]idx_offset_input;
  wire [2:0]\idx_offset_input_reg[2]_0 ;
  wire membrane_input;
  wire [15:0]\membrane_input_reg[15]_0 ;
  wire \membrane_input_reg_n_0_[0] ;
  wire \membrane_input_reg_n_0_[10] ;
  wire \membrane_input_reg_n_0_[11] ;
  wire \membrane_input_reg_n_0_[12] ;
  wire \membrane_input_reg_n_0_[13] ;
  wire \membrane_input_reg_n_0_[14] ;
  wire \membrane_input_reg_n_0_[15] ;
  wire \membrane_input_reg_n_0_[1] ;
  wire \membrane_input_reg_n_0_[2] ;
  wire \membrane_input_reg_n_0_[3] ;
  wire \membrane_input_reg_n_0_[4] ;
  wire \membrane_input_reg_n_0_[5] ;
  wire \membrane_input_reg_n_0_[6] ;
  wire \membrane_input_reg_n_0_[7] ;
  wire \membrane_input_reg_n_0_[8] ;
  wire \membrane_input_reg_n_0_[9] ;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire new_sample_i_1__0_n_0;
  wire \offset_reg[2]_i_1__0_n_0 ;
  wire [2:0]\offset_reg_reg[2]_0 ;
  wire spike_input;
  wire spike_input_i_1__0_n_0;
  wire spike_input_reg_n_0;
  wire spike_reg_i_1__0_n_0;
  wire [0:0]spike_reg_reg_0;
  wire [2:0]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[2]_0 ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    add_mem_input_reg
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(add_mem_input_reg_0),
        .Q(add_mem_input),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    add_mem_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(add_mem_input),
        .Q(add_mem_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEC11)) 
    \cnt[0]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cnt[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFDF10202)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt[0]),
        .R(spike_input));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(spike_input));
  LUT3 #(
    .INIT(8'h02)) 
    \idx_offset_input[2]_i_1__0 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(membrane_input));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [0]),
        .Q(idx_offset_input[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [1]),
        .Q(idx_offset_input[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [2]),
        .Q(idx_offset_input[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [0]),
        .Q(\membrane_input_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [10]),
        .Q(\membrane_input_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [11]),
        .Q(\membrane_input_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [12]),
        .Q(\membrane_input_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [13]),
        .Q(\membrane_input_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [14]),
        .Q(\membrane_input_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [15]),
        .Q(\membrane_input_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [1]),
        .Q(\membrane_input_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [2]),
        .Q(\membrane_input_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [3]),
        .Q(\membrane_input_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [4]),
        .Q(\membrane_input_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [5]),
        .Q(\membrane_input_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [6]),
        .Q(\membrane_input_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [7]),
        .Q(\membrane_input_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [8]),
        .Q(\membrane_input_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [9]),
        .Q(\membrane_input_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[0] ),
        .Q(\membrane_reg_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[10] ),
        .Q(\membrane_reg_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[11] ),
        .Q(\membrane_reg_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[12] ),
        .Q(\membrane_reg_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[13] ),
        .Q(\membrane_reg_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[14] ),
        .Q(\membrane_reg_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[15] ),
        .Q(\membrane_reg_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[1] ),
        .Q(\membrane_reg_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[2] ),
        .Q(\membrane_reg_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[3] ),
        .Q(\membrane_reg_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[4] ),
        .Q(\membrane_reg_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[5] ),
        .Q(\membrane_reg_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[6] ),
        .Q(\membrane_reg_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[7] ),
        .Q(\membrane_reg_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[8] ),
        .Q(\membrane_reg_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(\membrane_input_reg_n_0_[9] ),
        .Q(\membrane_reg_reg[15]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00500010)) 
    new_sample_i_1__0
       (.I0(storage_CE_advance),
        .I1(CO),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(Q[1]),
        .O(new_sample_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_sample_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(new_sample_i_1__0_n_0),
        .Q(storage_CE_advance),
        .R(Q[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \offset_reg[2]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\offset_reg[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(idx_offset_input[0]),
        .Q(\offset_reg_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(idx_offset_input[1]),
        .Q(\offset_reg_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1__0_n_0 ),
        .D(idx_offset_input[2]),
        .Q(\offset_reg_reg[2]_0 [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    spike_input_i_1__0
       (.I0(CO),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(spike_input_reg_n_0),
        .O(spike_input_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_input_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_input_i_1__0_n_0),
        .Q(spike_input_reg_n_0),
        .R(spike_input));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    spike_reg_i_1__0
       (.I0(spike_input_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(spike_reg_reg_0),
        .O(spike_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_reg_i_1__0_n_0),
        .Q(spike_reg_reg_0),
        .R(spike_input));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000010)) 
    \state[0]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(state[2]),
        .I5(Q[1]),
        .O(\state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0604)) 
    \state[1]_i_1__3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(CO),
        .I4(Q[1]),
        .O(\state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h2222000000000888)) 
    \state[2]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(state[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[5]_i_1__0 
       (.I0(storage_CE_advance),
        .I1(write_ensemble_seed_IBUF),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__3_n_0 ),
        .Q(state[1]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "transmit_buffer" *) 
module transmit_buffer_0
   (spike_reg_reg_0,
    \offset_reg_reg[2]_0 ,
    \offset_reg_reg[1]_0 ,
    \offset_reg_reg[0]_0 ,
    E,
    \membrane_reg_reg[15]_0 ,
    add_mem,
    Q,
    clk_IBUF_BUFG,
    add_mem_input_reg_0,
    spike_input,
    CO,
    \fired_index_reg_reg[2] ,
    flip_reg,
    reset_IBUF,
    \fired_index_reg_reg[2]_0 ,
    write_ensemble_seed_IBUF,
    \state_reg[2]_0 ,
    add_membrane_reg_reg,
    \membrane_reg_reg[15]_1 ,
    add_membrane_reg_reg_0,
    \idx_offset_input_reg[2]_0 ,
    \membrane_input_reg[15]_0 );
  output spike_reg_reg_0;
  output \offset_reg_reg[2]_0 ;
  output \offset_reg_reg[1]_0 ;
  output \offset_reg_reg[0]_0 ;
  output [0:0]E;
  output [15:0]\membrane_reg_reg[15]_0 ;
  output add_mem;
  input [1:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]add_mem_input_reg_0;
  input spike_input;
  input [0:0]CO;
  input [2:0]\fired_index_reg_reg[2] ;
  input flip_reg;
  input reset_IBUF;
  input [2:0]\fired_index_reg_reg[2]_0 ;
  input [0:0]write_ensemble_seed_IBUF;
  input \state_reg[2]_0 ;
  input [0:0]add_membrane_reg_reg;
  input [15:0]\membrane_reg_reg[15]_1 ;
  input [0:0]add_membrane_reg_reg_0;
  input [2:0]\idx_offset_input_reg[2]_0 ;
  input [15:0]\membrane_input_reg[15]_0 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire add_mem;
  wire add_mem_input;
  wire [0:0]add_mem_input_reg_0;
  wire [0:0]add_membrane_reg_reg;
  wire [0:0]add_membrane_reg_reg_0;
  wire [0:0]add_mems;
  wire [15:0]all_membranes;
  wire clk_IBUF_BUFG;
  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \fired_index_reg[2]_i_2_n_0 ;
  wire [2:0]\fired_index_reg_reg[2] ;
  wire [2:0]\fired_index_reg_reg[2]_0 ;
  wire flip_reg;
  wire [2:0]idx_offset_input;
  wire [2:0]\idx_offset_input_reg[2]_0 ;
  wire membrane_input;
  wire [15:0]\membrane_input_reg[15]_0 ;
  wire \membrane_input_reg_n_0_[0] ;
  wire \membrane_input_reg_n_0_[10] ;
  wire \membrane_input_reg_n_0_[11] ;
  wire \membrane_input_reg_n_0_[12] ;
  wire \membrane_input_reg_n_0_[13] ;
  wire \membrane_input_reg_n_0_[14] ;
  wire \membrane_input_reg_n_0_[15] ;
  wire \membrane_input_reg_n_0_[1] ;
  wire \membrane_input_reg_n_0_[2] ;
  wire \membrane_input_reg_n_0_[3] ;
  wire \membrane_input_reg_n_0_[4] ;
  wire \membrane_input_reg_n_0_[5] ;
  wire \membrane_input_reg_n_0_[6] ;
  wire \membrane_input_reg_n_0_[7] ;
  wire \membrane_input_reg_n_0_[8] ;
  wire \membrane_input_reg_n_0_[9] ;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire [15:0]\membrane_reg_reg[15]_1 ;
  wire new_sample_i_1_n_0;
  wire \offset_reg[2]_i_1_n_0 ;
  wire \offset_reg_reg[0]_0 ;
  wire \offset_reg_reg[1]_0 ;
  wire \offset_reg_reg[2]_0 ;
  wire [2:0]offsets;
  wire reset_IBUF;
  wire spike_input;
  wire spike_input_i_1_n_0;
  wire spike_input_reg_n_0;
  wire spike_reg_i_1_n_0;
  wire spike_reg_reg_0;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1__2_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state_reg[2]_0 ;
  wire storage_CE_advance;
  wire [0:0]write_ensemble_seed_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    add_mem_input_reg
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(add_mem_input_reg_0),
        .Q(add_mem_input),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    add_mem_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(add_mem_input),
        .Q(add_mems),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    add_membrane_reg_i_2
       (.I0(add_mems),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(add_membrane_reg_reg_0),
        .O(add_mem));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEC11)) 
    \cnt[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDF10202)) 
    \cnt[1]_i_2 
       (.I0(cnt[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(cnt[1]),
        .O(\cnt[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(spike_input));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[1]_i_2_n_0 ),
        .Q(cnt[1]),
        .R(spike_input));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \fired_index_reg[0]_i_1 
       (.I0(offsets[0]),
        .I1(\fired_index_reg[2]_i_2_n_0 ),
        .I2(\fired_index_reg_reg[2] [0]),
        .I3(flip_reg),
        .I4(reset_IBUF),
        .I5(\fired_index_reg_reg[2]_0 [0]),
        .O(\offset_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \fired_index_reg[1]_i_1 
       (.I0(offsets[1]),
        .I1(\fired_index_reg[2]_i_2_n_0 ),
        .I2(\fired_index_reg_reg[2] [1]),
        .I3(flip_reg),
        .I4(reset_IBUF),
        .I5(\fired_index_reg_reg[2]_0 [1]),
        .O(\offset_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \fired_index_reg[2]_i_1 
       (.I0(offsets[2]),
        .I1(\fired_index_reg[2]_i_2_n_0 ),
        .I2(\fired_index_reg_reg[2] [2]),
        .I3(flip_reg),
        .I4(reset_IBUF),
        .I5(\fired_index_reg_reg[2]_0 [2]),
        .O(\offset_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fired_index_reg[2]_i_2 
       (.I0(spike_reg_reg_0),
        .I1(add_membrane_reg_reg),
        .O(\fired_index_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \idx_offset_input[2]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(membrane_input));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [0]),
        .Q(idx_offset_input[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [1]),
        .Q(idx_offset_input[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_offset_input_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\idx_offset_input_reg[2]_0 [2]),
        .Q(idx_offset_input[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [0]),
        .Q(\membrane_input_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [10]),
        .Q(\membrane_input_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [11]),
        .Q(\membrane_input_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [12]),
        .Q(\membrane_input_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [13]),
        .Q(\membrane_input_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [14]),
        .Q(\membrane_input_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [15]),
        .Q(\membrane_input_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [1]),
        .Q(\membrane_input_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [2]),
        .Q(\membrane_input_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [3]),
        .Q(\membrane_input_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [4]),
        .Q(\membrane_input_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [5]),
        .Q(\membrane_input_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [6]),
        .Q(\membrane_input_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [7]),
        .Q(\membrane_input_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [8]),
        .Q(\membrane_input_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_input_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(membrane_input),
        .D(\membrane_input_reg[15]_0 [9]),
        .Q(\membrane_input_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[0]_i_1 
       (.I0(all_membranes[0]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [0]),
        .O(\membrane_reg_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[10]_i_1 
       (.I0(all_membranes[10]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [10]),
        .O(\membrane_reg_reg[15]_0 [10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[11]_i_1 
       (.I0(all_membranes[11]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [11]),
        .O(\membrane_reg_reg[15]_0 [11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[12]_i_1 
       (.I0(all_membranes[12]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [12]),
        .O(\membrane_reg_reg[15]_0 [12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[13]_i_1 
       (.I0(all_membranes[13]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [13]),
        .O(\membrane_reg_reg[15]_0 [13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[14]_i_1 
       (.I0(all_membranes[14]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [14]),
        .O(\membrane_reg_reg[15]_0 [14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[15]_i_1 
       (.I0(all_membranes[15]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [15]),
        .O(\membrane_reg_reg[15]_0 [15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[1]_i_1 
       (.I0(all_membranes[1]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [1]),
        .O(\membrane_reg_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[2]_i_1 
       (.I0(all_membranes[2]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [2]),
        .O(\membrane_reg_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[3]_i_1 
       (.I0(all_membranes[3]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [3]),
        .O(\membrane_reg_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[4]_i_1 
       (.I0(all_membranes[4]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [4]),
        .O(\membrane_reg_reg[15]_0 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[5]_i_1 
       (.I0(all_membranes[5]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [5]),
        .O(\membrane_reg_reg[15]_0 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[6]_i_1 
       (.I0(all_membranes[6]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [6]),
        .O(\membrane_reg_reg[15]_0 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[7]_i_1 
       (.I0(all_membranes[7]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [7]),
        .O(\membrane_reg_reg[15]_0 [7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[8]_i_1 
       (.I0(all_membranes[8]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [8]),
        .O(\membrane_reg_reg[15]_0 [8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \membrane_reg[9]_i_1 
       (.I0(all_membranes[9]),
        .I1(spike_reg_reg_0),
        .I2(add_membrane_reg_reg),
        .I3(\membrane_reg_reg[15]_1 [9]),
        .O(\membrane_reg_reg[15]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[0] ),
        .Q(all_membranes[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[10] ),
        .Q(all_membranes[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[11] ),
        .Q(all_membranes[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[12] ),
        .Q(all_membranes[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[13] ),
        .Q(all_membranes[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[14] ),
        .Q(all_membranes[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[15] ),
        .Q(all_membranes[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[1] ),
        .Q(all_membranes[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[2] ),
        .Q(all_membranes[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[3] ),
        .Q(all_membranes[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[4] ),
        .Q(all_membranes[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[5] ),
        .Q(all_membranes[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[6] ),
        .Q(all_membranes[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[7] ),
        .Q(all_membranes[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[8] ),
        .Q(all_membranes[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(\membrane_input_reg_n_0_[9] ),
        .Q(all_membranes[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00500010)) 
    new_sample_i_1
       (.I0(storage_CE_advance),
        .I1(CO),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(Q[1]),
        .O(new_sample_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_sample_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(new_sample_i_1_n_0),
        .Q(storage_CE_advance),
        .R(Q[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \offset_reg[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\offset_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(idx_offset_input[0]),
        .Q(offsets[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(idx_offset_input[1]),
        .Q(offsets[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\offset_reg[2]_i_1_n_0 ),
        .D(idx_offset_input[2]),
        .Q(offsets[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    spike_input_i_1
       (.I0(CO),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(spike_input_reg_n_0),
        .O(spike_input_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_input_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_input_i_1_n_0),
        .Q(spike_input_reg_n_0),
        .R(spike_input));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    spike_reg_i_1
       (.I0(spike_input_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(spike_reg_reg_0),
        .O(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spike_reg_i_1_n_0),
        .Q(spike_reg_reg_0),
        .R(spike_input));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000010)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(state[2]),
        .I5(Q[1]),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0604)) 
    \state[1]_i_1__2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(CO),
        .I4(Q[1]),
        .O(\state[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2222000000000888)) 
    \state[2]_i_1__0 
       (.I0(\state_reg[2]_0 ),
        .I1(state[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[5]_i_1 
       (.I0(storage_CE_advance),
        .I1(write_ensemble_seed_IBUF),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__2_n_0 ),
        .Q(state[1]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
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
