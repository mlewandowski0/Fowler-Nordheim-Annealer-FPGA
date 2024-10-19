// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Sat Oct 19 16:23:16 2024
// Host        : mlewan running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/hw_impl/hw_impl.sim/sim_1/synth/func/xsim/graph_n12_machine_postsynth_func_synth.v
// Design      : graph_n12_machine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire \state[3]_i_1__1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[3] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT3 #(
    .INIT(8'h35)) 
    \neuron_state_reg[1]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[0]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(\membrane_storage_reg[3]_0 [0]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [0]),
        .I5(\membrane_storage_reg[1]_2 [0]),
        .O(\membrane_storage_reg[2][15] [0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[10]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [10]),
        .I1(\membrane_storage_reg[3]_0 [10]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [10]),
        .I5(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[2][15] [10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[11]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [11]),
        .I1(\membrane_storage_reg[3]_0 [11]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [11]),
        .I5(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[2][15] [11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[12]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [12]),
        .I1(\membrane_storage_reg[3]_0 [12]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [12]),
        .I5(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[2][15] [12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[13]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [13]),
        .I1(\membrane_storage_reg[3]_0 [13]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [13]),
        .I5(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[2][15] [13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[14]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [14]),
        .I1(\membrane_storage_reg[3]_0 [14]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [14]),
        .I5(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[2][15] [14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[15]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [15]),
        .I5(\membrane_storage_reg[1]_2 [15]),
        .O(\membrane_storage_reg[2][15] [15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[1]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [1]),
        .I5(\membrane_storage_reg[1]_2 [1]),
        .O(\membrane_storage_reg[2][15] [1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[2]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [2]),
        .I1(\membrane_storage_reg[3]_0 [2]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [2]),
        .I5(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[2][15] [2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[3]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [3]),
        .I1(\membrane_storage_reg[3]_0 [3]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [3]),
        .I5(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[2][15] [3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[4]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [4]),
        .I1(\membrane_storage_reg[3]_0 [4]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [4]),
        .I5(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[2][15] [4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[5]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [5]),
        .I1(\membrane_storage_reg[3]_0 [5]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [5]),
        .I5(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[2][15] [5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[6]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [6]),
        .I1(\membrane_storage_reg[3]_0 [6]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [6]),
        .I5(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[2][15] [6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[7]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [7]),
        .I1(\membrane_storage_reg[3]_0 [7]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [7]),
        .I5(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[2][15] [7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[8]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [8]),
        .I1(\membrane_storage_reg[3]_0 [8]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [8]),
        .I5(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[2][15] [8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[9]_i_1__1 
       (.I0(\membrane_storage_reg[2]_1 [9]),
        .I1(\membrane_storage_reg[3]_0 [9]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [9]),
        .I5(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[2][15] [9]));
  LUT6 #(
    .INIT(64'hF0F099FFF0F09900)) 
    \state[1]_i_1__1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg[2]_0 ),
        .I2(ensemble_seed_IBUF[0]),
        .I3(\current_state_reg[2] ),
        .I4(write_ensemble_seed_IBUF),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[2]_i_1__1 
       (.I0(ensemble_seed_IBUF[1]),
        .I1(\state_reg[1]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg[2]_0 ),
        .O(\state[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[3]_i_1__1 
       (.I0(ensemble_seed_IBUF[2]),
        .I1(\state_reg[2]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(\state_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[3]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR_12
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[3] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT3 #(
    .INIT(8'h35)) 
    \neuron_state_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[0]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(\membrane_storage_reg[3]_0 [0]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [0]),
        .I5(\membrane_storage_reg[1]_2 [0]),
        .O(\membrane_storage_reg[2][15] [0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[10]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [10]),
        .I1(\membrane_storage_reg[3]_0 [10]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [10]),
        .I5(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[2][15] [10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[11]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [11]),
        .I1(\membrane_storage_reg[3]_0 [11]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [11]),
        .I5(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[2][15] [11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[12]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [12]),
        .I1(\membrane_storage_reg[3]_0 [12]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [12]),
        .I5(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[2][15] [12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[13]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [13]),
        .I1(\membrane_storage_reg[3]_0 [13]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [13]),
        .I5(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[2][15] [13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[14]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [14]),
        .I1(\membrane_storage_reg[3]_0 [14]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [14]),
        .I5(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[2][15] [14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[15]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [15]),
        .I5(\membrane_storage_reg[1]_2 [15]),
        .O(\membrane_storage_reg[2][15] [15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[1]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [1]),
        .I5(\membrane_storage_reg[1]_2 [1]),
        .O(\membrane_storage_reg[2][15] [1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[2]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [2]),
        .I1(\membrane_storage_reg[3]_0 [2]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [2]),
        .I5(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[2][15] [2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[3]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [3]),
        .I1(\membrane_storage_reg[3]_0 [3]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [3]),
        .I5(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[2][15] [3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[4]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [4]),
        .I1(\membrane_storage_reg[3]_0 [4]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [4]),
        .I5(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[2][15] [4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[5]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [5]),
        .I1(\membrane_storage_reg[3]_0 [5]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [5]),
        .I5(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[2][15] [5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[6]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [6]),
        .I1(\membrane_storage_reg[3]_0 [6]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [6]),
        .I5(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[2][15] [6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[7]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [7]),
        .I1(\membrane_storage_reg[3]_0 [7]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [7]),
        .I5(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[2][15] [7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[8]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [8]),
        .I1(\membrane_storage_reg[3]_0 [8]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [8]),
        .I5(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[2][15] [8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[9]_i_1 
       (.I0(\membrane_storage_reg[2]_1 [9]),
        .I1(\membrane_storage_reg[3]_0 [9]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [9]),
        .I5(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[2][15] [9]));
  LUT6 #(
    .INIT(64'hF0F099FFF0F09900)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg[2]_0 ),
        .I2(ensemble_seed_IBUF[0]),
        .I3(\current_state_reg[2] ),
        .I4(write_ensemble_seed_IBUF),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[2]_i_1 
       (.I0(ensemble_seed_IBUF[1]),
        .I1(\state_reg[1]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg[2]_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[3]_i_1 
       (.I0(ensemble_seed_IBUF[2]),
        .I1(\state_reg[2]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR_3
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[3] ;
  wire [0:0]write_ensemble_seed_IBUF;

  LUT3 #(
    .INIT(8'h35)) 
    \neuron_state_reg[1]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[0]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(\membrane_storage_reg[3]_0 [0]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [0]),
        .I5(\membrane_storage_reg[1]_2 [0]),
        .O(\membrane_storage_reg[2][15] [0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[10]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [10]),
        .I1(\membrane_storage_reg[3]_0 [10]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [10]),
        .I5(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[2][15] [10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[11]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [11]),
        .I1(\membrane_storage_reg[3]_0 [11]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [11]),
        .I5(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[2][15] [11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[12]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [12]),
        .I1(\membrane_storage_reg[3]_0 [12]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [12]),
        .I5(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[2][15] [12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[13]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [13]),
        .I1(\membrane_storage_reg[3]_0 [13]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [13]),
        .I5(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[2][15] [13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[14]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [14]),
        .I1(\membrane_storage_reg[3]_0 [14]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [14]),
        .I5(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[2][15] [14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[15]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [15]),
        .I5(\membrane_storage_reg[1]_2 [15]),
        .O(\membrane_storage_reg[2][15] [15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[1]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [1]),
        .I5(\membrane_storage_reg[1]_2 [1]),
        .O(\membrane_storage_reg[2][15] [1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[2]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [2]),
        .I1(\membrane_storage_reg[3]_0 [2]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [2]),
        .I5(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[2][15] [2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[3]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [3]),
        .I1(\membrane_storage_reg[3]_0 [3]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [3]),
        .I5(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[2][15] [3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[4]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [4]),
        .I1(\membrane_storage_reg[3]_0 [4]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [4]),
        .I5(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[2][15] [4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[5]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [5]),
        .I1(\membrane_storage_reg[3]_0 [5]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [5]),
        .I5(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[2][15] [5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[6]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [6]),
        .I1(\membrane_storage_reg[3]_0 [6]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [6]),
        .I5(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[2][15] [6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[7]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [7]),
        .I1(\membrane_storage_reg[3]_0 [7]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [7]),
        .I5(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[2][15] [7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[8]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [8]),
        .I1(\membrane_storage_reg[3]_0 [8]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [8]),
        .I5(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[2][15] [8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane_reg[9]_i_1__0 
       (.I0(\membrane_storage_reg[2]_1 [9]),
        .I1(\membrane_storage_reg[3]_0 [9]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\membrane_storage_reg[0]_3 [9]),
        .I5(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[2][15] [9]));
  LUT6 #(
    .INIT(64'hF0F099FFF0F09900)) 
    \state[1]_i_1__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg[2]_0 ),
        .I2(ensemble_seed_IBUF[0]),
        .I3(\current_state_reg[2] ),
        .I4(write_ensemble_seed_IBUF),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[2]_i_1__0 
       (.I0(ensemble_seed_IBUF[1]),
        .I1(\state_reg[1]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg[2]_0 ),
        .O(\state[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \state[3]_i_1__0 
       (.I0(ensemble_seed_IBUF[2]),
        .I1(\state_reg[2]_0 ),
        .I2(\current_state_reg[2] ),
        .I3(write_ensemble_seed_IBUF),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[3]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (out,
    \state_reg[2]_0 ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2]_0 ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire \state[3]_i_1__1_n_0 ;
  wire \state[4]_i_1__1_n_0 ;
  wire \state[5]_i_1__1_n_0 ;
  wire \state[6]_i_1__1_n_0 ;
  wire \state[6]_i_2__1_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire [0:0]write_flipping_seed_IBUF;

  LUT6 #(
    .INIT(64'h8E685103DAF75D63)) 
    g0_b0__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[0]));
  LUT6 #(
    .INIT(64'hFE00003F889E0FC3)) 
    g0_b10__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[10]));
  LUT6 #(
    .INIT(64'h0000003FF27E003E)) 
    g0_b11__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[11]));
  LUT6 #(
    .INIT(64'hFFFFFFC00201FFFE)) 
    g0_b12__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFE)) 
    g0_b13__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[13]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    g0_b14__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[14]));
  LUT5 #(
    .INIT(32'h00001FFF)) 
    g0_b15__1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[6] ),
        .O(\state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h14F713BD31FF363C)) 
    g0_b1__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hB3FAE7E7B9DA2F44)) 
    g0_b2__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h25FCAFE463F735F2)) 
    g0_b3__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[3]));
  LUT6 #(
    .INIT(64'h93559FCC7216A51D)) 
    g0_b4__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[4]));
  LUT6 #(
    .INIT(64'h25338036D04CDBC0)) 
    g0_b5__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[5]));
  LUT6 #(
    .INIT(64'h39A52A8741E2508D)) 
    g0_b6__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[6]));
  LUT6 #(
    .INIT(64'hC1C6332D691F6510)) 
    g0_b7__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[7]));
  LUT6 #(
    .INIT(64'h01F83C362FEAD348)) 
    g0_b8__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[8]));
  LUT6 #(
    .INIT(64'h01FFC03841A630C4)) 
    g0_b9__1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \state[1]_i_1__1 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(write_flipping_seed_IBUF),
        .I3(flipping_seed_IBUF[0]),
        .O(\state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__1 
       (.I0(flipping_seed_IBUF[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1__1 
       (.I0(flipping_seed_IBUF[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1__1 
       (.I0(flipping_seed_IBUF[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1__1 
       (.I0(flipping_seed_IBUF[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[5]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hAABE)) 
    \state[6]_i_1__1 
       (.I0(write_flipping_seed_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\state[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[6]_i_2__1 
       (.I0(flipping_seed_IBUF[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[6]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[3]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[4]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[5]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__1_n_0 ),
        .D(\state[6]_i_2__1_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0_16
   (out,
    \state_reg[2]_0 ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2]_0 ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[6]_i_2_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire [0:0]write_flipping_seed_IBUF;

  LUT6 #(
    .INIT(64'h8E685103DAF75D63)) 
    g0_b0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[0]));
  LUT6 #(
    .INIT(64'h14F713BD31FF363C)) 
    g0_b1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hFE00003F889E0FC3)) 
    g0_b10
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[10]));
  LUT6 #(
    .INIT(64'h0000003FF27E003E)) 
    g0_b11
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[11]));
  LUT6 #(
    .INIT(64'hFFFFFFC00201FFFE)) 
    g0_b12
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFE)) 
    g0_b13
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[13]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    g0_b14
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[14]));
  LUT5 #(
    .INIT(32'h00001FFF)) 
    g0_b15
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[6] ),
        .O(\state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB3FAE7E7B9DA2F44)) 
    g0_b2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h25FCAFE463F735F2)) 
    g0_b3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[3]));
  LUT6 #(
    .INIT(64'h93559FCC7216A51D)) 
    g0_b4
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[4]));
  LUT6 #(
    .INIT(64'h25338036D04CDBC0)) 
    g0_b5
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[5]));
  LUT6 #(
    .INIT(64'h39A52A8741E2508D)) 
    g0_b6
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[6]));
  LUT6 #(
    .INIT(64'hC1C6332D691F6510)) 
    g0_b7
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[7]));
  LUT6 #(
    .INIT(64'h01F83C362FEAD348)) 
    g0_b8
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[8]));
  LUT6 #(
    .INIT(64'h01FFC03841A630C4)) 
    g0_b9
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(write_flipping_seed_IBUF),
        .I3(flipping_seed_IBUF[0]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1 
       (.I0(flipping_seed_IBUF[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1 
       (.I0(flipping_seed_IBUF[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1 
       (.I0(flipping_seed_IBUF[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1 
       (.I0(flipping_seed_IBUF[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAABE)) 
    \state[6]_i_1 
       (.I0(write_flipping_seed_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[6]_i_2 
       (.I0(flipping_seed_IBUF[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1_n_0 ),
        .D(\state[6]_i_2_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0_7
   (out,
    \state_reg[2]_0 ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2]_0 ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[4]_i_1__0_n_0 ;
  wire \state[5]_i_1__0_n_0 ;
  wire \state[6]_i_1__0_n_0 ;
  wire \state[6]_i_2__0_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire [0:0]write_flipping_seed_IBUF;

  LUT6 #(
    .INIT(64'h8E685103DAF75D63)) 
    g0_b0__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[0]));
  LUT6 #(
    .INIT(64'hFE00003F889E0FC3)) 
    g0_b10__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[10]));
  LUT6 #(
    .INIT(64'h0000003FF27E003E)) 
    g0_b11__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[11]));
  LUT6 #(
    .INIT(64'hFFFFFFC00201FFFE)) 
    g0_b12__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFE)) 
    g0_b13__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[13]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    g0_b14__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[14]));
  LUT5 #(
    .INIT(32'h00001FFF)) 
    g0_b15__0
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[6] ),
        .O(\state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h14F713BD31FF363C)) 
    g0_b1__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hB3FAE7E7B9DA2F44)) 
    g0_b2__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h25FCAFE463F735F2)) 
    g0_b3__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[3]));
  LUT6 #(
    .INIT(64'h93559FCC7216A51D)) 
    g0_b4__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[4]));
  LUT6 #(
    .INIT(64'h25338036D04CDBC0)) 
    g0_b5__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[5]));
  LUT6 #(
    .INIT(64'h39A52A8741E2508D)) 
    g0_b6__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[6]));
  LUT6 #(
    .INIT(64'hC1C6332D691F6510)) 
    g0_b7__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[7]));
  LUT6 #(
    .INIT(64'h01F83C362FEAD348)) 
    g0_b8__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[8]));
  LUT6 #(
    .INIT(64'h01FFC03841A630C4)) 
    g0_b9__0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[6] ),
        .O(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \state[1]_i_1__0 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(write_flipping_seed_IBUF),
        .I3(flipping_seed_IBUF[0]),
        .O(\state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__0 
       (.I0(flipping_seed_IBUF[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1__0 
       (.I0(flipping_seed_IBUF[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1__0 
       (.I0(flipping_seed_IBUF[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1__0 
       (.I0(flipping_seed_IBUF[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hAABE)) 
    \state[6]_i_1__0 
       (.I0(write_flipping_seed_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\state[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[6]_i_2__0 
       (.I0(flipping_seed_IBUF[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[3]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[4]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[5]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[6]_i_1__0_n_0 ),
        .D(\state[6]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
endmodule

module LFSR_inout
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    ADDRC,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output [1:0]ADDRC;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [1:0]ADDRC;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR lfsr
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .\state_reg[1]_0 (ADDRC[0]),
        .\state_reg[2]_0 (ADDRC[1]),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout_11
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    ADDRC,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output [1:0]ADDRC;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [1:0]ADDRC;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR_12 lfsr
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .\state_reg[1]_0 (ADDRC[0]),
        .\state_reg[2]_0 (ADDRC[1]),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout_2
   (\current_state_reg[2] ,
    \membrane_storage_reg[2][15] ,
    ADDRC,
    Q,
    \membrane_storage_reg[2]_1 ,
    \membrane_storage_reg[3]_0 ,
    \membrane_storage_reg[0]_3 ,
    \membrane_storage_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[2] ;
  output [15:0]\membrane_storage_reg[2][15] ;
  output [1:0]ADDRC;
  input [2:0]Q;
  input [15:0]\membrane_storage_reg[2]_1 ;
  input [15:0]\membrane_storage_reg[3]_0 ;
  input [15:0]\membrane_storage_reg[0]_3 ;
  input [15:0]\membrane_storage_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [1:0]ADDRC;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [15:0]\membrane_storage_reg[2][15] ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire [0:0]write_ensemble_seed_IBUF;

  LFSR_3 lfsr
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15] ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .\state_reg[1]_0 (ADDRC[0]),
        .\state_reg[2]_0 (ADDRC[1]),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

module flipping_unit
   (E,
    S,
    DI,
    x_reg_rep,
    \selected_membrane_reg_reg[14] ,
    offset1,
    clk_IBUF_BUFG,
    x_reg_rep_0,
    decrease_temp,
    Q,
    spike_carry,
    spike_carry_0,
    spike_carry__0,
    membrane_compare__14,
    spike_carry_1,
    spike_carry_2,
    spike_carry_3,
    spike_carry__0_0,
    spike_carry__0_1,
    spikes,
    CO,
    spiked1__0,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF);
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep;
  output [3:0]\selected_membrane_reg_reg[14] ;
  output offset1;
  input clk_IBUF_BUFG;
  input x_reg_rep_0;
  input decrease_temp;
  input [2:0]Q;
  input spike_carry;
  input [0:0]spike_carry_0;
  input spike_carry__0;
  input [7:0]membrane_compare__14;
  input spike_carry_1;
  input spike_carry_2;
  input spike_carry_3;
  input spike_carry__0_0;
  input spike_carry__0_1;
  input [0:0]spikes;
  input [0:0]CO;
  input spiked1__0;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;

  wire [9:0]A;
  wire [9:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire flipping_CE;
  wire [5:0]flipping_seed_IBUF;
  wire [7:0]membrane_compare__14;
  wire mult_n_10;
  wire mult_n_11;
  wire mult_n_12;
  wire mult_n_13;
  wire mult_n_14;
  wire mult_n_15;
  wire mult_n_16;
  wire mult_n_17;
  wire mult_n_18;
  wire mult_n_19;
  wire mult_n_3;
  wire mult_n_4;
  wire mult_n_5;
  wire mult_n_6;
  wire mult_n_7;
  wire mult_n_8;
  wire mult_n_9;
  wire noise_generator_n_0;
  wire noise_generator_n_1;
  wire noise_generator_n_10;
  wire noise_generator_n_11;
  wire noise_generator_n_12;
  wire noise_generator_n_13;
  wire noise_generator_n_14;
  wire noise_generator_n_15;
  wire noise_generator_n_2;
  wire noise_generator_n_3;
  wire noise_generator_n_4;
  wire noise_generator_n_5;
  wire noise_generator_n_6;
  wire noise_generator_n_7;
  wire noise_generator_n_8;
  wire noise_generator_n_9;
  wire [15:10]noise_out_reg;
  wire offset1;
  wire [4:0]sel0;
  wire [3:0]\selected_membrane_reg_reg[14] ;
  wire spike_carry;
  wire [0:0]spike_carry_0;
  wire spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry__0;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry_i_155__1_n_0;
  wire spike_carry_i_163__1_n_0;
  wire spike_carry_i_164__1_n_0;
  wire spike_carry_i_176__1_n_0;
  wire spike_carry_i_177__1_n_0;
  wire spike_carry_i_97__1_n_0;
  wire spike_carry_i_98__1_n_0;
  wire spiked1__0;
  wire [0:0]spikes;
  wire temperature_module_inst_n_30;
  wire temperature_module_inst_n_31;
  wire temperature_module_inst_n_32;
  wire temperature_module_inst_n_33;
  wire temperature_module_inst_n_34;
  wire temperature_module_inst_n_35;
  wire temperature_module_inst_n_36;
  wire temperature_module_inst_n_37;
  wire temperature_module_inst_n_38;
  wire temperature_module_inst_n_39;
  wire [21:16]\u1/tmp__0 ;
  wire [0:0]write_flipping_seed_IBUF;
  wire [3:0]x_reg_rep;
  wire x_reg_rep_0;

  float16_mult mult
       (.A(A),
        .DOADO(B),
        .P({\u1/tmp__0 [21],\u1/tmp__0 [17:16]}),
        .sel0({sel0[4],sel0[0]}),
        .spike_carry__0_i_32__1(temperature_module_inst_n_33),
        .spike_carry__0_i_32__1_0(temperature_module_inst_n_32),
        .spike_carry_i_144__0(temperature_module_inst_n_38),
        .spike_carry_i_144__0_0(temperature_module_inst_n_39),
        .spike_carry_i_144__0_1(spike_carry_i_155__1_n_0),
        .spike_carry_i_30__1(temperature_module_inst_n_34),
        .spike_carry_i_30__1_0(temperature_module_inst_n_37),
        .spike_carry_i_55__1(temperature_module_inst_n_31),
        .spike_carry_i_55__1_0(temperature_module_inst_n_36),
        .spike_carry_i_55__1_1(temperature_module_inst_n_30),
        .spike_carry_i_83__1(temperature_module_inst_n_35),
        .tmp(mult_n_3),
        .tmp_0(mult_n_4),
        .tmp_1(mult_n_5),
        .tmp_10(mult_n_14),
        .tmp_11(mult_n_15),
        .tmp_12(mult_n_16),
        .tmp_13(mult_n_17),
        .tmp_14(mult_n_18),
        .tmp_15(mult_n_19),
        .tmp_2(mult_n_6),
        .tmp_3(mult_n_7),
        .tmp_4(mult_n_8),
        .tmp_5(mult_n_9),
        .tmp_6(mult_n_10),
        .tmp_7(mult_n_11),
        .tmp_8(mult_n_12),
        .tmp_9(mult_n_13));
  log_noise_generator noise_generator
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out({noise_generator_n_0,noise_generator_n_1,noise_generator_n_2,noise_generator_n_3,noise_generator_n_4,noise_generator_n_5,noise_generator_n_6,noise_generator_n_7,noise_generator_n_8,noise_generator_n_9,noise_generator_n_10,noise_generator_n_11,noise_generator_n_12,noise_generator_n_13,noise_generator_n_14}),
        .\state_reg[2] (noise_generator_n_15),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_14),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_4),
        .Q(noise_out_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_3),
        .Q(noise_out_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_2),
        .Q(noise_out_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_1),
        .Q(noise_out_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_0),
        .Q(noise_out_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_15),
        .Q(noise_out_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_13),
        .Q(A[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_12),
        .Q(A[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_11),
        .Q(A[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_10),
        .Q(A[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_9),
        .Q(A[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_8),
        .Q(A[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_7),
        .Q(A[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_6),
        .Q(A[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE),
        .D(noise_generator_n_5),
        .Q(A[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_155__1
       (.I0(spike_carry_i_164__1_n_0),
        .I1(spike_carry_i_176__1_n_0),
        .I2(spike_carry_i_163__1_n_0),
        .I3(spike_carry_i_177__1_n_0),
        .O(spike_carry_i_155__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_163__1
       (.I0(A[3]),
        .I1(A[2]),
        .I2(A[1]),
        .I3(A[0]),
        .O(spike_carry_i_163__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_164__1
       (.I0(noise_out_reg[11]),
        .I1(noise_out_reg[10]),
        .I2(A[9]),
        .I3(A[8]),
        .O(spike_carry_i_164__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_176__1
       (.I0(noise_out_reg[15]),
        .I1(noise_out_reg[14]),
        .I2(noise_out_reg[13]),
        .I3(noise_out_reg[12]),
        .O(spike_carry_i_176__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_177__1
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .O(spike_carry_i_177__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_97__1
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[6]),
        .I3(A[7]),
        .I4(spike_carry_i_163__1_n_0),
        .O(spike_carry_i_97__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_98__1
       (.I0(noise_out_reg[12]),
        .I1(noise_out_reg[13]),
        .I2(noise_out_reg[14]),
        .I3(noise_out_reg[15]),
        .I4(spike_carry_i_164__1_n_0),
        .O(spike_carry_i_98__1_n_0));
  temperature_module temperature_module_inst
       (.CO(CO),
        .DI(DI),
        .DOADO(B),
        .E(E),
        .P({\u1/tmp__0 [21],\u1/tmp__0 [17:16]}),
        .Q(Q),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .flipping_CE(flipping_CE),
        .membrane_compare__14(membrane_compare__14),
        .noise_out_reg(noise_out_reg),
        .\noise_out_reg_reg[10] (temperature_module_inst_n_30),
        .\noise_out_reg_reg[10]_0 (temperature_module_inst_n_32),
        .\noise_out_reg_reg[12] (temperature_module_inst_n_35),
        .\noise_out_reg_reg[14] ({sel0[4],sel0[0]}),
        .\noise_out_reg_reg[14]_0 (temperature_module_inst_n_33),
        .offset1(offset1),
        .\selected_membrane_reg_reg[14] (\selected_membrane_reg_reg[14] ),
        .spike_carry(spike_carry),
        .spike_carry_0(spike_carry_0),
        .spike_carry_1(spike_carry_1),
        .spike_carry_2(spike_carry_2),
        .spike_carry_3(spike_carry_3),
        .spike_carry__0(spike_carry__0),
        .spike_carry__0_0(spike_carry__0_0),
        .spike_carry__0_1(spike_carry__0_1),
        .spike_carry__0_i_12__1_0(mult_n_8),
        .spike_carry__0_i_9__1_0(mult_n_15),
        .spike_carry_i_121__1_0(spike_carry_i_97__1_n_0),
        .spike_carry_i_121__1_1(spike_carry_i_98__1_n_0),
        .spike_carry_i_13__1_0(mult_n_14),
        .spike_carry_i_21__1_0(mult_n_10),
        .spike_carry_i_21__1_1(mult_n_4),
        .spike_carry_i_24__1_0(mult_n_16),
        .spike_carry_i_24__1_1(mult_n_12),
        .spike_carry_i_45__1_0(mult_n_19),
        .spike_carry_i_51__1_0(mult_n_13),
        .spike_carry_i_51__1_1(mult_n_9),
        .spike_carry_i_51__1_2(mult_n_18),
        .spike_carry_i_52__1_0(mult_n_5),
        .spike_carry_i_64__1_0(mult_n_7),
        .spike_carry_i_64__1_1(mult_n_11),
        .spike_carry_i_64__1_2(mult_n_6),
        .spike_carry_i_64__1_3(mult_n_17),
        .spike_carry_i_9__1_0(mult_n_3),
        .spiked1__0(spiked1__0),
        .spikes(spikes),
        .tmp(temperature_module_inst_n_31),
        .tmp_0(temperature_module_inst_n_34),
        .tmp_1(temperature_module_inst_n_36),
        .tmp_2(temperature_module_inst_n_37),
        .x_reg_rep_0(x_reg_rep),
        .x_reg_rep_1(temperature_module_inst_n_38),
        .x_reg_rep_2(temperature_module_inst_n_39),
        .x_reg_rep_3(x_reg_rep_0));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module flipping_unit_0
   (P,
    E,
    \current_state_reg[1] ,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    noise_out_reg,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    \noise_out_reg_reg[4]_0 ,
    \noise_out_reg_reg[12]_0 ,
    ADDRBWRADDR,
    DOBDO,
    decrease_temp,
    Q,
    spike_carry_i_30__0,
    spike_carry_i_30__0_0,
    spike_carry_i_30__0_1,
    spike_carry_i_55__0,
    spike_carry_i_55__0_0,
    spike_carry_i_55__0_1,
    spike_carry_i_57__0,
    spike_carry__0_i_46__0,
    spike_carry_i_67__0,
    spike_carry_i_47__0,
    spike_carry_i_47__0_0,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    clk_IBUF_BUFG);
  output [2:0]P;
  output [0:0]E;
  output \current_state_reg[1] ;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output [5:0]noise_out_reg;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  output \noise_out_reg_reg[4]_0 ;
  output \noise_out_reg_reg[12]_0 ;
  output [6:0]ADDRBWRADDR;
  input [11:0]DOBDO;
  input decrease_temp;
  input [2:0]Q;
  input spike_carry_i_30__0;
  input [1:0]spike_carry_i_30__0_0;
  input spike_carry_i_30__0_1;
  input spike_carry_i_55__0;
  input spike_carry_i_55__0_0;
  input spike_carry_i_55__0_1;
  input spike_carry_i_57__0;
  input spike_carry__0_i_46__0;
  input spike_carry_i_67__0;
  input spike_carry_i_47__0;
  input spike_carry_i_47__0_0;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input clk_IBUF_BUFG;

  wire [9:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [2:0]P;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[1] ;
  wire decrease_temp;
  wire [5:0]flipping_seed_IBUF;
  wire noise_generator_n_0;
  wire noise_generator_n_1;
  wire noise_generator_n_10;
  wire noise_generator_n_11;
  wire noise_generator_n_12;
  wire noise_generator_n_13;
  wire noise_generator_n_14;
  wire noise_generator_n_15;
  wire noise_generator_n_2;
  wire noise_generator_n_3;
  wire noise_generator_n_4;
  wire noise_generator_n_5;
  wire noise_generator_n_6;
  wire noise_generator_n_7;
  wire noise_generator_n_8;
  wire noise_generator_n_9;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[12]_0 ;
  wire \noise_out_reg_reg[4]_0 ;
  wire spike_carry__0_i_46__0;
  wire spike_carry_i_155__0_n_0;
  wire spike_carry_i_163__0_n_0;
  wire spike_carry_i_164__0_n_0;
  wire spike_carry_i_176__0_n_0;
  wire spike_carry_i_177__0_n_0;
  wire spike_carry_i_30__0;
  wire [1:0]spike_carry_i_30__0_0;
  wire spike_carry_i_30__0_1;
  wire spike_carry_i_47__0;
  wire spike_carry_i_47__0_0;
  wire spike_carry_i_55__0;
  wire spike_carry_i_55__0_0;
  wire spike_carry_i_55__0_1;
  wire spike_carry_i_57__0;
  wire spike_carry_i_67__0;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [0:0]write_flipping_seed_IBUF;

  float16_mult_4 mult
       (.A(A),
        .DOBDO(DOBDO),
        .P(P),
        .noise_out_reg(noise_out_reg[1:0]),
        .spike_carry__0_i_46__0(spike_carry__0_i_46__0),
        .spike_carry__0_i_46__0_0(spike_carry_i_155__0_n_0),
        .spike_carry_i_30__0(spike_carry_i_30__0),
        .spike_carry_i_30__0_0(spike_carry_i_30__0_0),
        .spike_carry_i_30__0_1(spike_carry_i_30__0_1),
        .spike_carry_i_47__0(spike_carry_i_47__0),
        .spike_carry_i_47__0_0(spike_carry_i_47__0_0),
        .spike_carry_i_55__0(spike_carry_i_55__0),
        .spike_carry_i_55__0_0(spike_carry_i_55__0_0),
        .spike_carry_i_55__0_1(spike_carry_i_55__0_1),
        .spike_carry_i_57__0(spike_carry_i_57__0),
        .spike_carry_i_67__0(spike_carry_i_67__0),
        .tmp(tmp),
        .tmp_0(tmp_0),
        .tmp_1(tmp_1),
        .tmp_10(tmp_10),
        .tmp_11(tmp_11),
        .tmp_12(tmp_12),
        .tmp_13(tmp_13),
        .tmp_14(tmp_14),
        .tmp_15(tmp_15),
        .tmp_16(tmp_16),
        .tmp_2(tmp_2),
        .tmp_3(tmp_3),
        .tmp_4(tmp_4),
        .tmp_5(tmp_5),
        .tmp_6(tmp_6),
        .tmp_7(tmp_7),
        .tmp_8(tmp_8),
        .tmp_9(tmp_9));
  log_noise_generator_5 noise_generator
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out({noise_generator_n_0,noise_generator_n_1,noise_generator_n_2,noise_generator_n_3,noise_generator_n_4,noise_generator_n_5,noise_generator_n_6,noise_generator_n_7,noise_generator_n_8,noise_generator_n_9,noise_generator_n_10,noise_generator_n_11,noise_generator_n_12,noise_generator_n_13,noise_generator_n_14}),
        .\state_reg[2] (noise_generator_n_15),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_14),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_4),
        .Q(noise_out_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_3),
        .Q(noise_out_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_2),
        .Q(noise_out_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_1),
        .Q(noise_out_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_0),
        .Q(noise_out_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_15),
        .Q(noise_out_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_13),
        .Q(A[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_12),
        .Q(A[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_11),
        .Q(A[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_10),
        .Q(A[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_9),
        .Q(A[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_8),
        .Q(A[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_7),
        .Q(A[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_6),
        .Q(A[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\current_state_reg[1] ),
        .D(noise_generator_n_5),
        .Q(A[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_155__0
       (.I0(spike_carry_i_164__0_n_0),
        .I1(spike_carry_i_176__0_n_0),
        .I2(spike_carry_i_163__0_n_0),
        .I3(spike_carry_i_177__0_n_0),
        .O(spike_carry_i_155__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_163__0
       (.I0(A[3]),
        .I1(A[2]),
        .I2(A[1]),
        .I3(A[0]),
        .O(spike_carry_i_163__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_164__0
       (.I0(noise_out_reg[1]),
        .I1(noise_out_reg[0]),
        .I2(A[9]),
        .I3(A[8]),
        .O(spike_carry_i_164__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_176__0
       (.I0(noise_out_reg[5]),
        .I1(noise_out_reg[4]),
        .I2(noise_out_reg[3]),
        .I3(noise_out_reg[2]),
        .O(spike_carry_i_176__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_177__0
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .O(spike_carry_i_177__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_97__0
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[6]),
        .I3(A[7]),
        .I4(spike_carry_i_163__0_n_0),
        .O(\noise_out_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_98__0
       (.I0(noise_out_reg[2]),
        .I1(noise_out_reg[3]),
        .I2(noise_out_reg[4]),
        .I3(noise_out_reg[5]),
        .I4(spike_carry_i_164__0_n_0),
        .O(\noise_out_reg_reg[12]_0 ));
  temperature_module_6 temperature_module_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp));
  LUT3 #(
    .INIT(8'h06)) 
    x_reg_rep_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\current_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module flipping_unit_9
   (DOBDO,
    E,
    S,
    DI,
    x_reg_rep,
    \selected_membrane_reg_reg[14] ,
    \selected_membrane_reg_reg[7] ,
    \selected_membrane_reg_reg[6] ,
    x_reg_rep_0,
    \selected_membrane_reg_reg[14]_0 ,
    \noise_out_reg_reg[14]_0 ,
    x_reg_rep_1,
    \noise_out_reg_reg[10]_0 ,
    tmp,
    \noise_out_reg_reg[10]_1 ,
    \noise_out_reg_reg[14]_1 ,
    tmp_0,
    \noise_out_reg_reg[12]_0 ,
    tmp_1,
    tmp_2,
    x_reg_rep_2,
    x_reg_rep_3,
    D,
    \current_state_reg[1] ,
    spikes,
    clk_IBUF_BUFG,
    x_reg_rep_4,
    x_reg_rep_5,
    flipping_CE,
    ADDRBWRADDR,
    Q,
    decrease_temp,
    spike_carry,
    spike_carry_0,
    spike_carry__0,
    membrane_compare__14_0,
    spike_carry_1,
    spike_carry_2,
    spike_carry_3,
    spike_carry__0_0,
    spike_carry__0_1,
    spike_carry_4,
    spike_carry_5,
    spike_carry__0_2,
    membrane_compare__14,
    spike_carry__0_i_25__0,
    spike_carry__0_i_55__0,
    spike_carry_6,
    spike_carry_i_19__0,
    spike_carry_7,
    spike_carry_8,
    spike_carry_i_9__0,
    spike_carry_i_19__0_0,
    spike_carry__0_3,
    spike_carry__0_4,
    spike_carry_i_25__0,
    spike_carry_i_25__0_0,
    spike_carry_i_19__0_1,
    spike_carry__0_i_18__0,
    spike_carry__0_i_18__0_0,
    spike_carry__0_i_21__0,
    spike_carry__0_i_18__0_1,
    P,
    spike_carry_i_24__0,
    spike_carry__0_i_25__0_0,
    spike_carry__0_i_83__0,
    noise_out_reg,
    spike_carry_i_159__0,
    spike_carry_i_159__0_0,
    \FSM_onehot_current_state_reg[2] ,
    CO,
    \FSM_onehot_current_state_reg[2]_0 ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    spike_carry_i_21__0,
    spike_carry_i_21__0_0,
    spike_carry__0_i_12__0);
  output [11:0]DOBDO;
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep;
  output [3:0]\selected_membrane_reg_reg[14] ;
  output [3:0]\selected_membrane_reg_reg[7] ;
  output [3:0]\selected_membrane_reg_reg[6] ;
  output [3:0]x_reg_rep_0;
  output [3:0]\selected_membrane_reg_reg[14]_0 ;
  output \noise_out_reg_reg[14]_0 ;
  output x_reg_rep_1;
  output \noise_out_reg_reg[10]_0 ;
  output tmp;
  output \noise_out_reg_reg[10]_1 ;
  output \noise_out_reg_reg[14]_1 ;
  output tmp_0;
  output \noise_out_reg_reg[12]_0 ;
  output tmp_1;
  output tmp_2;
  output x_reg_rep_2;
  output x_reg_rep_3;
  output [0:0]D;
  output [0:0]\current_state_reg[1] ;
  output [0:0]spikes;
  input clk_IBUF_BUFG;
  input x_reg_rep_4;
  input x_reg_rep_5;
  input flipping_CE;
  input [6:0]ADDRBWRADDR;
  input [2:0]Q;
  input decrease_temp;
  input spike_carry;
  input [0:0]spike_carry_0;
  input spike_carry__0;
  input [7:0]membrane_compare__14_0;
  input spike_carry_1;
  input spike_carry_2;
  input spike_carry_3;
  input spike_carry__0_0;
  input spike_carry__0_1;
  input spike_carry_4;
  input [0:0]spike_carry_5;
  input spike_carry__0_2;
  input [7:0]membrane_compare__14;
  input spike_carry__0_i_25__0;
  input spike_carry__0_i_55__0;
  input spike_carry_6;
  input spike_carry_i_19__0;
  input spike_carry_7;
  input spike_carry_8;
  input spike_carry_i_9__0;
  input spike_carry_i_19__0_0;
  input spike_carry__0_3;
  input spike_carry__0_4;
  input spike_carry_i_25__0;
  input spike_carry_i_25__0_0;
  input spike_carry_i_19__0_1;
  input spike_carry__0_i_18__0;
  input spike_carry__0_i_18__0_0;
  input spike_carry__0_i_21__0;
  input spike_carry__0_i_18__0_1;
  input [2:0]P;
  input spike_carry_i_24__0;
  input spike_carry__0_i_25__0_0;
  input spike_carry__0_i_83__0;
  input [5:0]noise_out_reg;
  input spike_carry_i_159__0;
  input spike_carry_i_159__0_0;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input [0:0]CO;
  input \FSM_onehot_current_state_reg[2]_0 ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input spike_carry_i_21__0;
  input spike_carry_i_21__0_0;
  input spike_carry__0_i_12__0;

  wire [9:0]A;
  wire [6:0]ADDRBWRADDR;
  wire [9:0]B;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [2:0]P;
  wire [2:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [0:0]\current_state_reg[1] ;
  wire decrease_temp;
  wire flipping_CE;
  wire flipping_CE_4;
  wire [5:0]flipping_seed_IBUF;
  wire [7:0]membrane_compare__14;
  wire [7:0]membrane_compare__14_0;
  wire mult_n_10;
  wire mult_n_11;
  wire mult_n_12;
  wire mult_n_13;
  wire mult_n_14;
  wire mult_n_15;
  wire mult_n_16;
  wire mult_n_17;
  wire mult_n_18;
  wire mult_n_19;
  wire mult_n_3;
  wire mult_n_4;
  wire mult_n_5;
  wire mult_n_6;
  wire mult_n_7;
  wire mult_n_8;
  wire mult_n_9;
  wire noise_generator_n_0;
  wire noise_generator_n_1;
  wire noise_generator_n_10;
  wire noise_generator_n_11;
  wire noise_generator_n_12;
  wire noise_generator_n_13;
  wire noise_generator_n_14;
  wire noise_generator_n_15;
  wire noise_generator_n_2;
  wire noise_generator_n_3;
  wire noise_generator_n_4;
  wire noise_generator_n_5;
  wire noise_generator_n_6;
  wire noise_generator_n_7;
  wire noise_generator_n_8;
  wire noise_generator_n_9;
  wire [5:0]noise_out_reg;
  wire [15:10]noise_out_reg_0;
  wire \noise_out_reg_reg[10]_0 ;
  wire \noise_out_reg_reg[10]_1 ;
  wire \noise_out_reg_reg[12]_0 ;
  wire \noise_out_reg_reg[14]_0 ;
  wire \noise_out_reg_reg[14]_1 ;
  wire [4:0]sel0;
  wire [3:0]\selected_membrane_reg_reg[14] ;
  wire [3:0]\selected_membrane_reg_reg[14]_0 ;
  wire [3:0]\selected_membrane_reg_reg[6] ;
  wire [3:0]\selected_membrane_reg_reg[7] ;
  wire spike_carry;
  wire [0:0]spike_carry_0;
  wire spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry_4;
  wire [0:0]spike_carry_5;
  wire spike_carry_6;
  wire spike_carry_7;
  wire spike_carry_8;
  wire spike_carry__0;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_2;
  wire spike_carry__0_3;
  wire spike_carry__0_4;
  wire spike_carry__0_i_12__0;
  wire spike_carry__0_i_18__0;
  wire spike_carry__0_i_18__0_0;
  wire spike_carry__0_i_18__0_1;
  wire spike_carry__0_i_21__0;
  wire spike_carry__0_i_25__0;
  wire spike_carry__0_i_25__0_0;
  wire spike_carry__0_i_55__0;
  wire spike_carry__0_i_83__0;
  wire spike_carry_i_155_n_0;
  wire spike_carry_i_159__0;
  wire spike_carry_i_159__0_0;
  wire spike_carry_i_163_n_0;
  wire spike_carry_i_164_n_0;
  wire spike_carry_i_176_n_0;
  wire spike_carry_i_177_n_0;
  wire spike_carry_i_19__0;
  wire spike_carry_i_19__0_0;
  wire spike_carry_i_19__0_1;
  wire spike_carry_i_21__0;
  wire spike_carry_i_21__0_0;
  wire spike_carry_i_24__0;
  wire spike_carry_i_25__0;
  wire spike_carry_i_25__0_0;
  wire spike_carry_i_97_n_0;
  wire spike_carry_i_98_n_0;
  wire spike_carry_i_9__0;
  wire [0:0]spikes;
  wire temperature_module_inst_n_42;
  wire temperature_module_inst_n_43;
  wire temperature_module_inst_n_44;
  wire temperature_module_inst_n_45;
  wire temperature_module_inst_n_46;
  wire temperature_module_inst_n_47;
  wire temperature_module_inst_n_48;
  wire temperature_module_inst_n_49;
  wire temperature_module_inst_n_50;
  wire temperature_module_inst_n_51;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_2;
  wire [21:16]\u1/tmp__0 ;
  wire [0:0]write_flipping_seed_IBUF;
  wire [3:0]x_reg_rep;
  wire [3:0]x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_3;
  wire x_reg_rep_4;
  wire x_reg_rep_5;

  float16_mult_13 mult
       (.A(A),
        .DOADO(B),
        .P({\u1/tmp__0 [21],\u1/tmp__0 [17:16]}),
        .sel0({sel0[4],sel0[0]}),
        .spike_carry__0_i_32(temperature_module_inst_n_45),
        .spike_carry__0_i_32_0(temperature_module_inst_n_44),
        .spike_carry_i_144(temperature_module_inst_n_50),
        .spike_carry_i_144_0(temperature_module_inst_n_51),
        .spike_carry_i_144_1(spike_carry_i_155_n_0),
        .spike_carry_i_30(temperature_module_inst_n_46),
        .spike_carry_i_30_0(temperature_module_inst_n_49),
        .spike_carry_i_55(temperature_module_inst_n_43),
        .spike_carry_i_55_0(temperature_module_inst_n_48),
        .spike_carry_i_55_1(temperature_module_inst_n_42),
        .spike_carry_i_83(temperature_module_inst_n_47),
        .tmp(mult_n_3),
        .tmp_0(mult_n_4),
        .tmp_1(mult_n_5),
        .tmp_10(mult_n_14),
        .tmp_11(mult_n_15),
        .tmp_12(mult_n_16),
        .tmp_13(mult_n_17),
        .tmp_14(mult_n_18),
        .tmp_15(mult_n_19),
        .tmp_2(mult_n_6),
        .tmp_3(mult_n_7),
        .tmp_4(mult_n_8),
        .tmp_5(mult_n_9),
        .tmp_6(mult_n_10),
        .tmp_7(mult_n_11),
        .tmp_8(mult_n_12),
        .tmp_9(mult_n_13));
  log_noise_generator_14 noise_generator
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out({noise_generator_n_0,noise_generator_n_1,noise_generator_n_2,noise_generator_n_3,noise_generator_n_4,noise_generator_n_5,noise_generator_n_6,noise_generator_n_7,noise_generator_n_8,noise_generator_n_9,noise_generator_n_10,noise_generator_n_11,noise_generator_n_12,noise_generator_n_13,noise_generator_n_14}),
        .\state_reg[2] (noise_generator_n_15),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_14),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_4),
        .Q(noise_out_reg_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_3),
        .Q(noise_out_reg_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_2),
        .Q(noise_out_reg_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_1),
        .Q(noise_out_reg_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_0),
        .Q(noise_out_reg_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_15),
        .Q(noise_out_reg_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_13),
        .Q(A[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_12),
        .Q(A[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_11),
        .Q(A[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_10),
        .Q(A[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_9),
        .Q(A[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_8),
        .Q(A[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_7),
        .Q(A[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_6),
        .Q(A[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \noise_out_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(flipping_CE_4),
        .D(noise_generator_n_5),
        .Q(A[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_155
       (.I0(spike_carry_i_164_n_0),
        .I1(spike_carry_i_176_n_0),
        .I2(spike_carry_i_163_n_0),
        .I3(spike_carry_i_177_n_0),
        .O(spike_carry_i_155_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_163
       (.I0(A[3]),
        .I1(A[2]),
        .I2(A[1]),
        .I3(A[0]),
        .O(spike_carry_i_163_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_164
       (.I0(noise_out_reg_0[11]),
        .I1(noise_out_reg_0[10]),
        .I2(A[9]),
        .I3(A[8]),
        .O(spike_carry_i_164_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_176
       (.I0(noise_out_reg_0[15]),
        .I1(noise_out_reg_0[14]),
        .I2(noise_out_reg_0[13]),
        .I3(noise_out_reg_0[12]),
        .O(spike_carry_i_176_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike_carry_i_177
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .O(spike_carry_i_177_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_97
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[6]),
        .I3(A[7]),
        .I4(spike_carry_i_163_n_0),
        .O(spike_carry_i_97_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spike_carry_i_98
       (.I0(noise_out_reg_0[12]),
        .I1(noise_out_reg_0[13]),
        .I2(noise_out_reg_0[14]),
        .I3(noise_out_reg_0[15]),
        .I4(spike_carry_i_164_n_0),
        .O(spike_carry_i_98_n_0));
  temperature_module_15 temperature_module_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(CO),
        .D(D),
        .DI(DI),
        .DOADO(B),
        .DOBDO(DOBDO),
        .E(E),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[2] ),
        .\FSM_onehot_current_state_reg[2]_0 (\FSM_onehot_current_state_reg[2]_0 ),
        .P({\u1/tmp__0 [21],\u1/tmp__0 [17:16]}),
        .Q(Q),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .decrease_temp(decrease_temp),
        .flipping_CE(flipping_CE),
        .flipping_CE_4(flipping_CE_4),
        .membrane_compare__14(membrane_compare__14),
        .membrane_compare__14_0(membrane_compare__14_0),
        .noise_out_reg(noise_out_reg),
        .noise_out_reg_0(noise_out_reg_0),
        .\noise_out_reg_reg[10] (temperature_module_inst_n_42),
        .\noise_out_reg_reg[10]_0 (temperature_module_inst_n_44),
        .\noise_out_reg_reg[10]_1 (\noise_out_reg_reg[10]_0 ),
        .\noise_out_reg_reg[10]_2 (\noise_out_reg_reg[10]_1 ),
        .\noise_out_reg_reg[12] (temperature_module_inst_n_47),
        .\noise_out_reg_reg[12]_0 (\noise_out_reg_reg[12]_0 ),
        .\noise_out_reg_reg[14] ({sel0[4],sel0[0]}),
        .\noise_out_reg_reg[14]_0 (temperature_module_inst_n_45),
        .\noise_out_reg_reg[14]_1 (\noise_out_reg_reg[14]_0 ),
        .\noise_out_reg_reg[14]_2 (\noise_out_reg_reg[14]_1 ),
        .\selected_membrane_reg_reg[14] (\selected_membrane_reg_reg[14] ),
        .\selected_membrane_reg_reg[14]_0 (\selected_membrane_reg_reg[14]_0 ),
        .\selected_membrane_reg_reg[6] (\selected_membrane_reg_reg[6] ),
        .\selected_membrane_reg_reg[7] (\selected_membrane_reg_reg[7] ),
        .spike_carry(spike_carry),
        .spike_carry_0(spike_carry_0),
        .spike_carry_1(spike_carry_1),
        .spike_carry_2(spike_carry_2),
        .spike_carry_3(spike_carry_3),
        .spike_carry_4(spike_carry_4),
        .spike_carry_5(spike_carry_5),
        .spike_carry_6(spike_carry_6),
        .spike_carry_7(spike_carry_7),
        .spike_carry_8(spike_carry_8),
        .spike_carry__0(spike_carry__0),
        .spike_carry__0_0(spike_carry__0_0),
        .spike_carry__0_1(spike_carry__0_1),
        .spike_carry__0_2(spike_carry__0_2),
        .spike_carry__0_3(spike_carry__0_3),
        .spike_carry__0_4(spike_carry__0_4),
        .spike_carry__0_i_12_0(mult_n_8),
        .spike_carry__0_i_12__0_0(spike_carry__0_i_12__0),
        .spike_carry__0_i_18__0_0(spike_carry__0_i_18__0),
        .spike_carry__0_i_18__0_1(spike_carry__0_i_18__0_0),
        .spike_carry__0_i_18__0_2(spike_carry__0_i_18__0_1),
        .spike_carry__0_i_21__0_0(spike_carry__0_i_21__0),
        .spike_carry__0_i_25__0_0(spike_carry__0_i_25__0),
        .spike_carry__0_i_25__0_1(spike_carry__0_i_25__0_0),
        .spike_carry__0_i_55__0_0(spike_carry__0_i_55__0),
        .spike_carry__0_i_83__0_0(spike_carry__0_i_83__0),
        .spike_carry__0_i_9_0(mult_n_15),
        .spike_carry_i_121_0(spike_carry_i_97_n_0),
        .spike_carry_i_121_1(spike_carry_i_98_n_0),
        .spike_carry_i_13_0(mult_n_14),
        .spike_carry_i_159__0_0(spike_carry_i_159__0),
        .spike_carry_i_159__0_1(spike_carry_i_159__0_0),
        .spike_carry_i_19__0_0(spike_carry_i_19__0),
        .spike_carry_i_19__0_1(spike_carry_i_19__0_0),
        .spike_carry_i_19__0_2(spike_carry_i_19__0_1),
        .spike_carry_i_21_0(mult_n_10),
        .spike_carry_i_21_1(mult_n_4),
        .spike_carry_i_21__0_0(spike_carry_i_21__0),
        .spike_carry_i_21__0_1(spike_carry_i_21__0_0),
        .spike_carry_i_24_0(mult_n_16),
        .spike_carry_i_24_1(mult_n_12),
        .spike_carry_i_24__0_0(spike_carry_i_24__0),
        .spike_carry_i_25__0_0(spike_carry_i_25__0),
        .spike_carry_i_25__0_1(spike_carry_i_25__0_0),
        .spike_carry_i_45_0(mult_n_19),
        .spike_carry_i_51_0(mult_n_13),
        .spike_carry_i_51_1(mult_n_9),
        .spike_carry_i_51_2(mult_n_18),
        .spike_carry_i_52_0(mult_n_5),
        .spike_carry_i_64_0(mult_n_7),
        .spike_carry_i_64_1(mult_n_11),
        .spike_carry_i_64_2(mult_n_6),
        .spike_carry_i_64_3(mult_n_17),
        .spike_carry_i_83__0(P),
        .spike_carry_i_9_0(mult_n_3),
        .spike_carry_i_9__0_0(spike_carry_i_9__0),
        .spikes(spikes),
        .tmp(temperature_module_inst_n_43),
        .tmp_0(temperature_module_inst_n_46),
        .tmp_1(temperature_module_inst_n_48),
        .tmp_2(temperature_module_inst_n_49),
        .tmp_3(tmp),
        .tmp_4(tmp_0),
        .tmp_5(tmp_1),
        .tmp_6(tmp_2),
        .x_reg_rep_0(x_reg_rep),
        .x_reg_rep_1(temperature_module_inst_n_50),
        .x_reg_rep_2(temperature_module_inst_n_51),
        .x_reg_rep_3(x_reg_rep_0),
        .x_reg_rep_4(x_reg_rep_1),
        .x_reg_rep_5(x_reg_rep_2),
        .x_reg_rep_6(x_reg_rep_3),
        .x_reg_rep_7(x_reg_rep_4),
        .x_reg_rep_8(x_reg_rep_5));
endmodule

module float16_mult
   (P,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    DOADO,
    A,
    spike_carry_i_30__1,
    sel0,
    spike_carry_i_30__1_0,
    spike_carry_i_55__1,
    spike_carry_i_55__1_0,
    spike_carry_i_55__1_1,
    spike_carry__0_i_32__1,
    spike_carry__0_i_32__1_0,
    spike_carry_i_83__1,
    spike_carry_i_144__0,
    spike_carry_i_144__0_0,
    spike_carry_i_144__0_1);
  output [2:0]P;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  input [9:0]DOADO;
  input [9:0]A;
  input spike_carry_i_30__1;
  input [1:0]sel0;
  input spike_carry_i_30__1_0;
  input spike_carry_i_55__1;
  input spike_carry_i_55__1_0;
  input spike_carry_i_55__1_1;
  input spike_carry__0_i_32__1;
  input spike_carry__0_i_32__1_0;
  input spike_carry_i_83__1;
  input spike_carry_i_144__0;
  input spike_carry_i_144__0_0;
  input spike_carry_i_144__0_1;

  wire [9:0]A;
  wire [9:0]DOADO;
  wire [2:0]P;
  wire [1:0]sel0;
  wire spike_carry__0_i_32__1;
  wire spike_carry__0_i_32__1_0;
  wire spike_carry_i_144__0;
  wire spike_carry_i_144__0_0;
  wire spike_carry_i_144__0_1;
  wire spike_carry_i_30__1;
  wire spike_carry_i_30__1_0;
  wire spike_carry_i_55__1;
  wire spike_carry_i_55__1_0;
  wire spike_carry_i_55__1_1;
  wire spike_carry_i_83__1;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;

  mulBITSxBITS u1
       (.A(A),
        .DOADO(DOADO),
        .P(P),
        .sel0(sel0),
        .spike_carry__0_i_32__1(spike_carry__0_i_32__1),
        .spike_carry__0_i_32__1_0(spike_carry__0_i_32__1_0),
        .spike_carry_i_144__0(spike_carry_i_144__0),
        .spike_carry_i_144__0_0(spike_carry_i_144__0_0),
        .spike_carry_i_144__0_1(spike_carry_i_144__0_1),
        .spike_carry_i_30__1(spike_carry_i_30__1),
        .spike_carry_i_30__1_0(spike_carry_i_30__1_0),
        .spike_carry_i_55__1(spike_carry_i_55__1),
        .spike_carry_i_55__1_0(spike_carry_i_55__1_0),
        .spike_carry_i_55__1_1(spike_carry_i_55__1_1),
        .spike_carry_i_83__1_0(spike_carry_i_83__1),
        .tmp_0(tmp),
        .tmp_1(tmp_0),
        .tmp_10(tmp_9),
        .tmp_11(tmp_10),
        .tmp_12(tmp_11),
        .tmp_13(tmp_12),
        .tmp_14(tmp_13),
        .tmp_15(tmp_14),
        .tmp_16(tmp_15),
        .tmp_2(tmp_1),
        .tmp_3(tmp_2),
        .tmp_4(tmp_3),
        .tmp_5(tmp_4),
        .tmp_6(tmp_5),
        .tmp_7(tmp_6),
        .tmp_8(tmp_7),
        .tmp_9(tmp_8));
endmodule

(* ORIG_REF_NAME = "float16_mult" *) 
module float16_mult_13
   (P,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    DOADO,
    A,
    spike_carry_i_30,
    sel0,
    spike_carry_i_30_0,
    spike_carry_i_55,
    spike_carry_i_55_0,
    spike_carry_i_55_1,
    spike_carry__0_i_32,
    spike_carry__0_i_32_0,
    spike_carry_i_83,
    spike_carry_i_144,
    spike_carry_i_144_0,
    spike_carry_i_144_1);
  output [2:0]P;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  input [9:0]DOADO;
  input [9:0]A;
  input spike_carry_i_30;
  input [1:0]sel0;
  input spike_carry_i_30_0;
  input spike_carry_i_55;
  input spike_carry_i_55_0;
  input spike_carry_i_55_1;
  input spike_carry__0_i_32;
  input spike_carry__0_i_32_0;
  input spike_carry_i_83;
  input spike_carry_i_144;
  input spike_carry_i_144_0;
  input spike_carry_i_144_1;

  wire [9:0]A;
  wire [9:0]DOADO;
  wire [2:0]P;
  wire [1:0]sel0;
  wire spike_carry__0_i_32;
  wire spike_carry__0_i_32_0;
  wire spike_carry_i_144;
  wire spike_carry_i_144_0;
  wire spike_carry_i_144_1;
  wire spike_carry_i_30;
  wire spike_carry_i_30_0;
  wire spike_carry_i_55;
  wire spike_carry_i_55_0;
  wire spike_carry_i_55_1;
  wire spike_carry_i_83;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;

  mulBITSxBITS_17 u1
       (.A(A),
        .DOADO(DOADO),
        .P(P),
        .sel0(sel0),
        .spike_carry__0_i_32(spike_carry__0_i_32),
        .spike_carry__0_i_32_0(spike_carry__0_i_32_0),
        .spike_carry_i_144(spike_carry_i_144),
        .spike_carry_i_144_0(spike_carry_i_144_0),
        .spike_carry_i_144_1(spike_carry_i_144_1),
        .spike_carry_i_30(spike_carry_i_30),
        .spike_carry_i_30_0(spike_carry_i_30_0),
        .spike_carry_i_55(spike_carry_i_55),
        .spike_carry_i_55_0(spike_carry_i_55_0),
        .spike_carry_i_55_1(spike_carry_i_55_1),
        .spike_carry_i_83_0(spike_carry_i_83),
        .tmp_0(tmp),
        .tmp_1(tmp_0),
        .tmp_10(tmp_9),
        .tmp_11(tmp_10),
        .tmp_12(tmp_11),
        .tmp_13(tmp_12),
        .tmp_14(tmp_13),
        .tmp_15(tmp_14),
        .tmp_16(tmp_15),
        .tmp_2(tmp_1),
        .tmp_3(tmp_2),
        .tmp_4(tmp_3),
        .tmp_5(tmp_4),
        .tmp_6(tmp_5),
        .tmp_7(tmp_6),
        .tmp_8(tmp_7),
        .tmp_9(tmp_8));
endmodule

(* ORIG_REF_NAME = "float16_mult" *) 
module float16_mult_4
   (P,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    DOBDO,
    A,
    spike_carry_i_30__0,
    spike_carry_i_30__0_0,
    spike_carry_i_30__0_1,
    spike_carry_i_55__0,
    spike_carry_i_55__0_0,
    spike_carry_i_55__0_1,
    spike_carry_i_57__0,
    spike_carry__0_i_46__0,
    noise_out_reg,
    spike_carry_i_67__0,
    spike_carry_i_47__0,
    spike_carry_i_47__0_0,
    spike_carry__0_i_46__0_0);
  output [2:0]P;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  input [11:0]DOBDO;
  input [9:0]A;
  input spike_carry_i_30__0;
  input [1:0]spike_carry_i_30__0_0;
  input spike_carry_i_30__0_1;
  input spike_carry_i_55__0;
  input spike_carry_i_55__0_0;
  input spike_carry_i_55__0_1;
  input spike_carry_i_57__0;
  input spike_carry__0_i_46__0;
  input [1:0]noise_out_reg;
  input spike_carry_i_67__0;
  input spike_carry_i_47__0;
  input spike_carry_i_47__0_0;
  input spike_carry__0_i_46__0_0;

  wire [9:0]A;
  wire [11:0]DOBDO;
  wire [2:0]P;
  wire [1:0]noise_out_reg;
  wire spike_carry__0_i_46__0;
  wire spike_carry__0_i_46__0_0;
  wire spike_carry_i_30__0;
  wire [1:0]spike_carry_i_30__0_0;
  wire spike_carry_i_30__0_1;
  wire spike_carry_i_47__0;
  wire spike_carry_i_47__0_0;
  wire spike_carry_i_55__0;
  wire spike_carry_i_55__0_0;
  wire spike_carry_i_55__0_1;
  wire spike_carry_i_57__0;
  wire spike_carry_i_67__0;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;

  mulBITSxBITS_8 u1
       (.A(A),
        .DOBDO(DOBDO),
        .P(P),
        .noise_out_reg(noise_out_reg),
        .spike_carry__0_i_46__0(spike_carry__0_i_46__0),
        .spike_carry__0_i_46__0_0(spike_carry__0_i_46__0_0),
        .spike_carry_i_30__0(spike_carry_i_30__0),
        .spike_carry_i_30__0_0(spike_carry_i_30__0_0),
        .spike_carry_i_30__0_1(spike_carry_i_30__0_1),
        .spike_carry_i_47__0(spike_carry_i_47__0),
        .spike_carry_i_47__0_0(spike_carry_i_47__0_0),
        .spike_carry_i_55__0(spike_carry_i_55__0),
        .spike_carry_i_55__0_0(spike_carry_i_55__0_0),
        .spike_carry_i_55__0_1(spike_carry_i_55__0_1),
        .spike_carry_i_57__0(spike_carry_i_57__0),
        .spike_carry_i_67__0(spike_carry_i_67__0),
        .tmp_0(tmp),
        .tmp_1(tmp_0),
        .tmp_10(tmp_9),
        .tmp_11(tmp_10),
        .tmp_12(tmp_11),
        .tmp_13(tmp_12),
        .tmp_14(tmp_13),
        .tmp_15(tmp_14),
        .tmp_16(tmp_15),
        .tmp_17(tmp_16),
        .tmp_2(tmp_1),
        .tmp_3(tmp_2),
        .tmp_4(tmp_3),
        .tmp_5(tmp_4),
        .tmp_6(tmp_5),
        .tmp_7(tmp_6),
        .tmp_8(tmp_7),
        .tmp_9(tmp_8));
endmodule

(* COUNTER_WIDTH = "40" *) (* GRAPH_DISTRIB_FILE_0 = "adj_matrix_distributed0.mif" *) (* GRAPH_DISTRIB_FILE_1 = "adj_matrix_distributed1.mif" *) 
(* GRAPH_DISTRIB_FILE_2 = "adj_matrix_distributed2.mif" *) (* GRAPH_WIDTH = "12" *) (* IDX_THAT_FIRED_WIDTH = "4" *) 
(* LOG_NOISE_LUT_FILENAME = "log_noise_LUT.mif" *) (* LUT_FLIPPING_WIDTH = "16" *) (* MEMBRANE_WIDTH = "16" *) 
(* NEURON_NUM_WIDTH = "2" *) (* NEURON_SEL_LFSR_WIDTH = "3" *) (* NOISE_SOURCE_WIDTH = "6" *) 
(* NO_CLK_CYCLES_AFTER_UPDATE = "3" *) (* PIPELINED_ENSEMBLE_STORAGE = "1" *) (* PIPELINED_ROMs = "1" *) 
(* SOLUTION_WIDTH = "16" *) (* TEMPERATURE_LUT_FILENAME = "temperature_LUT.mif" *) (* TEMPERATURE_LUT_WIDTH = "7" *) 
(* TEMP_INC_WIDTH = "16" *) (* UNITS = "3" *) (* UNIT_WIDTH = "2" *) 
(* NotValidForBitStream *)
module graph_n12_machine
   (clk,
    reset,
    halt,
    write_ensemble_seed,
    write_flipping_seed,
    ensemble_seed,
    flipping_seed,
    membrane_data_in,
    neuron_state_in,
    write_neuron_states,
    found_solution_value);
  input clk;
  input reset;
  input halt;
  input [2:0]write_ensemble_seed;
  input [2:0]write_flipping_seed;
  input [2:0]ensemble_seed;
  input [5:0]flipping_seed;
  input [15:0]membrane_data_in;
  input [3:0]neuron_state_in;
  input [2:0]write_neuron_states;
  output [15:0]found_solution_value;

  wire [3:0]\G_memory/Q_out0 ;
  wire [3:0]\G_memory/Q_out0_0 ;
  wire add_mem;
  wire [2:0]add_mems;
  wire [47:0]all_membranes;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire [2:0]ensemble_seed;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [5:0]flipping_seed;
  wire [5:0]flipping_seed_IBUF;
  wire [15:0]found_solution_value;
  wire [15:0]found_solution_value_OBUF;
  wire halt;
  wire halt_IBUF;
  wire [3:0]idx_that_fired;
  wire incrementing_reg;
  wire [15:0]membrane;
  wire [15:0]membrane_data_in;
  wire [15:0]membrane_data_in_IBUF;
  wire [9:0]\neuron_ensemble_inst/B ;
  wire [21:16]\neuron_ensemble_inst/flipping_unit_tb/mult/u1/tmp__0 ;
  wire [15:10]\neuron_ensemble_inst/flipping_unit_tb/noise_out_reg ;
  wire [11:10]\neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg ;
  wire [15:2]\neuron_ensemble_inst/membrane_compare__14 ;
  wire [3:0]\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in ;
  wire [3:0]\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in_1 ;
  wire \neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in ;
  wire \neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in_3 ;
  wire [0:0]\neuron_ensemble_inst/p_1_in ;
  wire [0:0]\neuron_ensemble_inst/p_1_in_2 ;
  wire [4:0]\neuron_ensemble_inst/sel0 ;
  wire [3:0]neuron_state_in;
  wire [3:0]neuron_state_in_IBUF;
  wire [1:0]offset;
  wire offset1;
  wire [5:0]offsets;
  wire reset;
  wire reset_IBUF;
  wire reset_module;
  wire scheduler_instance_n_4;
  wire should_increment;
  wire spiked1__0;
  wire [0:0]spikes;
  wire unit0_n_17;
  wire unit0_n_18;
  wire unit0_n_19;
  wire unit0_n_20;
  wire unit0_n_21;
  wire unit0_n_22;
  wire unit0_n_23;
  wire unit0_n_24;
  wire unit0_n_25;
  wire unit0_n_26;
  wire unit0_n_27;
  wire unit0_n_28;
  wire unit0_n_29;
  wire unit0_n_30;
  wire unit0_n_31;
  wire unit0_n_32;
  wire unit0_n_35;
  wire unit0_n_36;
  wire unit0_n_37;
  wire unit0_n_38;
  wire unit0_n_39;
  wire unit0_n_40;
  wire unit0_n_41;
  wire unit0_n_42;
  wire unit0_n_55;
  wire unit0_n_56;
  wire unit0_n_57;
  wire unit0_n_58;
  wire unit0_n_60;
  wire unit0_n_61;
  wire unit1_n_0;
  wire unit1_n_10;
  wire unit1_n_11;
  wire unit1_n_12;
  wire unit1_n_13;
  wire unit1_n_14;
  wire unit1_n_15;
  wire unit1_n_16;
  wire unit1_n_17;
  wire unit1_n_24;
  wire unit1_n_25;
  wire unit1_n_26;
  wire unit1_n_27;
  wire unit1_n_28;
  wire unit1_n_29;
  wire unit1_n_30;
  wire unit1_n_31;
  wire unit1_n_32;
  wire unit1_n_34;
  wire unit1_n_4;
  wire unit1_n_43;
  wire unit1_n_44;
  wire unit1_n_45;
  wire unit1_n_46;
  wire unit1_n_47;
  wire unit1_n_48;
  wire unit1_n_49;
  wire unit1_n_50;
  wire unit1_n_51;
  wire unit1_n_52;
  wire unit1_n_53;
  wire unit1_n_54;
  wire unit1_n_55;
  wire unit1_n_56;
  wire unit1_n_57;
  wire unit1_n_58;
  wire unit1_n_59;
  wire unit1_n_6;
  wire unit1_n_60;
  wire unit1_n_61;
  wire unit1_n_62;
  wire unit1_n_63;
  wire unit1_n_64;
  wire unit1_n_65;
  wire unit1_n_67;
  wire unit1_n_68;
  wire unit1_n_69;
  wire unit1_n_7;
  wire unit1_n_71;
  wire unit1_n_72;
  wire unit1_n_73;
  wire unit1_n_74;
  wire unit1_n_75;
  wire unit1_n_76;
  wire unit1_n_77;
  wire unit1_n_78;
  wire unit1_n_79;
  wire unit1_n_8;
  wire unit1_n_81;
  wire unit1_n_9;
  wire unit2_n_0;
  wire unit2_n_20;
  wire unit2_n_21;
  wire unit2_n_23;
  wire [0:0]unit_numb;
  wire update_memory;
  wire [2:0]write_ensemble_seed;
  wire [2:0]write_ensemble_seed_IBUF;
  wire [2:0]write_flipping_seed;
  wire [2:0]write_flipping_seed_IBUF;
  wire [2:0]write_neuron_states;
  wire [2:0]write_neuron_states_IBUF;

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
  IBUF \flipping_seed_IBUF[0]_inst 
       (.I(flipping_seed[0]),
        .O(flipping_seed_IBUF[0]));
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
  scheduler scheduler_instance
       (.AR(reset_IBUF),
        .D(unit0_n_57),
        .E(unit1_n_48),
        .Q(scheduler_instance_n_4),
        .add_mem(add_mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cuts_best_reg[15]_0 (found_solution_value_OBUF),
        .decrease_temp(decrease_temp),
        .halt_IBUF(halt_IBUF),
        .\index_of_neuron_that_fired_reg[3]_0 (idx_that_fired),
        .\membrane_reg_reg[15]_0 (membrane),
        .offset1(offset1),
        .\offset_reg_reg[1]_0 (offset),
        .reset_module(reset_module),
        .should_increment(should_increment),
        .should_increment_reg_0(unit0_n_58),
        .unit_numb(unit_numb),
        .update_memory(update_memory));
  simple_priority_selector selector
       (.D({unit1_n_68,unit1_n_69}),
        .E(unit0_n_58),
        .Q(offset),
        .add_mem(add_mem),
        .\membrane_reg_reg[15] ({unit1_n_50,unit1_n_51,unit1_n_52,unit1_n_53,unit1_n_54,unit1_n_55,unit1_n_56,unit1_n_57,unit1_n_58,unit1_n_59,unit1_n_60,unit1_n_61,unit1_n_62,unit1_n_63,unit1_n_64,unit1_n_65}),
        .\selected_membrane_reg_reg[15] (membrane),
        .should_increment_reg(unit1_n_67));
  neuron_ensemble_with_memory unit0
       (.ADDRBWRADDR({unit1_n_71,unit1_n_72,unit1_n_73,unit1_n_74,unit1_n_75,unit1_n_76,unit1_n_77}),
        .D(unit0_n_57),
        .DI({unit0_n_21,unit0_n_22,unit0_n_23,unit0_n_24}),
        .DOBDO({\neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg ,\neuron_ensemble_inst/B }),
        .E(unit0_n_58),
        .\FSM_onehot_current_state_reg[2] (scheduler_instance_n_4),
        .\FSM_onehot_current_state_reg[2]_0 (unit1_n_49),
        .P({\neuron_ensemble_inst/flipping_unit_tb/mult/u1/tmp__0 [21],\neuron_ensemble_inst/flipping_unit_tb/mult/u1/tmp__0 [17:16]}),
        .Q(all_membranes[15:0]),
        .Q_out0(\G_memory/Q_out0_0 ),
        .S({unit0_n_17,unit0_n_18,unit0_n_19,unit0_n_20}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[0]_0 (\neuron_ensemble_inst/p_1_in ),
        .\index_of_neuron_that_fired_reg_reg[1]_0 ({unit0_n_60,unit0_n_61}),
        .\index_of_neuron_that_fired_reg_reg[2]_0 (\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in ),
        .\index_of_neuron_that_fired_reg_reg[3]_0 (idx_that_fired),
        .membrane_compare__14({\neuron_ensemble_inst/membrane_compare__14 [15:14],\neuron_ensemble_inst/membrane_compare__14 [12],\neuron_ensemble_inst/membrane_compare__14 [10],\neuron_ensemble_inst/membrane_compare__14 [8],\neuron_ensemble_inst/membrane_compare__14 [6],\neuron_ensemble_inst/membrane_compare__14 [4],\neuron_ensemble_inst/membrane_compare__14 [2]}),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .neuron_state_reg(add_mems[0]),
        .\neuron_state_reg_reg[1] (unit1_n_4),
        .\neuron_state_reg_reg[1]_0 (unit2_n_0),
        .\neuron_state_reg_reg[1]_1 ({unit2_n_20,unit2_n_21,\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in_3 ,unit2_n_23}),
        .neuron_states_storage2_in(\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in_1 ),
        .noise_out_reg(\neuron_ensemble_inst/flipping_unit_tb/noise_out_reg ),
        .\noise_out_reg_reg[10] (unit0_n_35),
        .\noise_out_reg_reg[10]_0 (unit0_n_37),
        .\noise_out_reg_reg[12] (unit0_n_40),
        .\noise_out_reg_reg[14] ({\neuron_ensemble_inst/sel0 [4],\neuron_ensemble_inst/sel0 [0]}),
        .\noise_out_reg_reg[14]_0 (unit0_n_38),
        .out(\G_memory/Q_out0 ),
        .p_0_in({unit1_n_78,unit1_n_79,\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in ,unit1_n_81}),
        .p_1_in(\neuron_ensemble_inst/p_1_in_2 ),
        .reset_module(reset_module),
        .\selected_idx_offset_reg_reg[1] (offsets[1:0]),
        .\selected_membrane_reg_reg[14] ({unit0_n_29,unit0_n_30,unit0_n_31,unit0_n_32}),
        .should_increment(should_increment),
        .spike_carry(unit1_n_32),
        .spike_carry_0(all_membranes[16]),
        .spike_carry_1(unit1_n_34),
        .spike_carry_2(unit1_n_43),
        .spike_carry_3(unit1_n_44),
        .spike_carry__0(unit1_n_45),
        .spike_carry__0_0(unit1_n_46),
        .spike_carry__0_1(unit1_n_47),
        .spike_carry__0_i_12__0(unit1_n_11),
        .spike_carry__0_i_18__0(unit1_n_25),
        .spike_carry__0_i_18__0_0(unit1_n_9),
        .spike_carry__0_i_18__0_1(unit1_n_28),
        .spike_carry__0_i_21__0(unit1_n_12),
        .spike_carry__0_i_25__0(unit1_n_26),
        .spike_carry__0_i_25__0_0(unit1_n_27),
        .spike_carry__0_i_55__0(unit1_n_10),
        .spike_carry__0_i_83__0(unit1_n_17),
        .spike_carry_i_159__0(unit1_n_30),
        .spike_carry_i_159__0_0(unit1_n_31),
        .spike_carry_i_19__0(unit1_n_24),
        .spike_carry_i_19__0_0(unit1_n_29),
        .spike_carry_i_19__0_1(unit1_n_16),
        .spike_carry_i_21__0(unit1_n_13),
        .spike_carry_i_21__0_0(unit1_n_7),
        .spike_carry_i_24__0(unit1_n_8),
        .spike_carry_i_25__0(unit1_n_14),
        .spike_carry_i_25__0_0(unit1_n_15),
        .spike_carry_i_9__0(unit1_n_6),
        .spikes(spikes),
        .tmp(unit0_n_36),
        .tmp_0(unit0_n_39),
        .tmp_1(unit0_n_41),
        .tmp_2(unit0_n_42),
        .update_memory(update_memory),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[0]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[0]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .x_reg_rep({unit0_n_25,unit0_n_26,unit0_n_27,unit0_n_28}),
        .x_reg_rep_0(unit0_n_55),
        .x_reg_rep_1(unit0_n_56),
        .x_reg_rep_2(unit1_n_0));
  neuron_ensemble_with_memory__parameterized0 unit1
       (.ADDRBWRADDR({unit1_n_71,unit1_n_72,unit1_n_73,unit1_n_74,unit1_n_75,unit1_n_76,unit1_n_77}),
        .D({unit1_n_68,unit1_n_69}),
        .DI({unit0_n_21,unit0_n_22,unit0_n_23,unit0_n_24}),
        .DOBDO({\neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg ,\neuron_ensemble_inst/B }),
        .E(unit1_n_48),
        .P({\neuron_ensemble_inst/flipping_unit_tb/mult/u1/tmp__0 [21],\neuron_ensemble_inst/flipping_unit_tb/mult/u1/tmp__0 [17:16]}),
        .Q(all_membranes[16]),
        .Q_out0(\G_memory/Q_out0_0 ),
        .S({unit0_n_17,unit0_n_18,unit0_n_19,unit0_n_20}),
        .add_mem_reg({add_mems[2],add_mems[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0]_0 (unit1_n_49),
        .\current_state_reg[1]_0 (unit1_n_0),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .\idx_reg[0] (unit1_n_4),
        .incrementing_reg(incrementing_reg),
        .membrane_compare__14({\neuron_ensemble_inst/membrane_compare__14 [15:14],\neuron_ensemble_inst/membrane_compare__14 [12],\neuron_ensemble_inst/membrane_compare__14 [10],\neuron_ensemble_inst/membrane_compare__14 [8],\neuron_ensemble_inst/membrane_compare__14 [6],\neuron_ensemble_inst/membrane_compare__14 [4],\neuron_ensemble_inst/membrane_compare__14 [2]}),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[15] ({all_membranes[47:32],all_membranes[15:0]}),
        .\neuron_state_reg_reg[0] (unit1_n_67),
        .\neuron_state_reg_reg[1] ({unit0_n_60,unit0_n_61}),
        .neuron_states_storage2_in(\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in_1 ),
        .noise_out_reg(\neuron_ensemble_inst/flipping_unit_tb/noise_out_reg ),
        .\noise_out_reg_reg[12] (unit1_n_31),
        .\noise_out_reg_reg[4] (unit1_n_30),
        .offset1(offset1),
        .\offset_reg_reg[0] (scheduler_instance_n_4),
        .\offset_reg_reg[1] ({offsets[5:4],offsets[1:0]}),
        .p_0_in({unit1_n_78,unit1_n_79,\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in ,unit1_n_81}),
        .p_1_in(\neuron_ensemble_inst/p_1_in_2 ),
        .reset_module(reset_module),
        .\selected_membrane_reg_reg[11] (unit1_n_46),
        .\selected_membrane_reg_reg[13] (unit1_n_47),
        .\selected_membrane_reg_reg[15] ({unit1_n_50,unit1_n_51,unit1_n_52,unit1_n_53,unit1_n_54,unit1_n_55,unit1_n_56,unit1_n_57,unit1_n_58,unit1_n_59,unit1_n_60,unit1_n_61,unit1_n_62,unit1_n_63,unit1_n_64,unit1_n_65}),
        .\selected_membrane_reg_reg[1] (unit1_n_32),
        .\selected_membrane_reg_reg[3] (unit1_n_34),
        .\selected_membrane_reg_reg[5] (unit1_n_43),
        .\selected_membrane_reg_reg[7] (unit1_n_44),
        .\selected_membrane_reg_reg[9] (unit1_n_45),
        .spike_carry__0_i_46__0(unit0_n_37),
        .spike_carry_i_30__0(unit0_n_39),
        .spike_carry_i_30__0_0({\neuron_ensemble_inst/sel0 [4],\neuron_ensemble_inst/sel0 [0]}),
        .spike_carry_i_30__0_1(unit0_n_42),
        .spike_carry_i_47__0(unit0_n_55),
        .spike_carry_i_47__0_0(unit0_n_56),
        .spike_carry_i_55__0(unit0_n_36),
        .spike_carry_i_55__0_0(unit0_n_41),
        .spike_carry_i_55__0_1(unit0_n_35),
        .spike_carry_i_57__0(unit0_n_38),
        .spike_carry_i_67__0(unit0_n_40),
        .spiked1__0(spiked1__0),
        .spikes(spikes),
        .tmp(unit1_n_6),
        .tmp_0(unit1_n_7),
        .tmp_1(unit1_n_8),
        .tmp_10(unit1_n_17),
        .tmp_11(unit1_n_24),
        .tmp_12(unit1_n_25),
        .tmp_13(unit1_n_26),
        .tmp_14(unit1_n_27),
        .tmp_15(unit1_n_28),
        .tmp_16(unit1_n_29),
        .tmp_2(unit1_n_9),
        .tmp_3(unit1_n_10),
        .tmp_4(unit1_n_11),
        .tmp_5(unit1_n_12),
        .tmp_6(unit1_n_13),
        .tmp_7(unit1_n_14),
        .tmp_8(unit1_n_15),
        .tmp_9(unit1_n_16),
        .unit_numb(unit_numb),
        .\unit_number_reg_reg[0] ({unit0_n_29,unit0_n_30,unit0_n_31,unit0_n_32}),
        .\unit_number_reg_reg[0]_0 ({unit0_n_25,unit0_n_26,unit0_n_27,unit0_n_28}),
        .update_memory(update_memory),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[1]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[1]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF[1]));
  neuron_ensemble_with_memory__parameterized1 unit2
       (.Q(all_membranes[47:32]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .halt_IBUF(halt_IBUF),
        .idx_offset_to_update({unit0_n_60,unit0_n_61}),
        .\idx_reg[0] (unit2_n_0),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_reg(add_mems[2]),
        .neuron_states_storage2_in(\neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage2_in ),
        .offset1(offset1),
        .out(\G_memory/Q_out0 ),
        .p_0_in({unit2_n_20,unit2_n_21,\neuron_ensemble_inst/neuron_ensemble_storage_inst/p_1_in_3 ,unit2_n_23}),
        .p_1_in(\neuron_ensemble_inst/p_1_in ),
        .reset_module(reset_module),
        .\selected_idx_offset_reg_reg[1] (offsets[5:4]),
        .spiked1__0(spiked1__0),
        .spikes(spikes),
        .update_memory(update_memory),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF[2]),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF[2]),
        .write_neuron_states_IBUF(write_neuron_states_IBUF[2]));
  IBUF \write_ensemble_seed_IBUF[0]_inst 
       (.I(write_ensemble_seed[0]),
        .O(write_ensemble_seed_IBUF[0]));
  IBUF \write_ensemble_seed_IBUF[1]_inst 
       (.I(write_ensemble_seed[1]),
        .O(write_ensemble_seed_IBUF[1]));
  IBUF \write_ensemble_seed_IBUF[2]_inst 
       (.I(write_ensemble_seed[2]),
        .O(write_ensemble_seed_IBUF[2]));
  IBUF \write_flipping_seed_IBUF[0]_inst 
       (.I(write_flipping_seed[0]),
        .O(write_flipping_seed_IBUF[0]));
  IBUF \write_flipping_seed_IBUF[1]_inst 
       (.I(write_flipping_seed[1]),
        .O(write_flipping_seed_IBUF[1]));
  IBUF \write_flipping_seed_IBUF[2]_inst 
       (.I(write_flipping_seed[2]),
        .O(write_flipping_seed_IBUF[2]));
  IBUF \write_neuron_states_IBUF[0]_inst 
       (.I(write_neuron_states[0]),
        .O(write_neuron_states_IBUF[0]));
  IBUF \write_neuron_states_IBUF[1]_inst 
       (.I(write_neuron_states[1]),
        .O(write_neuron_states_IBUF[1]));
  IBUF \write_neuron_states_IBUF[2]_inst 
       (.I(write_neuron_states[2]),
        .O(write_neuron_states_IBUF[2]));
endmodule

module log_noise_generator
   (out,
    \state_reg[2] ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2] ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state_reg[2] ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0 noise_source
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out(out),
        .\state_reg[2]_0 (\state_reg[2] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module log_noise_generator_14
   (out,
    \state_reg[2] ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2] ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state_reg[2] ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0_16 noise_source
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out(out),
        .\state_reg[2]_0 (\state_reg[2] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module log_noise_generator_5
   (out,
    \state_reg[2] ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    Q,
    clk_IBUF_BUFG);
  output [14:0]out;
  output \state_reg[2] ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]flipping_seed_IBUF;
  wire [14:0]out;
  wire \state_reg[2] ;
  wire [0:0]write_flipping_seed_IBUF;

  LFSR__parameterized0_7 noise_source
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out(out),
        .\state_reg[2]_0 (\state_reg[2] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module mulBITSxBITS
   (P,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    DOADO,
    A,
    spike_carry_i_30__1,
    sel0,
    spike_carry_i_30__1_0,
    spike_carry_i_55__1,
    spike_carry_i_55__1_0,
    spike_carry_i_55__1_1,
    spike_carry__0_i_32__1,
    spike_carry__0_i_32__1_0,
    spike_carry_i_83__1_0,
    spike_carry_i_144__0,
    spike_carry_i_144__0_0,
    spike_carry_i_144__0_1);
  output [2:0]P;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  input [9:0]DOADO;
  input [9:0]A;
  input spike_carry_i_30__1;
  input [1:0]sel0;
  input spike_carry_i_30__1_0;
  input spike_carry_i_55__1;
  input spike_carry_i_55__1_0;
  input spike_carry_i_55__1_1;
  input spike_carry__0_i_32__1;
  input spike_carry__0_i_32__1_0;
  input spike_carry_i_83__1_0;
  input spike_carry_i_144__0;
  input spike_carry_i_144__0_0;
  input spike_carry_i_144__0_1;

  wire [9:0]A;
  wire [9:0]DOADO;
  wire [2:0]P;
  wire [1:0]sel0;
  wire spike_carry__0_i_32__1;
  wire spike_carry__0_i_32__1_0;
  wire spike_carry_i_144__0;
  wire spike_carry_i_144__0_0;
  wire spike_carry_i_144__0_1;
  wire spike_carry_i_156__1_n_0;
  wire spike_carry_i_157__1_n_0;
  wire spike_carry_i_158__1_n_0;
  wire spike_carry_i_165__1_n_0;
  wire spike_carry_i_166__1_n_0;
  wire spike_carry_i_167__1_n_0;
  wire spike_carry_i_30__1;
  wire spike_carry_i_30__1_0;
  wire spike_carry_i_55__1;
  wire spike_carry_i_55__1_0;
  wire spike_carry_i_55__1_1;
  wire spike_carry_i_83__1_0;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [20:10]tmp__0;
  wire tmp_n_100;
  wire tmp_n_101;
  wire tmp_n_102;
  wire tmp_n_103;
  wire tmp_n_104;
  wire tmp_n_105;
  wire tmp_n_74;
  wire tmp_n_75;
  wire tmp_n_76;
  wire tmp_n_77;
  wire tmp_n_78;
  wire tmp_n_79;
  wire tmp_n_80;
  wire tmp_n_81;
  wire tmp_n_82;
  wire tmp_n_83;
  wire tmp_n_96;
  wire tmp_n_97;
  wire tmp_n_98;
  wire tmp_n_99;
  wire NLW_tmp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_tmp_P_UNCONNECTED;
  wire [47:0]NLW_tmp_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_58__1
       (.I0(tmp_4),
        .I1(spike_carry__0_i_32__1_0),
        .O(tmp_12));
  LUT6 #(
    .INIT(64'hFC00FA00FC000A00)) 
    spike_carry__0_i_64__1
       (.I0(tmp_3),
        .I1(tmp_4),
        .I2(sel0[0]),
        .I3(spike_carry__0_i_32__1),
        .I4(spike_carry__0_i_32__1_0),
        .I5(tmp_6),
        .O(tmp_5));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_100__1
       (.I0(tmp__0[18]),
        .I1(P[1]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_3));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    spike_carry_i_105__1
       (.I0(spike_carry_i_165__1_n_0),
        .I1(spike_carry_i_166__1_n_0),
        .I2(spike_carry_i_167__1_n_0),
        .I3(spike_carry_i_157__1_n_0),
        .I4(tmp_4),
        .I5(tmp_6),
        .O(tmp_13));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    spike_carry_i_107__1
       (.I0(tmp_4),
        .I1(spike_carry__0_i_32__1_0),
        .I2(sel0[0]),
        .I3(tmp_3),
        .O(tmp_11));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_109__1
       (.I0(tmp__0[12]),
        .I1(tmp__0[11]),
        .I2(spike_carry_i_83__1_0),
        .I3(P[2]),
        .O(tmp_8));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_111__1
       (.I0(tmp__0[14]),
        .I1(tmp__0[13]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_14));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_119__1
       (.I0(tmp__0[20]),
        .I1(tmp__0[19]),
        .I2(spike_carry_i_83__1_0),
        .I3(P[2]),
        .O(tmp_4));
  LUT6 #(
    .INIT(64'h0000CC00F000AA00)) 
    spike_carry_i_137__1
       (.I0(tmp_2),
        .I1(tmp_3),
        .I2(tmp_4),
        .I3(spike_carry_i_55__1),
        .I4(spike_carry_i_55__1_0),
        .I5(spike_carry_i_55__1_1),
        .O(tmp_1));
  LUT6 #(
    .INIT(64'hF0AA0000CC000000)) 
    spike_carry_i_138__1
       (.I0(tmp_8),
        .I1(tmp_9),
        .I2(tmp_10),
        .I3(sel0[0]),
        .I4(spike_carry__0_i_32__1),
        .I5(spike_carry__0_i_32__1_0),
        .O(tmp_7));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_140__1
       (.I0(tmp__0[19]),
        .I1(tmp__0[18]),
        .I2(spike_carry_i_83__1_0),
        .I3(P[2]),
        .O(tmp_6));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_156__1
       (.I0(tmp__0[20]),
        .I1(P[2]),
        .I2(spike_carry_i_83__1_0),
        .I3(tmp__0[18]),
        .I4(tmp__0[19]),
        .O(spike_carry_i_156__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_157__1
       (.I0(tmp__0[12]),
        .I1(P[2]),
        .I2(spike_carry_i_83__1_0),
        .I3(tmp__0[10]),
        .I4(tmp__0[11]),
        .O(spike_carry_i_157__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    spike_carry_i_158__1
       (.I0(tmp_14),
        .I1(tmp_10),
        .I2(tmp_3),
        .I3(tmp_15),
        .I4(tmp_16),
        .I5(tmp_2),
        .O(spike_carry_i_158__1_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_165__1
       (.I0(P[0]),
        .I1(P[2]),
        .I2(spike_carry_i_83__1_0),
        .I3(tmp__0[14]),
        .I4(tmp__0[15]),
        .O(spike_carry_i_165__1_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_166__1
       (.I0(tmp__0[18]),
        .I1(P[2]),
        .I2(spike_carry_i_83__1_0),
        .I3(P[0]),
        .I4(P[1]),
        .O(spike_carry_i_166__1_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_167__1
       (.I0(tmp__0[14]),
        .I1(P[2]),
        .I2(spike_carry_i_83__1_0),
        .I3(tmp__0[12]),
        .I4(tmp__0[13]),
        .O(spike_carry_i_167__1_n_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_75__1
       (.I0(tmp__0[15]),
        .I1(tmp__0[14]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_16));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_77__1
       (.I0(P[1]),
        .I1(P[0]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_15));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_80__1
       (.I0(tmp__0[13]),
        .I1(tmp__0[12]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_10));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_81__1
       (.I0(tmp__0[11]),
        .I1(tmp__0[10]),
        .I2(spike_carry_i_83__1_0),
        .I3(P[2]),
        .O(tmp_9));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    spike_carry_i_83__1
       (.I0(spike_carry_i_156__1_n_0),
        .I1(spike_carry_i_157__1_n_0),
        .I2(spike_carry_i_158__1_n_0),
        .I3(spike_carry_i_30__1),
        .I4(sel0[1]),
        .I5(spike_carry_i_30__1_0),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_99__1
       (.I0(P[0]),
        .I1(tmp__0[15]),
        .I2(spike_carry_i_144__0),
        .I3(spike_carry_i_144__0_0),
        .I4(spike_carry_i_144__0_1),
        .I5(P[2]),
        .O(tmp_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
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
    tmp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,DOADO}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_P_UNCONNECTED[47:32],tmp_n_74,tmp_n_75,tmp_n_76,tmp_n_77,tmp_n_78,tmp_n_79,tmp_n_80,tmp_n_81,tmp_n_82,tmp_n_83,P[2],tmp__0[20:18],P[1:0],tmp__0[15:10],tmp_n_96,tmp_n_97,tmp_n_98,tmp_n_99,tmp_n_100,tmp_n_101,tmp_n_102,tmp_n_103,tmp_n_104,tmp_n_105}),
        .PATTERNBDETECT(NLW_tmp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_tmp_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mulBITSxBITS" *) 
module mulBITSxBITS_17
   (P,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    DOADO,
    A,
    spike_carry_i_30,
    sel0,
    spike_carry_i_30_0,
    spike_carry_i_55,
    spike_carry_i_55_0,
    spike_carry_i_55_1,
    spike_carry__0_i_32,
    spike_carry__0_i_32_0,
    spike_carry_i_83_0,
    spike_carry_i_144,
    spike_carry_i_144_0,
    spike_carry_i_144_1);
  output [2:0]P;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  input [9:0]DOADO;
  input [9:0]A;
  input spike_carry_i_30;
  input [1:0]sel0;
  input spike_carry_i_30_0;
  input spike_carry_i_55;
  input spike_carry_i_55_0;
  input spike_carry_i_55_1;
  input spike_carry__0_i_32;
  input spike_carry__0_i_32_0;
  input spike_carry_i_83_0;
  input spike_carry_i_144;
  input spike_carry_i_144_0;
  input spike_carry_i_144_1;

  wire [9:0]A;
  wire [9:0]DOADO;
  wire [2:0]P;
  wire [1:0]sel0;
  wire spike_carry__0_i_32;
  wire spike_carry__0_i_32_0;
  wire spike_carry_i_144;
  wire spike_carry_i_144_0;
  wire spike_carry_i_144_1;
  wire spike_carry_i_156_n_0;
  wire spike_carry_i_157_n_0;
  wire spike_carry_i_158_n_0;
  wire spike_carry_i_165_n_0;
  wire spike_carry_i_166_n_0;
  wire spike_carry_i_167_n_0;
  wire spike_carry_i_30;
  wire spike_carry_i_30_0;
  wire spike_carry_i_55;
  wire spike_carry_i_55_0;
  wire spike_carry_i_55_1;
  wire spike_carry_i_83_0;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [20:10]tmp__0;
  wire tmp_n_100;
  wire tmp_n_101;
  wire tmp_n_102;
  wire tmp_n_103;
  wire tmp_n_104;
  wire tmp_n_105;
  wire tmp_n_74;
  wire tmp_n_75;
  wire tmp_n_76;
  wire tmp_n_77;
  wire tmp_n_78;
  wire tmp_n_79;
  wire tmp_n_80;
  wire tmp_n_81;
  wire tmp_n_82;
  wire tmp_n_83;
  wire tmp_n_96;
  wire tmp_n_97;
  wire tmp_n_98;
  wire tmp_n_99;
  wire NLW_tmp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_tmp_P_UNCONNECTED;
  wire [47:0]NLW_tmp_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_58
       (.I0(tmp_4),
        .I1(spike_carry__0_i_32_0),
        .O(tmp_12));
  LUT6 #(
    .INIT(64'hFC00FA00FC000A00)) 
    spike_carry__0_i_64
       (.I0(tmp_3),
        .I1(tmp_4),
        .I2(sel0[0]),
        .I3(spike_carry__0_i_32),
        .I4(spike_carry__0_i_32_0),
        .I5(tmp_6),
        .O(tmp_5));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_100
       (.I0(tmp__0[18]),
        .I1(P[1]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_3));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    spike_carry_i_105
       (.I0(spike_carry_i_165_n_0),
        .I1(spike_carry_i_166_n_0),
        .I2(spike_carry_i_167_n_0),
        .I3(spike_carry_i_157_n_0),
        .I4(tmp_4),
        .I5(tmp_6),
        .O(tmp_13));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    spike_carry_i_107
       (.I0(tmp_4),
        .I1(spike_carry__0_i_32_0),
        .I2(sel0[0]),
        .I3(tmp_3),
        .O(tmp_11));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_109
       (.I0(tmp__0[12]),
        .I1(tmp__0[11]),
        .I2(spike_carry_i_83_0),
        .I3(P[2]),
        .O(tmp_8));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_111
       (.I0(tmp__0[14]),
        .I1(tmp__0[13]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_14));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_119
       (.I0(tmp__0[20]),
        .I1(tmp__0[19]),
        .I2(spike_carry_i_83_0),
        .I3(P[2]),
        .O(tmp_4));
  LUT6 #(
    .INIT(64'h0000CC00F000AA00)) 
    spike_carry_i_137
       (.I0(tmp_2),
        .I1(tmp_3),
        .I2(tmp_4),
        .I3(spike_carry_i_55),
        .I4(spike_carry_i_55_0),
        .I5(spike_carry_i_55_1),
        .O(tmp_1));
  LUT6 #(
    .INIT(64'hF0AA0000CC000000)) 
    spike_carry_i_138
       (.I0(tmp_8),
        .I1(tmp_9),
        .I2(tmp_10),
        .I3(sel0[0]),
        .I4(spike_carry__0_i_32),
        .I5(spike_carry__0_i_32_0),
        .O(tmp_7));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_140
       (.I0(tmp__0[19]),
        .I1(tmp__0[18]),
        .I2(spike_carry_i_83_0),
        .I3(P[2]),
        .O(tmp_6));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_156
       (.I0(tmp__0[20]),
        .I1(P[2]),
        .I2(spike_carry_i_83_0),
        .I3(tmp__0[18]),
        .I4(tmp__0[19]),
        .O(spike_carry_i_156_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_157
       (.I0(tmp__0[12]),
        .I1(P[2]),
        .I2(spike_carry_i_83_0),
        .I3(tmp__0[10]),
        .I4(tmp__0[11]),
        .O(spike_carry_i_157_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    spike_carry_i_158
       (.I0(tmp_14),
        .I1(tmp_10),
        .I2(tmp_3),
        .I3(tmp_15),
        .I4(tmp_16),
        .I5(tmp_2),
        .O(spike_carry_i_158_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_165
       (.I0(P[0]),
        .I1(P[2]),
        .I2(spike_carry_i_83_0),
        .I3(tmp__0[14]),
        .I4(tmp__0[15]),
        .O(spike_carry_i_165_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_166
       (.I0(tmp__0[18]),
        .I1(P[2]),
        .I2(spike_carry_i_83_0),
        .I3(P[0]),
        .I4(P[1]),
        .O(spike_carry_i_166_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_167
       (.I0(tmp__0[14]),
        .I1(P[2]),
        .I2(spike_carry_i_83_0),
        .I3(tmp__0[12]),
        .I4(tmp__0[13]),
        .O(spike_carry_i_167_n_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_75
       (.I0(tmp__0[15]),
        .I1(tmp__0[14]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_16));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_77
       (.I0(P[1]),
        .I1(P[0]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_15));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_80
       (.I0(tmp__0[13]),
        .I1(tmp__0[12]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_10));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_81
       (.I0(tmp__0[11]),
        .I1(tmp__0[10]),
        .I2(spike_carry_i_83_0),
        .I3(P[2]),
        .O(tmp_9));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    spike_carry_i_83
       (.I0(spike_carry_i_156_n_0),
        .I1(spike_carry_i_157_n_0),
        .I2(spike_carry_i_158_n_0),
        .I3(spike_carry_i_30),
        .I4(sel0[1]),
        .I5(spike_carry_i_30_0),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_99
       (.I0(P[0]),
        .I1(tmp__0[15]),
        .I2(spike_carry_i_144),
        .I3(spike_carry_i_144_0),
        .I4(spike_carry_i_144_1),
        .I5(P[2]),
        .O(tmp_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
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
    tmp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,DOADO}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_P_UNCONNECTED[47:32],tmp_n_74,tmp_n_75,tmp_n_76,tmp_n_77,tmp_n_78,tmp_n_79,tmp_n_80,tmp_n_81,tmp_n_82,tmp_n_83,P[2],tmp__0[20:18],P[1:0],tmp__0[15:10],tmp_n_96,tmp_n_97,tmp_n_98,tmp_n_99,tmp_n_100,tmp_n_101,tmp_n_102,tmp_n_103,tmp_n_104,tmp_n_105}),
        .PATTERNBDETECT(NLW_tmp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_tmp_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mulBITSxBITS" *) 
module mulBITSxBITS_8
   (P,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    tmp_17,
    DOBDO,
    A,
    spike_carry_i_30__0,
    spike_carry_i_30__0_0,
    spike_carry_i_30__0_1,
    spike_carry_i_55__0,
    spike_carry_i_55__0_0,
    spike_carry_i_55__0_1,
    spike_carry_i_57__0,
    spike_carry__0_i_46__0,
    noise_out_reg,
    spike_carry_i_67__0,
    spike_carry_i_47__0,
    spike_carry_i_47__0_0,
    spike_carry__0_i_46__0_0);
  output [2:0]P;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  output tmp_17;
  input [11:0]DOBDO;
  input [9:0]A;
  input spike_carry_i_30__0;
  input [1:0]spike_carry_i_30__0_0;
  input spike_carry_i_30__0_1;
  input spike_carry_i_55__0;
  input spike_carry_i_55__0_0;
  input spike_carry_i_55__0_1;
  input spike_carry_i_57__0;
  input spike_carry__0_i_46__0;
  input [1:0]noise_out_reg;
  input spike_carry_i_67__0;
  input spike_carry_i_47__0;
  input spike_carry_i_47__0_0;
  input spike_carry__0_i_46__0_0;

  wire [9:0]A;
  wire [11:0]DOBDO;
  wire [2:0]P;
  wire [1:0]noise_out_reg;
  wire spike_carry__0_i_46__0;
  wire spike_carry__0_i_46__0_0;
  wire spike_carry_i_156__0_n_0;
  wire spike_carry_i_157__0_n_0;
  wire spike_carry_i_158__0_n_0;
  wire spike_carry_i_165__0_n_0;
  wire spike_carry_i_166__0_n_0;
  wire spike_carry_i_167__0_n_0;
  wire spike_carry_i_30__0;
  wire [1:0]spike_carry_i_30__0_0;
  wire spike_carry_i_30__0_1;
  wire spike_carry_i_47__0;
  wire spike_carry_i_47__0_0;
  wire spike_carry_i_55__0;
  wire spike_carry_i_55__0_0;
  wire spike_carry_i_55__0_1;
  wire spike_carry_i_57__0;
  wire spike_carry_i_67__0;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_17;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [20:10]tmp__0;
  wire tmp_n_100;
  wire tmp_n_101;
  wire tmp_n_102;
  wire tmp_n_103;
  wire tmp_n_104;
  wire tmp_n_105;
  wire tmp_n_74;
  wire tmp_n_75;
  wire tmp_n_76;
  wire tmp_n_77;
  wire tmp_n_78;
  wire tmp_n_79;
  wire tmp_n_80;
  wire tmp_n_81;
  wire tmp_n_82;
  wire tmp_n_83;
  wire tmp_n_96;
  wire tmp_n_97;
  wire tmp_n_98;
  wire tmp_n_99;
  wire NLW_tmp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_tmp_P_UNCONNECTED;
  wire [47:0]NLW_tmp_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_58__0
       (.I0(tmp_4),
        .I1(spike_carry__0_i_46__0),
        .O(tmp_13));
  LUT6 #(
    .INIT(64'hFC00FA00FC000A00)) 
    spike_carry__0_i_64__0
       (.I0(tmp_3),
        .I1(tmp_4),
        .I2(spike_carry_i_30__0_0[0]),
        .I3(spike_carry_i_57__0),
        .I4(spike_carry__0_i_46__0),
        .I5(tmp_6),
        .O(tmp_5));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_100__0
       (.I0(tmp__0[18]),
        .I1(P[1]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_3));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    spike_carry_i_105__0
       (.I0(spike_carry_i_165__0_n_0),
        .I1(spike_carry_i_166__0_n_0),
        .I2(spike_carry_i_167__0_n_0),
        .I3(spike_carry_i_157__0_n_0),
        .I4(tmp_4),
        .I5(tmp_6),
        .O(tmp_14));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    spike_carry_i_107__0
       (.I0(tmp_4),
        .I1(spike_carry__0_i_46__0),
        .I2(spike_carry_i_30__0_0[0]),
        .I3(tmp_3),
        .O(tmp_12));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_109__0
       (.I0(tmp__0[12]),
        .I1(tmp__0[11]),
        .I2(spike_carry_i_67__0),
        .I3(P[2]),
        .O(tmp_8));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_111__0
       (.I0(tmp__0[14]),
        .I1(tmp__0[13]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_15));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_119__0
       (.I0(tmp__0[20]),
        .I1(tmp__0[19]),
        .I2(spike_carry_i_67__0),
        .I3(P[2]),
        .O(tmp_4));
  LUT6 #(
    .INIT(64'h0000CC00F000AA00)) 
    spike_carry_i_137__0
       (.I0(tmp_2),
        .I1(tmp_3),
        .I2(tmp_4),
        .I3(spike_carry_i_55__0),
        .I4(spike_carry_i_55__0_0),
        .I5(spike_carry_i_55__0_1),
        .O(tmp_1));
  LUT6 #(
    .INIT(64'hF0AA0000CC000000)) 
    spike_carry_i_138__0
       (.I0(tmp_8),
        .I1(tmp_9),
        .I2(tmp_10),
        .I3(spike_carry_i_30__0_0[0]),
        .I4(spike_carry_i_57__0),
        .I5(spike_carry__0_i_46__0),
        .O(tmp_7));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_140__0
       (.I0(tmp__0[19]),
        .I1(tmp__0[18]),
        .I2(spike_carry_i_67__0),
        .I3(P[2]),
        .O(tmp_6));
  LUT5 #(
    .INIT(32'h80020280)) 
    spike_carry_i_151__0
       (.I0(P[2]),
        .I1(noise_out_reg[0]),
        .I2(DOBDO[10]),
        .I3(noise_out_reg[1]),
        .I4(DOBDO[11]),
        .O(tmp_11));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_156__0
       (.I0(tmp__0[20]),
        .I1(P[2]),
        .I2(spike_carry_i_67__0),
        .I3(tmp__0[18]),
        .I4(tmp__0[19]),
        .O(spike_carry_i_156__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_157__0
       (.I0(tmp__0[12]),
        .I1(P[2]),
        .I2(spike_carry_i_67__0),
        .I3(tmp__0[10]),
        .I4(tmp__0[11]),
        .O(spike_carry_i_157__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    spike_carry_i_158__0
       (.I0(tmp_15),
        .I1(tmp_10),
        .I2(tmp_3),
        .I3(tmp_16),
        .I4(tmp_17),
        .I5(tmp_2),
        .O(spike_carry_i_158__0_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_165__0
       (.I0(P[0]),
        .I1(P[2]),
        .I2(spike_carry_i_67__0),
        .I3(tmp__0[14]),
        .I4(tmp__0[15]),
        .O(spike_carry_i_165__0_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_166__0
       (.I0(tmp__0[18]),
        .I1(P[2]),
        .I2(spike_carry_i_67__0),
        .I3(P[0]),
        .I4(P[1]),
        .O(spike_carry_i_166__0_n_0));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    spike_carry_i_167__0
       (.I0(tmp__0[14]),
        .I1(P[2]),
        .I2(spike_carry_i_67__0),
        .I3(tmp__0[12]),
        .I4(tmp__0[13]),
        .O(spike_carry_i_167__0_n_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_75__0
       (.I0(tmp__0[15]),
        .I1(tmp__0[14]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_17));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_77__0
       (.I0(P[1]),
        .I1(P[0]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_16));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_80__0
       (.I0(tmp__0[13]),
        .I1(tmp__0[12]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_10));
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike_carry_i_81__0
       (.I0(tmp__0[11]),
        .I1(tmp__0[10]),
        .I2(spike_carry_i_67__0),
        .I3(P[2]),
        .O(tmp_9));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    spike_carry_i_83__0
       (.I0(spike_carry_i_156__0_n_0),
        .I1(spike_carry_i_157__0_n_0),
        .I2(spike_carry_i_158__0_n_0),
        .I3(spike_carry_i_30__0),
        .I4(spike_carry_i_30__0_0[1]),
        .I5(spike_carry_i_30__0_1),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    spike_carry_i_99__0
       (.I0(P[0]),
        .I1(tmp__0[15]),
        .I2(spike_carry_i_47__0),
        .I3(spike_carry_i_47__0_0),
        .I4(spike_carry__0_i_46__0_0),
        .I5(P[2]),
        .O(tmp_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
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
    tmp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,DOBDO[9:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_P_UNCONNECTED[47:32],tmp_n_74,tmp_n_75,tmp_n_76,tmp_n_77,tmp_n_78,tmp_n_79,tmp_n_80,tmp_n_81,tmp_n_82,tmp_n_83,P[2],tmp__0[20:18],P[1:0],tmp__0[15:10],tmp_n_96,tmp_n_97,tmp_n_98,tmp_n_99,tmp_n_100,tmp_n_101,tmp_n_102,tmp_n_103,tmp_n_104,tmp_n_105}),
        .PATTERNBDETECT(NLW_tmp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_tmp_UNDERFLOW_UNCONNECTED));
endmodule

module neuron_ensemble
   (\selected_membrane_reg_reg[15]_0 ,
    S,
    DI,
    x_reg_rep,
    \selected_membrane_reg_reg[14]_0 ,
    \noise_out_reg_reg[14] ,
    x_reg_rep_0,
    \noise_out_reg_reg[10] ,
    tmp,
    \noise_out_reg_reg[10]_0 ,
    \noise_out_reg_reg[14]_0 ,
    tmp_0,
    \noise_out_reg_reg[12] ,
    tmp_1,
    tmp_2,
    DOBDO,
    x_reg_rep_1,
    x_reg_rep_2,
    D,
    E,
    spikes,
    p_1_in,
    neuron_states_storage2_in,
    \index_of_neuron_that_fired_reg_reg[0] ,
    \index_of_neuron_that_fired_reg_reg[2] ,
    \selected_idx_offset_reg_reg[1]_0 ,
    Q_out0,
    out,
    neuron_state_reg,
    clk_IBUF_BUFG,
    Q,
    write_neuron_states_IBUF,
    membrane_data_in_IBUF,
    incrementing_reg,
    decrease_temp,
    spike_carry_0,
    spike_carry_1,
    spike_carry__0_0,
    membrane_compare__14,
    spike_carry__0_i_25__0,
    spike_carry__0_i_55__0,
    spike_carry_2,
    spike_carry_i_19__0,
    spike_carry_3,
    spike_carry_4,
    spike_carry_i_9__0,
    spike_carry_i_19__0_0,
    spike_carry__0_1,
    spike_carry__0_2,
    spike_carry_i_25__0,
    spike_carry_i_25__0_0,
    spike_carry_i_19__0_1,
    spike_carry__0_i_18__0,
    spike_carry__0_i_18__0_0,
    spike_carry__0_i_21__0,
    spike_carry__0_i_18__0_1,
    P,
    spike_carry_i_24__0,
    spike_carry__0_i_25__0_0,
    spike_carry__0_i_83__0,
    noise_out_reg,
    spike_carry_i_159__0,
    spike_carry_i_159__0_0,
    \FSM_onehot_current_state_reg[2] ,
    \FSM_onehot_current_state_reg[2]_0 ,
    \neuron_state_reg_reg[1]_0 ,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \neuron_state_reg_reg[1]_1 ,
    p_0_in,
    \neuron_state_reg_reg[1]_2 ,
    \neuron_state_reg_reg[1]_3 ,
    spike_carry_i_21__0,
    spike_carry_i_21__0_0,
    spike_carry__0_i_12__0,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    x_reg_rep_3,
    flipping_CE,
    ADDRBWRADDR);
  output [15:0]\selected_membrane_reg_reg[15]_0 ;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep;
  output [3:0]\selected_membrane_reg_reg[14]_0 ;
  output \noise_out_reg_reg[14] ;
  output x_reg_rep_0;
  output \noise_out_reg_reg[10] ;
  output tmp;
  output \noise_out_reg_reg[10]_0 ;
  output \noise_out_reg_reg[14]_0 ;
  output tmp_0;
  output \noise_out_reg_reg[12] ;
  output tmp_1;
  output tmp_2;
  output [11:0]DOBDO;
  output x_reg_rep_1;
  output x_reg_rep_2;
  output [0:0]D;
  output [0:0]E;
  output [0:0]spikes;
  output [0:0]p_1_in;
  output [3:0]neuron_states_storage2_in;
  output [0:0]\index_of_neuron_that_fired_reg_reg[0] ;
  output [3:0]\index_of_neuron_that_fired_reg_reg[2] ;
  output [1:0]\selected_idx_offset_reg_reg[1]_0 ;
  output [3:0]Q_out0;
  output [3:0]out;
  output [0:0]neuron_state_reg;
  input clk_IBUF_BUFG;
  input [2:0]Q;
  input [2:0]write_neuron_states_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input incrementing_reg;
  input decrease_temp;
  input spike_carry_0;
  input [0:0]spike_carry_1;
  input spike_carry__0_0;
  input [7:0]membrane_compare__14;
  input spike_carry__0_i_25__0;
  input spike_carry__0_i_55__0;
  input spike_carry_2;
  input spike_carry_i_19__0;
  input spike_carry_3;
  input spike_carry_4;
  input spike_carry_i_9__0;
  input spike_carry_i_19__0_0;
  input spike_carry__0_1;
  input spike_carry__0_2;
  input spike_carry_i_25__0;
  input spike_carry_i_25__0_0;
  input spike_carry_i_19__0_1;
  input spike_carry__0_i_18__0;
  input spike_carry__0_i_18__0_0;
  input spike_carry__0_i_21__0;
  input spike_carry__0_i_18__0_1;
  input [2:0]P;
  input spike_carry_i_24__0;
  input spike_carry__0_i_25__0_0;
  input spike_carry__0_i_83__0;
  input [5:0]noise_out_reg;
  input spike_carry_i_159__0;
  input spike_carry_i_159__0_0;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input \FSM_onehot_current_state_reg[2]_0 ;
  input [3:0]\neuron_state_reg_reg[1]_0 ;
  input [3:0]neuron_state_in_IBUF;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \neuron_state_reg_reg[1]_1 ;
  input [3:0]p_0_in;
  input \neuron_state_reg_reg[1]_2 ;
  input [3:0]\neuron_state_reg_reg[1]_3 ;
  input spike_carry_i_21__0;
  input spike_carry_i_21__0_0;
  input spike_carry__0_i_12__0;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input x_reg_rep_3;
  input flipping_CE;
  input [6:0]ADDRBWRADDR;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [3:0]DI;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [2:0]P;
  wire [2:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [5:0]flipping_seed_IBUF;
  wire flipping_unit_tb_n_12;
  wire flipping_unit_tb_n_13;
  wire flipping_unit_tb_n_14;
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
  wire flipping_unit_tb_n_27;
  wire flipping_unit_tb_n_28;
  wire \i_/i_/i___134_carry__0_n_0 ;
  wire \i_/i_/i___134_carry__0_n_1 ;
  wire \i_/i_/i___134_carry__0_n_2 ;
  wire \i_/i_/i___134_carry__0_n_3 ;
  wire \i_/i_/i___134_carry__0_n_4 ;
  wire \i_/i_/i___134_carry__0_n_5 ;
  wire \i_/i_/i___134_carry__0_n_6 ;
  wire \i_/i_/i___134_carry__0_n_7 ;
  wire \i_/i_/i___134_carry__1_n_0 ;
  wire \i_/i_/i___134_carry__1_n_1 ;
  wire \i_/i_/i___134_carry__1_n_2 ;
  wire \i_/i_/i___134_carry__1_n_3 ;
  wire \i_/i_/i___134_carry__1_n_4 ;
  wire \i_/i_/i___134_carry__1_n_5 ;
  wire \i_/i_/i___134_carry__1_n_6 ;
  wire \i_/i_/i___134_carry__1_n_7 ;
  wire \i_/i_/i___134_carry__2_n_1 ;
  wire \i_/i_/i___134_carry__2_n_2 ;
  wire \i_/i_/i___134_carry__2_n_3 ;
  wire \i_/i_/i___134_carry__2_n_4 ;
  wire \i_/i_/i___134_carry__2_n_5 ;
  wire \i_/i_/i___134_carry__2_n_6 ;
  wire \i_/i_/i___134_carry__2_n_7 ;
  wire \i_/i_/i___134_carry_n_0 ;
  wire \i_/i_/i___134_carry_n_1 ;
  wire \i_/i_/i___134_carry_n_2 ;
  wire \i_/i_/i___134_carry_n_3 ;
  wire \i_/i_/i___134_carry_n_4 ;
  wire \i_/i_/i___134_carry_n_5 ;
  wire \i_/i_/i___134_carry_n_6 ;
  wire \i_/i_/i___134_carry_n_7 ;
  wire \i_/i_/i___44_carry__0_n_0 ;
  wire \i_/i_/i___44_carry__0_n_1 ;
  wire \i_/i_/i___44_carry__0_n_2 ;
  wire \i_/i_/i___44_carry__0_n_3 ;
  wire \i_/i_/i___44_carry__0_n_4 ;
  wire \i_/i_/i___44_carry__0_n_5 ;
  wire \i_/i_/i___44_carry__0_n_6 ;
  wire \i_/i_/i___44_carry__0_n_7 ;
  wire \i_/i_/i___44_carry__1_n_0 ;
  wire \i_/i_/i___44_carry__1_n_1 ;
  wire \i_/i_/i___44_carry__1_n_2 ;
  wire \i_/i_/i___44_carry__1_n_3 ;
  wire \i_/i_/i___44_carry__1_n_4 ;
  wire \i_/i_/i___44_carry__1_n_5 ;
  wire \i_/i_/i___44_carry__1_n_6 ;
  wire \i_/i_/i___44_carry__1_n_7 ;
  wire \i_/i_/i___44_carry__2_n_1 ;
  wire \i_/i_/i___44_carry__2_n_2 ;
  wire \i_/i_/i___44_carry__2_n_3 ;
  wire \i_/i_/i___44_carry__2_n_4 ;
  wire \i_/i_/i___44_carry__2_n_5 ;
  wire \i_/i_/i___44_carry__2_n_6 ;
  wire \i_/i_/i___44_carry__2_n_7 ;
  wire \i_/i_/i___44_carry_n_0 ;
  wire \i_/i_/i___44_carry_n_1 ;
  wire \i_/i_/i___44_carry_n_2 ;
  wire \i_/i_/i___44_carry_n_3 ;
  wire \i_/i_/i___44_carry_n_4 ;
  wire \i_/i_/i___44_carry_n_5 ;
  wire \i_/i_/i___44_carry_n_6 ;
  wire \i_/i_/i___44_carry_n_7 ;
  wire \i_/i_/i___89_carry__0_n_0 ;
  wire \i_/i_/i___89_carry__0_n_1 ;
  wire \i_/i_/i___89_carry__0_n_2 ;
  wire \i_/i_/i___89_carry__0_n_3 ;
  wire \i_/i_/i___89_carry__0_n_4 ;
  wire \i_/i_/i___89_carry__0_n_5 ;
  wire \i_/i_/i___89_carry__0_n_6 ;
  wire \i_/i_/i___89_carry__0_n_7 ;
  wire \i_/i_/i___89_carry__1_n_0 ;
  wire \i_/i_/i___89_carry__1_n_1 ;
  wire \i_/i_/i___89_carry__1_n_2 ;
  wire \i_/i_/i___89_carry__1_n_3 ;
  wire \i_/i_/i___89_carry__1_n_4 ;
  wire \i_/i_/i___89_carry__1_n_5 ;
  wire \i_/i_/i___89_carry__1_n_6 ;
  wire \i_/i_/i___89_carry__1_n_7 ;
  wire \i_/i_/i___89_carry__2_n_1 ;
  wire \i_/i_/i___89_carry__2_n_2 ;
  wire \i_/i_/i___89_carry__2_n_3 ;
  wire \i_/i_/i___89_carry__2_n_4 ;
  wire \i_/i_/i___89_carry__2_n_5 ;
  wire \i_/i_/i___89_carry__2_n_6 ;
  wire \i_/i_/i___89_carry__2_n_7 ;
  wire \i_/i_/i___89_carry_n_0 ;
  wire \i_/i_/i___89_carry_n_1 ;
  wire \i_/i_/i___89_carry_n_2 ;
  wire \i_/i_/i___89_carry_n_3 ;
  wire \i_/i_/i___89_carry_n_4 ;
  wire \i_/i_/i___89_carry_n_5 ;
  wire \i_/i_/i___89_carry_n_6 ;
  wire \i_/i_/i___89_carry_n_7 ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire \i_/x_reg_rep_i_1_n_0 ;
  wire i__carry_i_1_n_0;
  wire incrementing_reg;
  wire [0:0]\index_of_neuron_that_fired_reg_reg[0] ;
  wire [3:0]\index_of_neuron_that_fired_reg_reg[2] ;
  wire [15:1]membrane_compare0;
  wire [7:0]membrane_compare__14;
  wire [15:2]membrane_compare__14_0;
  wire [15:0]membrane_data_in_IBUF;
  wire neuron_ensemble_storage_inst_n_10;
  wire neuron_ensemble_storage_inst_n_11;
  wire neuron_ensemble_storage_inst_n_12;
  wire neuron_ensemble_storage_inst_n_13;
  wire neuron_ensemble_storage_inst_n_14;
  wire neuron_ensemble_storage_inst_n_15;
  wire neuron_ensemble_storage_inst_n_16;
  wire neuron_ensemble_storage_inst_n_17;
  wire neuron_ensemble_storage_inst_n_18;
  wire neuron_ensemble_storage_inst_n_19;
  wire neuron_ensemble_storage_inst_n_2;
  wire neuron_ensemble_storage_inst_n_20;
  wire neuron_ensemble_storage_inst_n_21;
  wire neuron_ensemble_storage_inst_n_22;
  wire neuron_ensemble_storage_inst_n_23;
  wire neuron_ensemble_storage_inst_n_24;
  wire neuron_ensemble_storage_inst_n_25;
  wire neuron_ensemble_storage_inst_n_26;
  wire neuron_ensemble_storage_inst_n_27;
  wire neuron_ensemble_storage_inst_n_28;
  wire neuron_ensemble_storage_inst_n_29;
  wire neuron_ensemble_storage_inst_n_3;
  wire neuron_ensemble_storage_inst_n_30;
  wire neuron_ensemble_storage_inst_n_31;
  wire neuron_ensemble_storage_inst_n_32;
  wire neuron_ensemble_storage_inst_n_33;
  wire neuron_ensemble_storage_inst_n_34;
  wire neuron_ensemble_storage_inst_n_35;
  wire neuron_ensemble_storage_inst_n_36;
  wire neuron_ensemble_storage_inst_n_37;
  wire neuron_ensemble_storage_inst_n_38;
  wire neuron_ensemble_storage_inst_n_39;
  wire neuron_ensemble_storage_inst_n_40;
  wire neuron_ensemble_storage_inst_n_5;
  wire neuron_ensemble_storage_inst_n_6;
  wire neuron_ensemble_storage_inst_n_67;
  wire neuron_ensemble_storage_inst_n_68;
  wire neuron_ensemble_storage_inst_n_69;
  wire neuron_ensemble_storage_inst_n_7;
  wire neuron_ensemble_storage_inst_n_70;
  wire neuron_ensemble_storage_inst_n_71;
  wire neuron_ensemble_storage_inst_n_72;
  wire neuron_ensemble_storage_inst_n_73;
  wire neuron_ensemble_storage_inst_n_74;
  wire neuron_ensemble_storage_inst_n_75;
  wire neuron_ensemble_storage_inst_n_76;
  wire neuron_ensemble_storage_inst_n_77;
  wire neuron_ensemble_storage_inst_n_78;
  wire neuron_ensemble_storage_inst_n_79;
  wire neuron_ensemble_storage_inst_n_8;
  wire neuron_ensemble_storage_inst_n_80;
  wire neuron_ensemble_storage_inst_n_81;
  wire neuron_ensemble_storage_inst_n_82;
  wire neuron_ensemble_storage_inst_n_83;
  wire neuron_ensemble_storage_inst_n_84;
  wire neuron_ensemble_storage_inst_n_85;
  wire neuron_ensemble_storage_inst_n_86;
  wire neuron_ensemble_storage_inst_n_87;
  wire neuron_ensemble_storage_inst_n_88;
  wire neuron_ensemble_storage_inst_n_89;
  wire neuron_ensemble_storage_inst_n_9;
  wire neuron_ensemble_storage_inst_n_90;
  wire neuron_ensemble_storage_inst_n_91;
  wire neuron_ensemble_storage_inst_n_92;
  wire neuron_ensemble_storage_inst_n_93;
  wire neuron_ensemble_storage_inst_n_94;
  wire neuron_ensemble_storage_inst_n_95;
  wire neuron_ensemble_storage_inst_n_96;
  wire neuron_ensemble_storage_inst_n_97;
  wire neuron_ensemble_storage_inst_n_98;
  wire [1:0]neuron_state0;
  wire [3:0]neuron_state_in_IBUF;
  wire [0:0]neuron_state_reg;
  wire [1:1]neuron_state_reg_2;
  wire [3:0]\neuron_state_reg_reg[1]_0 ;
  wire \neuron_state_reg_reg[1]_1 ;
  wire \neuron_state_reg_reg[1]_2 ;
  wire [3:0]\neuron_state_reg_reg[1]_3 ;
  wire [3:0]neuron_states_storage2_in;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[10] ;
  wire \noise_out_reg_reg[10]_0 ;
  wire \noise_out_reg_reg[12] ;
  wire \noise_out_reg_reg[14] ;
  wire \noise_out_reg_reg[14]_0 ;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire [1:0]\selected_idx_offset_reg_reg[1]_0 ;
  wire [15:0]selected_membrane;
  wire [3:0]\selected_membrane_reg_reg[14]_0 ;
  wire [15:0]\selected_membrane_reg_reg[15]_0 ;
  wire spike_carry_0;
  wire [0:0]spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry_4;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_2;
  wire spike_carry__0_i_12__0;
  wire spike_carry__0_i_17_n_0;
  wire spike_carry__0_i_18__0;
  wire spike_carry__0_i_18__0_0;
  wire spike_carry__0_i_18__0_1;
  wire spike_carry__0_i_21__0;
  wire spike_carry__0_i_22_n_0;
  wire spike_carry__0_i_25__0;
  wire spike_carry__0_i_25__0_0;
  wire spike_carry__0_i_26_n_0;
  wire spike_carry__0_i_30_n_2;
  wire spike_carry__0_i_30_n_3;
  wire spike_carry__0_i_40_n_0;
  wire spike_carry__0_i_40_n_1;
  wire spike_carry__0_i_40_n_2;
  wire spike_carry__0_i_40_n_3;
  wire spike_carry__0_i_55__0;
  wire spike_carry__0_i_61_n_0;
  wire spike_carry__0_i_62_n_0;
  wire spike_carry__0_i_63_n_0;
  wire spike_carry__0_i_71_n_0;
  wire spike_carry__0_i_72_n_0;
  wire spike_carry__0_i_73_n_0;
  wire spike_carry__0_i_74_n_0;
  wire spike_carry__0_i_83__0;
  wire spike_carry__0_n_1;
  wire spike_carry__0_n_2;
  wire spike_carry__0_n_3;
  wire spike_carry_i_125_n_0;
  wire spike_carry_i_126_n_0;
  wire spike_carry_i_127_n_0;
  wire spike_carry_i_128_n_0;
  wire spike_carry_i_129_n_0;
  wire spike_carry_i_14_n_0;
  wire spike_carry_i_159__0;
  wire spike_carry_i_159__0_0;
  wire spike_carry_i_18_n_0;
  wire spike_carry_i_19__0;
  wire spike_carry_i_19__0_0;
  wire spike_carry_i_19__0_1;
  wire spike_carry_i_21__0;
  wire spike_carry_i_21__0_0;
  wire spike_carry_i_23_n_0;
  wire spike_carry_i_24__0;
  wire spike_carry_i_25__0;
  wire spike_carry_i_25__0_0;
  wire spike_carry_i_26_n_0;
  wire spike_carry_i_31_n_0;
  wire spike_carry_i_31_n_1;
  wire spike_carry_i_31_n_2;
  wire spike_carry_i_31_n_3;
  wire spike_carry_i_46_n_0;
  wire spike_carry_i_46_n_1;
  wire spike_carry_i_46_n_2;
  wire spike_carry_i_46_n_3;
  wire spike_carry_i_87_n_0;
  wire spike_carry_i_88_n_0;
  wire spike_carry_i_89_n_0;
  wire spike_carry_i_90_n_0;
  wire spike_carry_i_9__0;
  wire spike_carry_n_0;
  wire spike_carry_n_1;
  wire spike_carry_n_2;
  wire spike_carry_n_3;
  wire spike_out;
  wire [0:0]spikes;
  wire storage_CE;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_2;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [2:0]write_neuron_states_IBUF;
  wire [3:0]x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_3;
  wire [3:3]\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_30_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_30_O_UNCONNECTED;

  flipping_unit_9 flipping_unit_tb
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(spike_out),
        .D(D),
        .DI({flipping_unit_tb_n_17,flipping_unit_tb_n_18,flipping_unit_tb_n_19,flipping_unit_tb_n_20}),
        .DOBDO(DOBDO),
        .E(flipping_unit_tb_n_12),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[2] ),
        .\FSM_onehot_current_state_reg[2]_0 (\FSM_onehot_current_state_reg[2]_0 ),
        .P(P),
        .Q(Q),
        .S({flipping_unit_tb_n_13,flipping_unit_tb_n_14,flipping_unit_tb_n_15,flipping_unit_tb_n_16}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (E),
        .decrease_temp(decrease_temp),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .membrane_compare__14(membrane_compare__14),
        .membrane_compare__14_0({membrane_compare__14_0[15:14],membrane_compare__14_0[12],membrane_compare__14_0[10],membrane_compare__14_0[8],membrane_compare__14_0[6],membrane_compare__14_0[4],membrane_compare__14_0[2]}),
        .noise_out_reg(noise_out_reg),
        .\noise_out_reg_reg[10]_0 (\noise_out_reg_reg[10] ),
        .\noise_out_reg_reg[10]_1 (\noise_out_reg_reg[10]_0 ),
        .\noise_out_reg_reg[12]_0 (\noise_out_reg_reg[12] ),
        .\noise_out_reg_reg[14]_0 (\noise_out_reg_reg[14] ),
        .\noise_out_reg_reg[14]_1 (\noise_out_reg_reg[14]_0 ),
        .\selected_membrane_reg_reg[14] ({flipping_unit_tb_n_25,flipping_unit_tb_n_26,flipping_unit_tb_n_27,flipping_unit_tb_n_28}),
        .\selected_membrane_reg_reg[14]_0 (\selected_membrane_reg_reg[14]_0 ),
        .\selected_membrane_reg_reg[6] (DI),
        .\selected_membrane_reg_reg[7] (S),
        .spike_carry(spike_carry_i_26_n_0),
        .spike_carry_0(\selected_membrane_reg_reg[15]_0 [0]),
        .spike_carry_1(spike_carry_i_23_n_0),
        .spike_carry_2(spike_carry_i_18_n_0),
        .spike_carry_3(spike_carry_i_14_n_0),
        .spike_carry_4(spike_carry_0),
        .spike_carry_5(spike_carry_1),
        .spike_carry_6(spike_carry_2),
        .spike_carry_7(spike_carry_3),
        .spike_carry_8(spike_carry_4),
        .spike_carry__0(spike_carry__0_i_26_n_0),
        .spike_carry__0_0(spike_carry__0_i_22_n_0),
        .spike_carry__0_1(spike_carry__0_i_17_n_0),
        .spike_carry__0_2(spike_carry__0_0),
        .spike_carry__0_3(spike_carry__0_1),
        .spike_carry__0_4(spike_carry__0_2),
        .spike_carry__0_i_12__0(spike_carry__0_i_12__0),
        .spike_carry__0_i_18__0(spike_carry__0_i_18__0),
        .spike_carry__0_i_18__0_0(spike_carry__0_i_18__0_0),
        .spike_carry__0_i_18__0_1(spike_carry__0_i_18__0_1),
        .spike_carry__0_i_21__0(spike_carry__0_i_21__0),
        .spike_carry__0_i_25__0(spike_carry__0_i_25__0),
        .spike_carry__0_i_25__0_0(spike_carry__0_i_25__0_0),
        .spike_carry__0_i_55__0(spike_carry__0_i_55__0),
        .spike_carry__0_i_83__0(spike_carry__0_i_83__0),
        .spike_carry_i_159__0(spike_carry_i_159__0),
        .spike_carry_i_159__0_0(spike_carry_i_159__0_0),
        .spike_carry_i_19__0(spike_carry_i_19__0),
        .spike_carry_i_19__0_0(spike_carry_i_19__0_0),
        .spike_carry_i_19__0_1(spike_carry_i_19__0_1),
        .spike_carry_i_21__0(spike_carry_i_21__0),
        .spike_carry_i_21__0_0(spike_carry_i_21__0_0),
        .spike_carry_i_24__0(spike_carry_i_24__0),
        .spike_carry_i_25__0(spike_carry_i_25__0),
        .spike_carry_i_25__0_0(spike_carry_i_25__0_0),
        .spike_carry_i_9__0(spike_carry_i_9__0),
        .spikes(spikes),
        .tmp(tmp),
        .tmp_0(tmp_0),
        .tmp_1(tmp_1),
        .tmp_2(tmp_2),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .x_reg_rep({flipping_unit_tb_n_21,flipping_unit_tb_n_22,flipping_unit_tb_n_23,flipping_unit_tb_n_24}),
        .x_reg_rep_0(x_reg_rep),
        .x_reg_rep_1(x_reg_rep_0),
        .x_reg_rep_2(x_reg_rep_1),
        .x_reg_rep_3(x_reg_rep_2),
        .x_reg_rep_4(\i_/x_reg_rep_i_1_n_0 ),
        .x_reg_rep_5(x_reg_rep_3));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___134_carry_n_0 ,\i_/i_/i___134_carry_n_1 ,\i_/i_/i___134_carry_n_2 ,\i_/i_/i___134_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,neuron_ensemble_storage_inst_n_37,1'b0}),
        .O({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_21,neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__0 
       (.CI(\i_/i_/i___134_carry_n_0 ),
        .CO({\i_/i_/i___134_carry__0_n_0 ,\i_/i_/i___134_carry__0_n_1 ,\i_/i_/i___134_carry__0_n_2 ,\i_/i_/i___134_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93,neuron_ensemble_storage_inst_n_94}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__1 
       (.CI(\i_/i_/i___134_carry__0_n_0 ),
        .CO({\i_/i_/i___134_carry__1_n_0 ,\i_/i_/i___134_carry__1_n_1 ,\i_/i_/i___134_carry__1_n_2 ,\i_/i_/i___134_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_95,neuron_ensemble_storage_inst_n_96,neuron_ensemble_storage_inst_n_97,neuron_ensemble_storage_inst_n_98}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__2 
       (.CI(\i_/i_/i___134_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED [3],\i_/i_/i___134_carry__2_n_1 ,\i_/i_/i___134_carry__2_n_2 ,\i_/i_/i___134_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_5,neuron_ensemble_storage_inst_n_6,neuron_ensemble_storage_inst_n_7,neuron_ensemble_storage_inst_n_8}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___44_carry_n_0 ,\i_/i_/i___44_carry_n_1 ,\i_/i_/i___44_carry_n_2 ,\i_/i_/i___44_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,neuron_ensemble_storage_inst_n_39,1'b0}),
        .O({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_29,neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__0 
       (.CI(\i_/i_/i___44_carry_n_0 ),
        .CO({\i_/i_/i___44_carry__0_n_0 ,\i_/i_/i___44_carry__0_n_1 ,\i_/i_/i___44_carry__0_n_2 ,\i_/i_/i___44_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77,neuron_ensemble_storage_inst_n_78}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__1 
       (.CI(\i_/i_/i___44_carry__0_n_0 ),
        .CO({\i_/i_/i___44_carry__1_n_0 ,\i_/i_/i___44_carry__1_n_1 ,\i_/i_/i___44_carry__1_n_2 ,\i_/i_/i___44_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81,neuron_ensemble_storage_inst_n_82}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__2 
       (.CI(\i_/i_/i___44_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED [3],\i_/i_/i___44_carry__2_n_1 ,\i_/i_/i___44_carry__2_n_2 ,\i_/i_/i___44_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_13,neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___89_carry_n_0 ,\i_/i_/i___89_carry_n_1 ,\i_/i_/i___89_carry_n_2 ,\i_/i_/i___89_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,neuron_ensemble_storage_inst_n_38,1'b0}),
        .O({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_25,neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__0 
       (.CI(\i_/i_/i___89_carry_n_0 ),
        .CO({\i_/i_/i___89_carry__0_n_0 ,\i_/i_/i___89_carry__0_n_1 ,\i_/i_/i___89_carry__0_n_2 ,\i_/i_/i___89_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85,neuron_ensemble_storage_inst_n_86}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__1 
       (.CI(\i_/i_/i___89_carry__0_n_0 ),
        .CO({\i_/i_/i___89_carry__1_n_0 ,\i_/i_/i___89_carry__1_n_1 ,\i_/i_/i___89_carry__1_n_2 ,\i_/i_/i___89_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89,neuron_ensemble_storage_inst_n_90}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__2 
       (.CI(\i_/i_/i___89_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED [3],\i_/i_/i___89_carry__2_n_1 ,\i_/i_/i___89_carry__2_n_2 ,\i_/i_/i___89_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_9,neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,neuron_ensemble_storage_inst_n_40,1'b0}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69,neuron_ensemble_storage_inst_n_70}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73,neuron_ensemble_storage_inst_n_74}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_1_n_0,i__carry_i_1_n_0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_17,neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20}));
  LUT4 #(
    .INIT(16'hFF89)) 
    \i_/x_reg_rep_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(flipping_unit_tb_n_12),
        .O(\i_/x_reg_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000C1C9)) 
    i__carry_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(incrementing_reg),
        .I4(write_neuron_states_IBUF[0]),
        .O(i__carry_i_1_n_0));
  neuron_ensemble_storage_10 neuron_ensemble_storage_inst
       (.D(neuron_state0),
        .DI(neuron_ensemble_storage_inst_n_37),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q(Q),
        .Q_out0(Q_out0),
        .S({neuron_ensemble_storage_inst_n_5,neuron_ensemble_storage_inst_n_6,neuron_ensemble_storage_inst_n_7,neuron_ensemble_storage_inst_n_8}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\index_of_neuron_that_fired_reg_reg[0] (\index_of_neuron_that_fired_reg_reg[0] ),
        .\index_of_neuron_that_fired_reg_reg[2] (\index_of_neuron_that_fired_reg_reg[2] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11]_0 ({neuron_ensemble_storage_inst_n_95,neuron_ensemble_storage_inst_n_96,neuron_ensemble_storage_inst_n_97,neuron_ensemble_storage_inst_n_98}),
        .\membrane_storage_reg[0][11]_1 ({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .\membrane_storage_reg[0][15]_0 ({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .\membrane_storage_reg[0][3]_0 ({neuron_ensemble_storage_inst_n_21,neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24}),
        .\membrane_storage_reg[0][3]_1 ({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .\membrane_storage_reg[0][7]_0 ({neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93,neuron_ensemble_storage_inst_n_94}),
        .\membrane_storage_reg[0][7]_1 ({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .\membrane_storage_reg[1][11]_0 ({neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89,neuron_ensemble_storage_inst_n_90}),
        .\membrane_storage_reg[1][11]_1 ({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .\membrane_storage_reg[1][15]_0 ({neuron_ensemble_storage_inst_n_9,neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12}),
        .\membrane_storage_reg[1][15]_1 ({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .\membrane_storage_reg[1][1]_0 (neuron_ensemble_storage_inst_n_38),
        .\membrane_storage_reg[1][3]_0 ({neuron_ensemble_storage_inst_n_25,neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28}),
        .\membrane_storage_reg[1][3]_1 ({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .\membrane_storage_reg[1][7]_0 ({neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85,neuron_ensemble_storage_inst_n_86}),
        .\membrane_storage_reg[1][7]_1 ({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .\membrane_storage_reg[2][11]_0 ({neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81,neuron_ensemble_storage_inst_n_82}),
        .\membrane_storage_reg[2][11]_1 ({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .\membrane_storage_reg[2][15]_0 ({neuron_ensemble_storage_inst_n_13,neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16}),
        .\membrane_storage_reg[2][15]_1 (selected_membrane),
        .\membrane_storage_reg[2][15]_2 ({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .\membrane_storage_reg[2][1]_0 (neuron_ensemble_storage_inst_n_39),
        .\membrane_storage_reg[2][3]_0 ({neuron_ensemble_storage_inst_n_29,neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32}),
        .\membrane_storage_reg[2][3]_1 ({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .\membrane_storage_reg[2][7]_0 ({neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77,neuron_ensemble_storage_inst_n_78}),
        .\membrane_storage_reg[2][7]_1 ({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .\membrane_storage_reg[3][11]_0 ({neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73,neuron_ensemble_storage_inst_n_74}),
        .\membrane_storage_reg[3][11]_1 ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\membrane_storage_reg[3][15]_0 ({neuron_ensemble_storage_inst_n_17,neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20}),
        .\membrane_storage_reg[3][15]_1 ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\membrane_storage_reg[3][1]_0 (neuron_ensemble_storage_inst_n_40),
        .\membrane_storage_reg[3][3]_0 ({neuron_ensemble_storage_inst_n_33,neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36}),
        .\membrane_storage_reg[3][3]_1 (i__carry_i_1_n_0),
        .\membrane_storage_reg[3][7]_0 ({neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69,neuron_ensemble_storage_inst_n_70}),
        .\membrane_storage_reg[3][7]_1 ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg_reg[1] (\neuron_state_reg_reg[1]_0 ),
        .\neuron_state_reg_reg[1]_0 (\neuron_state_reg_reg[1]_1 ),
        .\neuron_state_reg_reg[1]_1 (\neuron_state_reg_reg[1]_2 ),
        .\neuron_state_reg_reg[1]_2 (\neuron_state_reg_reg[1]_3 ),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .out(out),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\state_reg[1] (neuron_ensemble_storage_inst_n_3),
        .\state_reg[2] (neuron_ensemble_storage_inst_n_2),
        .storage_CE(storage_CE),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0[0]),
        .Q(neuron_state_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0[1]),
        .Q(neuron_state_reg_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_3),
        .Q(\selected_idx_offset_reg_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_2),
        .Q(\selected_idx_offset_reg_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\selected_membrane_reg_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(\selected_membrane_reg_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(\selected_membrane_reg_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(\selected_membrane_reg_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(\selected_membrane_reg_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(\selected_membrane_reg_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(\selected_membrane_reg_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\selected_membrane_reg_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\selected_membrane_reg_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\selected_membrane_reg_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\selected_membrane_reg_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\selected_membrane_reg_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\selected_membrane_reg_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\selected_membrane_reg_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\selected_membrane_reg_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\selected_membrane_reg_reg[15]_0 [9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry
       (.CI(1'b0),
        .CO({spike_carry_n_0,spike_carry_n_1,spike_carry_n_2,spike_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_17,flipping_unit_tb_n_18,flipping_unit_tb_n_19,flipping_unit_tb_n_20}),
        .O(NLW_spike_carry_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_13,flipping_unit_tb_n_14,flipping_unit_tb_n_15,flipping_unit_tb_n_16}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry__0
       (.CI(spike_carry_n_0),
        .CO({spike_out,spike_carry__0_n_1,spike_carry__0_n_2,spike_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_25,flipping_unit_tb_n_26,flipping_unit_tb_n_27,flipping_unit_tb_n_28}),
        .O(NLW_spike_carry__0_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_21,flipping_unit_tb_n_22,flipping_unit_tb_n_23,flipping_unit_tb_n_24}));
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_10
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[14]),
        .O(membrane_compare__14_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_11
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[15]),
        .O(membrane_compare__14_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_15
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[12]),
        .O(membrane_compare__14_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_17
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[13]),
        .O(spike_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_19
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[10]),
        .O(membrane_compare__14_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_22
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[11]),
        .O(spike_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_24
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[8]),
        .O(membrane_compare__14_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_26
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[9]),
        .O(spike_carry__0_i_26_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_30
       (.CI(spike_carry__0_i_40_n_0),
        .CO({NLW_spike_carry__0_i_30_CO_UNCONNECTED[3:2],spike_carry__0_i_30_n_2,spike_carry__0_i_30_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_30_O_UNCONNECTED[3],membrane_compare0[15:13]}),
        .S({1'b0,spike_carry__0_i_61_n_0,spike_carry__0_i_62_n_0,spike_carry__0_i_63_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_40
       (.CI(spike_carry_i_31_n_0),
        .CO({spike_carry__0_i_40_n_0,spike_carry__0_i_40_n_1,spike_carry__0_i_40_n_2,spike_carry__0_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[12:9]),
        .S({spike_carry__0_i_71_n_0,spike_carry__0_i_72_n_0,spike_carry__0_i_73_n_0,spike_carry__0_i_74_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_61
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .O(spike_carry__0_i_61_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_62
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .O(spike_carry__0_i_62_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_63
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .O(spike_carry__0_i_63_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_71
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .O(spike_carry__0_i_71_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_72
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .O(spike_carry__0_i_72_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_73
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .O(spike_carry__0_i_73_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_74
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .O(spike_carry__0_i_74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_10
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[6]),
        .O(membrane_compare__14_0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_125
       (.I0(\selected_membrane_reg_reg[15]_0 [0]),
        .O(spike_carry_i_125_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_126
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .O(spike_carry_i_126_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_127
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .O(spike_carry_i_127_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_128
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .O(spike_carry_i_128_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_129
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .O(spike_carry_i_129_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_14
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[7]),
        .O(spike_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_16
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[4]),
        .O(membrane_compare__14_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_18
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[5]),
        .O(spike_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_20
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[2]),
        .O(membrane_compare__14_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_23
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[3]),
        .O(spike_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_26
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .I1(neuron_state_reg_2),
        .I2(membrane_compare0[1]),
        .O(spike_carry_i_26_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_31
       (.CI(spike_carry_i_46_n_0),
        .CO({spike_carry_i_31_n_0,spike_carry_i_31_n_1,spike_carry_i_31_n_2,spike_carry_i_31_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[8:5]),
        .S({spike_carry_i_87_n_0,spike_carry_i_88_n_0,spike_carry_i_89_n_0,spike_carry_i_90_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_46
       (.CI(1'b0),
        .CO({spike_carry_i_46_n_0,spike_carry_i_46_n_1,spike_carry_i_46_n_2,spike_carry_i_46_n_3}),
        .CYINIT(spike_carry_i_125_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[4:1]),
        .S({spike_carry_i_126_n_0,spike_carry_i_127_n_0,spike_carry_i_128_n_0,spike_carry_i_129_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_87
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .O(spike_carry_i_87_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_88
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .O(spike_carry_i_88_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_89
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .O(spike_carry_i_89_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_90
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .O(spike_carry_i_90_n_0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module neuron_ensemble__parameterized0
   (\current_state_reg[1] ,
    P,
    CO,
    \idx_reg[0] ,
    \current_state_reg[1]_0 ,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    noise_out_reg,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    \noise_out_reg_reg[4] ,
    \noise_out_reg_reg[12] ,
    \selected_membrane_reg_reg[1]_0 ,
    \selected_membrane_reg_reg[3]_0 ,
    membrane_compare__14,
    \selected_membrane_reg_reg[5]_0 ,
    \selected_membrane_reg_reg[7]_0 ,
    \selected_membrane_reg_reg[9]_0 ,
    \selected_membrane_reg_reg[11]_0 ,
    \selected_membrane_reg_reg[13]_0 ,
    \selected_membrane_reg_reg[15]_0 ,
    \selected_membrane_reg_reg[0]_0 ,
    \neuron_state_reg_reg[0]_0 ,
    D,
    ADDRBWRADDR,
    p_0_in,
    Q,
    DOBDO,
    clk_IBUF_BUFG,
    DI,
    S,
    \unit_number_reg_reg[0] ,
    \unit_number_reg_reg[0]_0 ,
    decrease_temp,
    write_neuron_states_IBUF,
    Q_out0,
    membrane_data_in_IBUF,
    incrementing_reg,
    spike_carry_i_30__0,
    spike_carry_i_30__0_0,
    spike_carry_i_30__0_1,
    spike_carry_i_55__0,
    spike_carry_i_55__0_0,
    spike_carry_i_55__0_1,
    spike_carry_i_57__0,
    spike_carry__0_i_46__0,
    spike_carry_i_67__0,
    spike_carry_i_47__0,
    spike_carry_i_47__0_0,
    \membrane_reg_reg[15] ,
    \offset_reg_reg[1] ,
    \offset_reg_reg[1]_0 ,
    offset1,
    add_mem_reg,
    \offset_reg_reg[1]_1 ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \neuron_state_reg_reg[1]_0 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_states_storage2_in,
    p_1_in);
  output \current_state_reg[1] ;
  output [2:0]P;
  output [0:0]CO;
  output \idx_reg[0] ;
  output \current_state_reg[1]_0 ;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output [5:0]noise_out_reg;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  output \noise_out_reg_reg[4] ;
  output \noise_out_reg_reg[12] ;
  output \selected_membrane_reg_reg[1]_0 ;
  output \selected_membrane_reg_reg[3]_0 ;
  output [7:0]membrane_compare__14;
  output \selected_membrane_reg_reg[5]_0 ;
  output \selected_membrane_reg_reg[7]_0 ;
  output \selected_membrane_reg_reg[9]_0 ;
  output \selected_membrane_reg_reg[11]_0 ;
  output \selected_membrane_reg_reg[13]_0 ;
  output [15:0]\selected_membrane_reg_reg[15]_0 ;
  output [0:0]\selected_membrane_reg_reg[0]_0 ;
  output \neuron_state_reg_reg[0]_0 ;
  output [1:0]D;
  output [6:0]ADDRBWRADDR;
  output [3:0]p_0_in;
  input [2:0]Q;
  input [11:0]DOBDO;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\unit_number_reg_reg[0] ;
  input [3:0]\unit_number_reg_reg[0]_0 ;
  input decrease_temp;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]Q_out0;
  input [15:0]membrane_data_in_IBUF;
  input incrementing_reg;
  input spike_carry_i_30__0;
  input [1:0]spike_carry_i_30__0_0;
  input spike_carry_i_30__0_1;
  input spike_carry_i_55__0;
  input spike_carry_i_55__0_0;
  input spike_carry_i_55__0_1;
  input spike_carry_i_57__0;
  input spike_carry__0_i_46__0;
  input spike_carry_i_67__0;
  input spike_carry_i_47__0;
  input spike_carry_i_47__0_0;
  input [31:0]\membrane_reg_reg[15] ;
  input \offset_reg_reg[1] ;
  input \offset_reg_reg[1]_0 ;
  input offset1;
  input [1:0]add_mem_reg;
  input [3:0]\offset_reg_reg[1]_1 ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [1:0]\neuron_state_reg_reg[1]_0 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_states_storage2_in;
  input [0:0]p_1_in;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [11:0]DOBDO;
  wire [2:0]P;
  wire [2:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire [1:0]add_mem_reg;
  wire [1:1]add_mems;
  wire [31:17]all_membranes;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire [5:0]flipping_seed_IBUF;
  wire flipping_unit_tb_n_3;
  wire \i_/i_/i___134_carry__0_n_0 ;
  wire \i_/i_/i___134_carry__0_n_1 ;
  wire \i_/i_/i___134_carry__0_n_2 ;
  wire \i_/i_/i___134_carry__0_n_3 ;
  wire \i_/i_/i___134_carry__0_n_4 ;
  wire \i_/i_/i___134_carry__0_n_5 ;
  wire \i_/i_/i___134_carry__0_n_6 ;
  wire \i_/i_/i___134_carry__0_n_7 ;
  wire \i_/i_/i___134_carry__1_n_0 ;
  wire \i_/i_/i___134_carry__1_n_1 ;
  wire \i_/i_/i___134_carry__1_n_2 ;
  wire \i_/i_/i___134_carry__1_n_3 ;
  wire \i_/i_/i___134_carry__1_n_4 ;
  wire \i_/i_/i___134_carry__1_n_5 ;
  wire \i_/i_/i___134_carry__1_n_6 ;
  wire \i_/i_/i___134_carry__1_n_7 ;
  wire \i_/i_/i___134_carry__2_n_1 ;
  wire \i_/i_/i___134_carry__2_n_2 ;
  wire \i_/i_/i___134_carry__2_n_3 ;
  wire \i_/i_/i___134_carry__2_n_4 ;
  wire \i_/i_/i___134_carry__2_n_5 ;
  wire \i_/i_/i___134_carry__2_n_6 ;
  wire \i_/i_/i___134_carry__2_n_7 ;
  wire \i_/i_/i___134_carry_n_0 ;
  wire \i_/i_/i___134_carry_n_1 ;
  wire \i_/i_/i___134_carry_n_2 ;
  wire \i_/i_/i___134_carry_n_3 ;
  wire \i_/i_/i___134_carry_n_4 ;
  wire \i_/i_/i___134_carry_n_5 ;
  wire \i_/i_/i___134_carry_n_6 ;
  wire \i_/i_/i___134_carry_n_7 ;
  wire \i_/i_/i___44_carry__0_n_0 ;
  wire \i_/i_/i___44_carry__0_n_1 ;
  wire \i_/i_/i___44_carry__0_n_2 ;
  wire \i_/i_/i___44_carry__0_n_3 ;
  wire \i_/i_/i___44_carry__0_n_4 ;
  wire \i_/i_/i___44_carry__0_n_5 ;
  wire \i_/i_/i___44_carry__0_n_6 ;
  wire \i_/i_/i___44_carry__0_n_7 ;
  wire \i_/i_/i___44_carry__1_n_0 ;
  wire \i_/i_/i___44_carry__1_n_1 ;
  wire \i_/i_/i___44_carry__1_n_2 ;
  wire \i_/i_/i___44_carry__1_n_3 ;
  wire \i_/i_/i___44_carry__1_n_4 ;
  wire \i_/i_/i___44_carry__1_n_5 ;
  wire \i_/i_/i___44_carry__1_n_6 ;
  wire \i_/i_/i___44_carry__1_n_7 ;
  wire \i_/i_/i___44_carry__2_n_1 ;
  wire \i_/i_/i___44_carry__2_n_2 ;
  wire \i_/i_/i___44_carry__2_n_3 ;
  wire \i_/i_/i___44_carry__2_n_4 ;
  wire \i_/i_/i___44_carry__2_n_5 ;
  wire \i_/i_/i___44_carry__2_n_6 ;
  wire \i_/i_/i___44_carry__2_n_7 ;
  wire \i_/i_/i___44_carry_n_0 ;
  wire \i_/i_/i___44_carry_n_1 ;
  wire \i_/i_/i___44_carry_n_2 ;
  wire \i_/i_/i___44_carry_n_3 ;
  wire \i_/i_/i___44_carry_n_4 ;
  wire \i_/i_/i___44_carry_n_5 ;
  wire \i_/i_/i___44_carry_n_6 ;
  wire \i_/i_/i___44_carry_n_7 ;
  wire \i_/i_/i___89_carry__0_n_0 ;
  wire \i_/i_/i___89_carry__0_n_1 ;
  wire \i_/i_/i___89_carry__0_n_2 ;
  wire \i_/i_/i___89_carry__0_n_3 ;
  wire \i_/i_/i___89_carry__0_n_4 ;
  wire \i_/i_/i___89_carry__0_n_5 ;
  wire \i_/i_/i___89_carry__0_n_6 ;
  wire \i_/i_/i___89_carry__0_n_7 ;
  wire \i_/i_/i___89_carry__1_n_0 ;
  wire \i_/i_/i___89_carry__1_n_1 ;
  wire \i_/i_/i___89_carry__1_n_2 ;
  wire \i_/i_/i___89_carry__1_n_3 ;
  wire \i_/i_/i___89_carry__1_n_4 ;
  wire \i_/i_/i___89_carry__1_n_5 ;
  wire \i_/i_/i___89_carry__1_n_6 ;
  wire \i_/i_/i___89_carry__1_n_7 ;
  wire \i_/i_/i___89_carry__2_n_1 ;
  wire \i_/i_/i___89_carry__2_n_2 ;
  wire \i_/i_/i___89_carry__2_n_3 ;
  wire \i_/i_/i___89_carry__2_n_4 ;
  wire \i_/i_/i___89_carry__2_n_5 ;
  wire \i_/i_/i___89_carry__2_n_6 ;
  wire \i_/i_/i___89_carry__2_n_7 ;
  wire \i_/i_/i___89_carry_n_0 ;
  wire \i_/i_/i___89_carry_n_1 ;
  wire \i_/i_/i___89_carry_n_2 ;
  wire \i_/i_/i___89_carry_n_3 ;
  wire \i_/i_/i___89_carry_n_4 ;
  wire \i_/i_/i___89_carry_n_5 ;
  wire \i_/i_/i___89_carry_n_6 ;
  wire \i_/i_/i___89_carry_n_7 ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire i__carry_i_1__0_n_0;
  wire \idx_reg[0] ;
  wire incrementing_reg;
  wire [15:1]membrane_compare0;
  wire [7:0]membrane_compare__14;
  wire [15:0]membrane_data_in_IBUF;
  wire [31:0]\membrane_reg_reg[15] ;
  wire neuron_ensemble_storage_inst_n_10;
  wire neuron_ensemble_storage_inst_n_11;
  wire neuron_ensemble_storage_inst_n_12;
  wire neuron_ensemble_storage_inst_n_13;
  wire neuron_ensemble_storage_inst_n_14;
  wire neuron_ensemble_storage_inst_n_15;
  wire neuron_ensemble_storage_inst_n_16;
  wire neuron_ensemble_storage_inst_n_17;
  wire neuron_ensemble_storage_inst_n_18;
  wire neuron_ensemble_storage_inst_n_19;
  wire neuron_ensemble_storage_inst_n_2;
  wire neuron_ensemble_storage_inst_n_20;
  wire neuron_ensemble_storage_inst_n_21;
  wire neuron_ensemble_storage_inst_n_22;
  wire neuron_ensemble_storage_inst_n_23;
  wire neuron_ensemble_storage_inst_n_24;
  wire neuron_ensemble_storage_inst_n_25;
  wire neuron_ensemble_storage_inst_n_26;
  wire neuron_ensemble_storage_inst_n_27;
  wire neuron_ensemble_storage_inst_n_28;
  wire neuron_ensemble_storage_inst_n_29;
  wire neuron_ensemble_storage_inst_n_3;
  wire neuron_ensemble_storage_inst_n_30;
  wire neuron_ensemble_storage_inst_n_31;
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
  wire neuron_ensemble_storage_inst_n_62;
  wire neuron_ensemble_storage_inst_n_63;
  wire neuron_ensemble_storage_inst_n_64;
  wire neuron_ensemble_storage_inst_n_65;
  wire neuron_ensemble_storage_inst_n_66;
  wire neuron_ensemble_storage_inst_n_67;
  wire neuron_ensemble_storage_inst_n_68;
  wire neuron_ensemble_storage_inst_n_69;
  wire neuron_ensemble_storage_inst_n_70;
  wire neuron_ensemble_storage_inst_n_71;
  wire neuron_ensemble_storage_inst_n_72;
  wire neuron_ensemble_storage_inst_n_73;
  wire neuron_ensemble_storage_inst_n_74;
  wire neuron_ensemble_storage_inst_n_75;
  wire neuron_ensemble_storage_inst_n_76;
  wire neuron_ensemble_storage_inst_n_77;
  wire neuron_ensemble_storage_inst_n_78;
  wire neuron_ensemble_storage_inst_n_79;
  wire neuron_ensemble_storage_inst_n_80;
  wire neuron_ensemble_storage_inst_n_81;
  wire neuron_ensemble_storage_inst_n_82;
  wire neuron_ensemble_storage_inst_n_83;
  wire neuron_ensemble_storage_inst_n_84;
  wire neuron_ensemble_storage_inst_n_85;
  wire neuron_ensemble_storage_inst_n_86;
  wire neuron_ensemble_storage_inst_n_87;
  wire neuron_ensemble_storage_inst_n_88;
  wire neuron_ensemble_storage_inst_n_89;
  wire neuron_ensemble_storage_inst_n_90;
  wire neuron_ensemble_storage_inst_n_91;
  wire neuron_ensemble_storage_inst_n_92;
  wire neuron_ensemble_storage_inst_n_93;
  wire [1:0]neuron_state0__0;
  wire [1:1]neuron_state_reg;
  wire \neuron_state_reg_reg[0]_0 ;
  wire [1:0]\neuron_state_reg_reg[1]_0 ;
  wire [3:0]neuron_states_storage2_in;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[12] ;
  wire \noise_out_reg_reg[4] ;
  wire offset1;
  wire \offset_reg_reg[1] ;
  wire \offset_reg_reg[1]_0 ;
  wire [3:0]\offset_reg_reg[1]_1 ;
  wire [3:2]offsets;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire [15:0]selected_membrane;
  wire [0:0]\selected_membrane_reg_reg[0]_0 ;
  wire \selected_membrane_reg_reg[11]_0 ;
  wire \selected_membrane_reg_reg[13]_0 ;
  wire [15:0]\selected_membrane_reg_reg[15]_0 ;
  wire \selected_membrane_reg_reg[1]_0 ;
  wire \selected_membrane_reg_reg[3]_0 ;
  wire \selected_membrane_reg_reg[5]_0 ;
  wire \selected_membrane_reg_reg[7]_0 ;
  wire \selected_membrane_reg_reg[9]_0 ;
  wire spike_carry__0_i_30__0_n_2;
  wire spike_carry__0_i_30__0_n_3;
  wire spike_carry__0_i_40__0_n_0;
  wire spike_carry__0_i_40__0_n_1;
  wire spike_carry__0_i_40__0_n_2;
  wire spike_carry__0_i_40__0_n_3;
  wire spike_carry__0_i_46__0;
  wire spike_carry__0_i_61__0_n_0;
  wire spike_carry__0_i_62__0_n_0;
  wire spike_carry__0_i_63__0_n_0;
  wire spike_carry__0_i_71__0_n_0;
  wire spike_carry__0_i_72__0_n_0;
  wire spike_carry__0_i_73__0_n_0;
  wire spike_carry__0_i_74__0_n_0;
  wire spike_carry__0_n_1;
  wire spike_carry__0_n_2;
  wire spike_carry__0_n_3;
  wire spike_carry_i_125__0_n_0;
  wire spike_carry_i_126__0_n_0;
  wire spike_carry_i_127__0_n_0;
  wire spike_carry_i_128__0_n_0;
  wire spike_carry_i_129__0_n_0;
  wire spike_carry_i_30__0;
  wire [1:0]spike_carry_i_30__0_0;
  wire spike_carry_i_30__0_1;
  wire spike_carry_i_31__0_n_0;
  wire spike_carry_i_31__0_n_1;
  wire spike_carry_i_31__0_n_2;
  wire spike_carry_i_31__0_n_3;
  wire spike_carry_i_46__0_n_0;
  wire spike_carry_i_46__0_n_1;
  wire spike_carry_i_46__0_n_2;
  wire spike_carry_i_46__0_n_3;
  wire spike_carry_i_47__0;
  wire spike_carry_i_47__0_0;
  wire spike_carry_i_55__0;
  wire spike_carry_i_55__0_0;
  wire spike_carry_i_55__0_1;
  wire spike_carry_i_57__0;
  wire spike_carry_i_67__0;
  wire spike_carry_i_87__0_n_0;
  wire spike_carry_i_88__0_n_0;
  wire spike_carry_i_89__0_n_0;
  wire spike_carry_i_90__0_n_0;
  wire spike_carry_n_0;
  wire spike_carry_n_1;
  wire spike_carry_n_2;
  wire spike_carry_n_3;
  wire storage_CE;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [3:0]\unit_number_reg_reg[0] ;
  wire [3:0]\unit_number_reg_reg[0]_0 ;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [3:3]\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_30__0_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_30__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    add_mem_reg_i_1
       (.I0(add_mem_reg[0]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(add_mems),
        .I4(offset1),
        .I5(add_mem_reg[1]),
        .O(\neuron_state_reg_reg[0]_0 ));
  flipping_unit_0 flipping_unit_tb
       (.ADDRBWRADDR(ADDRBWRADDR),
        .DOBDO(DOBDO),
        .E(flipping_unit_tb_n_3),
        .P(P),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (\current_state_reg[1]_0 ),
        .decrease_temp(decrease_temp),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .noise_out_reg(noise_out_reg),
        .\noise_out_reg_reg[12]_0 (\noise_out_reg_reg[12] ),
        .\noise_out_reg_reg[4]_0 (\noise_out_reg_reg[4] ),
        .spike_carry__0_i_46__0(spike_carry__0_i_46__0),
        .spike_carry_i_30__0(spike_carry_i_30__0),
        .spike_carry_i_30__0_0(spike_carry_i_30__0_0),
        .spike_carry_i_30__0_1(spike_carry_i_30__0_1),
        .spike_carry_i_47__0(spike_carry_i_47__0),
        .spike_carry_i_47__0_0(spike_carry_i_47__0_0),
        .spike_carry_i_55__0(spike_carry_i_55__0),
        .spike_carry_i_55__0_0(spike_carry_i_55__0_0),
        .spike_carry_i_55__0_1(spike_carry_i_55__0_1),
        .spike_carry_i_57__0(spike_carry_i_57__0),
        .spike_carry_i_67__0(spike_carry_i_67__0),
        .tmp(tmp),
        .tmp_0(tmp_0),
        .tmp_1(tmp_1),
        .tmp_10(tmp_10),
        .tmp_11(tmp_11),
        .tmp_12(tmp_12),
        .tmp_13(tmp_13),
        .tmp_14(tmp_14),
        .tmp_15(tmp_15),
        .tmp_16(tmp_16),
        .tmp_2(tmp_2),
        .tmp_3(tmp_3),
        .tmp_4(tmp_4),
        .tmp_5(tmp_5),
        .tmp_6(tmp_6),
        .tmp_7(tmp_7),
        .tmp_8(tmp_8),
        .tmp_9(tmp_9),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___134_carry_n_0 ,\i_/i_/i___134_carry_n_1 ,\i_/i_/i___134_carry_n_2 ,\i_/i_/i___134_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,neuron_ensemble_storage_inst_n_42,1'b0}),
        .O({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28,neuron_ensemble_storage_inst_n_29}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__0 
       (.CI(\i_/i_/i___134_carry_n_0 ),
        .CO({\i_/i_/i___134_carry__0_n_0 ,\i_/i_/i___134_carry__0_n_1 ,\i_/i_/i___134_carry__0_n_2 ,\i_/i_/i___134_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_86,neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__1 
       (.CI(\i_/i_/i___134_carry__0_n_0 ),
        .CO({\i_/i_/i___134_carry__1_n_0 ,\i_/i_/i___134_carry__1_n_1 ,\i_/i_/i___134_carry__1_n_2 ,\i_/i_/i___134_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_90,neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__2 
       (.CI(\i_/i_/i___134_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED [3],\i_/i_/i___134_carry__2_n_1 ,\i_/i_/i___134_carry__2_n_2 ,\i_/i_/i___134_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12,neuron_ensemble_storage_inst_n_13}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___44_carry_n_0 ,\i_/i_/i___44_carry_n_1 ,\i_/i_/i___44_carry_n_2 ,\i_/i_/i___44_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,neuron_ensemble_storage_inst_n_44,1'b0}),
        .O({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__0 
       (.CI(\i_/i_/i___44_carry_n_0 ),
        .CO({\i_/i_/i___44_carry__0_n_0 ,\i_/i_/i___44_carry__0_n_1 ,\i_/i_/i___44_carry__0_n_2 ,\i_/i_/i___44_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_70,neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__1 
       (.CI(\i_/i_/i___44_carry__0_n_0 ),
        .CO({\i_/i_/i___44_carry__1_n_0 ,\i_/i_/i___44_carry__1_n_1 ,\i_/i_/i___44_carry__1_n_2 ,\i_/i_/i___44_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_74,neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__2 
       (.CI(\i_/i_/i___44_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED [3],\i_/i_/i___44_carry__2_n_1 ,\i_/i_/i___44_carry__2_n_2 ,\i_/i_/i___44_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20,neuron_ensemble_storage_inst_n_21}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___89_carry_n_0 ,\i_/i_/i___89_carry_n_1 ,\i_/i_/i___89_carry_n_2 ,\i_/i_/i___89_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,neuron_ensemble_storage_inst_n_43,1'b0}),
        .O({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__0 
       (.CI(\i_/i_/i___89_carry_n_0 ),
        .CO({\i_/i_/i___89_carry__0_n_0 ,\i_/i_/i___89_carry__0_n_1 ,\i_/i_/i___89_carry__0_n_2 ,\i_/i_/i___89_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_78,neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__1 
       (.CI(\i_/i_/i___89_carry__0_n_0 ),
        .CO({\i_/i_/i___89_carry__1_n_0 ,\i_/i_/i___89_carry__1_n_1 ,\i_/i_/i___89_carry__1_n_2 ,\i_/i_/i___89_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_82,neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__2 
       (.CI(\i_/i_/i___89_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED [3],\i_/i_/i___89_carry__2_n_1 ,\i_/i_/i___89_carry__2_n_2 ,\i_/i_/i___89_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16,neuron_ensemble_storage_inst_n_17}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,neuron_ensemble_storage_inst_n_45,1'b0}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39,neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63,neuron_ensemble_storage_inst_n_64,neuron_ensemble_storage_inst_n_65}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_66,neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0,i__carry_i_1__0_n_0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24,neuron_ensemble_storage_inst_n_25}));
  LUT4 #(
    .INIT(16'hFF89)) 
    \i_/i___0/i_ 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(flipping_unit_tb_n_3),
        .O(\current_state_reg[1] ));
  LUT5 #(
    .INIT(32'h0000C1C9)) 
    i__carry_i_1__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(incrementing_reg),
        .I4(write_neuron_states_IBUF),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[0]_i_1 
       (.I0(\membrane_reg_reg[15] [0]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(\selected_membrane_reg_reg[0]_0 ),
        .I4(\membrane_reg_reg[15] [16]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[10]_i_1 
       (.I0(\membrane_reg_reg[15] [10]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[26]),
        .I4(\membrane_reg_reg[15] [26]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[11]_i_1 
       (.I0(\membrane_reg_reg[15] [11]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[27]),
        .I4(\membrane_reg_reg[15] [27]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[12]_i_1 
       (.I0(\membrane_reg_reg[15] [12]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[28]),
        .I4(\membrane_reg_reg[15] [28]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[13]_i_1 
       (.I0(\membrane_reg_reg[15] [13]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[29]),
        .I4(\membrane_reg_reg[15] [29]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[14]_i_1 
       (.I0(\membrane_reg_reg[15] [14]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[30]),
        .I4(\membrane_reg_reg[15] [30]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[15]_i_1__0 
       (.I0(\membrane_reg_reg[15] [15]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[31]),
        .I4(\membrane_reg_reg[15] [31]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[1]_i_1 
       (.I0(\membrane_reg_reg[15] [1]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[17]),
        .I4(\membrane_reg_reg[15] [17]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[2]_i_1 
       (.I0(\membrane_reg_reg[15] [2]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[18]),
        .I4(\membrane_reg_reg[15] [18]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[3]_i_1 
       (.I0(\membrane_reg_reg[15] [3]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[19]),
        .I4(\membrane_reg_reg[15] [19]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[4]_i_1 
       (.I0(\membrane_reg_reg[15] [4]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[20]),
        .I4(\membrane_reg_reg[15] [20]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[5]_i_1 
       (.I0(\membrane_reg_reg[15] [5]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[21]),
        .I4(\membrane_reg_reg[15] [21]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[6]_i_1 
       (.I0(\membrane_reg_reg[15] [6]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[22]),
        .I4(\membrane_reg_reg[15] [22]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[7]_i_1 
       (.I0(\membrane_reg_reg[15] [7]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[23]),
        .I4(\membrane_reg_reg[15] [23]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[8]_i_1 
       (.I0(\membrane_reg_reg[15] [8]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[24]),
        .I4(\membrane_reg_reg[15] [24]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \membrane_reg[9]_i_1 
       (.I0(\membrane_reg_reg[15] [9]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(all_membranes[25]),
        .I4(\membrane_reg_reg[15] [25]),
        .I5(offset1),
        .O(\selected_membrane_reg_reg[15]_0 [9]));
  neuron_ensemble_storage_1 neuron_ensemble_storage_inst
       (.D(neuron_state0__0),
        .DI(neuron_ensemble_storage_inst_n_42),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q(Q),
        .Q_out0(Q_out0),
        .S({neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12,neuron_ensemble_storage_inst_n_13}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\idx_reg[0]_0 (\idx_reg[0] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11]_0 ({neuron_ensemble_storage_inst_n_90,neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93}),
        .\membrane_storage_reg[0][11]_1 ({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .\membrane_storage_reg[0][15]_0 ({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .\membrane_storage_reg[0][3]_0 ({neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28,neuron_ensemble_storage_inst_n_29}),
        .\membrane_storage_reg[0][3]_1 ({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .\membrane_storage_reg[0][7]_0 ({neuron_ensemble_storage_inst_n_86,neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89}),
        .\membrane_storage_reg[0][7]_1 ({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .\membrane_storage_reg[1][11]_0 ({neuron_ensemble_storage_inst_n_82,neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85}),
        .\membrane_storage_reg[1][11]_1 ({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .\membrane_storage_reg[1][15]_0 ({neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16,neuron_ensemble_storage_inst_n_17}),
        .\membrane_storage_reg[1][15]_1 ({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .\membrane_storage_reg[1][1]_0 (neuron_ensemble_storage_inst_n_43),
        .\membrane_storage_reg[1][3]_0 ({neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33}),
        .\membrane_storage_reg[1][3]_1 ({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .\membrane_storage_reg[1][7]_0 ({neuron_ensemble_storage_inst_n_78,neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81}),
        .\membrane_storage_reg[1][7]_1 ({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .\membrane_storage_reg[2][11]_0 ({neuron_ensemble_storage_inst_n_74,neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77}),
        .\membrane_storage_reg[2][11]_1 ({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .\membrane_storage_reg[2][15]_0 ({neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20,neuron_ensemble_storage_inst_n_21}),
        .\membrane_storage_reg[2][15]_1 (selected_membrane),
        .\membrane_storage_reg[2][15]_2 ({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .\membrane_storage_reg[2][1]_0 (neuron_ensemble_storage_inst_n_44),
        .\membrane_storage_reg[2][3]_0 ({neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37}),
        .\membrane_storage_reg[2][3]_1 ({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .\membrane_storage_reg[2][7]_0 ({neuron_ensemble_storage_inst_n_70,neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73}),
        .\membrane_storage_reg[2][7]_1 ({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .\membrane_storage_reg[3][11]_0 ({neuron_ensemble_storage_inst_n_66,neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69}),
        .\membrane_storage_reg[3][11]_1 ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\membrane_storage_reg[3][15]_0 ({neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24,neuron_ensemble_storage_inst_n_25}),
        .\membrane_storage_reg[3][15]_1 ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\membrane_storage_reg[3][1]_0 (neuron_ensemble_storage_inst_n_45),
        .\membrane_storage_reg[3][3]_0 ({neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39,neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41}),
        .\membrane_storage_reg[3][3]_1 (i__carry_i_1__0_n_0),
        .\membrane_storage_reg[3][7]_0 ({neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63,neuron_ensemble_storage_inst_n_64,neuron_ensemble_storage_inst_n_65}),
        .\membrane_storage_reg[3][7]_1 ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .\neuron_state_reg_reg[1] (\neuron_state_reg_reg[1]_0 ),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\state_reg[1] (neuron_ensemble_storage_inst_n_3),
        .\state_reg[2] (neuron_ensemble_storage_inst_n_2),
        .storage_CE(storage_CE),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0__0[0]),
        .Q(add_mems),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0__0[1]),
        .Q(neuron_state_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \offset_reg[0]_i_1 
       (.I0(\offset_reg_reg[1]_1 [0]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(offsets[2]),
        .I4(offset1),
        .I5(\offset_reg_reg[1]_1 [2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \offset_reg[1]_i_1 
       (.I0(\offset_reg_reg[1]_1 [1]),
        .I1(\offset_reg_reg[1] ),
        .I2(\offset_reg_reg[1]_0 ),
        .I3(offsets[3]),
        .I4(offset1),
        .I5(\offset_reg_reg[1]_1 [3]),
        .O(D[1]));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_3),
        .Q(offsets[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_2),
        .Q(offsets[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\selected_membrane_reg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(all_membranes[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(all_membranes[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(all_membranes[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(all_membranes[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(all_membranes[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(all_membranes[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(all_membranes[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(all_membranes[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(all_membranes[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(all_membranes[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(all_membranes[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(all_membranes[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(all_membranes[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(all_membranes[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(all_membranes[25]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry
       (.CI(1'b0),
        .CO({spike_carry_n_0,spike_carry_n_1,spike_carry_n_2,spike_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_spike_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry__0
       (.CI(spike_carry_n_0),
        .CO({CO,spike_carry__0_n_1,spike_carry__0_n_2,spike_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\unit_number_reg_reg[0] ),
        .O(NLW_spike_carry__0_O_UNCONNECTED[3:0]),
        .S(\unit_number_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_10__0
       (.I0(all_membranes[30]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[14]),
        .O(membrane_compare__14[6]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_11__0
       (.I0(all_membranes[31]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[15]),
        .O(membrane_compare__14[7]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_15__0
       (.I0(all_membranes[28]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[12]),
        .O(membrane_compare__14[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_17__0
       (.I0(all_membranes[29]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[13]),
        .O(\selected_membrane_reg_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_19__0
       (.I0(all_membranes[26]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[10]),
        .O(membrane_compare__14[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_22__0
       (.I0(all_membranes[27]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[11]),
        .O(\selected_membrane_reg_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_24__0
       (.I0(all_membranes[24]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[8]),
        .O(membrane_compare__14[3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_26__0
       (.I0(all_membranes[25]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[9]),
        .O(\selected_membrane_reg_reg[9]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_30__0
       (.CI(spike_carry__0_i_40__0_n_0),
        .CO({NLW_spike_carry__0_i_30__0_CO_UNCONNECTED[3:2],spike_carry__0_i_30__0_n_2,spike_carry__0_i_30__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_30__0_O_UNCONNECTED[3],membrane_compare0[15:13]}),
        .S({1'b0,spike_carry__0_i_61__0_n_0,spike_carry__0_i_62__0_n_0,spike_carry__0_i_63__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_40__0
       (.CI(spike_carry_i_31__0_n_0),
        .CO({spike_carry__0_i_40__0_n_0,spike_carry__0_i_40__0_n_1,spike_carry__0_i_40__0_n_2,spike_carry__0_i_40__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[12:9]),
        .S({spike_carry__0_i_71__0_n_0,spike_carry__0_i_72__0_n_0,spike_carry__0_i_73__0_n_0,spike_carry__0_i_74__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_61__0
       (.I0(all_membranes[31]),
        .O(spike_carry__0_i_61__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_62__0
       (.I0(all_membranes[30]),
        .O(spike_carry__0_i_62__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_63__0
       (.I0(all_membranes[29]),
        .O(spike_carry__0_i_63__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_71__0
       (.I0(all_membranes[28]),
        .O(spike_carry__0_i_71__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_72__0
       (.I0(all_membranes[27]),
        .O(spike_carry__0_i_72__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_73__0
       (.I0(all_membranes[26]),
        .O(spike_carry__0_i_73__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_74__0
       (.I0(all_membranes[25]),
        .O(spike_carry__0_i_74__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_10__0
       (.I0(all_membranes[22]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[6]),
        .O(membrane_compare__14[2]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_125__0
       (.I0(\selected_membrane_reg_reg[0]_0 ),
        .O(spike_carry_i_125__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_126__0
       (.I0(all_membranes[20]),
        .O(spike_carry_i_126__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_127__0
       (.I0(all_membranes[19]),
        .O(spike_carry_i_127__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_128__0
       (.I0(all_membranes[18]),
        .O(spike_carry_i_128__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_129__0
       (.I0(all_membranes[17]),
        .O(spike_carry_i_129__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_14__0
       (.I0(all_membranes[23]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[7]),
        .O(\selected_membrane_reg_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_16__0
       (.I0(all_membranes[20]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[4]),
        .O(membrane_compare__14[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_18__0
       (.I0(all_membranes[21]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[5]),
        .O(\selected_membrane_reg_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_20__0
       (.I0(all_membranes[18]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[2]),
        .O(membrane_compare__14[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_23__0
       (.I0(all_membranes[19]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[3]),
        .O(\selected_membrane_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_26__0
       (.I0(all_membranes[17]),
        .I1(neuron_state_reg),
        .I2(membrane_compare0[1]),
        .O(\selected_membrane_reg_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_31__0
       (.CI(spike_carry_i_46__0_n_0),
        .CO({spike_carry_i_31__0_n_0,spike_carry_i_31__0_n_1,spike_carry_i_31__0_n_2,spike_carry_i_31__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[8:5]),
        .S({spike_carry_i_87__0_n_0,spike_carry_i_88__0_n_0,spike_carry_i_89__0_n_0,spike_carry_i_90__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_46__0
       (.CI(1'b0),
        .CO({spike_carry_i_46__0_n_0,spike_carry_i_46__0_n_1,spike_carry_i_46__0_n_2,spike_carry_i_46__0_n_3}),
        .CYINIT(spike_carry_i_125__0_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[4:1]),
        .S({spike_carry_i_126__0_n_0,spike_carry_i_127__0_n_0,spike_carry_i_128__0_n_0,spike_carry_i_129__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_87__0
       (.I0(all_membranes[24]),
        .O(spike_carry_i_87__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_88__0
       (.I0(all_membranes[23]),
        .O(spike_carry_i_88__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_89__0
       (.I0(all_membranes[22]),
        .O(spike_carry_i_89__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_90__0
       (.I0(all_membranes[21]),
        .O(spike_carry_i_90__0_n_0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module neuron_ensemble__parameterized1
   (\idx_reg[0] ,
    \selected_membrane_reg_reg[15]_0 ,
    offset1,
    \selected_idx_offset_reg_reg[1]_0 ,
    p_0_in,
    neuron_state_reg,
    clk_IBUF_BUFG,
    decrease_temp,
    Q,
    write_neuron_states_IBUF,
    out,
    membrane_data_in_IBUF,
    incrementing_reg,
    spikes,
    spiked1__0,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    idx_offset_to_update,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_states_storage2_in,
    p_1_in);
  output \idx_reg[0] ;
  output [15:0]\selected_membrane_reg_reg[15]_0 ;
  output offset1;
  output [1:0]\selected_idx_offset_reg_reg[1]_0 ;
  output [3:0]p_0_in;
  output [0:0]neuron_state_reg;
  input clk_IBUF_BUFG;
  input decrease_temp;
  input [2:0]Q;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]out;
  input [15:0]membrane_data_in_IBUF;
  input incrementing_reg;
  input [0:0]spikes;
  input spiked1__0;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [1:0]idx_offset_to_update;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_states_storage2_in;
  input [0:0]p_1_in;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire [5:0]flipping_seed_IBUF;
  wire flipping_unit_tb_n_0;
  wire flipping_unit_tb_n_1;
  wire flipping_unit_tb_n_10;
  wire flipping_unit_tb_n_11;
  wire flipping_unit_tb_n_12;
  wire flipping_unit_tb_n_13;
  wire flipping_unit_tb_n_14;
  wire flipping_unit_tb_n_15;
  wire flipping_unit_tb_n_16;
  wire flipping_unit_tb_n_2;
  wire flipping_unit_tb_n_3;
  wire flipping_unit_tb_n_4;
  wire flipping_unit_tb_n_5;
  wire flipping_unit_tb_n_6;
  wire flipping_unit_tb_n_7;
  wire flipping_unit_tb_n_8;
  wire flipping_unit_tb_n_9;
  wire \i_/i_/i___134_carry__0_n_0 ;
  wire \i_/i_/i___134_carry__0_n_1 ;
  wire \i_/i_/i___134_carry__0_n_2 ;
  wire \i_/i_/i___134_carry__0_n_3 ;
  wire \i_/i_/i___134_carry__0_n_4 ;
  wire \i_/i_/i___134_carry__0_n_5 ;
  wire \i_/i_/i___134_carry__0_n_6 ;
  wire \i_/i_/i___134_carry__0_n_7 ;
  wire \i_/i_/i___134_carry__1_n_0 ;
  wire \i_/i_/i___134_carry__1_n_1 ;
  wire \i_/i_/i___134_carry__1_n_2 ;
  wire \i_/i_/i___134_carry__1_n_3 ;
  wire \i_/i_/i___134_carry__1_n_4 ;
  wire \i_/i_/i___134_carry__1_n_5 ;
  wire \i_/i_/i___134_carry__1_n_6 ;
  wire \i_/i_/i___134_carry__1_n_7 ;
  wire \i_/i_/i___134_carry__2_n_1 ;
  wire \i_/i_/i___134_carry__2_n_2 ;
  wire \i_/i_/i___134_carry__2_n_3 ;
  wire \i_/i_/i___134_carry__2_n_4 ;
  wire \i_/i_/i___134_carry__2_n_5 ;
  wire \i_/i_/i___134_carry__2_n_6 ;
  wire \i_/i_/i___134_carry__2_n_7 ;
  wire \i_/i_/i___134_carry_n_0 ;
  wire \i_/i_/i___134_carry_n_1 ;
  wire \i_/i_/i___134_carry_n_2 ;
  wire \i_/i_/i___134_carry_n_3 ;
  wire \i_/i_/i___134_carry_n_4 ;
  wire \i_/i_/i___134_carry_n_5 ;
  wire \i_/i_/i___134_carry_n_6 ;
  wire \i_/i_/i___134_carry_n_7 ;
  wire \i_/i_/i___44_carry__0_n_0 ;
  wire \i_/i_/i___44_carry__0_n_1 ;
  wire \i_/i_/i___44_carry__0_n_2 ;
  wire \i_/i_/i___44_carry__0_n_3 ;
  wire \i_/i_/i___44_carry__0_n_4 ;
  wire \i_/i_/i___44_carry__0_n_5 ;
  wire \i_/i_/i___44_carry__0_n_6 ;
  wire \i_/i_/i___44_carry__0_n_7 ;
  wire \i_/i_/i___44_carry__1_n_0 ;
  wire \i_/i_/i___44_carry__1_n_1 ;
  wire \i_/i_/i___44_carry__1_n_2 ;
  wire \i_/i_/i___44_carry__1_n_3 ;
  wire \i_/i_/i___44_carry__1_n_4 ;
  wire \i_/i_/i___44_carry__1_n_5 ;
  wire \i_/i_/i___44_carry__1_n_6 ;
  wire \i_/i_/i___44_carry__1_n_7 ;
  wire \i_/i_/i___44_carry__2_n_1 ;
  wire \i_/i_/i___44_carry__2_n_2 ;
  wire \i_/i_/i___44_carry__2_n_3 ;
  wire \i_/i_/i___44_carry__2_n_4 ;
  wire \i_/i_/i___44_carry__2_n_5 ;
  wire \i_/i_/i___44_carry__2_n_6 ;
  wire \i_/i_/i___44_carry__2_n_7 ;
  wire \i_/i_/i___44_carry_n_0 ;
  wire \i_/i_/i___44_carry_n_1 ;
  wire \i_/i_/i___44_carry_n_2 ;
  wire \i_/i_/i___44_carry_n_3 ;
  wire \i_/i_/i___44_carry_n_4 ;
  wire \i_/i_/i___44_carry_n_5 ;
  wire \i_/i_/i___44_carry_n_6 ;
  wire \i_/i_/i___44_carry_n_7 ;
  wire \i_/i_/i___89_carry__0_n_0 ;
  wire \i_/i_/i___89_carry__0_n_1 ;
  wire \i_/i_/i___89_carry__0_n_2 ;
  wire \i_/i_/i___89_carry__0_n_3 ;
  wire \i_/i_/i___89_carry__0_n_4 ;
  wire \i_/i_/i___89_carry__0_n_5 ;
  wire \i_/i_/i___89_carry__0_n_6 ;
  wire \i_/i_/i___89_carry__0_n_7 ;
  wire \i_/i_/i___89_carry__1_n_0 ;
  wire \i_/i_/i___89_carry__1_n_1 ;
  wire \i_/i_/i___89_carry__1_n_2 ;
  wire \i_/i_/i___89_carry__1_n_3 ;
  wire \i_/i_/i___89_carry__1_n_4 ;
  wire \i_/i_/i___89_carry__1_n_5 ;
  wire \i_/i_/i___89_carry__1_n_6 ;
  wire \i_/i_/i___89_carry__1_n_7 ;
  wire \i_/i_/i___89_carry__2_n_1 ;
  wire \i_/i_/i___89_carry__2_n_2 ;
  wire \i_/i_/i___89_carry__2_n_3 ;
  wire \i_/i_/i___89_carry__2_n_4 ;
  wire \i_/i_/i___89_carry__2_n_5 ;
  wire \i_/i_/i___89_carry__2_n_6 ;
  wire \i_/i_/i___89_carry__2_n_7 ;
  wire \i_/i_/i___89_carry_n_0 ;
  wire \i_/i_/i___89_carry_n_1 ;
  wire \i_/i_/i___89_carry_n_2 ;
  wire \i_/i_/i___89_carry_n_3 ;
  wire \i_/i_/i___89_carry_n_4 ;
  wire \i_/i_/i___89_carry_n_5 ;
  wire \i_/i_/i___89_carry_n_6 ;
  wire \i_/i_/i___89_carry_n_7 ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire \i_/x_reg_rep_i_1_n_0 ;
  wire i__carry_i_1__1_n_0;
  wire [1:0]idx_offset_to_update;
  wire \idx_reg[0] ;
  wire incrementing_reg;
  wire [15:1]membrane_compare0;
  wire [15:2]membrane_compare__14;
  wire [15:0]membrane_data_in_IBUF;
  wire neuron_ensemble_storage_inst_n_10;
  wire neuron_ensemble_storage_inst_n_11;
  wire neuron_ensemble_storage_inst_n_12;
  wire neuron_ensemble_storage_inst_n_13;
  wire neuron_ensemble_storage_inst_n_14;
  wire neuron_ensemble_storage_inst_n_15;
  wire neuron_ensemble_storage_inst_n_16;
  wire neuron_ensemble_storage_inst_n_17;
  wire neuron_ensemble_storage_inst_n_18;
  wire neuron_ensemble_storage_inst_n_19;
  wire neuron_ensemble_storage_inst_n_2;
  wire neuron_ensemble_storage_inst_n_20;
  wire neuron_ensemble_storage_inst_n_21;
  wire neuron_ensemble_storage_inst_n_22;
  wire neuron_ensemble_storage_inst_n_23;
  wire neuron_ensemble_storage_inst_n_24;
  wire neuron_ensemble_storage_inst_n_25;
  wire neuron_ensemble_storage_inst_n_26;
  wire neuron_ensemble_storage_inst_n_27;
  wire neuron_ensemble_storage_inst_n_28;
  wire neuron_ensemble_storage_inst_n_29;
  wire neuron_ensemble_storage_inst_n_3;
  wire neuron_ensemble_storage_inst_n_30;
  wire neuron_ensemble_storage_inst_n_31;
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
  wire neuron_ensemble_storage_inst_n_62;
  wire neuron_ensemble_storage_inst_n_63;
  wire neuron_ensemble_storage_inst_n_64;
  wire neuron_ensemble_storage_inst_n_65;
  wire neuron_ensemble_storage_inst_n_66;
  wire neuron_ensemble_storage_inst_n_67;
  wire neuron_ensemble_storage_inst_n_68;
  wire neuron_ensemble_storage_inst_n_69;
  wire neuron_ensemble_storage_inst_n_70;
  wire neuron_ensemble_storage_inst_n_71;
  wire neuron_ensemble_storage_inst_n_72;
  wire neuron_ensemble_storage_inst_n_73;
  wire neuron_ensemble_storage_inst_n_74;
  wire neuron_ensemble_storage_inst_n_75;
  wire neuron_ensemble_storage_inst_n_76;
  wire neuron_ensemble_storage_inst_n_77;
  wire neuron_ensemble_storage_inst_n_78;
  wire neuron_ensemble_storage_inst_n_79;
  wire neuron_ensemble_storage_inst_n_80;
  wire neuron_ensemble_storage_inst_n_81;
  wire neuron_ensemble_storage_inst_n_82;
  wire neuron_ensemble_storage_inst_n_83;
  wire neuron_ensemble_storage_inst_n_84;
  wire neuron_ensemble_storage_inst_n_85;
  wire neuron_ensemble_storage_inst_n_86;
  wire neuron_ensemble_storage_inst_n_87;
  wire neuron_ensemble_storage_inst_n_88;
  wire neuron_ensemble_storage_inst_n_89;
  wire neuron_ensemble_storage_inst_n_90;
  wire neuron_ensemble_storage_inst_n_91;
  wire neuron_ensemble_storage_inst_n_92;
  wire neuron_ensemble_storage_inst_n_93;
  wire [1:0]neuron_state0__1;
  wire [0:0]neuron_state_reg;
  wire [1:1]neuron_state_reg_1;
  wire [3:0]neuron_states_storage2_in;
  wire offset1;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire [1:0]\selected_idx_offset_reg_reg[1]_0 ;
  wire [15:0]selected_membrane;
  wire [15:0]\selected_membrane_reg_reg[15]_0 ;
  wire spike_carry__0_i_17__1_n_0;
  wire spike_carry__0_i_22__1_n_0;
  wire spike_carry__0_i_26__1_n_0;
  wire spike_carry__0_i_30__1_n_2;
  wire spike_carry__0_i_30__1_n_3;
  wire spike_carry__0_i_40__1_n_0;
  wire spike_carry__0_i_40__1_n_1;
  wire spike_carry__0_i_40__1_n_2;
  wire spike_carry__0_i_40__1_n_3;
  wire spike_carry__0_i_61__1_n_0;
  wire spike_carry__0_i_62__1_n_0;
  wire spike_carry__0_i_63__1_n_0;
  wire spike_carry__0_i_71__1_n_0;
  wire spike_carry__0_i_72__1_n_0;
  wire spike_carry__0_i_73__1_n_0;
  wire spike_carry__0_i_74__1_n_0;
  wire spike_carry__0_n_1;
  wire spike_carry__0_n_2;
  wire spike_carry__0_n_3;
  wire spike_carry_i_125__1_n_0;
  wire spike_carry_i_126__1_n_0;
  wire spike_carry_i_127__1_n_0;
  wire spike_carry_i_128__1_n_0;
  wire spike_carry_i_129__1_n_0;
  wire spike_carry_i_14__1_n_0;
  wire spike_carry_i_18__1_n_0;
  wire spike_carry_i_23__1_n_0;
  wire spike_carry_i_26__1_n_0;
  wire spike_carry_i_31__1_n_0;
  wire spike_carry_i_31__1_n_1;
  wire spike_carry_i_31__1_n_2;
  wire spike_carry_i_31__1_n_3;
  wire spike_carry_i_46__1_n_0;
  wire spike_carry_i_46__1_n_1;
  wire spike_carry_i_46__1_n_2;
  wire spike_carry_i_46__1_n_3;
  wire spike_carry_i_87__1_n_0;
  wire spike_carry_i_88__1_n_0;
  wire spike_carry_i_89__1_n_0;
  wire spike_carry_i_90__1_n_0;
  wire spike_carry_n_0;
  wire spike_carry_n_1;
  wire spike_carry_n_2;
  wire spike_carry_n_3;
  wire spike_out;
  wire spiked1__0;
  wire [0:0]spikes;
  wire storage_CE;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [3:3]\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_spike_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_30__1_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_30__1_O_UNCONNECTED;

  flipping_unit flipping_unit_tb
       (.CO(spike_out),
        .DI({flipping_unit_tb_n_5,flipping_unit_tb_n_6,flipping_unit_tb_n_7,flipping_unit_tb_n_8}),
        .E(flipping_unit_tb_n_0),
        .Q(Q),
        .S({flipping_unit_tb_n_1,flipping_unit_tb_n_2,flipping_unit_tb_n_3,flipping_unit_tb_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .membrane_compare__14({membrane_compare__14[15:14],membrane_compare__14[12],membrane_compare__14[10],membrane_compare__14[8],membrane_compare__14[6],membrane_compare__14[4],membrane_compare__14[2]}),
        .offset1(offset1),
        .\selected_membrane_reg_reg[14] ({flipping_unit_tb_n_13,flipping_unit_tb_n_14,flipping_unit_tb_n_15,flipping_unit_tb_n_16}),
        .spike_carry(spike_carry_i_26__1_n_0),
        .spike_carry_0(\selected_membrane_reg_reg[15]_0 [0]),
        .spike_carry_1(spike_carry_i_23__1_n_0),
        .spike_carry_2(spike_carry_i_18__1_n_0),
        .spike_carry_3(spike_carry_i_14__1_n_0),
        .spike_carry__0(spike_carry__0_i_26__1_n_0),
        .spike_carry__0_0(spike_carry__0_i_22__1_n_0),
        .spike_carry__0_1(spike_carry__0_i_17__1_n_0),
        .spiked1__0(spiked1__0),
        .spikes(spikes),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .x_reg_rep({flipping_unit_tb_n_9,flipping_unit_tb_n_10,flipping_unit_tb_n_11,flipping_unit_tb_n_12}),
        .x_reg_rep_0(\i_/x_reg_rep_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___134_carry_n_0 ,\i_/i_/i___134_carry_n_1 ,\i_/i_/i___134_carry_n_2 ,\i_/i_/i___134_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,neuron_ensemble_storage_inst_n_42,1'b0}),
        .O({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28,neuron_ensemble_storage_inst_n_29}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__0 
       (.CI(\i_/i_/i___134_carry_n_0 ),
        .CO({\i_/i_/i___134_carry__0_n_0 ,\i_/i_/i___134_carry__0_n_1 ,\i_/i_/i___134_carry__0_n_2 ,\i_/i_/i___134_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_86,neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__1 
       (.CI(\i_/i_/i___134_carry__0_n_0 ),
        .CO({\i_/i_/i___134_carry__1_n_0 ,\i_/i_/i___134_carry__1_n_1 ,\i_/i_/i___134_carry__1_n_2 ,\i_/i_/i___134_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_90,neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___134_carry__2 
       (.CI(\i_/i_/i___134_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___134_carry__2_CO_UNCONNECTED [3],\i_/i_/i___134_carry__2_n_1 ,\i_/i_/i___134_carry__2_n_2 ,\i_/i_/i___134_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12,neuron_ensemble_storage_inst_n_13}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___44_carry_n_0 ,\i_/i_/i___44_carry_n_1 ,\i_/i_/i___44_carry_n_2 ,\i_/i_/i___44_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,neuron_ensemble_storage_inst_n_44,1'b0}),
        .O({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__0 
       (.CI(\i_/i_/i___44_carry_n_0 ),
        .CO({\i_/i_/i___44_carry__0_n_0 ,\i_/i_/i___44_carry__0_n_1 ,\i_/i_/i___44_carry__0_n_2 ,\i_/i_/i___44_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_70,neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__1 
       (.CI(\i_/i_/i___44_carry__0_n_0 ),
        .CO({\i_/i_/i___44_carry__1_n_0 ,\i_/i_/i___44_carry__1_n_1 ,\i_/i_/i___44_carry__1_n_2 ,\i_/i_/i___44_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_74,neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___44_carry__2 
       (.CI(\i_/i_/i___44_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___44_carry__2_CO_UNCONNECTED [3],\i_/i_/i___44_carry__2_n_1 ,\i_/i_/i___44_carry__2_n_2 ,\i_/i_/i___44_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20,neuron_ensemble_storage_inst_n_21}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___89_carry_n_0 ,\i_/i_/i___89_carry_n_1 ,\i_/i_/i___89_carry_n_2 ,\i_/i_/i___89_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,neuron_ensemble_storage_inst_n_43,1'b0}),
        .O({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__0 
       (.CI(\i_/i_/i___89_carry_n_0 ),
        .CO({\i_/i_/i___89_carry__0_n_0 ,\i_/i_/i___89_carry__0_n_1 ,\i_/i_/i___89_carry__0_n_2 ,\i_/i_/i___89_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_78,neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__1 
       (.CI(\i_/i_/i___89_carry__0_n_0 ),
        .CO({\i_/i_/i___89_carry__1_n_0 ,\i_/i_/i___89_carry__1_n_1 ,\i_/i_/i___89_carry__1_n_2 ,\i_/i_/i___89_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_82,neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i___89_carry__2 
       (.CI(\i_/i_/i___89_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___89_carry__2_CO_UNCONNECTED [3],\i_/i_/i___89_carry__2_n_1 ,\i_/i_/i___89_carry__2_n_2 ,\i_/i_/i___89_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16,neuron_ensemble_storage_inst_n_17}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,neuron_ensemble_storage_inst_n_45,1'b0}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39,neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63,neuron_ensemble_storage_inst_n_64,neuron_ensemble_storage_inst_n_65}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({neuron_ensemble_storage_inst_n_66,neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0,i__carry_i_1__1_n_0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24,neuron_ensemble_storage_inst_n_25}));
  LUT4 #(
    .INIT(16'hFF89)) 
    \i_/x_reg_rep_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(flipping_unit_tb_n_0),
        .O(\i_/x_reg_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000C1C9)) 
    i__carry_i_1__1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(incrementing_reg),
        .I4(write_neuron_states_IBUF),
        .O(i__carry_i_1__1_n_0));
  neuron_ensemble_storage neuron_ensemble_storage_inst
       (.D(neuron_state0__1),
        .DI(neuron_ensemble_storage_inst_n_42),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q(Q),
        .S({neuron_ensemble_storage_inst_n_10,neuron_ensemble_storage_inst_n_11,neuron_ensemble_storage_inst_n_12,neuron_ensemble_storage_inst_n_13}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .idx_offset_to_update(idx_offset_to_update),
        .\idx_reg[0]_0 (\idx_reg[0] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_storage_reg[0][11]_0 ({neuron_ensemble_storage_inst_n_90,neuron_ensemble_storage_inst_n_91,neuron_ensemble_storage_inst_n_92,neuron_ensemble_storage_inst_n_93}),
        .\membrane_storage_reg[0][11]_1 ({\i_/i_/i___134_carry__1_n_4 ,\i_/i_/i___134_carry__1_n_5 ,\i_/i_/i___134_carry__1_n_6 ,\i_/i_/i___134_carry__1_n_7 }),
        .\membrane_storage_reg[0][15]_0 ({\i_/i_/i___134_carry__2_n_4 ,\i_/i_/i___134_carry__2_n_5 ,\i_/i_/i___134_carry__2_n_6 ,\i_/i_/i___134_carry__2_n_7 }),
        .\membrane_storage_reg[0][3]_0 ({neuron_ensemble_storage_inst_n_26,neuron_ensemble_storage_inst_n_27,neuron_ensemble_storage_inst_n_28,neuron_ensemble_storage_inst_n_29}),
        .\membrane_storage_reg[0][3]_1 ({\i_/i_/i___134_carry_n_4 ,\i_/i_/i___134_carry_n_5 ,\i_/i_/i___134_carry_n_6 ,\i_/i_/i___134_carry_n_7 }),
        .\membrane_storage_reg[0][7]_0 ({neuron_ensemble_storage_inst_n_86,neuron_ensemble_storage_inst_n_87,neuron_ensemble_storage_inst_n_88,neuron_ensemble_storage_inst_n_89}),
        .\membrane_storage_reg[0][7]_1 ({\i_/i_/i___134_carry__0_n_4 ,\i_/i_/i___134_carry__0_n_5 ,\i_/i_/i___134_carry__0_n_6 ,\i_/i_/i___134_carry__0_n_7 }),
        .\membrane_storage_reg[1][11]_0 ({neuron_ensemble_storage_inst_n_82,neuron_ensemble_storage_inst_n_83,neuron_ensemble_storage_inst_n_84,neuron_ensemble_storage_inst_n_85}),
        .\membrane_storage_reg[1][11]_1 ({\i_/i_/i___89_carry__1_n_4 ,\i_/i_/i___89_carry__1_n_5 ,\i_/i_/i___89_carry__1_n_6 ,\i_/i_/i___89_carry__1_n_7 }),
        .\membrane_storage_reg[1][15]_0 ({neuron_ensemble_storage_inst_n_14,neuron_ensemble_storage_inst_n_15,neuron_ensemble_storage_inst_n_16,neuron_ensemble_storage_inst_n_17}),
        .\membrane_storage_reg[1][15]_1 ({\i_/i_/i___89_carry__2_n_4 ,\i_/i_/i___89_carry__2_n_5 ,\i_/i_/i___89_carry__2_n_6 ,\i_/i_/i___89_carry__2_n_7 }),
        .\membrane_storage_reg[1][1]_0 (neuron_ensemble_storage_inst_n_43),
        .\membrane_storage_reg[1][3]_0 ({neuron_ensemble_storage_inst_n_30,neuron_ensemble_storage_inst_n_31,neuron_ensemble_storage_inst_n_32,neuron_ensemble_storage_inst_n_33}),
        .\membrane_storage_reg[1][3]_1 ({\i_/i_/i___89_carry_n_4 ,\i_/i_/i___89_carry_n_5 ,\i_/i_/i___89_carry_n_6 ,\i_/i_/i___89_carry_n_7 }),
        .\membrane_storage_reg[1][7]_0 ({neuron_ensemble_storage_inst_n_78,neuron_ensemble_storage_inst_n_79,neuron_ensemble_storage_inst_n_80,neuron_ensemble_storage_inst_n_81}),
        .\membrane_storage_reg[1][7]_1 ({\i_/i_/i___89_carry__0_n_4 ,\i_/i_/i___89_carry__0_n_5 ,\i_/i_/i___89_carry__0_n_6 ,\i_/i_/i___89_carry__0_n_7 }),
        .\membrane_storage_reg[2][11]_0 ({neuron_ensemble_storage_inst_n_74,neuron_ensemble_storage_inst_n_75,neuron_ensemble_storage_inst_n_76,neuron_ensemble_storage_inst_n_77}),
        .\membrane_storage_reg[2][11]_1 ({\i_/i_/i___44_carry__1_n_4 ,\i_/i_/i___44_carry__1_n_5 ,\i_/i_/i___44_carry__1_n_6 ,\i_/i_/i___44_carry__1_n_7 }),
        .\membrane_storage_reg[2][15]_0 ({neuron_ensemble_storage_inst_n_18,neuron_ensemble_storage_inst_n_19,neuron_ensemble_storage_inst_n_20,neuron_ensemble_storage_inst_n_21}),
        .\membrane_storage_reg[2][15]_1 (selected_membrane),
        .\membrane_storage_reg[2][15]_2 ({\i_/i_/i___44_carry__2_n_4 ,\i_/i_/i___44_carry__2_n_5 ,\i_/i_/i___44_carry__2_n_6 ,\i_/i_/i___44_carry__2_n_7 }),
        .\membrane_storage_reg[2][1]_0 (neuron_ensemble_storage_inst_n_44),
        .\membrane_storage_reg[2][3]_0 ({neuron_ensemble_storage_inst_n_34,neuron_ensemble_storage_inst_n_35,neuron_ensemble_storage_inst_n_36,neuron_ensemble_storage_inst_n_37}),
        .\membrane_storage_reg[2][3]_1 ({\i_/i_/i___44_carry_n_4 ,\i_/i_/i___44_carry_n_5 ,\i_/i_/i___44_carry_n_6 ,\i_/i_/i___44_carry_n_7 }),
        .\membrane_storage_reg[2][7]_0 ({neuron_ensemble_storage_inst_n_70,neuron_ensemble_storage_inst_n_71,neuron_ensemble_storage_inst_n_72,neuron_ensemble_storage_inst_n_73}),
        .\membrane_storage_reg[2][7]_1 ({\i_/i_/i___44_carry__0_n_4 ,\i_/i_/i___44_carry__0_n_5 ,\i_/i_/i___44_carry__0_n_6 ,\i_/i_/i___44_carry__0_n_7 }),
        .\membrane_storage_reg[3][11]_0 ({neuron_ensemble_storage_inst_n_66,neuron_ensemble_storage_inst_n_67,neuron_ensemble_storage_inst_n_68,neuron_ensemble_storage_inst_n_69}),
        .\membrane_storage_reg[3][11]_1 ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\membrane_storage_reg[3][15]_0 ({neuron_ensemble_storage_inst_n_22,neuron_ensemble_storage_inst_n_23,neuron_ensemble_storage_inst_n_24,neuron_ensemble_storage_inst_n_25}),
        .\membrane_storage_reg[3][15]_1 ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\membrane_storage_reg[3][1]_0 (neuron_ensemble_storage_inst_n_45),
        .\membrane_storage_reg[3][3]_0 ({neuron_ensemble_storage_inst_n_38,neuron_ensemble_storage_inst_n_39,neuron_ensemble_storage_inst_n_40,neuron_ensemble_storage_inst_n_41}),
        .\membrane_storage_reg[3][3]_1 (i__carry_i_1__1_n_0),
        .\membrane_storage_reg[3][7]_0 ({neuron_ensemble_storage_inst_n_62,neuron_ensemble_storage_inst_n_63,neuron_ensemble_storage_inst_n_64,neuron_ensemble_storage_inst_n_65}),
        .\membrane_storage_reg[3][7]_1 ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .out(out),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\state_reg[1] (neuron_ensemble_storage_inst_n_3),
        .\state_reg[2] (neuron_ensemble_storage_inst_n_2),
        .storage_CE(storage_CE),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0__1[0]),
        .Q(neuron_state_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_state0__1[1]),
        .Q(neuron_state_reg_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_3),
        .Q(\selected_idx_offset_reg_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(neuron_ensemble_storage_inst_n_2),
        .Q(\selected_idx_offset_reg_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\selected_membrane_reg_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(\selected_membrane_reg_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(\selected_membrane_reg_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(\selected_membrane_reg_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(\selected_membrane_reg_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(\selected_membrane_reg_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(\selected_membrane_reg_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\selected_membrane_reg_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\selected_membrane_reg_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\selected_membrane_reg_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\selected_membrane_reg_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\selected_membrane_reg_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\selected_membrane_reg_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\selected_membrane_reg_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\selected_membrane_reg_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\selected_membrane_reg_reg[15]_0 [9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry
       (.CI(1'b0),
        .CO({spike_carry_n_0,spike_carry_n_1,spike_carry_n_2,spike_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_5,flipping_unit_tb_n_6,flipping_unit_tb_n_7,flipping_unit_tb_n_8}),
        .O(NLW_spike_carry_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_1,flipping_unit_tb_n_2,flipping_unit_tb_n_3,flipping_unit_tb_n_4}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike_carry__0
       (.CI(spike_carry_n_0),
        .CO({spike_out,spike_carry__0_n_1,spike_carry__0_n_2,spike_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flipping_unit_tb_n_13,flipping_unit_tb_n_14,flipping_unit_tb_n_15,flipping_unit_tb_n_16}),
        .O(NLW_spike_carry__0_O_UNCONNECTED[3:0]),
        .S({flipping_unit_tb_n_9,flipping_unit_tb_n_10,flipping_unit_tb_n_11,flipping_unit_tb_n_12}));
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_10__1
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[14]),
        .O(membrane_compare__14[14]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_11__1
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[15]),
        .O(membrane_compare__14[15]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_15__1
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[12]),
        .O(membrane_compare__14[12]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_17__1
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[13]),
        .O(spike_carry__0_i_17__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_19__1
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[10]),
        .O(membrane_compare__14[10]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_22__1
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[11]),
        .O(spike_carry__0_i_22__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry__0_i_24__1
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[8]),
        .O(membrane_compare__14[8]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry__0_i_26__1
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[9]),
        .O(spike_carry__0_i_26__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_30__1
       (.CI(spike_carry__0_i_40__1_n_0),
        .CO({NLW_spike_carry__0_i_30__1_CO_UNCONNECTED[3:2],spike_carry__0_i_30__1_n_2,spike_carry__0_i_30__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_30__1_O_UNCONNECTED[3],membrane_compare0[15:13]}),
        .S({1'b0,spike_carry__0_i_61__1_n_0,spike_carry__0_i_62__1_n_0,spike_carry__0_i_63__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_40__1
       (.CI(spike_carry_i_31__1_n_0),
        .CO({spike_carry__0_i_40__1_n_0,spike_carry__0_i_40__1_n_1,spike_carry__0_i_40__1_n_2,spike_carry__0_i_40__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[12:9]),
        .S({spike_carry__0_i_71__1_n_0,spike_carry__0_i_72__1_n_0,spike_carry__0_i_73__1_n_0,spike_carry__0_i_74__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_61__1
       (.I0(\selected_membrane_reg_reg[15]_0 [15]),
        .O(spike_carry__0_i_61__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_62__1
       (.I0(\selected_membrane_reg_reg[15]_0 [14]),
        .O(spike_carry__0_i_62__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_63__1
       (.I0(\selected_membrane_reg_reg[15]_0 [13]),
        .O(spike_carry__0_i_63__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_71__1
       (.I0(\selected_membrane_reg_reg[15]_0 [12]),
        .O(spike_carry__0_i_71__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_72__1
       (.I0(\selected_membrane_reg_reg[15]_0 [11]),
        .O(spike_carry__0_i_72__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_73__1
       (.I0(\selected_membrane_reg_reg[15]_0 [10]),
        .O(spike_carry__0_i_73__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_74__1
       (.I0(\selected_membrane_reg_reg[15]_0 [9]),
        .O(spike_carry__0_i_74__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_10__1
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[6]),
        .O(membrane_compare__14[6]));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_125__1
       (.I0(\selected_membrane_reg_reg[15]_0 [0]),
        .O(spike_carry_i_125__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_126__1
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .O(spike_carry_i_126__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_127__1
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .O(spike_carry_i_127__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_128__1
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .O(spike_carry_i_128__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_129__1
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .O(spike_carry_i_129__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_14__1
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[7]),
        .O(spike_carry_i_14__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_16__1
       (.I0(\selected_membrane_reg_reg[15]_0 [4]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[4]),
        .O(membrane_compare__14[4]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_18__1
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[5]),
        .O(spike_carry_i_18__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike_carry_i_20__1
       (.I0(\selected_membrane_reg_reg[15]_0 [2]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[2]),
        .O(membrane_compare__14[2]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_23__1
       (.I0(\selected_membrane_reg_reg[15]_0 [3]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[3]),
        .O(spike_carry_i_23__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike_carry_i_26__1
       (.I0(\selected_membrane_reg_reg[15]_0 [1]),
        .I1(neuron_state_reg_1),
        .I2(membrane_compare0[1]),
        .O(spike_carry_i_26__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_31__1
       (.CI(spike_carry_i_46__1_n_0),
        .CO({spike_carry_i_31__1_n_0,spike_carry_i_31__1_n_1,spike_carry_i_31__1_n_2,spike_carry_i_31__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[8:5]),
        .S({spike_carry_i_87__1_n_0,spike_carry_i_88__1_n_0,spike_carry_i_89__1_n_0,spike_carry_i_90__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_46__1
       (.CI(1'b0),
        .CO({spike_carry_i_46__1_n_0,spike_carry_i_46__1_n_1,spike_carry_i_46__1_n_2,spike_carry_i_46__1_n_3}),
        .CYINIT(spike_carry_i_125__1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(membrane_compare0[4:1]),
        .S({spike_carry_i_126__1_n_0,spike_carry_i_127__1_n_0,spike_carry_i_128__1_n_0,spike_carry_i_129__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_87__1
       (.I0(\selected_membrane_reg_reg[15]_0 [8]),
        .O(spike_carry_i_87__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_88__1
       (.I0(\selected_membrane_reg_reg[15]_0 [7]),
        .O(spike_carry_i_88__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_89__1
       (.I0(\selected_membrane_reg_reg[15]_0 [6]),
        .O(spike_carry_i_89__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_90__1
       (.I0(\selected_membrane_reg_reg[15]_0 [5]),
        .O(spike_carry_i_90__1_n_0));
endmodule

module neuron_ensemble_storage
   (D,
    \state_reg[2] ,
    \state_reg[1] ,
    p_0_in,
    \idx_reg[0]_0 ,
    storage_CE,
    S,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[0][3]_0 ,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    DI,
    \membrane_storage_reg[1][1]_0 ,
    \membrane_storage_reg[2][1]_0 ,
    \membrane_storage_reg[3][1]_0 ,
    \membrane_storage_reg[2][15]_1 ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    O,
    clk_IBUF_BUFG,
    \membrane_storage_reg[3][7]_1 ,
    \membrane_storage_reg[3][11]_1 ,
    \membrane_storage_reg[3][15]_1 ,
    \membrane_storage_reg[2][3]_1 ,
    \membrane_storage_reg[2][7]_1 ,
    \membrane_storage_reg[2][11]_1 ,
    \membrane_storage_reg[2][15]_2 ,
    \membrane_storage_reg[1][3]_1 ,
    \membrane_storage_reg[1][7]_1 ,
    \membrane_storage_reg[1][11]_1 ,
    \membrane_storage_reg[1][15]_1 ,
    \membrane_storage_reg[0][3]_1 ,
    \membrane_storage_reg[0][7]_1 ,
    \membrane_storage_reg[0][11]_1 ,
    \membrane_storage_reg[0][15]_0 ,
    neuron_states_storage2_in,
    p_1_in,
    idx_offset_to_update,
    Q,
    write_neuron_states_IBUF,
    out,
    membrane_data_in_IBUF,
    \membrane_storage_reg[3][3]_1 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF);
  output [1:0]D;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output [3:0]p_0_in;
  output \idx_reg[0]_0 ;
  output storage_CE;
  output [3:0]S;
  output [3:0]\membrane_storage_reg[1][15]_0 ;
  output [3:0]\membrane_storage_reg[2][15]_0 ;
  output [3:0]\membrane_storage_reg[3][15]_0 ;
  output [3:0]\membrane_storage_reg[0][3]_0 ;
  output [3:0]\membrane_storage_reg[1][3]_0 ;
  output [3:0]\membrane_storage_reg[2][3]_0 ;
  output [3:0]\membrane_storage_reg[3][3]_0 ;
  output [0:0]DI;
  output [0:0]\membrane_storage_reg[1][1]_0 ;
  output [0:0]\membrane_storage_reg[2][1]_0 ;
  output [0:0]\membrane_storage_reg[3][1]_0 ;
  output [15:0]\membrane_storage_reg[2][15]_1 ;
  output [3:0]\membrane_storage_reg[3][7]_0 ;
  output [3:0]\membrane_storage_reg[3][11]_0 ;
  output [3:0]\membrane_storage_reg[2][7]_0 ;
  output [3:0]\membrane_storage_reg[2][11]_0 ;
  output [3:0]\membrane_storage_reg[1][7]_0 ;
  output [3:0]\membrane_storage_reg[1][11]_0 ;
  output [3:0]\membrane_storage_reg[0][7]_0 ;
  output [3:0]\membrane_storage_reg[0][11]_0 ;
  input [3:0]O;
  input clk_IBUF_BUFG;
  input [3:0]\membrane_storage_reg[3][7]_1 ;
  input [3:0]\membrane_storage_reg[3][11]_1 ;
  input [3:0]\membrane_storage_reg[3][15]_1 ;
  input [3:0]\membrane_storage_reg[2][3]_1 ;
  input [3:0]\membrane_storage_reg[2][7]_1 ;
  input [3:0]\membrane_storage_reg[2][11]_1 ;
  input [3:0]\membrane_storage_reg[2][15]_2 ;
  input [3:0]\membrane_storage_reg[1][3]_1 ;
  input [3:0]\membrane_storage_reg[1][7]_1 ;
  input [3:0]\membrane_storage_reg[1][11]_1 ;
  input [3:0]\membrane_storage_reg[1][15]_1 ;
  input [3:0]\membrane_storage_reg[0][3]_1 ;
  input [3:0]\membrane_storage_reg[0][7]_1 ;
  input [3:0]\membrane_storage_reg[0][11]_1 ;
  input [3:0]\membrane_storage_reg[0][15]_0 ;
  input [3:0]neuron_states_storage2_in;
  input [0:0]p_1_in;
  input [1:0]idx_offset_to_update;
  input [2:0]Q;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]out;
  input [15:0]membrane_data_in_IBUF;
  input \membrane_storage_reg[3][3]_1 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;

  wire [1:0]D;
  wire [0:0]DI;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [2:0]ensemble_seed_IBUF;
  wire \idx[0]_i_1__1_n_0 ;
  wire \idx[1]_i_1__0_n_0 ;
  wire [1:0]idx_offset_to_update;
  wire \idx_reg[0]_0 ;
  wire \idx_reg_n_0_[1] ;
  wire [15:0]membrane_data_in_IBUF;
  wire \membrane_storage[1][0]_i_1__1_n_0 ;
  wire \membrane_storage[1][0]_i_2__1_n_0 ;
  wire \membrane_storage[2][0]_i_1__1_n_0 ;
  wire \membrane_storage[3][0]_i_1__1_n_0 ;
  wire \membrane_storage[3][0]_i_2__1_n_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_1 ;
  wire [3:0]\membrane_storage_reg[0][15]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_1 ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [3:0]\membrane_storage_reg[0][7]_1 ;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [3:0]\membrane_storage_reg[1][11]_1 ;
  wire [3:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][15]_1 ;
  wire [0:0]\membrane_storage_reg[1][1]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_1 ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [3:0]\membrane_storage_reg[1][7]_1 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [3:0]\membrane_storage_reg[2][11]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_0 ;
  wire [15:0]\membrane_storage_reg[2][15]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_2 ;
  wire [0:0]\membrane_storage_reg[2][1]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_1 ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [3:0]\membrane_storage_reg[2][7]_1 ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [3:0]\membrane_storage_reg[3][11]_1 ;
  wire [3:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][15]_1 ;
  wire [0:0]\membrane_storage_reg[3][1]_0 ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire \membrane_storage_reg[3][3]_1 ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [3:0]\membrane_storage_reg[3][7]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire neuron_states_storage;
  wire [3:0]neuron_states_storage2_in;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_2;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_3;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire [1:1]p_1_in_0;
  wire sel;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire storage_CE;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[0]_3 [7]),
        .O(\membrane_storage_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[0]_3 [6]),
        .O(\membrane_storage_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[0]_3 [5]),
        .O(\membrane_storage_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[0]_3 [4]),
        .O(\membrane_storage_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[0]_3 [11]),
        .O(\membrane_storage_reg[0][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[0]_3 [10]),
        .O(\membrane_storage_reg[0][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[0]_3 [9]),
        .O(\membrane_storage_reg[0][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[0]_3 [8]),
        .O(\membrane_storage_reg[0][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___134_carry__2_i_1__1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[0]_3 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[0]_3 [14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[0]_3 [13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[0]_3 [12]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___134_carry_i_1__1
       (.I0(\membrane_storage_reg[0]_3 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(DI));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[0]_3 [3]),
        .O(\membrane_storage_reg[0][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[0]_3 [2]),
        .O(\membrane_storage_reg[0][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___134_carry_i_4__1
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[0]_3 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[0][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___134_carry_i_5__1
       (.I0(\membrane_storage_reg[0]_3 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[0][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[2]_1 [7]),
        .O(\membrane_storage_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[2]_1 [6]),
        .O(\membrane_storage_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[2]_1 [5]),
        .O(\membrane_storage_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[2]_1 [4]),
        .O(\membrane_storage_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[2]_1 [11]),
        .O(\membrane_storage_reg[2][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[2]_1 [10]),
        .O(\membrane_storage_reg[2][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[2]_1 [9]),
        .O(\membrane_storage_reg[2][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[2]_1 [8]),
        .O(\membrane_storage_reg[2][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___44_carry__2_i_1__1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[2]_1 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[2]_1 [14]),
        .O(\membrane_storage_reg[2][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[2]_1 [13]),
        .O(\membrane_storage_reg[2][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[2]_1 [12]),
        .O(\membrane_storage_reg[2][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___44_carry_i_1__1
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[2]_1 [3]),
        .O(\membrane_storage_reg[2][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[2]_1 [2]),
        .O(\membrane_storage_reg[2][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___44_carry_i_4__1
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[2]_1 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___44_carry_i_5__1
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[1][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[1][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[1][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[1][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[1][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[1][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[1][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[1][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___89_carry__2_i_1__1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[1]_2 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[1][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[1][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[1][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___89_carry_i_1__1
       (.I0(\membrane_storage_reg[1]_2 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[1][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[1][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___89_carry_i_4__1
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[1]_2 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___89_carry_i_5__1
       (.I0(\membrane_storage_reg[1]_2 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[3]_0 [7]),
        .O(\membrane_storage_reg[3][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[3]_0 [6]),
        .O(\membrane_storage_reg[3][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[3]_0 [5]),
        .O(\membrane_storage_reg[3][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[3]_0 [4]),
        .O(\membrane_storage_reg[3][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_1__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[3]_0 [11]),
        .O(\membrane_storage_reg[3][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[3]_0 [10]),
        .O(\membrane_storage_reg[3][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[3]_0 [9]),
        .O(\membrane_storage_reg[3][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[3]_0 [8]),
        .O(\membrane_storage_reg[3][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i__carry__2_i_1__1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_2__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[3]_0 [14]),
        .O(\membrane_storage_reg[3][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[3]_0 [13]),
        .O(\membrane_storage_reg[3][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[3]_0 [12]),
        .O(\membrane_storage_reg[3][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i__carry_i_2__1
       (.I0(\membrane_storage_reg[3]_0 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry_i_3__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[3]_0 [3]),
        .O(\membrane_storage_reg[3][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry_i_4__1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[3]_0 [2]),
        .O(\membrane_storage_reg[3][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i__carry_i_5__1
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i__carry_i_6__1
       (.I0(\membrane_storage_reg[3]_0 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h005EFF00)) 
    \idx[0]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF),
        .I4(\idx_reg[0]_0 ),
        .O(\idx[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h005EFF5EFF000000)) 
    \idx[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF),
        .I4(\idx_reg[0]_0 ),
        .I5(\idx_reg_n_0_[1] ),
        .O(\idx[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[0]_i_1__1_n_0 ),
        .Q(\idx_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[1]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[1] ),
        .R(1'b0));
  LFSR_inout index_selection
       (.ADDRC({\state_reg[2] ,\state_reg[1] }),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (storage_CE),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15]_1 ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \membrane_storage[0][0]_i_1__1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF),
        .I2(\idx_reg[0]_0 ),
        .I3(out[0]),
        .I4(\membrane_storage[1][0]_i_2__1_n_0 ),
        .O(sel));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \membrane_storage[1][0]_i_1__1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(write_neuron_states_IBUF),
        .I3(out[1]),
        .I4(\membrane_storage[1][0]_i_2__1_n_0 ),
        .O(\membrane_storage[1][0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \membrane_storage[1][0]_i_2__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage[1][0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h2222F00022220000)) 
    \membrane_storage[2][0]_i_1__1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2__1_n_0 ),
        .I4(write_neuron_states_IBUF),
        .I5(out[2]),
        .O(\membrane_storage[2][0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8888F00088880000)) 
    \membrane_storage[3][0]_i_1__1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2__1_n_0 ),
        .I4(write_neuron_states_IBUF),
        .I5(out[3]),
        .O(\membrane_storage[3][0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \membrane_storage[3][0]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\membrane_storage[3][0]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [0]),
        .Q(\membrane_storage_reg[0]_3 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [1]),
        .Q(\membrane_storage_reg[0]_3 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [2]),
        .Q(\membrane_storage_reg[0]_3 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [3]),
        .Q(\membrane_storage_reg[0]_3 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [0]),
        .Q(\membrane_storage_reg[2]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [1]),
        .Q(\membrane_storage_reg[2]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [2]),
        .Q(\membrane_storage_reg[2]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [3]),
        .Q(\membrane_storage_reg[2]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(O[0]),
        .Q(\membrane_storage_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(O[1]),
        .Q(\membrane_storage_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(O[2]),
        .Q(\membrane_storage_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(O[3]),
        .Q(\membrane_storage_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit2/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r1_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r1_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRB({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRC({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_0,p_1_in}),
        .DIA(neuron_states_storage2_in[1:0]),
        .DIB(neuron_states_storage2_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(D),
        .DOB({neuron_states_storage_reg_r1_0_3_0_3_n_2,neuron_states_storage_reg_r1_0_3_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  LUT4 #(
    .INIT(16'hFF08)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_1__1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF),
        .O(neuron_states_storage));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_6__1
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF),
        .I2(idx_offset_to_update[1]),
        .O(p_1_in_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit2/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r2_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r2_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,idx_offset_to_update}),
        .ADDRB({1'b0,1'b0,1'b0,idx_offset_to_update}),
        .ADDRC({1'b0,1'b0,1'b0,idx_offset_to_update}),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_0,p_1_in}),
        .DIA(neuron_states_storage2_in[1:0]),
        .DIB(neuron_states_storage2_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_in[1:0]),
        .DOB(p_0_in[3:2]),
        .DOC(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module neuron_ensemble_storage_1
   (D,
    \state_reg[2] ,
    \state_reg[1] ,
    p_0_in,
    \idx_reg[0]_0 ,
    storage_CE,
    S,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[0][3]_0 ,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    DI,
    \membrane_storage_reg[1][1]_0 ,
    \membrane_storage_reg[2][1]_0 ,
    \membrane_storage_reg[3][1]_0 ,
    \membrane_storage_reg[2][15]_1 ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    O,
    clk_IBUF_BUFG,
    \membrane_storage_reg[3][7]_1 ,
    \membrane_storage_reg[3][11]_1 ,
    \membrane_storage_reg[3][15]_1 ,
    \membrane_storage_reg[2][3]_1 ,
    \membrane_storage_reg[2][7]_1 ,
    \membrane_storage_reg[2][11]_1 ,
    \membrane_storage_reg[2][15]_2 ,
    \membrane_storage_reg[1][3]_1 ,
    \membrane_storage_reg[1][7]_1 ,
    \membrane_storage_reg[1][11]_1 ,
    \membrane_storage_reg[1][15]_1 ,
    \membrane_storage_reg[0][3]_1 ,
    \membrane_storage_reg[0][7]_1 ,
    \membrane_storage_reg[0][11]_1 ,
    \membrane_storage_reg[0][15]_0 ,
    neuron_states_storage2_in,
    p_1_in,
    \neuron_state_reg_reg[1] ,
    Q,
    write_neuron_states_IBUF,
    Q_out0,
    membrane_data_in_IBUF,
    \membrane_storage_reg[3][3]_1 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF);
  output [1:0]D;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output [3:0]p_0_in;
  output \idx_reg[0]_0 ;
  output storage_CE;
  output [3:0]S;
  output [3:0]\membrane_storage_reg[1][15]_0 ;
  output [3:0]\membrane_storage_reg[2][15]_0 ;
  output [3:0]\membrane_storage_reg[3][15]_0 ;
  output [3:0]\membrane_storage_reg[0][3]_0 ;
  output [3:0]\membrane_storage_reg[1][3]_0 ;
  output [3:0]\membrane_storage_reg[2][3]_0 ;
  output [3:0]\membrane_storage_reg[3][3]_0 ;
  output [0:0]DI;
  output [0:0]\membrane_storage_reg[1][1]_0 ;
  output [0:0]\membrane_storage_reg[2][1]_0 ;
  output [0:0]\membrane_storage_reg[3][1]_0 ;
  output [15:0]\membrane_storage_reg[2][15]_1 ;
  output [3:0]\membrane_storage_reg[3][7]_0 ;
  output [3:0]\membrane_storage_reg[3][11]_0 ;
  output [3:0]\membrane_storage_reg[2][7]_0 ;
  output [3:0]\membrane_storage_reg[2][11]_0 ;
  output [3:0]\membrane_storage_reg[1][7]_0 ;
  output [3:0]\membrane_storage_reg[1][11]_0 ;
  output [3:0]\membrane_storage_reg[0][7]_0 ;
  output [3:0]\membrane_storage_reg[0][11]_0 ;
  input [3:0]O;
  input clk_IBUF_BUFG;
  input [3:0]\membrane_storage_reg[3][7]_1 ;
  input [3:0]\membrane_storage_reg[3][11]_1 ;
  input [3:0]\membrane_storage_reg[3][15]_1 ;
  input [3:0]\membrane_storage_reg[2][3]_1 ;
  input [3:0]\membrane_storage_reg[2][7]_1 ;
  input [3:0]\membrane_storage_reg[2][11]_1 ;
  input [3:0]\membrane_storage_reg[2][15]_2 ;
  input [3:0]\membrane_storage_reg[1][3]_1 ;
  input [3:0]\membrane_storage_reg[1][7]_1 ;
  input [3:0]\membrane_storage_reg[1][11]_1 ;
  input [3:0]\membrane_storage_reg[1][15]_1 ;
  input [3:0]\membrane_storage_reg[0][3]_1 ;
  input [3:0]\membrane_storage_reg[0][7]_1 ;
  input [3:0]\membrane_storage_reg[0][11]_1 ;
  input [3:0]\membrane_storage_reg[0][15]_0 ;
  input [3:0]neuron_states_storage2_in;
  input [0:0]p_1_in;
  input [1:0]\neuron_state_reg_reg[1] ;
  input [2:0]Q;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]Q_out0;
  input [15:0]membrane_data_in_IBUF;
  input \membrane_storage_reg[3][3]_1 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;

  wire [1:0]D;
  wire [0:0]DI;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [2:0]ensemble_seed_IBUF;
  wire \idx[0]_i_1__0_n_0 ;
  wire \idx[1]_i_1__1_n_0 ;
  wire \idx_reg[0]_0 ;
  wire \idx_reg_n_0_[1] ;
  wire [15:0]membrane_data_in_IBUF;
  wire \membrane_storage[1][0]_i_1__0_n_0 ;
  wire \membrane_storage[1][0]_i_2__0_n_0 ;
  wire \membrane_storage[2][0]_i_1__0_n_0 ;
  wire \membrane_storage[3][0]_i_1__0_n_0 ;
  wire \membrane_storage[3][0]_i_2__0_n_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_1 ;
  wire [3:0]\membrane_storage_reg[0][15]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_1 ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [3:0]\membrane_storage_reg[0][7]_1 ;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [3:0]\membrane_storage_reg[1][11]_1 ;
  wire [3:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][15]_1 ;
  wire [0:0]\membrane_storage_reg[1][1]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_1 ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [3:0]\membrane_storage_reg[1][7]_1 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [3:0]\membrane_storage_reg[2][11]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_0 ;
  wire [15:0]\membrane_storage_reg[2][15]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_2 ;
  wire [0:0]\membrane_storage_reg[2][1]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_1 ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [3:0]\membrane_storage_reg[2][7]_1 ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [3:0]\membrane_storage_reg[3][11]_1 ;
  wire [3:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][15]_1 ;
  wire [0:0]\membrane_storage_reg[3][1]_0 ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire \membrane_storage_reg[3][3]_1 ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [3:0]\membrane_storage_reg[3][7]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire [1:0]\neuron_state_reg_reg[1] ;
  wire neuron_states_storage;
  wire [3:0]neuron_states_storage2_in;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_2;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_3;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire [1:1]p_1_in_0;
  wire sel;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire storage_CE;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[0]_3 [7]),
        .O(\membrane_storage_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[0]_3 [6]),
        .O(\membrane_storage_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[0]_3 [5]),
        .O(\membrane_storage_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__0_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[0]_3 [4]),
        .O(\membrane_storage_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[0]_3 [11]),
        .O(\membrane_storage_reg[0][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[0]_3 [10]),
        .O(\membrane_storage_reg[0][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[0]_3 [9]),
        .O(\membrane_storage_reg[0][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__1_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[0]_3 [8]),
        .O(\membrane_storage_reg[0][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___134_carry__2_i_1__0
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[0]_3 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[0]_3 [14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[0]_3 [13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry__2_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[0]_3 [12]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___134_carry_i_1__0
       (.I0(\membrane_storage_reg[0]_3 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(DI));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[0]_3 [3]),
        .O(\membrane_storage_reg[0][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___134_carry_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[0]_3 [2]),
        .O(\membrane_storage_reg[0][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___134_carry_i_4__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[0]_3 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[0][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___134_carry_i_5__0
       (.I0(\membrane_storage_reg[0]_3 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[0][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[2]_1 [7]),
        .O(\membrane_storage_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[2]_1 [6]),
        .O(\membrane_storage_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[2]_1 [5]),
        .O(\membrane_storage_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__0_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[2]_1 [4]),
        .O(\membrane_storage_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[2]_1 [11]),
        .O(\membrane_storage_reg[2][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[2]_1 [10]),
        .O(\membrane_storage_reg[2][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[2]_1 [9]),
        .O(\membrane_storage_reg[2][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__1_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[2]_1 [8]),
        .O(\membrane_storage_reg[2][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___44_carry__2_i_1__0
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[2]_1 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[2]_1 [14]),
        .O(\membrane_storage_reg[2][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[2]_1 [13]),
        .O(\membrane_storage_reg[2][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry__2_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[2]_1 [12]),
        .O(\membrane_storage_reg[2][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___44_carry_i_1__0
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[2]_1 [3]),
        .O(\membrane_storage_reg[2][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___44_carry_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[2]_1 [2]),
        .O(\membrane_storage_reg[2][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___44_carry_i_4__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[2]_1 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___44_carry_i_5__0
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[2][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[1][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[1][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[1][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__0_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[1][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[1][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[1][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[1][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__1_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[1][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___89_carry__2_i_1__0
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[1]_2 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[1][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[1][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry__2_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[1][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___89_carry_i_1__0
       (.I0(\membrane_storage_reg[1]_2 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[1][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i___89_carry_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[1][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___89_carry_i_4__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[1]_2 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i___89_carry_i_5__0
       (.I0(\membrane_storage_reg[1]_2 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[1][3]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[7]),
        .I3(\membrane_storage_reg[3]_0 [7]),
        .O(\membrane_storage_reg[3][7]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[6]),
        .I3(\membrane_storage_reg[3]_0 [6]),
        .O(\membrane_storage_reg[3][7]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[5]),
        .I3(\membrane_storage_reg[3]_0 [5]),
        .O(\membrane_storage_reg[3][7]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__0_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[4]),
        .I3(\membrane_storage_reg[3]_0 [4]),
        .O(\membrane_storage_reg[3][7]_0 [0]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_1__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[11]),
        .I3(\membrane_storage_reg[3]_0 [11]),
        .O(\membrane_storage_reg[3][11]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[10]),
        .I3(\membrane_storage_reg[3]_0 [10]),
        .O(\membrane_storage_reg[3][11]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[9]),
        .I3(\membrane_storage_reg[3]_0 [9]),
        .O(\membrane_storage_reg[3][11]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__1_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[8]),
        .I3(\membrane_storage_reg[3]_0 [8]),
        .O(\membrane_storage_reg[3][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i__carry__2_i_1__0
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][15]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_2__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[14]),
        .I3(\membrane_storage_reg[3]_0 [14]),
        .O(\membrane_storage_reg[3][15]_0 [2]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[13]),
        .I3(\membrane_storage_reg[3]_0 [13]),
        .O(\membrane_storage_reg[3][15]_0 [1]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry__2_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[12]),
        .I3(\membrane_storage_reg[3]_0 [12]),
        .O(\membrane_storage_reg[3][15]_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    i__carry_i_2__0
       (.I0(\membrane_storage_reg[3]_0 [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][1]_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry_i_3__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[3]),
        .I3(\membrane_storage_reg[3]_0 [3]),
        .O(\membrane_storage_reg[3][3]_0 [3]));
  LUT4 #(
    .INIT(16'h596A)) 
    i__carry_i_4__0
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(write_neuron_states_IBUF),
        .I2(membrane_data_in_IBUF[2]),
        .I3(\membrane_storage_reg[3]_0 [2]),
        .O(\membrane_storage_reg[3][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i__carry_i_5__0
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][3]_0 [1]));
  LUT3 #(
    .INIT(8'hCA)) 
    i__carry_i_6__0
       (.I0(\membrane_storage_reg[3]_0 [0]),
        .I1(membrane_data_in_IBUF[0]),
        .I2(write_neuron_states_IBUF),
        .O(\membrane_storage_reg[3][3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h005EFF00)) 
    \idx[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF),
        .I4(\idx_reg[0]_0 ),
        .O(\idx[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h005EFF5EFF000000)) 
    \idx[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF),
        .I4(\idx_reg[0]_0 ),
        .I5(\idx_reg_n_0_[1] ),
        .O(\idx[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[0]_i_1__0_n_0 ),
        .Q(\idx_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[1]_i_1__1_n_0 ),
        .Q(\idx_reg_n_0_[1] ),
        .R(1'b0));
  LFSR_inout_2 index_selection
       (.ADDRC({\state_reg[2] ,\state_reg[1] }),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (storage_CE),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15]_1 ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \membrane_storage[0][0]_i_1__0 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF),
        .I2(\idx_reg[0]_0 ),
        .I3(Q_out0[0]),
        .I4(\membrane_storage[1][0]_i_2__0_n_0 ),
        .O(sel));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \membrane_storage[1][0]_i_1__0 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(write_neuron_states_IBUF),
        .I3(Q_out0[1]),
        .I4(\membrane_storage[1][0]_i_2__0_n_0 ),
        .O(\membrane_storage[1][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \membrane_storage[1][0]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF),
        .O(\membrane_storage[1][0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2222F00022220000)) 
    \membrane_storage[2][0]_i_1__0 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2__0_n_0 ),
        .I4(write_neuron_states_IBUF),
        .I5(Q_out0[2]),
        .O(\membrane_storage[2][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888F00088880000)) 
    \membrane_storage[3][0]_i_1__0 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2__0_n_0 ),
        .I4(write_neuron_states_IBUF),
        .I5(Q_out0[3]),
        .O(\membrane_storage[3][0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \membrane_storage[3][0]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\membrane_storage[3][0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [0]),
        .Q(\membrane_storage_reg[0]_3 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [1]),
        .Q(\membrane_storage_reg[0]_3 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [2]),
        .Q(\membrane_storage_reg[0]_3 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [3]),
        .Q(\membrane_storage_reg[0]_3 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [0]),
        .Q(\membrane_storage_reg[2]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [1]),
        .Q(\membrane_storage_reg[2]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [2]),
        .Q(\membrane_storage_reg[2]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [3]),
        .Q(\membrane_storage_reg[2]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(O[0]),
        .Q(\membrane_storage_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(O[1]),
        .Q(\membrane_storage_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(O[2]),
        .Q(\membrane_storage_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(O[3]),
        .Q(\membrane_storage_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1__0_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit1/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r1_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r1_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRB({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRC({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_0,p_1_in}),
        .DIA(neuron_states_storage2_in[1:0]),
        .DIB(neuron_states_storage2_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(D),
        .DOB({neuron_states_storage_reg_r1_0_3_0_3_n_2,neuron_states_storage_reg_r1_0_3_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  LUT4 #(
    .INIT(16'hFF08)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_1__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF),
        .O(neuron_states_storage));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_6__0
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF),
        .I2(\neuron_state_reg_reg[1] [1]),
        .O(p_1_in_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit1/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r2_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r2_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] }),
        .ADDRB({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] }),
        .ADDRC({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] }),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_0,p_1_in}),
        .DIA(neuron_states_storage2_in[1:0]),
        .DIB(neuron_states_storage2_in[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_in[1:0]),
        .DOB(p_0_in[3:2]),
        .DOC(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module neuron_ensemble_storage_10
   (D,
    \state_reg[2] ,
    \state_reg[1] ,
    storage_CE,
    S,
    \membrane_storage_reg[1][15]_0 ,
    \membrane_storage_reg[2][15]_0 ,
    \membrane_storage_reg[3][15]_0 ,
    \membrane_storage_reg[0][3]_0 ,
    \membrane_storage_reg[1][3]_0 ,
    \membrane_storage_reg[2][3]_0 ,
    \membrane_storage_reg[3][3]_0 ,
    DI,
    \membrane_storage_reg[1][1]_0 ,
    \membrane_storage_reg[2][1]_0 ,
    \membrane_storage_reg[3][1]_0 ,
    \membrane_storage_reg[2][15]_1 ,
    p_1_in,
    neuron_states_storage2_in,
    \index_of_neuron_that_fired_reg_reg[0] ,
    \index_of_neuron_that_fired_reg_reg[2] ,
    \membrane_storage_reg[3][7]_0 ,
    \membrane_storage_reg[3][11]_0 ,
    \membrane_storage_reg[2][7]_0 ,
    \membrane_storage_reg[2][11]_0 ,
    \membrane_storage_reg[1][7]_0 ,
    \membrane_storage_reg[1][11]_0 ,
    \membrane_storage_reg[0][7]_0 ,
    \membrane_storage_reg[0][11]_0 ,
    Q_out0,
    out,
    O,
    clk_IBUF_BUFG,
    \membrane_storage_reg[3][7]_1 ,
    \membrane_storage_reg[3][11]_1 ,
    \membrane_storage_reg[3][15]_1 ,
    \membrane_storage_reg[2][3]_1 ,
    \membrane_storage_reg[2][7]_1 ,
    \membrane_storage_reg[2][11]_1 ,
    \membrane_storage_reg[2][15]_2 ,
    \membrane_storage_reg[1][3]_1 ,
    \membrane_storage_reg[1][7]_1 ,
    \membrane_storage_reg[1][11]_1 ,
    \membrane_storage_reg[1][15]_1 ,
    \membrane_storage_reg[0][3]_1 ,
    \membrane_storage_reg[0][7]_1 ,
    \membrane_storage_reg[0][11]_1 ,
    \membrane_storage_reg[0][15]_0 ,
    \neuron_state_reg_reg[1] ,
    Q,
    write_neuron_states_IBUF,
    membrane_data_in_IBUF,
    \membrane_storage_reg[3][3]_1 ,
    neuron_state_in_IBUF,
    \neuron_state_reg_reg[1]_0 ,
    p_0_in,
    \neuron_state_reg_reg[1]_1 ,
    \neuron_state_reg_reg[1]_2 ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF);
  output [1:0]D;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output storage_CE;
  output [3:0]S;
  output [3:0]\membrane_storage_reg[1][15]_0 ;
  output [3:0]\membrane_storage_reg[2][15]_0 ;
  output [3:0]\membrane_storage_reg[3][15]_0 ;
  output [3:0]\membrane_storage_reg[0][3]_0 ;
  output [3:0]\membrane_storage_reg[1][3]_0 ;
  output [3:0]\membrane_storage_reg[2][3]_0 ;
  output [3:0]\membrane_storage_reg[3][3]_0 ;
  output [0:0]DI;
  output [0:0]\membrane_storage_reg[1][1]_0 ;
  output [0:0]\membrane_storage_reg[2][1]_0 ;
  output [0:0]\membrane_storage_reg[3][1]_0 ;
  output [15:0]\membrane_storage_reg[2][15]_1 ;
  output [0:0]p_1_in;
  output [3:0]neuron_states_storage2_in;
  output [0:0]\index_of_neuron_that_fired_reg_reg[0] ;
  output [3:0]\index_of_neuron_that_fired_reg_reg[2] ;
  output [3:0]\membrane_storage_reg[3][7]_0 ;
  output [3:0]\membrane_storage_reg[3][11]_0 ;
  output [3:0]\membrane_storage_reg[2][7]_0 ;
  output [3:0]\membrane_storage_reg[2][11]_0 ;
  output [3:0]\membrane_storage_reg[1][7]_0 ;
  output [3:0]\membrane_storage_reg[1][11]_0 ;
  output [3:0]\membrane_storage_reg[0][7]_0 ;
  output [3:0]\membrane_storage_reg[0][11]_0 ;
  output [3:0]Q_out0;
  output [3:0]out;
  input [3:0]O;
  input clk_IBUF_BUFG;
  input [3:0]\membrane_storage_reg[3][7]_1 ;
  input [3:0]\membrane_storage_reg[3][11]_1 ;
  input [3:0]\membrane_storage_reg[3][15]_1 ;
  input [3:0]\membrane_storage_reg[2][3]_1 ;
  input [3:0]\membrane_storage_reg[2][7]_1 ;
  input [3:0]\membrane_storage_reg[2][11]_1 ;
  input [3:0]\membrane_storage_reg[2][15]_2 ;
  input [3:0]\membrane_storage_reg[1][3]_1 ;
  input [3:0]\membrane_storage_reg[1][7]_1 ;
  input [3:0]\membrane_storage_reg[1][11]_1 ;
  input [3:0]\membrane_storage_reg[1][15]_1 ;
  input [3:0]\membrane_storage_reg[0][3]_1 ;
  input [3:0]\membrane_storage_reg[0][7]_1 ;
  input [3:0]\membrane_storage_reg[0][11]_1 ;
  input [3:0]\membrane_storage_reg[0][15]_0 ;
  input [3:0]\neuron_state_reg_reg[1] ;
  input [2:0]Q;
  input [2:0]write_neuron_states_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input \membrane_storage_reg[3][3]_1 ;
  input [3:0]neuron_state_in_IBUF;
  input \neuron_state_reg_reg[1]_0 ;
  input [3:0]p_0_in;
  input \neuron_state_reg_reg[1]_1 ;
  input [3:0]\neuron_state_reg_reg[1]_2 ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;

  wire [1:0]D;
  wire [0:0]DI;
  wire [3:0]\G_memory/Q_out0 ;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [2:0]ensemble_seed_IBUF;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[1] ;
  wire [0:0]\index_of_neuron_that_fired_reg_reg[0] ;
  wire [3:0]\index_of_neuron_that_fired_reg_reg[2] ;
  wire [15:0]membrane_data_in_IBUF;
  wire \membrane_storage[1][0]_i_1_n_0 ;
  wire \membrane_storage[1][0]_i_2_n_0 ;
  wire \membrane_storage[2][0]_i_1_n_0 ;
  wire \membrane_storage[3][0]_i_1_n_0 ;
  wire \membrane_storage[3][0]_i_2_n_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_0 ;
  wire [3:0]\membrane_storage_reg[0][11]_1 ;
  wire [3:0]\membrane_storage_reg[0][15]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_0 ;
  wire [3:0]\membrane_storage_reg[0][3]_1 ;
  wire [3:0]\membrane_storage_reg[0][7]_0 ;
  wire [3:0]\membrane_storage_reg[0][7]_1 ;
  wire [15:0]\membrane_storage_reg[0]_3 ;
  wire [3:0]\membrane_storage_reg[1][11]_0 ;
  wire [3:0]\membrane_storage_reg[1][11]_1 ;
  wire [3:0]\membrane_storage_reg[1][15]_0 ;
  wire [3:0]\membrane_storage_reg[1][15]_1 ;
  wire [0:0]\membrane_storage_reg[1][1]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_0 ;
  wire [3:0]\membrane_storage_reg[1][3]_1 ;
  wire [3:0]\membrane_storage_reg[1][7]_0 ;
  wire [3:0]\membrane_storage_reg[1][7]_1 ;
  wire [15:0]\membrane_storage_reg[1]_2 ;
  wire [3:0]\membrane_storage_reg[2][11]_0 ;
  wire [3:0]\membrane_storage_reg[2][11]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_0 ;
  wire [15:0]\membrane_storage_reg[2][15]_1 ;
  wire [3:0]\membrane_storage_reg[2][15]_2 ;
  wire [0:0]\membrane_storage_reg[2][1]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_0 ;
  wire [3:0]\membrane_storage_reg[2][3]_1 ;
  wire [3:0]\membrane_storage_reg[2][7]_0 ;
  wire [3:0]\membrane_storage_reg[2][7]_1 ;
  wire [15:0]\membrane_storage_reg[2]_1 ;
  wire [3:0]\membrane_storage_reg[3][11]_0 ;
  wire [3:0]\membrane_storage_reg[3][11]_1 ;
  wire [3:0]\membrane_storage_reg[3][15]_0 ;
  wire [3:0]\membrane_storage_reg[3][15]_1 ;
  wire [0:0]\membrane_storage_reg[3][1]_0 ;
  wire [3:0]\membrane_storage_reg[3][3]_0 ;
  wire \membrane_storage_reg[3][3]_1 ;
  wire [3:0]\membrane_storage_reg[3][7]_0 ;
  wire [3:0]\membrane_storage_reg[3][7]_1 ;
  wire [15:0]\membrane_storage_reg[3]_0 ;
  wire [3:0]neuron_state_in_IBUF;
  wire [3:0]\neuron_state_reg_reg[1] ;
  wire \neuron_state_reg_reg[1]_0 ;
  wire \neuron_state_reg_reg[1]_1 ;
  wire [3:0]\neuron_state_reg_reg[1]_2 ;
  wire neuron_states_storage;
  wire [3:0]neuron_states_storage2_in;
  wire [3:0]neuron_states_storage2_in_1;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_2;
  wire neuron_states_storage_reg_r1_0_3_0_3_n_3;
  wire neuron_states_storage_reg_r2_0_3_0_3_n_1;
  wire neuron_states_storage_reg_r2_0_3_0_3_n_2;
  wire neuron_states_storage_reg_r2_0_3_0_3_n_3;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire p_1_in_0;
  wire [1:0]p_1_in_1;
  wire sel;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire storage_CE;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [2:0]write_neuron_states_IBUF;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    g0_b0__2
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(\G_memory/Q_out0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h01A6)) 
    g0_b0__3
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(Q_out0[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0EBE)) 
    g0_b0__4
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0D75)) 
    g0_b1__2
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(\G_memory/Q_out0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0F57)) 
    g0_b1__3
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(Q_out0[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h05ED)) 
    g0_b1__4
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h073A)) 
    g0_b2__2
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(\G_memory/Q_out0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    g0_b2__3
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(\neuron_state_reg_reg[1] [3]),
        .O(Q_out0[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h03AE)) 
    g0_b2__4
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h07C4)) 
    g0_b3__2
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(\G_memory/Q_out0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0F58)) 
    g0_b3__3
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(Q_out0[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h01E2)) 
    g0_b3__4
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(\neuron_state_reg_reg[1] [1]),
        .I2(\neuron_state_reg_reg[1] [2]),
        .I3(\neuron_state_reg_reg[1] [3]),
        .O(out[3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__0_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [7]),
        .O(\membrane_storage_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__0_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [6]),
        .O(\membrane_storage_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__0_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [5]),
        .O(\membrane_storage_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__0_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [4]),
        .O(\membrane_storage_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__1_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [11]),
        .O(\membrane_storage_reg[0][11]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__1_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [10]),
        .O(\membrane_storage_reg[0][11]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__1_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [9]),
        .O(\membrane_storage_reg[0][11]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__1_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [8]),
        .O(\membrane_storage_reg[0][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___134_carry__2_i_1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[0]_3 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF[0]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__2_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__2_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry__2_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [12]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___134_carry_i_1
       (.I0(\membrane_storage_reg[0]_3 [1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(DI));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [3]),
        .O(\membrane_storage_reg[0][3]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___134_carry_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[0]_3 [2]),
        .O(\membrane_storage_reg[0][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___134_carry_i_4
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[0]_3 [1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[0][3]_0 [1]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___134_carry_i_5
       (.I0(\membrane_storage_reg[0]_3 [0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\membrane_storage_reg[0][3]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__0_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [7]),
        .O(\membrane_storage_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__0_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [6]),
        .O(\membrane_storage_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__0_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [5]),
        .O(\membrane_storage_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__0_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [4]),
        .O(\membrane_storage_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__1_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [11]),
        .O(\membrane_storage_reg[2][11]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__1_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [10]),
        .O(\membrane_storage_reg[2][11]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__1_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [9]),
        .O(\membrane_storage_reg[2][11]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__1_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [8]),
        .O(\membrane_storage_reg[2][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___44_carry__2_i_1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[2]_1 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[2][15]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__2_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [14]),
        .O(\membrane_storage_reg[2][15]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__2_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [13]),
        .O(\membrane_storage_reg[2][15]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry__2_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [12]),
        .O(\membrane_storage_reg[2][15]_0 [0]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___44_carry_i_1
       (.I0(\membrane_storage_reg[2]_1 [1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\membrane_storage_reg[2][1]_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [3]),
        .O(\membrane_storage_reg[2][3]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___44_carry_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[2]_1 [2]),
        .O(\membrane_storage_reg[2][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___44_carry_i_4
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[2]_1 [1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[2][3]_0 [1]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___44_carry_i_5
       (.I0(\membrane_storage_reg[2]_1 [0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\membrane_storage_reg[2][3]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__0_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [7]),
        .O(\membrane_storage_reg[1][7]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__0_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [6]),
        .O(\membrane_storage_reg[1][7]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__0_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [5]),
        .O(\membrane_storage_reg[1][7]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__0_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [4]),
        .O(\membrane_storage_reg[1][7]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__1_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [11]),
        .O(\membrane_storage_reg[1][11]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__1_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [10]),
        .O(\membrane_storage_reg[1][11]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__1_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [9]),
        .O(\membrane_storage_reg[1][11]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__1_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [8]),
        .O(\membrane_storage_reg[1][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i___89_carry__2_i_1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[1]_2 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[1][15]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__2_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [14]),
        .O(\membrane_storage_reg[1][15]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__2_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [13]),
        .O(\membrane_storage_reg[1][15]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry__2_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [12]),
        .O(\membrane_storage_reg[1][15]_0 [0]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___89_carry_i_1
       (.I0(\membrane_storage_reg[1]_2 [1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\membrane_storage_reg[1][1]_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [3]),
        .O(\membrane_storage_reg[1][3]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i___89_carry_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[1]_2 [2]),
        .O(\membrane_storage_reg[1][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i___89_carry_i_4
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[1]_2 [1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[1][3]_0 [1]));
  LUT3 #(
    .INIT(8'hE2)) 
    i___89_carry_i_5
       (.I0(\membrane_storage_reg[1]_2 [0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\membrane_storage_reg[1][3]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__0_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [7]),
        .O(\membrane_storage_reg[3][7]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__0_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [6]),
        .O(\membrane_storage_reg[3][7]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__0_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [5]),
        .O(\membrane_storage_reg[3][7]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__0_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [4]),
        .O(\membrane_storage_reg[3][7]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_1
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [11]),
        .O(\membrane_storage_reg[3][11]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [10]),
        .O(\membrane_storage_reg[3][11]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [9]),
        .O(\membrane_storage_reg[3][11]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [8]),
        .O(\membrane_storage_reg[3][11]_0 [0]));
  LUT4 #(
    .INIT(16'h5A3C)) 
    i__carry__2_i_1
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\membrane_storage_reg[3]_0 [15]),
        .I2(\membrane_storage_reg[3][3]_1 ),
        .I3(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[3][15]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__2_i_2
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [14]),
        .O(\membrane_storage_reg[3][15]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__2_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [13]),
        .O(\membrane_storage_reg[3][15]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__2_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [12]),
        .O(\membrane_storage_reg[3][15]_0 [0]));
  LUT3 #(
    .INIT(8'hE2)) 
    i__carry_i_2
       (.I0(\membrane_storage_reg[3]_0 [1]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[1]),
        .O(\membrane_storage_reg[3][1]_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry_i_3
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [3]),
        .O(\membrane_storage_reg[3][3]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry_i_4
       (.I0(\membrane_storage_reg[3][3]_1 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\membrane_storage_reg[3]_0 [2]),
        .O(\membrane_storage_reg[3][3]_0 [2]));
  LUT3 #(
    .INIT(8'hA3)) 
    i__carry_i_5
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\membrane_storage_reg[3]_0 [1]),
        .I2(write_neuron_states_IBUF[0]),
        .O(\membrane_storage_reg[3][3]_0 [1]));
  LUT3 #(
    .INIT(8'hE2)) 
    i__carry_i_6
       (.I0(\membrane_storage_reg[3]_0 [0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(membrane_data_in_IBUF[0]),
        .O(\membrane_storage_reg[3][3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h005EFF00)) 
    \idx[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(\idx_reg_n_0_[0] ),
        .O(\idx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h005EFF5EFF000000)) 
    \idx[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(write_neuron_states_IBUF[0]),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(\idx[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[0]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\idx[1]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[1] ),
        .R(1'b0));
  LFSR_inout_11 index_selection
       (.ADDRC({\state_reg[2] ,\state_reg[1] }),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (storage_CE),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .\membrane_storage_reg[0]_3 (\membrane_storage_reg[0]_3 ),
        .\membrane_storage_reg[1]_2 (\membrane_storage_reg[1]_2 ),
        .\membrane_storage_reg[2][15] (\membrane_storage_reg[2][15]_1 ),
        .\membrane_storage_reg[2]_1 (\membrane_storage_reg[2]_1 ),
        .\membrane_storage_reg[3]_0 (\membrane_storage_reg[3]_0 ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \membrane_storage[0][0]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\idx_reg_n_0_[0] ),
        .I3(\G_memory/Q_out0 [0]),
        .I4(\membrane_storage[1][0]_i_2_n_0 ),
        .O(sel));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \membrane_storage[1][0]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(write_neuron_states_IBUF[0]),
        .I3(\G_memory/Q_out0 [1]),
        .I4(\membrane_storage[1][0]_i_2_n_0 ),
        .O(\membrane_storage[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \membrane_storage[1][0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF[0]),
        .O(\membrane_storage[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222F00022220000)) 
    \membrane_storage[2][0]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2_n_0 ),
        .I4(write_neuron_states_IBUF[0]),
        .I5(\G_memory/Q_out0 [2]),
        .O(\membrane_storage[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888F00088880000)) 
    \membrane_storage[3][0]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(Q[2]),
        .I3(\membrane_storage[3][0]_i_2_n_0 ),
        .I4(write_neuron_states_IBUF[0]),
        .I5(\G_memory/Q_out0 [3]),
        .O(\membrane_storage[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \membrane_storage[3][0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\membrane_storage[3][0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [0]),
        .Q(\membrane_storage_reg[0]_3 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [1]),
        .Q(\membrane_storage_reg[0]_3 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [2]),
        .Q(\membrane_storage_reg[0]_3 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][15]_0 [3]),
        .Q(\membrane_storage_reg[0]_3 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][3]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [2]),
        .Q(\membrane_storage_reg[0]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][7]_1 [3]),
        .Q(\membrane_storage_reg[0]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [0]),
        .Q(\membrane_storage_reg[0]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\membrane_storage_reg[0][11]_1 [1]),
        .Q(\membrane_storage_reg[0]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][15]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][3]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [2]),
        .Q(\membrane_storage_reg[1]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][7]_1 [3]),
        .Q(\membrane_storage_reg[1]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [0]),
        .Q(\membrane_storage_reg[1]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[1][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[1][11]_1 [1]),
        .Q(\membrane_storage_reg[1]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [0]),
        .Q(\membrane_storage_reg[2]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [1]),
        .Q(\membrane_storage_reg[2]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [2]),
        .Q(\membrane_storage_reg[2]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][15]_2 [3]),
        .Q(\membrane_storage_reg[2]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][3]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [2]),
        .Q(\membrane_storage_reg[2]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][7]_1 [3]),
        .Q(\membrane_storage_reg[2]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [0]),
        .Q(\membrane_storage_reg[2]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[2][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[2][11]_1 [1]),
        .Q(\membrane_storage_reg[2]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(O[0]),
        .Q(\membrane_storage_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][15]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(O[1]),
        .Q(\membrane_storage_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(O[2]),
        .Q(\membrane_storage_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(O[3]),
        .Q(\membrane_storage_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [2]),
        .Q(\membrane_storage_reg[3]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][7]_1 [3]),
        .Q(\membrane_storage_reg[3]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [0]),
        .Q(\membrane_storage_reg[3]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_storage_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\membrane_storage[3][0]_i_1_n_0 ),
        .D(\membrane_storage_reg[3][11]_1 [1]),
        .Q(\membrane_storage_reg[3]_0 [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit0/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r1_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r1_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRB({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRC({1'b0,1'b0,1'b0,\state_reg[2] ,\state_reg[1] }),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_1}),
        .DIA(neuron_states_storage2_in_1[1:0]),
        .DIB(neuron_states_storage2_in_1[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(D),
        .DOB({neuron_states_storage_reg_r1_0_3_0_3_n_2,neuron_states_storage_reg_r1_0_3_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r1_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
  LUT4 #(
    .INIT(16'hFF08)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_neuron_states_IBUF[0]),
        .O(neuron_states_storage));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_2
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_1_in_0),
        .I3(write_neuron_states_IBUF[0]),
        .I4(neuron_state_in_IBUF[1]),
        .O(neuron_states_storage2_in_1[1]));
  LUT5 #(
    .INIT(32'hFFB400B4)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_2__0
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_0_in[1]),
        .I3(write_neuron_states_IBUF[1]),
        .I4(neuron_state_in_IBUF[1]),
        .O(neuron_states_storage2_in[1]));
  LUT5 #(
    .INIT(32'hFFB400B4)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_2__1
       (.I0(\neuron_state_reg_reg[1] [2]),
        .I1(\neuron_state_reg_reg[1] [3]),
        .I2(\neuron_state_reg_reg[1]_2 [1]),
        .I3(write_neuron_states_IBUF[2]),
        .I4(neuron_state_in_IBUF[1]),
        .O(\index_of_neuron_that_fired_reg_reg[2] [1]));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_3
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(neuron_states_storage_reg_r2_0_3_0_3_n_1),
        .I3(write_neuron_states_IBUF[0]),
        .I4(neuron_state_in_IBUF[0]),
        .O(neuron_states_storage2_in_1[0]));
  LUT5 #(
    .INIT(32'hFFB400B4)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_3__0
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_0_in[0]),
        .I3(write_neuron_states_IBUF[1]),
        .I4(neuron_state_in_IBUF[0]),
        .O(neuron_states_storage2_in[0]));
  LUT5 #(
    .INIT(32'hFFB400B4)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_3__1
       (.I0(\neuron_state_reg_reg[1] [2]),
        .I1(\neuron_state_reg_reg[1] [3]),
        .I2(\neuron_state_reg_reg[1]_2 [0]),
        .I3(write_neuron_states_IBUF[2]),
        .I4(neuron_state_in_IBUF[0]),
        .O(\index_of_neuron_that_fired_reg_reg[2] [0]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_4
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(neuron_states_storage_reg_r2_0_3_0_3_n_1),
        .I3(neuron_states_storage_reg_r2_0_3_0_3_n_2),
        .I4(write_neuron_states_IBUF[0]),
        .I5(neuron_state_in_IBUF[3]),
        .O(neuron_states_storage2_in_1[3]));
  LUT6 #(
    .INIT(64'hFFFFF4B00000F4B0)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_4__0
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(write_neuron_states_IBUF[1]),
        .I5(neuron_state_in_IBUF[3]),
        .O(neuron_states_storage2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF4B00000F4B0)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_4__1
       (.I0(\neuron_state_reg_reg[1] [2]),
        .I1(\neuron_state_reg_reg[1] [3]),
        .I2(\neuron_state_reg_reg[1]_2 [3]),
        .I3(\neuron_state_reg_reg[1]_2 [0]),
        .I4(write_neuron_states_IBUF[2]),
        .I5(neuron_state_in_IBUF[3]),
        .O(\index_of_neuron_that_fired_reg_reg[2] [3]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_5
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_1_in_0),
        .I3(neuron_states_storage_reg_r2_0_3_0_3_n_3),
        .I4(write_neuron_states_IBUF[0]),
        .I5(neuron_state_in_IBUF[2]),
        .O(neuron_states_storage2_in_1[2]));
  LUT6 #(
    .INIT(64'hFFFFF4B00000F4B0)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_5__0
       (.I0(\neuron_state_reg_reg[1] [3]),
        .I1(\neuron_state_reg_reg[1] [2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(write_neuron_states_IBUF[1]),
        .I5(neuron_state_in_IBUF[2]),
        .O(neuron_states_storage2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF4B00000F4B0)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_5__1
       (.I0(\neuron_state_reg_reg[1] [2]),
        .I1(\neuron_state_reg_reg[1] [3]),
        .I2(\neuron_state_reg_reg[1]_2 [2]),
        .I3(\neuron_state_reg_reg[1]_2 [1]),
        .I4(write_neuron_states_IBUF[2]),
        .I5(neuron_state_in_IBUF[2]),
        .O(\index_of_neuron_that_fired_reg_reg[2] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_6
       (.I0(\idx_reg_n_0_[1] ),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\neuron_state_reg_reg[1] [1]),
        .O(p_1_in_1[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_7
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(write_neuron_states_IBUF[0]),
        .I2(\idx_reg_n_0_[0] ),
        .O(p_1_in_1[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_7__0
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(write_neuron_states_IBUF[1]),
        .I2(\neuron_state_reg_reg[1]_0 ),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hE2)) 
    neuron_states_storage_reg_r1_0_3_0_3_i_7__1
       (.I0(\neuron_state_reg_reg[1] [0]),
        .I1(write_neuron_states_IBUF[2]),
        .I2(\neuron_state_reg_reg[1]_1 ),
        .O(\index_of_neuron_that_fired_reg_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "unit0/neuron_ensemble_inst/neuron_ensemble_storage_inst/neuron_states_storage_reg_r2_0_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    neuron_states_storage_reg_r2_0_3_0_3
       (.ADDRA({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] [1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] [1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,\neuron_state_reg_reg[1] [1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,p_1_in_1}),
        .DIA(neuron_states_storage2_in_1[1:0]),
        .DIB(neuron_states_storage2_in_1[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({p_1_in_0,neuron_states_storage_reg_r2_0_3_0_3_n_1}),
        .DOB({neuron_states_storage_reg_r2_0_3_0_3_n_2,neuron_states_storage_reg_r2_0_3_0_3_n_3}),
        .DOC(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_neuron_states_storage_reg_r2_0_3_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(neuron_states_storage));
endmodule

module neuron_ensemble_with_memory
   (incrementing_reg,
    Q,
    S,
    DI,
    x_reg_rep,
    \selected_membrane_reg_reg[14] ,
    \noise_out_reg_reg[14] ,
    \noise_out_reg_reg[10] ,
    tmp,
    \noise_out_reg_reg[10]_0 ,
    \noise_out_reg_reg[14]_0 ,
    tmp_0,
    \noise_out_reg_reg[12] ,
    tmp_1,
    tmp_2,
    DOBDO,
    x_reg_rep_0,
    x_reg_rep_1,
    D,
    E,
    spikes,
    \index_of_neuron_that_fired_reg_reg[1]_0 ,
    p_1_in,
    neuron_states_storage2_in,
    \index_of_neuron_that_fired_reg_reg[0]_0 ,
    \index_of_neuron_that_fired_reg_reg[2]_0 ,
    \selected_idx_offset_reg_reg[1] ,
    Q_out0,
    out,
    neuron_state_reg,
    should_increment,
    clk_IBUF_BUFG,
    write_neuron_states_IBUF,
    membrane_data_in_IBUF,
    halt_IBUF,
    reset_module,
    update_memory,
    decrease_temp,
    spike_carry,
    spike_carry_0,
    spike_carry__0,
    membrane_compare__14,
    spike_carry__0_i_25__0,
    spike_carry__0_i_55__0,
    spike_carry_1,
    spike_carry_i_19__0,
    spike_carry_2,
    spike_carry_3,
    spike_carry_i_9__0,
    spike_carry_i_19__0_0,
    spike_carry__0_0,
    spike_carry__0_1,
    spike_carry_i_25__0,
    spike_carry_i_25__0_0,
    spike_carry_i_19__0_1,
    spike_carry__0_i_18__0,
    spike_carry__0_i_18__0_0,
    spike_carry__0_i_21__0,
    spike_carry__0_i_18__0_1,
    P,
    spike_carry_i_24__0,
    spike_carry__0_i_25__0_0,
    spike_carry__0_i_83__0,
    noise_out_reg,
    spike_carry_i_159__0,
    spike_carry_i_159__0_0,
    \FSM_onehot_current_state_reg[2] ,
    \FSM_onehot_current_state_reg[2]_0 ,
    neuron_state_in_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \neuron_state_reg_reg[1] ,
    p_0_in,
    \neuron_state_reg_reg[1]_0 ,
    \neuron_state_reg_reg[1]_1 ,
    spike_carry_i_21__0,
    spike_carry_i_21__0_0,
    spike_carry__0_i_12__0,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    x_reg_rep_2,
    flipping_CE,
    ADDRBWRADDR,
    \index_of_neuron_that_fired_reg_reg[3]_0 );
  output incrementing_reg;
  output [15:0]Q;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep;
  output [3:0]\selected_membrane_reg_reg[14] ;
  output [1:0]\noise_out_reg_reg[14] ;
  output \noise_out_reg_reg[10] ;
  output tmp;
  output \noise_out_reg_reg[10]_0 ;
  output \noise_out_reg_reg[14]_0 ;
  output tmp_0;
  output \noise_out_reg_reg[12] ;
  output tmp_1;
  output tmp_2;
  output [11:0]DOBDO;
  output x_reg_rep_0;
  output x_reg_rep_1;
  output [0:0]D;
  output [0:0]E;
  output [0:0]spikes;
  output [1:0]\index_of_neuron_that_fired_reg_reg[1]_0 ;
  output [0:0]p_1_in;
  output [3:0]neuron_states_storage2_in;
  output [0:0]\index_of_neuron_that_fired_reg_reg[0]_0 ;
  output [3:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  output [1:0]\selected_idx_offset_reg_reg[1] ;
  output [3:0]Q_out0;
  output [3:0]out;
  output [0:0]neuron_state_reg;
  input should_increment;
  input clk_IBUF_BUFG;
  input [2:0]write_neuron_states_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input halt_IBUF;
  input reset_module;
  input update_memory;
  input decrease_temp;
  input spike_carry;
  input [0:0]spike_carry_0;
  input spike_carry__0;
  input [7:0]membrane_compare__14;
  input spike_carry__0_i_25__0;
  input spike_carry__0_i_55__0;
  input spike_carry_1;
  input spike_carry_i_19__0;
  input spike_carry_2;
  input spike_carry_3;
  input spike_carry_i_9__0;
  input spike_carry_i_19__0_0;
  input spike_carry__0_0;
  input spike_carry__0_1;
  input spike_carry_i_25__0;
  input spike_carry_i_25__0_0;
  input spike_carry_i_19__0_1;
  input spike_carry__0_i_18__0;
  input spike_carry__0_i_18__0_0;
  input spike_carry__0_i_21__0;
  input spike_carry__0_i_18__0_1;
  input [2:0]P;
  input spike_carry_i_24__0;
  input spike_carry__0_i_25__0_0;
  input spike_carry__0_i_83__0;
  input [5:0]noise_out_reg;
  input spike_carry_i_159__0;
  input spike_carry_i_159__0_0;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input \FSM_onehot_current_state_reg[2]_0 ;
  input [3:0]neuron_state_in_IBUF;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input \neuron_state_reg_reg[1] ;
  input [3:0]p_0_in;
  input \neuron_state_reg_reg[1]_0 ;
  input [3:0]\neuron_state_reg_reg[1]_1 ;
  input spike_carry_i_21__0;
  input spike_carry_i_21__0_0;
  input spike_carry__0_i_12__0;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input x_reg_rep_2;
  input flipping_CE;
  input [6:0]ADDRBWRADDR;
  input [3:0]\index_of_neuron_that_fired_reg_reg[3]_0 ;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [3:0]DI;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [2:0]P;
  wire [15:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [5:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire incrementing_reg;
  wire [0:0]\index_of_neuron_that_fired_reg_reg[0]_0 ;
  wire [1:0]\index_of_neuron_that_fired_reg_reg[1]_0 ;
  wire [3:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  wire [3:0]\index_of_neuron_that_fired_reg_reg[3]_0 ;
  wire [7:0]membrane_compare__14;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]neuron_state_in_IBUF;
  wire [0:0]neuron_state_reg;
  wire \neuron_state_reg_reg[1] ;
  wire \neuron_state_reg_reg[1]_0 ;
  wire [3:0]\neuron_state_reg_reg[1]_1 ;
  wire [3:0]neuron_states_storage2_in;
  wire [2:0]next_state;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[10] ;
  wire \noise_out_reg_reg[10]_0 ;
  wire \noise_out_reg_reg[12] ;
  wire [1:0]\noise_out_reg_reg[14] ;
  wire \noise_out_reg_reg[14]_0 ;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire reset_module;
  wire [1:0]\selected_idx_offset_reg_reg[1] ;
  wire [3:0]\selected_membrane_reg_reg[14] ;
  wire should_increment;
  wire spike_carry;
  wire [0:0]spike_carry_0;
  wire spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry__0;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_i_12__0;
  wire spike_carry__0_i_18__0;
  wire spike_carry__0_i_18__0_0;
  wire spike_carry__0_i_18__0_1;
  wire spike_carry__0_i_21__0;
  wire spike_carry__0_i_25__0;
  wire spike_carry__0_i_25__0_0;
  wire spike_carry__0_i_55__0;
  wire spike_carry__0_i_83__0;
  wire spike_carry_i_159__0;
  wire spike_carry_i_159__0_0;
  wire spike_carry_i_19__0;
  wire spike_carry_i_19__0_0;
  wire spike_carry_i_19__0_1;
  wire spike_carry_i_21__0;
  wire spike_carry_i_21__0_0;
  wire spike_carry_i_24__0;
  wire spike_carry_i_25__0;
  wire spike_carry_i_25__0_0;
  wire spike_carry_i_9__0;
  wire [0:0]spikes;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_2;
  wire update_memory;
  wire [1:0]which_unit_fired;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [2:0]write_neuron_states_IBUF;
  wire [3:0]x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;

  LUT6 #(
    .INIT(64'h0000FF000000FFEB)) 
    \current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(halt_IBUF),
        .I4(reset_module),
        .I5(update_memory),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h0000FFFF00000054)) 
    \current_state[1]_i_1 
       (.I0(update_memory),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    \current_state[2]_i_1__1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(update_memory),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(next_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    incrementing_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(should_increment),
        .Q(incrementing_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory),
        .D(\index_of_neuron_that_fired_reg_reg[3]_0 [0]),
        .Q(\index_of_neuron_that_fired_reg_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory),
        .D(\index_of_neuron_that_fired_reg_reg[3]_0 [1]),
        .Q(\index_of_neuron_that_fired_reg_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory),
        .D(\index_of_neuron_that_fired_reg_reg[3]_0 [2]),
        .Q(which_unit_fired[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory),
        .D(\index_of_neuron_that_fired_reg_reg[3]_0 [3]),
        .Q(which_unit_fired[1]),
        .R(1'b0));
  neuron_ensemble neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D(D),
        .DI(DI),
        .DOBDO(DOBDO),
        .E(E),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[2] ),
        .\FSM_onehot_current_state_reg[2]_0 (\FSM_onehot_current_state_reg[2]_0 ),
        .P(P),
        .Q(current_state),
        .Q_out0(Q_out0),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_CE(flipping_CE),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[0] (\index_of_neuron_that_fired_reg_reg[0]_0 ),
        .\index_of_neuron_that_fired_reg_reg[2] (\index_of_neuron_that_fired_reg_reg[2]_0 ),
        .membrane_compare__14(membrane_compare__14),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .neuron_state_reg(neuron_state_reg),
        .\neuron_state_reg_reg[1]_0 ({which_unit_fired,\index_of_neuron_that_fired_reg_reg[1]_0 }),
        .\neuron_state_reg_reg[1]_1 (\neuron_state_reg_reg[1] ),
        .\neuron_state_reg_reg[1]_2 (\neuron_state_reg_reg[1]_0 ),
        .\neuron_state_reg_reg[1]_3 (\neuron_state_reg_reg[1]_1 ),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .noise_out_reg(noise_out_reg),
        .\noise_out_reg_reg[10] (\noise_out_reg_reg[10] ),
        .\noise_out_reg_reg[10]_0 (\noise_out_reg_reg[10]_0 ),
        .\noise_out_reg_reg[12] (\noise_out_reg_reg[12] ),
        .\noise_out_reg_reg[14] (\noise_out_reg_reg[14] [1]),
        .\noise_out_reg_reg[14]_0 (\noise_out_reg_reg[14]_0 ),
        .out(out),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\selected_idx_offset_reg_reg[1]_0 (\selected_idx_offset_reg_reg[1] ),
        .\selected_membrane_reg_reg[14]_0 (\selected_membrane_reg_reg[14] ),
        .\selected_membrane_reg_reg[15]_0 (Q),
        .spike_carry_0(spike_carry),
        .spike_carry_1(spike_carry_0),
        .spike_carry_2(spike_carry_1),
        .spike_carry_3(spike_carry_2),
        .spike_carry_4(spike_carry_3),
        .spike_carry__0_0(spike_carry__0),
        .spike_carry__0_1(spike_carry__0_0),
        .spike_carry__0_2(spike_carry__0_1),
        .spike_carry__0_i_12__0(spike_carry__0_i_12__0),
        .spike_carry__0_i_18__0(spike_carry__0_i_18__0),
        .spike_carry__0_i_18__0_0(spike_carry__0_i_18__0_0),
        .spike_carry__0_i_18__0_1(spike_carry__0_i_18__0_1),
        .spike_carry__0_i_21__0(spike_carry__0_i_21__0),
        .spike_carry__0_i_25__0(spike_carry__0_i_25__0),
        .spike_carry__0_i_25__0_0(spike_carry__0_i_25__0_0),
        .spike_carry__0_i_55__0(spike_carry__0_i_55__0),
        .spike_carry__0_i_83__0(spike_carry__0_i_83__0),
        .spike_carry_i_159__0(spike_carry_i_159__0),
        .spike_carry_i_159__0_0(spike_carry_i_159__0_0),
        .spike_carry_i_19__0(spike_carry_i_19__0),
        .spike_carry_i_19__0_0(spike_carry_i_19__0_0),
        .spike_carry_i_19__0_1(spike_carry_i_19__0_1),
        .spike_carry_i_21__0(spike_carry_i_21__0),
        .spike_carry_i_21__0_0(spike_carry_i_21__0_0),
        .spike_carry_i_24__0(spike_carry_i_24__0),
        .spike_carry_i_25__0(spike_carry_i_25__0),
        .spike_carry_i_25__0_0(spike_carry_i_25__0_0),
        .spike_carry_i_9__0(spike_carry_i_9__0),
        .spikes(spikes),
        .tmp(tmp),
        .tmp_0(tmp_0),
        .tmp_1(tmp_1),
        .tmp_2(tmp_2),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF),
        .x_reg_rep(x_reg_rep),
        .x_reg_rep_0(\noise_out_reg_reg[14] [0]),
        .x_reg_rep_1(x_reg_rep_0),
        .x_reg_rep_2(x_reg_rep_1),
        .x_reg_rep_3(x_reg_rep_2));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory" *) 
module neuron_ensemble_with_memory__parameterized0
   (\current_state_reg[1]_0 ,
    P,
    \idx_reg[0] ,
    flipping_CE,
    tmp,
    tmp_0,
    tmp_1,
    tmp_2,
    tmp_3,
    tmp_4,
    tmp_5,
    tmp_6,
    tmp_7,
    tmp_8,
    tmp_9,
    tmp_10,
    noise_out_reg,
    tmp_11,
    tmp_12,
    tmp_13,
    tmp_14,
    tmp_15,
    tmp_16,
    \noise_out_reg_reg[4] ,
    \noise_out_reg_reg[12] ,
    \selected_membrane_reg_reg[1] ,
    Q,
    \selected_membrane_reg_reg[3] ,
    membrane_compare__14,
    \selected_membrane_reg_reg[5] ,
    \selected_membrane_reg_reg[7] ,
    \selected_membrane_reg_reg[9] ,
    \selected_membrane_reg_reg[11] ,
    \selected_membrane_reg_reg[13] ,
    E,
    \current_state_reg[0]_0 ,
    \selected_membrane_reg_reg[15] ,
    unit_numb,
    \neuron_state_reg_reg[0] ,
    D,
    spiked1__0,
    ADDRBWRADDR,
    p_0_in,
    DOBDO,
    clk_IBUF_BUFG,
    DI,
    S,
    \unit_number_reg_reg[0] ,
    \unit_number_reg_reg[0]_0 ,
    decrease_temp,
    write_neuron_states_IBUF,
    Q_out0,
    membrane_data_in_IBUF,
    incrementing_reg,
    halt_IBUF,
    reset_module,
    update_memory,
    spike_carry_i_30__0,
    spike_carry_i_30__0_0,
    spike_carry_i_30__0_1,
    spike_carry_i_55__0,
    spike_carry_i_55__0_0,
    spike_carry_i_55__0_1,
    spike_carry_i_57__0,
    spike_carry__0_i_46__0,
    spike_carry_i_67__0,
    spike_carry_i_47__0,
    spike_carry_i_47__0_0,
    \membrane_reg_reg[15] ,
    spikes,
    \offset_reg_reg[0] ,
    offset1,
    add_mem_reg,
    \offset_reg_reg[1] ,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    p_1_in,
    \neuron_state_reg_reg[1] ,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_states_storage2_in);
  output \current_state_reg[1]_0 ;
  output [2:0]P;
  output \idx_reg[0] ;
  output flipping_CE;
  output tmp;
  output tmp_0;
  output tmp_1;
  output tmp_2;
  output tmp_3;
  output tmp_4;
  output tmp_5;
  output tmp_6;
  output tmp_7;
  output tmp_8;
  output tmp_9;
  output tmp_10;
  output [5:0]noise_out_reg;
  output tmp_11;
  output tmp_12;
  output tmp_13;
  output tmp_14;
  output tmp_15;
  output tmp_16;
  output \noise_out_reg_reg[4] ;
  output \noise_out_reg_reg[12] ;
  output \selected_membrane_reg_reg[1] ;
  output [0:0]Q;
  output \selected_membrane_reg_reg[3] ;
  output [7:0]membrane_compare__14;
  output \selected_membrane_reg_reg[5] ;
  output \selected_membrane_reg_reg[7] ;
  output \selected_membrane_reg_reg[9] ;
  output \selected_membrane_reg_reg[11] ;
  output \selected_membrane_reg_reg[13] ;
  output [0:0]E;
  output \current_state_reg[0]_0 ;
  output [15:0]\selected_membrane_reg_reg[15] ;
  output [0:0]unit_numb;
  output \neuron_state_reg_reg[0] ;
  output [1:0]D;
  output spiked1__0;
  output [6:0]ADDRBWRADDR;
  output [3:0]p_0_in;
  input [11:0]DOBDO;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\unit_number_reg_reg[0] ;
  input [3:0]\unit_number_reg_reg[0]_0 ;
  input decrease_temp;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]Q_out0;
  input [15:0]membrane_data_in_IBUF;
  input incrementing_reg;
  input halt_IBUF;
  input reset_module;
  input update_memory;
  input spike_carry_i_30__0;
  input [1:0]spike_carry_i_30__0_0;
  input spike_carry_i_30__0_1;
  input spike_carry_i_55__0;
  input spike_carry_i_55__0_0;
  input spike_carry_i_55__0_1;
  input spike_carry_i_57__0;
  input spike_carry__0_i_46__0;
  input spike_carry_i_67__0;
  input spike_carry_i_47__0;
  input spike_carry_i_47__0_0;
  input [31:0]\membrane_reg_reg[15] ;
  input [0:0]spikes;
  input [0:0]\offset_reg_reg[0] ;
  input offset1;
  input [1:0]add_mem_reg;
  input [3:0]\offset_reg_reg[1] ;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [0:0]p_1_in;
  input [1:0]\neuron_state_reg_reg[1] ;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_states_storage2_in;

  wire [6:0]ADDRBWRADDR;
  wire [1:0]D;
  wire [3:0]DI;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [2:0]P;
  wire [0:0]Q;
  wire [3:0]Q_out0;
  wire [3:0]S;
  wire [1:0]add_mem_reg;
  wire clk_IBUF_BUFG;
  wire \current_state[0]_i_1__0_n_0 ;
  wire \current_state[1]_i_1__1_n_0 ;
  wire \current_state[2]_i_1__0_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [5:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire \idx_reg[0] ;
  wire incrementing_reg;
  wire [7:0]membrane_compare__14;
  wire [15:0]membrane_data_in_IBUF;
  wire [31:0]\membrane_reg_reg[15] ;
  wire \neuron_state_reg_reg[0] ;
  wire [1:0]\neuron_state_reg_reg[1] ;
  wire [3:0]neuron_states_storage2_in;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[12] ;
  wire \noise_out_reg_reg[4] ;
  wire offset1;
  wire [0:0]\offset_reg_reg[0] ;
  wire [3:0]\offset_reg_reg[1] ;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire reset_module;
  wire \selected_membrane_reg_reg[11] ;
  wire \selected_membrane_reg_reg[13] ;
  wire [15:0]\selected_membrane_reg_reg[15] ;
  wire \selected_membrane_reg_reg[1] ;
  wire \selected_membrane_reg_reg[3] ;
  wire \selected_membrane_reg_reg[5] ;
  wire \selected_membrane_reg_reg[7] ;
  wire \selected_membrane_reg_reg[9] ;
  wire spike_carry__0_i_46__0;
  wire spike_carry_i_30__0;
  wire [1:0]spike_carry_i_30__0_0;
  wire spike_carry_i_30__0_1;
  wire spike_carry_i_47__0;
  wire spike_carry_i_47__0_0;
  wire spike_carry_i_55__0;
  wire spike_carry_i_55__0_0;
  wire spike_carry_i_55__0_1;
  wire spike_carry_i_57__0;
  wire spike_carry_i_67__0;
  wire spike_out;
  wire spiked1__0;
  wire [0:0]spikes;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_10;
  wire tmp_11;
  wire tmp_12;
  wire tmp_13;
  wire tmp_14;
  wire tmp_15;
  wire tmp_16;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire tmp_7;
  wire tmp_8;
  wire tmp_9;
  wire [0:0]unit_numb;
  wire [3:0]\unit_number_reg_reg[0] ;
  wire [3:0]\unit_number_reg_reg[0]_0 ;
  wire update_memory;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;

  LUT6 #(
    .INIT(64'h0000FF000000FFEB)) 
    \current_state[0]_i_1__0 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(halt_IBUF),
        .I4(reset_module),
        .I5(update_memory),
        .O(\current_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000000E)) 
    \current_state[1]_i_1__1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(update_memory),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(\current_state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    \current_state[2]_i_1__0 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(update_memory),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(\current_state[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[0]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[1]_i_1__1_n_0 ),
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
  LUT4 #(
    .INIT(16'h00E0)) 
    \membrane_reg[15]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(spikes),
        .I2(\offset_reg_reg[0] ),
        .I3(halt_IBUF),
        .O(E));
  neuron_ensemble__parameterized0 neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .CO(spike_out),
        .D(D),
        .DI(DI),
        .DOBDO(DOBDO),
        .P(P),
        .Q({\current_state_reg_n_0_[2] ,\current_state_reg_n_0_[1] ,\current_state_reg_n_0_[0] }),
        .Q_out0(Q_out0),
        .S(S),
        .add_mem_reg(add_mem_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_0 (flipping_CE),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\idx_reg[0] (\idx_reg[0] ),
        .incrementing_reg(incrementing_reg),
        .membrane_compare__14(membrane_compare__14),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .\membrane_reg_reg[15] (\membrane_reg_reg[15] ),
        .\neuron_state_reg_reg[0]_0 (\neuron_state_reg_reg[0] ),
        .\neuron_state_reg_reg[1]_0 (\neuron_state_reg_reg[1] ),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .noise_out_reg(noise_out_reg),
        .\noise_out_reg_reg[12] (\noise_out_reg_reg[12] ),
        .\noise_out_reg_reg[4] (\noise_out_reg_reg[4] ),
        .offset1(offset1),
        .\offset_reg_reg[1] (\current_state_reg[0]_0 ),
        .\offset_reg_reg[1]_0 (unit_numb),
        .\offset_reg_reg[1]_1 (\offset_reg_reg[1] ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\selected_membrane_reg_reg[0]_0 (Q),
        .\selected_membrane_reg_reg[11]_0 (\selected_membrane_reg_reg[11] ),
        .\selected_membrane_reg_reg[13]_0 (\selected_membrane_reg_reg[13] ),
        .\selected_membrane_reg_reg[15]_0 (\selected_membrane_reg_reg[15] ),
        .\selected_membrane_reg_reg[1]_0 (\selected_membrane_reg_reg[1] ),
        .\selected_membrane_reg_reg[3]_0 (\selected_membrane_reg_reg[3] ),
        .\selected_membrane_reg_reg[5]_0 (\selected_membrane_reg_reg[5] ),
        .\selected_membrane_reg_reg[7]_0 (\selected_membrane_reg_reg[7] ),
        .\selected_membrane_reg_reg[9]_0 (\selected_membrane_reg_reg[9] ),
        .spike_carry__0_i_46__0(spike_carry__0_i_46__0),
        .spike_carry_i_30__0(spike_carry_i_30__0),
        .spike_carry_i_30__0_0(spike_carry_i_30__0_0),
        .spike_carry_i_30__0_1(spike_carry_i_30__0_1),
        .spike_carry_i_47__0(spike_carry_i_47__0),
        .spike_carry_i_47__0_0(spike_carry_i_47__0_0),
        .spike_carry_i_55__0(spike_carry_i_55__0),
        .spike_carry_i_55__0_0(spike_carry_i_55__0_0),
        .spike_carry_i_55__0_1(spike_carry_i_55__0_1),
        .spike_carry_i_57__0(spike_carry_i_57__0),
        .spike_carry_i_67__0(spike_carry_i_67__0),
        .tmp(tmp),
        .tmp_0(tmp_0),
        .tmp_1(tmp_1),
        .tmp_10(tmp_10),
        .tmp_11(tmp_11),
        .tmp_12(tmp_12),
        .tmp_13(tmp_13),
        .tmp_14(tmp_14),
        .tmp_15(tmp_15),
        .tmp_16(tmp_16),
        .tmp_2(tmp_2),
        .tmp_3(tmp_3),
        .tmp_4(tmp_4),
        .tmp_5(tmp_5),
        .tmp_6(tmp_6),
        .tmp_7(tmp_7),
        .tmp_8(tmp_8),
        .tmp_9(tmp_9),
        .\unit_number_reg_reg[0] (\unit_number_reg_reg[0] ),
        .\unit_number_reg_reg[0]_0 (\unit_number_reg_reg[0]_0 ),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \offset_reg[1]_i_3 
       (.I0(offset1),
        .I1(spikes),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(spike_out),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \unit_number_reg[0]_i_1 
       (.I0(spikes),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(spike_out),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(offset1),
        .O(unit_numb));
  LUT5 #(
    .INIT(32'h00000020)) 
    \unit_number_reg[1]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(spike_out),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(spikes),
        .O(spiked1__0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory" *) 
module neuron_ensemble_with_memory__parameterized1
   (\idx_reg[0] ,
    Q,
    offset1,
    \selected_idx_offset_reg_reg[1] ,
    p_0_in,
    neuron_state_reg,
    clk_IBUF_BUFG,
    decrease_temp,
    write_neuron_states_IBUF,
    out,
    membrane_data_in_IBUF,
    incrementing_reg,
    halt_IBUF,
    reset_module,
    update_memory,
    spikes,
    spiked1__0,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    p_1_in,
    idx_offset_to_update,
    ensemble_seed_IBUF,
    write_ensemble_seed_IBUF,
    neuron_states_storage2_in);
  output \idx_reg[0] ;
  output [15:0]Q;
  output offset1;
  output [1:0]\selected_idx_offset_reg_reg[1] ;
  output [3:0]p_0_in;
  output [0:0]neuron_state_reg;
  input clk_IBUF_BUFG;
  input decrease_temp;
  input [0:0]write_neuron_states_IBUF;
  input [3:0]out;
  input [15:0]membrane_data_in_IBUF;
  input incrementing_reg;
  input halt_IBUF;
  input reset_module;
  input update_memory;
  input [0:0]spikes;
  input spiked1__0;
  input [5:0]flipping_seed_IBUF;
  input [0:0]write_flipping_seed_IBUF;
  input [0:0]p_1_in;
  input [1:0]idx_offset_to_update;
  input [2:0]ensemble_seed_IBUF;
  input [0:0]write_ensemble_seed_IBUF;
  input [3:0]neuron_states_storage2_in;

  wire [15:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state[0]_i_1__1_n_0 ;
  wire \current_state[1]_i_1__0_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire decrease_temp;
  wire [2:0]ensemble_seed_IBUF;
  wire [5:0]flipping_seed_IBUF;
  wire halt_IBUF;
  wire [1:0]idx_offset_to_update;
  wire \idx_reg[0] ;
  wire incrementing_reg;
  wire [15:0]membrane_data_in_IBUF;
  wire [0:0]neuron_state_reg;
  wire [3:0]neuron_states_storage2_in;
  wire offset1;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [0:0]p_1_in;
  wire reset_module;
  wire [1:0]\selected_idx_offset_reg_reg[1] ;
  wire spiked1__0;
  wire [0:0]spikes;
  wire update_memory;
  wire [0:0]write_ensemble_seed_IBUF;
  wire [0:0]write_flipping_seed_IBUF;
  wire [0:0]write_neuron_states_IBUF;

  LUT6 #(
    .INIT(64'h0000FF000000FFEB)) 
    \current_state[0]_i_1__1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(halt_IBUF),
        .I4(reset_module),
        .I5(update_memory),
        .O(\current_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000000E)) 
    \current_state[1]_i_1__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(update_memory),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(\current_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(update_memory),
        .I4(reset_module),
        .I5(halt_IBUF),
        .O(\current_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[0]_i_1__1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[1]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  neuron_ensemble__parameterized1 neuron_ensemble_inst
       (.Q({\current_state_reg_n_0_[2] ,\current_state_reg_n_0_[1] ,\current_state_reg_n_0_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .decrease_temp(decrease_temp),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .idx_offset_to_update(idx_offset_to_update),
        .\idx_reg[0] (\idx_reg[0] ),
        .incrementing_reg(incrementing_reg),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_reg(neuron_state_reg),
        .neuron_states_storage2_in(neuron_states_storage2_in),
        .offset1(offset1),
        .out(out),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\selected_idx_offset_reg_reg[1]_0 (\selected_idx_offset_reg_reg[1] ),
        .\selected_membrane_reg_reg[15]_0 (Q),
        .spiked1__0(spiked1__0),
        .spikes(spikes),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_states_IBUF(write_neuron_states_IBUF));
endmodule

module scheduler
   (reset_module,
    update_memory,
    should_increment,
    decrease_temp,
    Q,
    \cuts_best_reg[15]_0 ,
    \index_of_neuron_that_fired_reg[3]_0 ,
    clk_IBUF_BUFG,
    AR,
    E,
    halt_IBUF,
    should_increment_reg_0,
    add_mem,
    D,
    \membrane_reg_reg[15]_0 ,
    \offset_reg_reg[1]_0 ,
    offset1,
    unit_numb);
  output reset_module;
  output update_memory;
  output should_increment;
  output decrease_temp;
  output [0:0]Q;
  output [15:0]\cuts_best_reg[15]_0 ;
  output [3:0]\index_of_neuron_that_fired_reg[3]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]E;
  input halt_IBUF;
  input [0:0]should_increment_reg_0;
  input add_mem;
  input [0:0]D;
  input [15:0]\membrane_reg_reg[15]_0 ;
  input [1:0]\offset_reg_reg[1]_0 ;
  input offset1;
  input [0:0]unit_numb;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire [0:0]Q;
  wire add_mem;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
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
  wire current_state;
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
  wire \cuts_best[15]_i_1_n_0 ;
  wire [15:0]\cuts_best_reg[15]_0 ;
  wire decrease_temp;
  wire halt_IBUF;
  wire [1:0]halt_counter;
  wire \halt_counter[1]_i_1_n_0 ;
  wire [1:0]halt_counter__0;
  wire i__i_3_n_0;
  wire i__i_4_n_0;
  wire i__i_5_n_0;
  wire [3:0]\index_of_neuron_that_fired_reg[3]_0 ;
  wire [15:0]membrane_reg;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire offset1;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire reset_module;
  wire should_increment;
  wire should_increment_i_1_n_0;
  wire [0:0]should_increment_reg_0;
  wire [3:0]unit_idx;
  wire [0:0]unit_numb;
  wire update_memory;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_curr_cuts_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_cuts_best0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cuts_best0_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(Q),
        .I1(should_increment_reg_0),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAFFEA)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(E),
        .I1(halt_counter__0[0]),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(halt_IBUF),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(current_state));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(halt_counter__0[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_ACCEPTING:0010,STATE_HALTED:1000,STATE_RESETED:0001,STATE_DATA_CAPTURED:0100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "STATE_ACCEPTING:0010,STATE_HALTED:1000,STATE_RESETED:0001,STATE_DATA_CAPTURED:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(AR),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(Q));
  (* FSM_ENCODED_STATES = "STATE_ACCEPTING:0010,STATE_HALTED:1000,STATE_RESETED:0001,STATE_DATA_CAPTURED:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(AR),
        .D(D),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "STATE_ACCEPTING:0010,STATE_HALTED:1000,STATE_RESETED:0001,STATE_DATA_CAPTURED:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \curr_cuts[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(halt_IBUF),
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
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[0]_i_2_n_7 ),
        .Q(curr_cuts_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\curr_cuts_reg[0]_i_2_n_0 ,\curr_cuts_reg[0]_i_2_n_1 ,\curr_cuts_reg[0]_i_2_n_2 ,\curr_cuts_reg[0]_i_2_n_3 }),
        .CYINIT(should_increment),
        .DI(curr_cuts_reg[3:0]),
        .O({\curr_cuts_reg[0]_i_2_n_4 ,\curr_cuts_reg[0]_i_2_n_5 ,\curr_cuts_reg[0]_i_2_n_6 ,\curr_cuts_reg[0]_i_2_n_7 }),
        .S({\curr_cuts[0]_i_3_n_0 ,\curr_cuts[0]_i_4_n_0 ,\curr_cuts[0]_i_5_n_0 ,\curr_cuts[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[8]_i_1_n_5 ),
        .Q(curr_cuts_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[8]_i_1_n_4 ),
        .Q(curr_cuts_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[12]_i_1_n_7 ),
        .Q(curr_cuts_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[12]_i_1 
       (.CI(\curr_cuts_reg[8]_i_1_n_0 ),
        .CO({\NLW_curr_cuts_reg[12]_i_1_CO_UNCONNECTED [3],\curr_cuts_reg[12]_i_1_n_1 ,\curr_cuts_reg[12]_i_1_n_2 ,\curr_cuts_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,curr_cuts_reg[14:12]}),
        .O({\curr_cuts_reg[12]_i_1_n_4 ,\curr_cuts_reg[12]_i_1_n_5 ,\curr_cuts_reg[12]_i_1_n_6 ,\curr_cuts_reg[12]_i_1_n_7 }),
        .S({\curr_cuts[12]_i_2_n_0 ,\curr_cuts[12]_i_3_n_0 ,\curr_cuts[12]_i_4_n_0 ,\curr_cuts[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[12]_i_1_n_6 ),
        .Q(curr_cuts_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[12]_i_1_n_5 ),
        .Q(curr_cuts_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[12]_i_1_n_4 ),
        .Q(curr_cuts_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[0]_i_2_n_6 ),
        .Q(curr_cuts_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[0]_i_2_n_5 ),
        .Q(curr_cuts_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[0]_i_2_n_4 ),
        .Q(curr_cuts_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[4]_i_1_n_7 ),
        .Q(curr_cuts_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[4]_i_1 
       (.CI(\curr_cuts_reg[0]_i_2_n_0 ),
        .CO({\curr_cuts_reg[4]_i_1_n_0 ,\curr_cuts_reg[4]_i_1_n_1 ,\curr_cuts_reg[4]_i_1_n_2 ,\curr_cuts_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[7:4]),
        .O({\curr_cuts_reg[4]_i_1_n_4 ,\curr_cuts_reg[4]_i_1_n_5 ,\curr_cuts_reg[4]_i_1_n_6 ,\curr_cuts_reg[4]_i_1_n_7 }),
        .S({\curr_cuts[4]_i_2_n_0 ,\curr_cuts[4]_i_3_n_0 ,\curr_cuts[4]_i_4_n_0 ,\curr_cuts[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[4]_i_1_n_6 ),
        .Q(curr_cuts_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[4]_i_1_n_5 ),
        .Q(curr_cuts_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[4]_i_1_n_4 ),
        .Q(curr_cuts_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[8]_i_1_n_7 ),
        .Q(curr_cuts_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \curr_cuts_reg[8]_i_1 
       (.CI(\curr_cuts_reg[4]_i_1_n_0 ),
        .CO({\curr_cuts_reg[8]_i_1_n_0 ,\curr_cuts_reg[8]_i_1_n_1 ,\curr_cuts_reg[8]_i_1_n_2 ,\curr_cuts_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(curr_cuts_reg[11:8]),
        .O({\curr_cuts_reg[8]_i_1_n_4 ,\curr_cuts_reg[8]_i_1_n_5 ,\curr_cuts_reg[8]_i_1_n_6 ,\curr_cuts_reg[8]_i_1_n_7 }),
        .S({\curr_cuts[8]_i_2_n_0 ,\curr_cuts[8]_i_3_n_0 ,\curr_cuts[8]_i_4_n_0 ,\curr_cuts[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \curr_cuts_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\curr_cuts[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\curr_cuts_reg[8]_i_1_n_6 ),
        .Q(curr_cuts_reg[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cuts_best0_carry
       (.CI(1'b0),
        .CO({cuts_best0_carry_n_0,cuts_best0_carry_n_1,cuts_best0_carry_n_2,cuts_best0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cuts_best0_carry_i_1_n_0,cuts_best0_carry_i_2_n_0,cuts_best0_carry_i_3_n_0,cuts_best0_carry_i_4_n_0}),
        .O(NLW_cuts_best0_carry_O_UNCONNECTED[3:0]),
        .S({cuts_best0_carry_i_5_n_0,cuts_best0_carry_i_6_n_0,cuts_best0_carry_i_7_n_0,cuts_best0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
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
       (.I0(curr_cuts_reg[15]),
        .I1(\cuts_best_reg[15]_0 [15]),
        .I2(curr_cuts_reg[14]),
        .I3(\cuts_best_reg[15]_0 [14]),
        .O(cuts_best0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_2
       (.I0(curr_cuts_reg[13]),
        .I1(\cuts_best_reg[15]_0 [13]),
        .I2(curr_cuts_reg[12]),
        .I3(\cuts_best_reg[15]_0 [12]),
        .O(cuts_best0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_3
       (.I0(curr_cuts_reg[11]),
        .I1(\cuts_best_reg[15]_0 [11]),
        .I2(curr_cuts_reg[10]),
        .I3(\cuts_best_reg[15]_0 [10]),
        .O(cuts_best0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry__0_i_4
       (.I0(curr_cuts_reg[9]),
        .I1(\cuts_best_reg[15]_0 [9]),
        .I2(curr_cuts_reg[8]),
        .I3(\cuts_best_reg[15]_0 [8]),
        .O(cuts_best0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_5
       (.I0(\cuts_best_reg[15]_0 [15]),
        .I1(curr_cuts_reg[15]),
        .I2(\cuts_best_reg[15]_0 [14]),
        .I3(curr_cuts_reg[14]),
        .O(cuts_best0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_6
       (.I0(\cuts_best_reg[15]_0 [13]),
        .I1(curr_cuts_reg[13]),
        .I2(\cuts_best_reg[15]_0 [12]),
        .I3(curr_cuts_reg[12]),
        .O(cuts_best0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_7
       (.I0(\cuts_best_reg[15]_0 [11]),
        .I1(curr_cuts_reg[11]),
        .I2(\cuts_best_reg[15]_0 [10]),
        .I3(curr_cuts_reg[10]),
        .O(cuts_best0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry__0_i_8
       (.I0(\cuts_best_reg[15]_0 [9]),
        .I1(curr_cuts_reg[9]),
        .I2(\cuts_best_reg[15]_0 [8]),
        .I3(curr_cuts_reg[8]),
        .O(cuts_best0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_1
       (.I0(curr_cuts_reg[7]),
        .I1(\cuts_best_reg[15]_0 [7]),
        .I2(curr_cuts_reg[6]),
        .I3(\cuts_best_reg[15]_0 [6]),
        .O(cuts_best0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_2
       (.I0(curr_cuts_reg[5]),
        .I1(\cuts_best_reg[15]_0 [5]),
        .I2(curr_cuts_reg[4]),
        .I3(\cuts_best_reg[15]_0 [4]),
        .O(cuts_best0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_3
       (.I0(curr_cuts_reg[3]),
        .I1(\cuts_best_reg[15]_0 [3]),
        .I2(curr_cuts_reg[2]),
        .I3(\cuts_best_reg[15]_0 [2]),
        .O(cuts_best0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cuts_best0_carry_i_4
       (.I0(curr_cuts_reg[1]),
        .I1(\cuts_best_reg[15]_0 [1]),
        .I2(curr_cuts_reg[0]),
        .I3(\cuts_best_reg[15]_0 [0]),
        .O(cuts_best0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_5
       (.I0(\cuts_best_reg[15]_0 [7]),
        .I1(curr_cuts_reg[7]),
        .I2(\cuts_best_reg[15]_0 [6]),
        .I3(curr_cuts_reg[6]),
        .O(cuts_best0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_6
       (.I0(\cuts_best_reg[15]_0 [5]),
        .I1(curr_cuts_reg[5]),
        .I2(\cuts_best_reg[15]_0 [4]),
        .I3(curr_cuts_reg[4]),
        .O(cuts_best0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_7
       (.I0(\cuts_best_reg[15]_0 [3]),
        .I1(curr_cuts_reg[3]),
        .I2(\cuts_best_reg[15]_0 [2]),
        .I3(curr_cuts_reg[2]),
        .O(cuts_best0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cuts_best0_carry_i_8
       (.I0(\cuts_best_reg[15]_0 [1]),
        .I1(curr_cuts_reg[1]),
        .I2(\cuts_best_reg[15]_0 [0]),
        .I3(curr_cuts_reg[0]),
        .O(cuts_best0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \cuts_best[15]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(cuts_best0_carry__0_n_0),
        .I2(halt_IBUF),
        .O(\cuts_best[15]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[0]),
        .Q(\cuts_best_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[10]),
        .Q(\cuts_best_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[11]),
        .Q(\cuts_best_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[12]),
        .Q(\cuts_best_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[13]),
        .Q(\cuts_best_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[14]),
        .Q(\cuts_best_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[15]),
        .Q(\cuts_best_reg[15]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[1]),
        .Q(\cuts_best_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[2]),
        .Q(\cuts_best_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[3]),
        .Q(\cuts_best_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[4]),
        .Q(\cuts_best_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[5]),
        .Q(\cuts_best_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[6]),
        .Q(\cuts_best_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[7]),
        .Q(\cuts_best_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[8]),
        .Q(\cuts_best_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \cuts_best_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\cuts_best[15]_i_1_n_0 ),
        .CLR(AR),
        .D(curr_cuts_reg[9]),
        .Q(\cuts_best_reg[15]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \halt_counter[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(halt_counter__0[0]),
        .O(halt_counter[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \halt_counter[1]_i_1 
       (.I0(halt_IBUF),
        .O(\halt_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \halt_counter[1]_i_2 
       (.I0(halt_counter__0[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(halt_counter__0[1]),
        .O(halt_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \halt_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(halt_counter[0]),
        .Q(halt_counter__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \halt_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(halt_counter[1]),
        .Q(halt_counter__0[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__i_2
       (.I0(i__i_3_n_0),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(counter_reg[2]),
        .I5(i__i_4_n_0),
        .O(decrease_temp));
  LUT4 #(
    .INIT(16'h8000)) 
    i__i_3
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(i__i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    i__i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(i__i_5_n_0),
        .O(i__i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i__i_5
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .O(i__i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .D(unit_idx[0]),
        .Q(\index_of_neuron_that_fired_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .D(unit_idx[1]),
        .Q(\index_of_neuron_that_fired_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .D(unit_idx[2]),
        .Q(\index_of_neuron_that_fired_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .D(unit_idx[3]),
        .Q(\index_of_neuron_that_fired_reg[3]_0 [3]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [0]),
        .Q(membrane_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [10]),
        .Q(membrane_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [11]),
        .Q(membrane_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [12]),
        .Q(membrane_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [13]),
        .Q(membrane_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [14]),
        .Q(membrane_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [15]),
        .Q(membrane_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [1]),
        .Q(membrane_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [2]),
        .Q(membrane_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [3]),
        .Q(membrane_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [4]),
        .Q(membrane_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [5]),
        .Q(membrane_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [6]),
        .Q(membrane_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [7]),
        .Q(membrane_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [8]),
        .Q(membrane_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\membrane_reg_reg[15]_0 [9]),
        .Q(membrane_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\offset_reg_reg[1]_0 [0]),
        .Q(unit_idx[0]));
  FDCE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\offset_reg_reg[1]_0 [1]),
        .Q(unit_idx[1]));
  FDPE #(
    .INIT(1'b1)) 
    reset_modules_reg
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .PRE(AR),
        .Q(reset_module));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    should_increment_i_1
       (.I0(add_mem),
        .I1(halt_IBUF),
        .I2(AR),
        .I3(should_increment_reg_0),
        .I4(Q),
        .I5(should_increment),
        .O(should_increment_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    should_increment_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(should_increment_i_1_n_0),
        .Q(should_increment),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \unit_number_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(unit_numb),
        .Q(unit_idx[2]));
  FDCE #(
    .INIT(1'b0)) 
    \unit_number_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(offset1),
        .Q(unit_idx[3]));
  FDCE #(
    .INIT(1'b0)) 
    update_memories_reg
       (.C(clk_IBUF_BUFG),
        .CE(\halt_counter[1]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(update_memory));
endmodule

module simple_priority_selector
   (add_mem,
    Q,
    \selected_membrane_reg_reg[15] ,
    should_increment_reg,
    E,
    D,
    \membrane_reg_reg[15] );
  output add_mem;
  output [1:0]Q;
  output [15:0]\selected_membrane_reg_reg[15] ;
  input should_increment_reg;
  input [0:0]E;
  input [1:0]D;
  input [15:0]\membrane_reg_reg[15] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire add_mem;
  wire [15:0]\membrane_reg_reg[15] ;
  wire [15:0]\selected_membrane_reg_reg[15] ;
  wire should_increment_reg;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    add_mem_reg
       (.CLR(1'b0),
        .D(should_increment_reg),
        .G(E),
        .GE(1'b1),
        .Q(add_mem));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[0] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [0]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[10] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [10]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[11] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [11]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[12] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [12]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[13] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [13]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[14] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [14]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[15] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [15]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[1] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [1]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[2] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [2]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[3] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [3]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[4] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [4]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[5] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [5]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[6] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [6]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[7] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [7]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[8] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [8]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \membrane_reg[9] 
       (.CLR(1'b0),
        .D(\membrane_reg_reg[15] [9]),
        .G(E),
        .GE(1'b1),
        .Q(\selected_membrane_reg_reg[15] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
endmodule

module temperature_module
   (DOADO,
    flipping_CE,
    E,
    S,
    DI,
    x_reg_rep_0,
    \selected_membrane_reg_reg[14] ,
    \noise_out_reg_reg[14] ,
    \noise_out_reg_reg[10] ,
    tmp,
    \noise_out_reg_reg[10]_0 ,
    \noise_out_reg_reg[14]_0 ,
    tmp_0,
    \noise_out_reg_reg[12] ,
    tmp_1,
    tmp_2,
    x_reg_rep_1,
    x_reg_rep_2,
    offset1,
    clk_IBUF_BUFG,
    x_reg_rep_3,
    decrease_temp,
    Q,
    spike_carry,
    spike_carry_0,
    spike_carry__0,
    membrane_compare__14,
    spike_carry_i_24__1_0,
    spike_carry_i_64__1_0,
    spike_carry_1,
    spike_carry_i_13__1_0,
    spike_carry_2,
    spike_carry_3,
    spike_carry_i_9__1_0,
    spike_carry_i_45__1_0,
    spike_carry__0_0,
    spike_carry__0_1,
    spike_carry_i_64__1_1,
    spike_carry_i_24__1_1,
    spike_carry_i_51__1_0,
    spike_carry__0_i_9__1_0,
    spike_carry_i_64__1_2,
    spike_carry_i_51__1_1,
    spike_carry_i_51__1_2,
    P,
    spike_carry_i_52__1_0,
    spike_carry_i_64__1_3,
    noise_out_reg,
    spike_carry_i_121__1_0,
    spike_carry_i_121__1_1,
    spikes,
    CO,
    spiked1__0,
    spike_carry_i_21__1_0,
    spike_carry_i_21__1_1,
    spike_carry__0_i_12__1_0);
  output [9:0]DOADO;
  output flipping_CE;
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep_0;
  output [3:0]\selected_membrane_reg_reg[14] ;
  output [1:0]\noise_out_reg_reg[14] ;
  output \noise_out_reg_reg[10] ;
  output tmp;
  output \noise_out_reg_reg[10]_0 ;
  output \noise_out_reg_reg[14]_0 ;
  output tmp_0;
  output \noise_out_reg_reg[12] ;
  output tmp_1;
  output tmp_2;
  output x_reg_rep_1;
  output x_reg_rep_2;
  output offset1;
  input clk_IBUF_BUFG;
  input x_reg_rep_3;
  input decrease_temp;
  input [2:0]Q;
  input spike_carry;
  input [0:0]spike_carry_0;
  input spike_carry__0;
  input [7:0]membrane_compare__14;
  input spike_carry_i_24__1_0;
  input spike_carry_i_64__1_0;
  input spike_carry_1;
  input spike_carry_i_13__1_0;
  input spike_carry_2;
  input spike_carry_3;
  input spike_carry_i_9__1_0;
  input spike_carry_i_45__1_0;
  input spike_carry__0_0;
  input spike_carry__0_1;
  input spike_carry_i_64__1_1;
  input spike_carry_i_24__1_1;
  input spike_carry_i_51__1_0;
  input spike_carry__0_i_9__1_0;
  input spike_carry_i_64__1_2;
  input spike_carry_i_51__1_1;
  input spike_carry_i_51__1_2;
  input [2:0]P;
  input spike_carry_i_52__1_0;
  input spike_carry_i_64__1_3;
  input [5:0]noise_out_reg;
  input spike_carry_i_121__1_0;
  input spike_carry_i_121__1_1;
  input [0:0]spikes;
  input [0:0]CO;
  input spiked1__0;
  input spike_carry_i_21__1_0;
  input spike_carry_i_21__1_1;
  input spike_carry__0_i_12__1_0;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [9:0]DOADO;
  wire [0:0]E;
  wire [2:0]P;
  wire [2:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire flipping_CE;
  wire [7:0]membrane_compare__14;
  wire [3:1]\mult/biased_sum_exponent ;
  wire [0:0]\mult/sum_exponent ;
  wire \mult/u2/c_3__3 ;
  wire \mult/u2/c_4__3 ;
  wire \mult/u3/c_3__0 ;
  wire \mult/underflow__1 ;
  wire [5:0]noise_out_reg;
  wire \noise_out_reg_reg[10] ;
  wire \noise_out_reg_reg[10]_0 ;
  wire \noise_out_reg_reg[12] ;
  wire [1:0]\noise_out_reg_reg[14] ;
  wire \noise_out_reg_reg[14]_0 ;
  wire offset1;
  wire reset_flipping;
  wire [15:1]result0;
  wire [3:1]sel0;
  wire [3:0]\selected_membrane_reg_reg[14] ;
  wire spike_carry;
  wire [0:0]spike_carry_0;
  wire spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry__0;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_i_12__1_0;
  wire spike_carry__0_i_12__1_n_2;
  wire spike_carry__0_i_12__1_n_3;
  wire spike_carry__0_i_13__1_n_0;
  wire spike_carry__0_i_14__1_n_0;
  wire spike_carry__0_i_16__1_n_0;
  wire spike_carry__0_i_18__1_n_0;
  wire spike_carry__0_i_20__1_n_0;
  wire spike_carry__0_i_20__1_n_1;
  wire spike_carry__0_i_20__1_n_2;
  wire spike_carry__0_i_20__1_n_3;
  wire spike_carry__0_i_21__1_n_0;
  wire spike_carry__0_i_23__1_n_0;
  wire spike_carry__0_i_25__1_n_0;
  wire spike_carry__0_i_27__1_n_0;
  wire spike_carry__0_i_28__1_n_0;
  wire spike_carry__0_i_29__1_n_0;
  wire spike_carry__0_i_31__1_n_0;
  wire spike_carry__0_i_32__1_n_0;
  wire spike_carry__0_i_33__1_n_0;
  wire spike_carry__0_i_34__1_n_0;
  wire spike_carry__0_i_35__1_n_0;
  wire spike_carry__0_i_36__1_n_0;
  wire spike_carry__0_i_37__1_n_0;
  wire spike_carry__0_i_38__1_n_0;
  wire spike_carry__0_i_39__1_n_0;
  wire spike_carry__0_i_41__1_n_0;
  wire spike_carry__0_i_42__1_n_0;
  wire spike_carry__0_i_43__1_n_0;
  wire spike_carry__0_i_44__1_n_0;
  wire spike_carry__0_i_45__1_n_0;
  wire spike_carry__0_i_46__1_n_0;
  wire spike_carry__0_i_47__1_n_0;
  wire spike_carry__0_i_48__1_n_0;
  wire spike_carry__0_i_49__1_n_0;
  wire spike_carry__0_i_50__1_n_0;
  wire spike_carry__0_i_51__1_n_0;
  wire spike_carry__0_i_52__1_n_0;
  wire spike_carry__0_i_53__1_n_0;
  wire spike_carry__0_i_54__1_n_0;
  wire spike_carry__0_i_55__1_n_0;
  wire spike_carry__0_i_56__1_n_0;
  wire spike_carry__0_i_57__0_n_0;
  wire spike_carry__0_i_59__1_n_0;
  wire spike_carry__0_i_60__0_n_0;
  wire spike_carry__0_i_65__1_n_0;
  wire spike_carry__0_i_66__1_n_0;
  wire spike_carry__0_i_67__1_n_0;
  wire spike_carry__0_i_68__0_n_0;
  wire spike_carry__0_i_69__1_n_0;
  wire spike_carry__0_i_70__0_n_0;
  wire spike_carry__0_i_75__1_n_0;
  wire spike_carry__0_i_76__0_n_0;
  wire spike_carry__0_i_77__1_n_0;
  wire spike_carry__0_i_78__1_n_0;
  wire spike_carry__0_i_79__1_n_0;
  wire spike_carry__0_i_80__1_n_0;
  wire spike_carry__0_i_81__0_n_0;
  wire spike_carry__0_i_82__0_n_0;
  wire spike_carry__0_i_83__1_n_0;
  wire spike_carry__0_i_84__0_n_0;
  wire spike_carry__0_i_9__1_0;
  wire spike_carry__0_i_9__1_n_0;
  wire spike_carry_i_101__1_n_0;
  wire spike_carry_i_102__0_n_0;
  wire spike_carry_i_103__1_n_0;
  wire spike_carry_i_104__0_n_0;
  wire spike_carry_i_106__1_n_0;
  wire spike_carry_i_108__1_n_0;
  wire spike_carry_i_110__0_n_0;
  wire spike_carry_i_112__0_n_0;
  wire spike_carry_i_114__0_n_0;
  wire spike_carry_i_115__1_n_0;
  wire spike_carry_i_116__0_n_0;
  wire spike_carry_i_118__0_n_0;
  wire spike_carry_i_11__1_n_0;
  wire spike_carry_i_11__1_n_1;
  wire spike_carry_i_11__1_n_2;
  wire spike_carry_i_11__1_n_3;
  wire spike_carry_i_120__0_n_0;
  wire spike_carry_i_121__1_0;
  wire spike_carry_i_121__1_1;
  wire spike_carry_i_122__0_n_0;
  wire spike_carry_i_124__1_n_0;
  wire spike_carry_i_12__1_n_0;
  wire spike_carry_i_130__1_n_0;
  wire spike_carry_i_131__0_n_0;
  wire spike_carry_i_133__0_n_0;
  wire spike_carry_i_134__0_n_0;
  wire spike_carry_i_135__0_n_0;
  wire spike_carry_i_136__0_n_0;
  wire spike_carry_i_13__1_0;
  wire spike_carry_i_13__1_n_0;
  wire spike_carry_i_141__1_n_0;
  wire spike_carry_i_142__1_n_0;
  wire spike_carry_i_143__0_n_0;
  wire spike_carry_i_144__0_n_0;
  wire spike_carry_i_145__0_n_0;
  wire spike_carry_i_146__1_n_0;
  wire spike_carry_i_148__1_n_0;
  wire spike_carry_i_151__1_n_0;
  wire spike_carry_i_15__1_n_0;
  wire spike_carry_i_161__1_n_0;
  wire spike_carry_i_162__1_n_0;
  wire spike_carry_i_168__1_n_0;
  wire spike_carry_i_170__1_n_0;
  wire spike_carry_i_174__1_n_0;
  wire spike_carry_i_175__1_n_0;
  wire spike_carry_i_17__1_n_0;
  wire spike_carry_i_19__1_n_0;
  wire spike_carry_i_21__1_0;
  wire spike_carry_i_21__1_1;
  wire spike_carry_i_21__1_n_0;
  wire spike_carry_i_21__1_n_1;
  wire spike_carry_i_21__1_n_2;
  wire spike_carry_i_21__1_n_3;
  wire spike_carry_i_22__1_n_0;
  wire spike_carry_i_24__1_0;
  wire spike_carry_i_24__1_1;
  wire spike_carry_i_24__1_n_0;
  wire spike_carry_i_25__1_n_0;
  wire spike_carry_i_27__0_n_0;
  wire spike_carry_i_28__1_n_0;
  wire spike_carry_i_29__1_n_0;
  wire spike_carry_i_30__1_n_0;
  wire spike_carry_i_32__1_n_0;
  wire spike_carry_i_33__1_n_0;
  wire spike_carry_i_34__1_n_0;
  wire spike_carry_i_35__1_n_0;
  wire spike_carry_i_36__1_n_0;
  wire spike_carry_i_37__1_n_0;
  wire spike_carry_i_38__1_n_0;
  wire spike_carry_i_39__1_n_0;
  wire spike_carry_i_40__1_n_0;
  wire spike_carry_i_41__0_n_0;
  wire spike_carry_i_42__1_n_0;
  wire spike_carry_i_43__1_n_0;
  wire spike_carry_i_44__1_n_0;
  wire spike_carry_i_45__1_0;
  wire spike_carry_i_45__1_n_0;
  wire spike_carry_i_47__1_n_0;
  wire spike_carry_i_48__1_n_0;
  wire spike_carry_i_49__1_n_0;
  wire spike_carry_i_50__1_n_0;
  wire spike_carry_i_51__1_0;
  wire spike_carry_i_51__1_1;
  wire spike_carry_i_51__1_2;
  wire spike_carry_i_51__1_n_0;
  wire spike_carry_i_52__1_0;
  wire spike_carry_i_52__1_n_0;
  wire spike_carry_i_53__1_n_0;
  wire spike_carry_i_54__1_n_0;
  wire spike_carry_i_55__1_n_0;
  wire spike_carry_i_56__1_n_0;
  wire spike_carry_i_57__1_n_0;
  wire spike_carry_i_58__1_n_0;
  wire spike_carry_i_59__1_n_0;
  wire spike_carry_i_60__1_n_0;
  wire spike_carry_i_61__1_n_0;
  wire spike_carry_i_62__0_n_0;
  wire spike_carry_i_63__1_n_0;
  wire spike_carry_i_64__1_0;
  wire spike_carry_i_64__1_1;
  wire spike_carry_i_64__1_2;
  wire spike_carry_i_64__1_3;
  wire spike_carry_i_64__1_n_0;
  wire spike_carry_i_65__1_n_0;
  wire spike_carry_i_66__1_n_0;
  wire spike_carry_i_67__1_n_0;
  wire spike_carry_i_68__1_n_0;
  wire spike_carry_i_69__1_n_0;
  wire spike_carry_i_74__0_n_0;
  wire spike_carry_i_76__0_n_0;
  wire spike_carry_i_78__1_n_0;
  wire spike_carry_i_79__0_n_0;
  wire spike_carry_i_82__0_n_0;
  wire spike_carry_i_84__1_n_0;
  wire spike_carry_i_85__0_n_0;
  wire spike_carry_i_86__0_n_0;
  wire spike_carry_i_91__1_n_0;
  wire spike_carry_i_92__1_n_0;
  wire spike_carry_i_93__1_n_0;
  wire spike_carry_i_94__1_n_0;
  wire spike_carry_i_95__1_n_0;
  wire spike_carry_i_96__1_n_0;
  wire spike_carry_i_9__1_0;
  wire spike_carry_i_9__1_n_0;
  wire spiked1__0;
  wire [0:0]spikes;
  wire [15:10]temperature_multiplier_out_reg;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_2;
  wire \x[0]_i_1__1_n_0 ;
  wire \x[1]_i_1__1_n_0 ;
  wire \x[2]_i_1__1_n_0 ;
  wire \x[3]_i_1__1_n_0 ;
  wire \x[4]_i_1__1_n_0 ;
  wire \x[5]_i_1__1_n_0 ;
  wire \x[6]_i_3__0_n_0 ;
  wire [6:0]x_reg;
  wire [3:0]x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_3;
  wire x_reg_rep_i_2__0_n_0;
  wire x_reg_rep_i_3__0_n_0;
  wire x_reg_rep_i_4__0_n_0;
  wire x_reg_rep_i_5__0_n_0;
  wire x_reg_rep_i_6__0_n_0;
  wire x_reg_rep_i_7__0_n_0;
  wire x_reg_rep_i_8__0_n_0;
  wire x_reg_rep_i_9_n_0;
  wire [3:2]NLW_spike_carry__0_i_12__1_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_12__1_O_UNCONNECTED;
  wire [15:0]NLW_x_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_x_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_x_reg_rep_DOPBDOP_UNCONNECTED;

  LUT3 #(
    .INIT(8'h06)) 
    \noise_out_reg[15]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(flipping_CE));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_12__1
       (.CI(spike_carry__0_i_20__1_n_0),
        .CO({NLW_spike_carry__0_i_12__1_CO_UNCONNECTED[3:2],spike_carry__0_i_12__1_n_2,spike_carry__0_i_12__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_12__1_O_UNCONNECTED[3],result0[15:13]}),
        .S({1'b0,spike_carry__0_i_31__1_n_0,spike_carry__0_i_32__1_n_0,spike_carry__0_i_33__1_n_0}));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_13__1
       (.I0(spike_carry__0_i_34__1_n_0),
        .I1(spike_carry_i_37__1_n_0),
        .I2(spike_carry__0_i_35__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry_i_40__1_n_0),
        .I5(spike_carry__0_i_36__1_n_0),
        .O(spike_carry__0_i_13__1_n_0));
  LUT6 #(
    .INIT(64'h4444444444474747)) 
    spike_carry__0_i_14__1
       (.I0(result0[12]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry__0_i_37__1_n_0),
        .I3(spike_carry__0_i_34__1_n_0),
        .I4(spike_carry__0_i_38__1_n_0),
        .I5(spike_carry__0_i_39__1_n_0),
        .O(spike_carry__0_i_14__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    spike_carry__0_i_16__1
       (.I0(spike_carry__0_i_41__1_n_0),
        .I1(spike_carry__0_i_42__1_n_0),
        .I2(spike_carry__0_i_34__1_n_0),
        .I3(spike_carry_i_47__1_n_0),
        .I4(spike_carry_i_41__0_n_0),
        .I5(spike_carry__0_i_43__1_n_0),
        .O(spike_carry__0_i_16__1_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_18__1
       (.I0(result0[10]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry__0_i_44__1_n_0),
        .I3(spike_carry__0_i_45__1_n_0),
        .I4(spike_carry__0_i_46__1_n_0),
        .I5(spike_carry__0_i_47__1_n_0),
        .O(spike_carry__0_i_18__1_n_0));
  LUT6 #(
    .INIT(64'h8F0808088F088F8F)) 
    spike_carry__0_i_1__1
       (.I0(spike_carry__0_i_9__1_n_0),
        .I1(membrane_compare__14[6]),
        .I2(membrane_compare__14[7]),
        .I3(result0[15]),
        .I4(spike_carry_i_12__1_n_0),
        .I5(spike_carry__0_i_13__1_n_0),
        .O(\selected_membrane_reg_reg[14] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_20__1
       (.CI(spike_carry_i_11__1_n_0),
        .CO({spike_carry__0_i_20__1_n_0,spike_carry__0_i_20__1_n_1,spike_carry__0_i_20__1_n_2,spike_carry__0_i_20__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[12:9]),
        .S({spike_carry__0_i_48__1_n_0,spike_carry__0_i_49__1_n_0,spike_carry__0_i_50__1_n_0,spike_carry__0_i_51__1_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_21__1
       (.I0(spike_carry__0_i_34__1_n_0),
        .I1(spike_carry_i_40__1_n_0),
        .I2(spike_carry_i_41__0_n_0),
        .I3(spike_carry_i_37__1_n_0),
        .I4(spike_carry_i_44__1_n_0),
        .I5(spike_carry__0_i_52__1_n_0),
        .O(spike_carry__0_i_21__1_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry__0_i_23__1
       (.I0(result0[8]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry_i_41__0_n_0),
        .I3(spike_carry__0_i_38__1_n_0),
        .I4(spike_carry__0_i_53__1_n_0),
        .I5(spike_carry__0_i_54__1_n_0),
        .O(spike_carry__0_i_23__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    spike_carry__0_i_25__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry_i_47__1_n_0),
        .I2(spike_carry__0_i_55__1_n_0),
        .I3(spike_carry_i_27__0_n_0),
        .I4(spike_carry__0_i_43__1_n_0),
        .I5(spike_carry__0_i_56__1_n_0),
        .O(spike_carry__0_i_25__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_27__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry__0_i_57__0_n_0),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(spike_carry__0_i_9__1_0),
        .I4(spike_carry_i_64__1_2),
        .I5(spike_carry__0_i_59__1_n_0),
        .O(spike_carry__0_i_27__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_28__1
       (.I0(spike_carry__0_i_36__1_n_0),
        .I1(spike_carry_i_76__0_n_0),
        .I2(spike_carry_i_51__1_0),
        .I3(spike_carry_i_24__1_1),
        .I4(spike_carry_i_74__0_n_0),
        .I5(spike_carry_i_82__0_n_0),
        .O(spike_carry__0_i_28__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_29__1
       (.I0(spike_carry__0_i_34__1_n_0),
        .I1(spike_carry_i_79__0_n_0),
        .I2(spike_carry_i_78__1_n_0),
        .I3(spike_carry_i_51__1_2),
        .I4(spike_carry_i_76__0_n_0),
        .I5(spike_carry__0_i_60__0_n_0),
        .O(spike_carry__0_i_29__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_2__1
       (.I0(spike_carry__0_i_14__1_n_0),
        .I1(membrane_compare__14[5]),
        .I2(result0[13]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry__0_i_16__1_n_0),
        .I5(spike_carry__0_1),
        .O(\selected_membrane_reg_reg[14] [2]));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_31__1
       (.I0(spike_carry__0_i_34__1_n_0),
        .I1(spike_carry_i_37__1_n_0),
        .I2(spike_carry__0_i_35__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry_i_40__1_n_0),
        .I5(spike_carry__0_i_36__1_n_0),
        .O(spike_carry__0_i_31__1_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_32__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry__0_i_12__1_0),
        .I2(spike_carry__0_i_28__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry__0_i_34__1_n_0),
        .I5(spike_carry_i_28__1_n_0),
        .O(spike_carry__0_i_32__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_33__1
       (.I0(spike_carry__0_i_16__1_n_0),
        .O(spike_carry__0_i_33__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h01010110)) 
    spike_carry__0_i_34__1
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_34__1_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_35__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(spike_carry_i_64__1_0),
        .I5(spike_carry_i_51__1_1),
        .O(spike_carry__0_i_35__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h10101002)) 
    spike_carry__0_i_36__1
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_36__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFEE)) 
    spike_carry__0_i_37__1
       (.I0(spike_carry__0_i_65__1_n_0),
        .I1(spike_carry__0_i_66__1_n_0),
        .I2(spike_carry_i_106__1_n_0),
        .I3(spike_carry_i_24__1_0),
        .I4(spike_carry_i_84__1_n_0),
        .I5(spike_carry__0_i_67__1_n_0),
        .O(spike_carry__0_i_37__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_38__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_51__1_0),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_45__1_0),
        .I4(spike_carry_i_115__1_n_0),
        .I5(spike_carry_i_114__0_n_0),
        .O(spike_carry__0_i_38__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_39__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry__0_i_68__0_n_0),
        .I2(spike_carry__0_i_69__1_n_0),
        .I3(spike_carry_i_51__1_1),
        .I4(spike_carry_i_76__0_n_0),
        .I5(spike_carry__0_i_70__0_n_0),
        .O(spike_carry__0_i_39__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_3__1
       (.I0(spike_carry__0_i_18__1_n_0),
        .I1(membrane_compare__14[4]),
        .I2(result0[11]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry__0_i_21__1_n_0),
        .I5(spike_carry__0_0),
        .O(\selected_membrane_reg_reg[14] [1]));
  LUT6 #(
    .INIT(64'h8080000088000000)) 
    spike_carry__0_i_41__1
       (.I0(spike_carry__0_i_36__1_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(spike_carry_i_64__1_1),
        .I3(spike_carry_i_24__1_1),
        .I4(\noise_out_reg_reg[14]_0 ),
        .I5(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_41__1_n_0));
  LUT6 #(
    .INIT(64'h8040000000400000)) 
    spike_carry__0_i_42__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24__1_0),
        .O(spike_carry__0_i_42__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_43__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_64__1_2),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_64__1_0),
        .I4(spike_carry__0_i_75__1_n_0),
        .I5(spike_carry__0_i_76__0_n_0),
        .O(spike_carry__0_i_43__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_44__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry_i_79__0_n_0),
        .I2(spike_carry_i_78__1_n_0),
        .I3(spike_carry_i_51__1_2),
        .I4(spike_carry_i_76__0_n_0),
        .I5(spike_carry__0_i_60__0_n_0),
        .O(spike_carry__0_i_44__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry__0_i_45__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24__1_0),
        .O(spike_carry__0_i_45__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_46__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry__0_i_57__0_n_0),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(spike_carry__0_i_9__1_0),
        .I4(spike_carry_i_64__1_2),
        .I5(spike_carry__0_i_59__1_n_0),
        .O(spike_carry__0_i_46__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_47__1
       (.I0(spike_carry__0_i_34__1_n_0),
        .I1(spike_carry_i_76__0_n_0),
        .I2(spike_carry_i_51__1_0),
        .I3(spike_carry_i_24__1_1),
        .I4(spike_carry_i_74__0_n_0),
        .I5(spike_carry_i_82__0_n_0),
        .O(spike_carry__0_i_47__1_n_0));
  LUT6 #(
    .INIT(64'h0000011101110111)) 
    spike_carry__0_i_48__1
       (.I0(spike_carry__0_i_77__1_n_0),
        .I1(spike_carry__0_i_78__1_n_0),
        .I2(spike_carry__0_i_34__1_n_0),
        .I3(spike_carry__0_i_38__1_n_0),
        .I4(spike_carry_i_41__0_n_0),
        .I5(spike_carry_i_91__1_n_0),
        .O(spike_carry__0_i_48__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_49__1
       (.I0(spike_carry__0_i_21__1_n_0),
        .O(spike_carry__0_i_49__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_4__1
       (.I0(spike_carry__0_i_23__1_n_0),
        .I1(membrane_compare__14[3]),
        .I2(result0[9]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry__0_i_25__1_n_0),
        .I5(spike_carry__0),
        .O(\selected_membrane_reg_reg[14] [0]));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry__0_i_50__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry_i_28__1_n_0),
        .I2(spike_carry__0_i_79__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry__0_i_46__1_n_0),
        .I5(spike_carry__0_i_47__1_n_0),
        .O(spike_carry__0_i_50__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_51__1
       (.I0(spike_carry__0_i_25__1_n_0),
        .O(spike_carry__0_i_51__1_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_52__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(spike_carry_i_64__1_0),
        .I5(spike_carry_i_51__1_1),
        .O(spike_carry__0_i_52__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_53__1
       (.I0(spike_carry_i_106__1_n_0),
        .I1(spike_carry_i_24__1_0),
        .I2(spike_carry_i_84__1_n_0),
        .I3(spike_carry__0_i_80__1_n_0),
        .I4(spike_carry__0_i_81__0_n_0),
        .I5(spike_carry_i_68__1_n_0),
        .O(spike_carry__0_i_53__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    spike_carry__0_i_54__1
       (.I0(spike_carry_i_92__1_n_0),
        .I1(spike_carry__0_i_70__0_n_0),
        .I2(spike_carry__0_i_82__0_n_0),
        .I3(spike_carry__0_i_69__1_n_0),
        .I4(spike_carry__0_i_68__0_n_0),
        .I5(spike_carry_i_27__0_n_0),
        .O(spike_carry__0_i_54__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_55__1
       (.I0(spike_carry_i_106__1_n_0),
        .I1(spike_carry_i_24__1_0),
        .I2(spike_carry_i_84__1_n_0),
        .I3(spike_carry__0_i_83__1_n_0),
        .I4(spike_carry__0_i_84__0_n_0),
        .I5(spike_carry_i_61__1_n_0),
        .O(spike_carry__0_i_55__1_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry__0_i_56__1
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64__1_1),
        .I2(spike_carry_i_24__1_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry__0_i_34__1_n_0),
        .O(spike_carry__0_i_56__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h8C00008C)) 
    spike_carry__0_i_57__0
       (.I0(spike_carry_i_51__1_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [1]),
        .O(spike_carry__0_i_57__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00000095)) 
    spike_carry__0_i_59__1
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_59__1_n_0));
  LUT6 #(
    .INIT(64'h0000D12ED12E0000)) 
    spike_carry__0_i_5__1
       (.I0(spike_carry__0_i_13__1_n_0),
        .I1(spike_carry_i_12__1_n_0),
        .I2(result0[15]),
        .I3(membrane_compare__14[7]),
        .I4(spike_carry__0_i_9__1_n_0),
        .I5(membrane_compare__14[6]),
        .O(x_reg_rep_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_60__0
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_45__1_0),
        .O(spike_carry__0_i_60__0_n_0));
  LUT6 #(
    .INIT(64'h0280000000000000)) 
    spike_carry__0_i_65__1
       (.I0(spike_carry_i_64__1_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_65__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    spike_carry__0_i_66__1
       (.I0(spike_carry_i_24__1_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_66__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    spike_carry__0_i_67__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(sel0[3]),
        .O(spike_carry__0_i_67__1_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_68__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64__1_2),
        .O(spike_carry__0_i_68__0_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_69__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_52__1_0),
        .O(spike_carry__0_i_69__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_6__1
       (.I0(spike_carry__0_1),
        .I1(spike_carry__0_i_16__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[13]),
        .I4(spike_carry__0_i_14__1_n_0),
        .I5(membrane_compare__14[5]),
        .O(x_reg_rep_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_70__0
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51__1_2),
        .O(spike_carry__0_i_70__0_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_75__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_51__1_2),
        .O(spike_carry__0_i_75__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_76__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51__1_1),
        .O(spike_carry__0_i_76__0_n_0));
  LUT6 #(
    .INIT(64'h8800000008000000)) 
    spike_carry__0_i_77__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24__1_0),
        .O(spike_carry__0_i_77__1_n_0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    spike_carry__0_i_78__1
       (.I0(spike_carry__0_i_36__1_n_0),
        .I1(spike_carry_i_62__0_n_0),
        .I2(spike_carry_i_27__0_n_0),
        .I3(\noise_out_reg_reg[10]_0 ),
        .I4(spike_carry_i_64__1_0),
        .I5(\noise_out_reg_reg[14]_0 ),
        .O(spike_carry__0_i_78__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_79__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(spike_carry__0_i_84__0_n_0),
        .O(spike_carry__0_i_79__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_7__1
       (.I0(spike_carry__0_0),
        .I1(spike_carry__0_i_21__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[11]),
        .I4(spike_carry__0_i_18__1_n_0),
        .I5(membrane_compare__14[4]),
        .O(x_reg_rep_0[1]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    spike_carry__0_i_80__1
       (.I0(spike_carry_i_64__1_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\noise_out_reg_reg[14] [1]),
        .O(spike_carry__0_i_80__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h02C0)) 
    spike_carry__0_i_81__0
       (.I0(spike_carry_i_51__1_1),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(spike_carry__0_i_81__0_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_82__0
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51__1_1),
        .O(spike_carry__0_i_82__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    spike_carry__0_i_83__1
       (.I0(spike_carry_i_64__1_0),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_83__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry__0_i_84__0
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(spike_carry__0_i_84__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_8__1
       (.I0(spike_carry__0),
        .I1(spike_carry__0_i_25__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[9]),
        .I4(spike_carry__0_i_23__1_n_0),
        .I5(membrane_compare__14[3]),
        .O(x_reg_rep_0[0]));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_9__1
       (.I0(result0[14]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry__0_i_27__1_n_0),
        .I3(spike_carry__0_i_28__1_n_0),
        .I4(spike_carry_i_44__1_n_0),
        .I5(spike_carry__0_i_29__1_n_0),
        .O(spike_carry__0_i_9__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_101__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_45__1_0),
        .O(spike_carry_i_101__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_102__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51__1_2),
        .O(spike_carry_i_102__0_n_0));
  LUT3 #(
    .INIT(8'hF6)) 
    spike_carry_i_103__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(spike_carry_i_51__1_1),
        .O(spike_carry_i_103__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h42)) 
    spike_carry_i_104__0
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(spike_carry_i_104__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    spike_carry_i_106__1
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(spike_carry_i_106__1_n_0));
  LUT6 #(
    .INIT(64'h4441111100000000)) 
    spike_carry_i_108__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24__1_1),
        .O(spike_carry_i_108__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_110__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51__1_0),
        .O(spike_carry_i_110__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h90)) 
    spike_carry_i_112__0
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_112__0_n_0));
  LUT6 #(
    .INIT(64'h0000222200002882)) 
    spike_carry_i_113__1
       (.I0(\noise_out_reg_reg[12] ),
        .I1(\mult/biased_sum_exponent [1]),
        .I2(noise_out_reg[0]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(spike_carry_i_146__1_n_0),
        .I5(P[2]),
        .O(\noise_out_reg_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_114__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64__1_3),
        .O(spike_carry_i_114__0_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_115__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_64__1_1),
        .O(spike_carry_i_115__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry_i_116__0
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51__1_0),
        .O(spike_carry_i_116__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_117__1
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(\noise_out_reg_reg[14] [0]),
        .O(\noise_out_reg_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h06)) 
    spike_carry_i_118__0
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .O(spike_carry_i_118__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_11__1
       (.CI(spike_carry_i_21__1_n_0),
        .CO({spike_carry_i_11__1_n_0,spike_carry_i_11__1_n_1,spike_carry_i_11__1_n_2,spike_carry_i_11__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[8:5]),
        .S({spike_carry_i_32__1_n_0,spike_carry_i_33__1_n_0,spike_carry_i_34__1_n_0,spike_carry_i_35__1_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_120__0
       (.I0(spike_carry_i_64__1_2),
        .I1(spike_carry_i_52__1_0),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_120__0_n_0));
  LUT6 #(
    .INIT(64'h5551511041141441)) 
    spike_carry_i_121__1
       (.I0(spike_carry_i_36__1_n_0),
        .I1(spike_carry_i_168__1_n_0),
        .I2(\mult/u2/c_4__3 ),
        .I3(noise_out_reg[4]),
        .I4(temperature_multiplier_out_reg[14]),
        .I5(spike_carry_i_170__1_n_0),
        .O(\noise_out_reg_reg[14] [1]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h000F0CA0)) 
    spike_carry_i_122__0
       (.I0(spike_carry_i_51__1_1),
        .I1(spike_carry_i_45__1_0),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_122__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h56)) 
    spike_carry_i_123__0
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(tmp));
  LUT6 #(
    .INIT(64'h6600600006000000)) 
    spike_carry_i_124__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(P[2]),
        .I3(\noise_out_reg_reg[12] ),
        .I4(P[0]),
        .I5(P[1]),
        .O(spike_carry_i_124__1_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    spike_carry_i_12__1
       (.I0(spike_carry_i_36__1_n_0),
        .I1(temperature_multiplier_out_reg[15]),
        .I2(noise_out_reg[5]),
        .O(spike_carry_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_130__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_51__1_0),
        .O(spike_carry_i_130__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_131__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_45__1_0),
        .O(spike_carry_i_131__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hAAA95555)) 
    spike_carry_i_132__1
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(sel0[3]),
        .O(\noise_out_reg_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h000B)) 
    spike_carry_i_133__0
       (.I0(spike_carry_i_51__1_1),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(spike_carry_i_133__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h20)) 
    spike_carry_i_134__0
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(spike_carry_i_134__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'hA00AACCA)) 
    spike_carry_i_135__0
       (.I0(spike_carry_i_51__1_0),
        .I1(spike_carry_i_51__1_2),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike_carry_i_135__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_136__0
       (.I0(spike_carry_i_52__1_0),
        .I1(spike_carry_i_64__1_3),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_136__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_139__0
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .O(tmp_1));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_13__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry_i_37__1_n_0),
        .I2(spike_carry_i_38__1_n_0),
        .I3(spike_carry_i_39__1_n_0),
        .I4(spike_carry_i_40__1_n_0),
        .I5(spike_carry_i_41__0_n_0),
        .O(spike_carry_i_13__1_n_0));
  LUT6 #(
    .INIT(64'h0038000000080000)) 
    spike_carry_i_141__1
       (.I0(spike_carry_i_45__1_0),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_24__1_1),
        .O(spike_carry_i_141__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h88001000)) 
    spike_carry_i_142__1
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(spike_carry_i_51__1_1),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(sel0[1]),
        .O(spike_carry_i_142__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry_i_143__0
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(spike_carry_i_143__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    spike_carry_i_144__0
       (.I0(spike_carry_i_64__1_2),
        .I1(sel0[1]),
        .I2(spike_carry_i_64__1_0),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(spike_carry_i_144__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_145__0
       (.I0(spike_carry_i_64__1_3),
        .I1(spike_carry_i_64__1_1),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_145__0_n_0));
  LUT6 #(
    .INIT(64'h0000000077700000)) 
    spike_carry_i_146__1
       (.I0(spike_carry_i_95__1_n_0),
        .I1(spike_carry_i_96__1_n_0),
        .I2(spike_carry_i_121__1_0),
        .I3(spike_carry_i_121__1_1),
        .I4(x_reg_rep_1),
        .I5(\mult/underflow__1 ),
        .O(spike_carry_i_146__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000EEE)) 
    spike_carry_i_147__1
       (.I0(spike_carry_i_121__1_1),
        .I1(spike_carry_i_121__1_0),
        .I2(spike_carry_i_96__1_n_0),
        .I3(spike_carry_i_95__1_n_0),
        .I4(x_reg_rep_1),
        .O(\noise_out_reg_reg[12] ));
  LUT6 #(
    .INIT(64'h6FF9FFFFFFFFFFFF)) 
    spike_carry_i_148__1
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(noise_out_reg[1]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg[0]),
        .I4(P[2]),
        .I5(\mult/biased_sum_exponent [2]),
        .O(spike_carry_i_148__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    spike_carry_i_149__1
       (.I0(\mult/u3/c_3__0 ),
        .I1(temperature_multiplier_out_reg[13]),
        .I2(\mult/u2/c_3__3 ),
        .I3(noise_out_reg[3]),
        .O(\mult/biased_sum_exponent [3]));
  LUT6 #(
    .INIT(64'hAAA999955556666A)) 
    spike_carry_i_150__1
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg[1]),
        .I2(noise_out_reg[0]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(temperature_multiplier_out_reg[11]),
        .I5(noise_out_reg[2]),
        .O(\mult/biased_sum_exponent [2]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h80020280)) 
    spike_carry_i_151__1
       (.I0(P[2]),
        .I1(noise_out_reg[0]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg[1]),
        .I4(temperature_multiplier_out_reg[11]),
        .O(spike_carry_i_151__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h9996)) 
    spike_carry_i_152__1
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(noise_out_reg[1]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg[0]),
        .O(\mult/biased_sum_exponent [1]));
  LUT6 #(
    .INIT(64'h6888888188818111)) 
    spike_carry_i_153__1
       (.I0(temperature_multiplier_out_reg[14]),
        .I1(noise_out_reg[4]),
        .I2(temperature_multiplier_out_reg[13]),
        .I3(noise_out_reg[3]),
        .I4(\mult/u2/c_3__3 ),
        .I5(\mult/u3/c_3__0 ),
        .O(x_reg_rep_1));
  LUT4 #(
    .INIT(16'h8000)) 
    spike_carry_i_154__1
       (.I0(spike_carry_i_162__1_n_0),
        .I1(spike_carry_i_174__1_n_0),
        .I2(spike_carry_i_161__1_n_0),
        .I3(spike_carry_i_175__1_n_0),
        .O(x_reg_rep_2));
  LUT6 #(
    .INIT(64'hFFFFC84CFFFFC8C8)) 
    spike_carry_i_159__1
       (.I0(\mult/biased_sum_exponent [2]),
        .I1(\noise_out_reg_reg[12] ),
        .I2(\mult/biased_sum_exponent [1]),
        .I3(\mult/sum_exponent ),
        .I4(spike_carry_i_146__1_n_0),
        .I5(P[2]),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_15__1
       (.I0(result0[4]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry_i_42__1_n_0),
        .I3(spike_carry_i_43__1_n_0),
        .I4(spike_carry_i_44__1_n_0),
        .I5(spike_carry_i_45__1_n_0),
        .O(spike_carry_i_15__1_n_0));
  LUT6 #(
    .INIT(64'h000000000660FFFF)) 
    spike_carry_i_160__1
       (.I0(P[2]),
        .I1(\mult/sum_exponent ),
        .I2(\mult/biased_sum_exponent [3]),
        .I3(spike_carry_i_148__1_n_0),
        .I4(\noise_out_reg_reg[12] ),
        .I5(spike_carry_i_146__1_n_0),
        .O(tmp_2));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_161__1
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(DOADO[9]),
        .I3(DOADO[8]),
        .O(spike_carry_i_161__1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_162__1
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .I2(DOADO[5]),
        .I3(DOADO[4]),
        .O(spike_carry_i_162__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h69FF)) 
    spike_carry_i_168__1
       (.I0(temperature_multiplier_out_reg[13]),
        .I1(\mult/u2/c_3__3 ),
        .I2(noise_out_reg[3]),
        .I3(\mult/u3/c_3__0 ),
        .O(spike_carry_i_168__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    spike_carry_i_169__1
       (.I0(temperature_multiplier_out_reg[13]),
        .I1(noise_out_reg[3]),
        .I2(\mult/u2/c_3__3 ),
        .O(\mult/u2/c_4__3 ));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFFFF)) 
    spike_carry_i_170__1
       (.I0(\mult/biased_sum_exponent [2]),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(noise_out_reg[0]),
        .I3(P[2]),
        .I4(\mult/biased_sum_exponent [1]),
        .I5(\mult/biased_sum_exponent [3]),
        .O(spike_carry_i_170__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000117)) 
    spike_carry_i_171__1
       (.I0(\mult/u3/c_3__0 ),
        .I1(\mult/u2/c_3__3 ),
        .I2(noise_out_reg[3]),
        .I3(temperature_multiplier_out_reg[13]),
        .I4(noise_out_reg[4]),
        .I5(temperature_multiplier_out_reg[14]),
        .O(\mult/underflow__1 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    spike_carry_i_172__1
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg[2]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg[0]),
        .I4(noise_out_reg[1]),
        .I5(temperature_multiplier_out_reg[11]),
        .O(\mult/u3/c_3__0 ));
  LUT6 #(
    .INIT(64'hEEE8E8E8E8888888)) 
    spike_carry_i_173__1
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg[2]),
        .I2(temperature_multiplier_out_reg[11]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(noise_out_reg[0]),
        .I5(noise_out_reg[1]),
        .O(\mult/u2/c_3__3 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_174__1
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .I2(DOADO[3]),
        .I3(DOADO[2]),
        .O(spike_carry_i_174__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_175__1
       (.I0(temperature_multiplier_out_reg[15]),
        .I1(temperature_multiplier_out_reg[14]),
        .I2(temperature_multiplier_out_reg[13]),
        .I3(temperature_multiplier_out_reg[12]),
        .O(spike_carry_i_175__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_178__1
       (.I0(temperature_multiplier_out_reg[10]),
        .I1(noise_out_reg[0]),
        .O(\mult/sum_exponent ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    spike_carry_i_17__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry_i_47__1_n_0),
        .I2(spike_carry_i_48__1_n_0),
        .I3(spike_carry_i_49__1_n_0),
        .I4(spike_carry_i_50__1_n_0),
        .I5(spike_carry_i_44__1_n_0),
        .O(spike_carry_i_17__1_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_19__1
       (.I0(result0[2]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry_i_51__1_n_0),
        .I3(spike_carry_i_52__1_n_0),
        .I4(spike_carry_i_44__1_n_0),
        .I5(spike_carry_i_53__1_n_0),
        .O(spike_carry_i_19__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_1__1
       (.I0(spike_carry_i_9__1_n_0),
        .I1(membrane_compare__14[2]),
        .I2(result0[7]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry_i_13__1_n_0),
        .I5(spike_carry_3),
        .O(DI[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_21__1
       (.CI(1'b0),
        .CO({spike_carry_i_21__1_n_0,spike_carry_i_21__1_n_1,spike_carry_i_21__1_n_2,spike_carry_i_21__1_n_3}),
        .CYINIT(spike_carry_i_54__1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[4:1]),
        .S({spike_carry_i_55__1_n_0,spike_carry_i_56__1_n_0,spike_carry_i_57__1_n_0,spike_carry_i_58__1_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    spike_carry_i_22__1
       (.I0(spike_carry_i_59__1_n_0),
        .I1(spike_carry_i_60__1_n_0),
        .I2(spike_carry_i_61__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry_i_40__1_n_0),
        .I5(spike_carry_i_27__0_n_0),
        .O(spike_carry_i_22__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    spike_carry_i_24__1
       (.I0(spike_carry_i_44__1_n_0),
        .I1(spike_carry_i_62__0_n_0),
        .I2(spike_carry_i_27__0_n_0),
        .I3(spike_carry_i_63__1_n_0),
        .I4(spike_carry_i_64__1_n_0),
        .I5(spike_carry_i_65__1_n_0),
        .O(spike_carry_i_24__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_25__1
       (.I0(spike_carry_i_61__1_n_0),
        .I1(spike_carry_i_66__1_n_0),
        .I2(spike_carry_i_67__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry_i_68__1_n_0),
        .I5(spike_carry_i_69__1_n_0),
        .O(spike_carry_i_25__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h2228)) 
    spike_carry_i_27__0
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_27__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_28__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_45__1_0),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_51__1_2),
        .I4(spike_carry_i_78__1_n_0),
        .I5(spike_carry_i_79__0_n_0),
        .O(spike_carry_i_28__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_29__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry_i_76__0_n_0),
        .I2(spike_carry_i_51__1_0),
        .I3(spike_carry_i_24__1_1),
        .I4(spike_carry_i_74__0_n_0),
        .I5(spike_carry_i_82__0_n_0),
        .O(spike_carry_i_29__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_2__1
       (.I0(spike_carry_i_15__1_n_0),
        .I1(membrane_compare__14[1]),
        .I2(result0[5]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry_i_17__1_n_0),
        .I5(spike_carry_2),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    spike_carry_i_30__1
       (.I0(spike_carry_i_9__1_0),
        .I1(spike_carry_i_84__1_n_0),
        .I2(spike_carry_i_85__0_n_0),
        .I3(spike_carry_i_61__1_n_0),
        .I4(spike_carry_i_86__0_n_0),
        .I5(spike_carry_i_68__1_n_0),
        .O(spike_carry_i_30__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000070707)) 
    spike_carry_i_32__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry__0_i_38__1_n_0),
        .I2(spike_carry__0_i_53__1_n_0),
        .I3(spike_carry_i_27__0_n_0),
        .I4(spike_carry_i_91__1_n_0),
        .I5(spike_carry_i_92__1_n_0),
        .O(spike_carry_i_32__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_33__1
       (.I0(spike_carry_i_13__1_n_0),
        .O(spike_carry_i_33__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry_i_34__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry_i_28__1_n_0),
        .I2(spike_carry_i_29__1_n_0),
        .I3(spike_carry_i_93__1_n_0),
        .I4(spike_carry_i_94__1_n_0),
        .I5(spike_carry_i_44__1_n_0),
        .O(spike_carry_i_34__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_35__1
       (.I0(spike_carry_i_17__1_n_0),
        .O(spike_carry_i_35__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    spike_carry_i_36__1
       (.I0(spike_carry_i_95__1_n_0),
        .I1(spike_carry_i_96__1_n_0),
        .I2(spike_carry_i_121__1_0),
        .I3(spike_carry_i_121__1_1),
        .O(spike_carry_i_36__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_37__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_52__1_0),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_64__1_2),
        .I4(spike_carry_i_101__1_n_0),
        .I5(spike_carry_i_102__0_n_0),
        .O(spike_carry_i_37__1_n_0));
  LUT6 #(
    .INIT(64'h8080808080FF8080)) 
    spike_carry_i_38__1
       (.I0(spike_carry_i_103__1_n_0),
        .I1(spike_carry_i_104__0_n_0),
        .I2(spike_carry_i_61__1_n_0),
        .I3(spike_carry_i_84__1_n_0),
        .I4(spike_carry_i_24__1_0),
        .I5(spike_carry_i_106__1_n_0),
        .O(spike_carry_i_38__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_39__1
       (.I0(spike_carry_i_13__1_0),
        .I1(spike_carry_i_104__0_n_0),
        .I2(spike_carry_i_68__1_n_0),
        .O(spike_carry_i_39__1_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_3__1
       (.I0(spike_carry_i_19__1_n_0),
        .I1(membrane_compare__14[0]),
        .I2(result0[3]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry_i_22__1_n_0),
        .I5(spike_carry_1),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFF0F0F0FEFEFAFA)) 
    spike_carry_i_40__1
       (.I0(spike_carry_i_108__1_n_0),
        .I1(spike_carry_i_64__1_1),
        .I2(spike_carry_i_110__0_n_0),
        .I3(spike_carry_i_64__1_3),
        .I4(spike_carry_i_112__0_n_0),
        .I5(\noise_out_reg_reg[10]_0 ),
        .O(spike_carry_i_40__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    spike_carry_i_41__0
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_41__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry_i_42__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry_i_114__0_n_0),
        .I2(spike_carry_i_115__1_n_0),
        .I3(spike_carry_i_45__1_0),
        .I4(spike_carry_i_76__0_n_0),
        .I5(spike_carry_i_116__0_n_0),
        .O(spike_carry_i_42__1_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_43__1
       (.I0(spike_carry_i_61__1_n_0),
        .I1(\noise_out_reg_reg[10] ),
        .I2(spike_carry_i_118__0_n_0),
        .I3(spike_carry_i_64__1_0),
        .I4(spike_carry_i_120__0_n_0),
        .O(spike_carry_i_43__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry_i_44__1
       (.I0(spike_carry_i_24__1_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_44__1_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    spike_carry_i_45__1
       (.I0(spike_carry_i_41__0_n_0),
        .I1(spike_carry_i_62__0_n_0),
        .I2(spike_carry_i_122__0_n_0),
        .I3(tmp),
        .I4(spike_carry_i_124__1_n_0),
        .I5(spike_carry_i_68__1_n_0),
        .O(spike_carry_i_45__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_47__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_64__1_3),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_52__1_0),
        .I4(spike_carry_i_130__1_n_0),
        .I5(spike_carry_i_131__0_n_0),
        .O(spike_carry_i_47__1_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_48__1
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64__1_1),
        .I2(spike_carry_i_24__1_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_41__0_n_0),
        .O(spike_carry_i_48__1_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_49__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(\noise_out_reg_reg[10] ),
        .I2(spike_carry_i_118__0_n_0),
        .I3(spike_carry_i_64__1_0),
        .I4(spike_carry_i_120__0_n_0),
        .O(spike_carry_i_49__1_n_0));
  LUT6 #(
    .INIT(64'h040004444F444FFF)) 
    spike_carry_i_4__1
       (.I0(spike_carry_i_24__1_n_0),
        .I1(spike_carry_0),
        .I2(result0[1]),
        .I3(spike_carry_i_12__1_n_0),
        .I4(spike_carry_i_25__1_n_0),
        .I5(spike_carry),
        .O(DI[0]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_50__1
       (.I0(spike_carry_i_61__1_n_0),
        .I1(spike_carry_i_86__0_n_0),
        .O(spike_carry_i_50__1_n_0));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    spike_carry_i_51__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(spike_carry_i_133__0_n_0),
        .I2(spike_carry_i_45__1_0),
        .I3(spike_carry_i_134__0_n_0),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_135__0_n_0),
        .O(spike_carry_i_51__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_52__1
       (.I0(spike_carry_i_61__1_n_0),
        .I1(spike_carry_i_118__0_n_0),
        .I2(spike_carry_i_13__1_0),
        .I3(spike_carry_i_136__0_n_0),
        .O(spike_carry_i_52__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_53__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry_i_76__0_n_0),
        .I2(spike_carry_i_51__1_0),
        .I3(spike_carry_i_24__1_1),
        .I4(spike_carry_i_74__0_n_0),
        .I5(spike_carry_i_82__0_n_0),
        .O(spike_carry_i_53__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_54__1
       (.I0(spike_carry_i_24__1_n_0),
        .O(spike_carry_i_54__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike_carry_i_55__1
       (.I0(spike_carry_i_27__0_n_0),
        .I1(spike_carry__0_i_38__1_n_0),
        .I2(spike_carry_i_21__1_1),
        .I3(spike_carry_i_61__1_n_0),
        .I4(spike_carry_i_44__1_n_0),
        .I5(spike_carry_i_45__1_n_0),
        .O(spike_carry_i_55__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_56__1
       (.I0(spike_carry_i_22__1_n_0),
        .O(spike_carry_i_56__1_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry_i_57__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(spike_carry_i_66__1_n_0),
        .I2(spike_carry_i_52__1_n_0),
        .I3(spike_carry_i_44__1_n_0),
        .I4(spike_carry_i_21__1_0),
        .I5(spike_carry_i_27__0_n_0),
        .O(spike_carry_i_57__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_58__1
       (.I0(spike_carry_i_25__1_n_0),
        .O(spike_carry_i_58__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_59__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(spike_carry_i_118__0_n_0),
        .I2(spike_carry_i_13__1_0),
        .I3(spike_carry_i_136__0_n_0),
        .O(spike_carry_i_59__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_5__1
       (.I0(spike_carry_3),
        .I1(spike_carry_i_13__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[7]),
        .I4(spike_carry_i_9__1_n_0),
        .I5(membrane_compare__14[2]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hFF00E400AA00E400)) 
    spike_carry_i_60__1
       (.I0(tmp_1),
        .I1(spike_carry_i_45__1_0),
        .I2(spike_carry_i_51__1_1),
        .I3(tmp),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_51__1_2),
        .O(spike_carry_i_60__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h000002AA)) 
    spike_carry_i_61__1
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_61__1_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_62__0
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_24__1_1),
        .O(spike_carry_i_62__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    spike_carry_i_63__1
       (.I0(spike_carry_i_141__1_n_0),
        .I1(spike_carry_i_135__0_n_0),
        .I2(\noise_out_reg_reg[10] ),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_63__1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
    spike_carry_i_64__1
       (.I0(spike_carry_i_142__1_n_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(spike_carry_i_143__0_n_0),
        .I3(spike_carry_i_52__1_0),
        .I4(spike_carry_i_144__0_n_0),
        .I5(spike_carry_i_145__0_n_0),
        .O(spike_carry_i_64__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h55578000)) 
    spike_carry_i_65__1
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .O(spike_carry_i_65__1_n_0));
  LUT6 #(
    .INIT(64'hFC00AAAF0C00AAAF)) 
    spike_carry_i_66__1
       (.I0(spike_carry_i_135__0_n_0),
        .I1(spike_carry_i_45__1_0),
        .I2(tmp_1),
        .I3(tmp),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_51__1_1),
        .O(spike_carry_i_66__1_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_67__1
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64__1_1),
        .I2(spike_carry_i_24__1_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_27__0_n_0),
        .O(spike_carry_i_67__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h40AA0000)) 
    spike_carry_i_68__1
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_68__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    spike_carry_i_69__1
       (.I0(\noise_out_reg_reg[10] ),
        .I1(spike_carry_i_118__0_n_0),
        .I2(spike_carry_i_52__1_0),
        .I3(spike_carry_i_144__0_n_0),
        .I4(spike_carry_i_145__0_n_0),
        .O(spike_carry_i_69__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_6__1
       (.I0(spike_carry_2),
        .I1(spike_carry_i_17__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[5]),
        .I4(spike_carry_i_15__1_n_0),
        .I5(membrane_compare__14[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hEAAE)) 
    spike_carry_i_70__1
       (.I0(spike_carry_i_146__1_n_0),
        .I1(\noise_out_reg_reg[12] ),
        .I2(spike_carry_i_148__1_n_0),
        .I3(\mult/biased_sum_exponent [3]),
        .O(sel0[3]));
  LUT4 #(
    .INIT(16'hAEEA)) 
    spike_carry_i_71__1
       (.I0(spike_carry_i_146__1_n_0),
        .I1(\noise_out_reg_reg[12] ),
        .I2(\mult/biased_sum_exponent [2]),
        .I3(spike_carry_i_151__1_n_0),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hDFFDECCECCCCCCCC)) 
    spike_carry_i_72__1
       (.I0(P[2]),
        .I1(spike_carry_i_146__1_n_0),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg[0]),
        .I4(\mult/biased_sum_exponent [1]),
        .I5(\noise_out_reg_reg[12] ),
        .O(sel0[1]));
  LUT5 #(
    .INIT(32'hBEAAEBAA)) 
    spike_carry_i_73__1
       (.I0(spike_carry_i_146__1_n_0),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(noise_out_reg[0]),
        .I3(\noise_out_reg_reg[12] ),
        .I4(P[2]),
        .O(\noise_out_reg_reg[14] [0]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    spike_carry_i_74__0
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_74__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0900)) 
    spike_carry_i_76__0
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_76__0_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_78__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_64__1_3),
        .O(spike_carry_i_78__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_79__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_52__1_0),
        .O(spike_carry_i_79__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_7__1
       (.I0(spike_carry_1),
        .I1(spike_carry_i_22__1_n_0),
        .I2(spike_carry_i_12__1_n_0),
        .I3(result0[3]),
        .I4(spike_carry_i_19__1_n_0),
        .I5(membrane_compare__14[0]),
        .O(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_82__0
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64__1_1),
        .O(spike_carry_i_82__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    spike_carry_i_84__1
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike_carry_i_84__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h22400040)) 
    spike_carry_i_85__0
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(spike_carry_i_64__1_2),
        .I3(sel0[1]),
        .I4(spike_carry_i_64__1_0),
        .O(spike_carry_i_85__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00C00AF0)) 
    spike_carry_i_86__0
       (.I0(spike_carry_i_51__1_2),
        .I1(spike_carry_i_51__1_1),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_86__0_n_0));
  LUT6 #(
    .INIT(64'h202A8A8010154540)) 
    spike_carry_i_8__1
       (.I0(spike_carry_i_24__1_n_0),
        .I1(result0[1]),
        .I2(spike_carry_i_12__1_n_0),
        .I3(spike_carry_i_25__1_n_0),
        .I4(spike_carry),
        .I5(spike_carry_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_91__1
       (.I0(spike_carry_i_74__0_n_0),
        .I1(spike_carry_i_51__1_2),
        .I2(spike_carry_i_76__0_n_0),
        .I3(spike_carry_i_51__1_1),
        .I4(spike_carry__0_i_69__1_n_0),
        .I5(spike_carry__0_i_68__0_n_0),
        .O(spike_carry_i_91__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    spike_carry_i_92__1
       (.I0(spike_carry_i_24__1_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry_i_92__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_93__1
       (.I0(spike_carry_i_68__1_n_0),
        .I1(spike_carry_i_86__0_n_0),
        .O(spike_carry_i_93__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_94__1
       (.I0(spike_carry_i_13__1_0),
        .I1(spike_carry_i_104__0_n_0),
        .I2(spike_carry_i_61__1_n_0),
        .O(spike_carry_i_94__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_95__1
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(temperature_multiplier_out_reg[13]),
        .I2(temperature_multiplier_out_reg[14]),
        .I3(temperature_multiplier_out_reg[15]),
        .I4(spike_carry_i_161__1_n_0),
        .O(spike_carry_i_95__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_96__1
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .I2(DOADO[0]),
        .I3(DOADO[1]),
        .I4(spike_carry_i_162__1_n_0),
        .O(spike_carry_i_96__1_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry_i_9__1
       (.I0(result0[6]),
        .I1(spike_carry_i_12__1_n_0),
        .I2(spike_carry_i_27__0_n_0),
        .I3(spike_carry_i_28__1_n_0),
        .I4(spike_carry_i_29__1_n_0),
        .I5(spike_carry_i_30__1_n_0),
        .O(spike_carry_i_9__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \unit_number_reg[1]_i_1 
       (.I0(spikes),
        .I1(Q[0]),
        .I2(CO),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(spiked1__0),
        .O(offset1));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__1 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1__1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1__1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1__1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(\x[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_1__1 
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(\x[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x[5]_i_1__1 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[5]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hC1)) 
    \x[6]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(reset_flipping));
  LUT6 #(
    .INIT(64'hF700FF00FF00FF00)) 
    \x[6]_i_2 
       (.I0(x_reg[5]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_9_n_0),
        .I3(decrease_temp),
        .I4(x_reg[3]),
        .I5(x_reg[6]),
        .O(E));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \x[6]_i_3__0 
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_9_n_0),
        .I3(x_reg[4]),
        .I4(x_reg[6]),
        .O(\x[6]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[0]_i_1__1_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[1]_i_1__1_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[2]_i_1__1_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[3]_i_1__1_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[4]_i_1__1_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[5]_i_1__1_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\x[6]_i_3__0_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "unit2/neuron_ensemble_inst/flipping_unit_tb/temperature_module_inst/x_reg_rep" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h43CA441D446644BC4521459C463246EF47C1487F495F4AB14C784EC9533363D0),
    .INIT_01(256'h40364053406E408F40B340D9410341304161418F41C942094250429E42F64359),
    .INIT_02(256'h3E1D3E373E523E6A3E873EA53EC53EE63F093F2E3F503F783FA33FD14001401A),
    .INIT_03(256'h3CF73D053D143D233D313D413D523D633D753D883D9B3DAD3DC23DD73DEE3E05),
    .INIT_04(256'h3C443C4D3C573C603C6A3C733C7E3C893C943C9F3CAB3CB73CC23CCE3CDB3CE9),
    .INIT_05(256'h3B973BA43BB13BBF3BCD3BDB3BE73BF63C023C0A3C123C1A3C223C2A3C323C3B),
    .INIT_06(256'h3AE83AF23AFC3B063B103B1A3B253B2E3B393B443B503B5B3B673B733B7E3B8A),
    .INIT_07(256'h3A643A6A3A723A7A3A823A8A3A923A9A3AA13AAA3AB23ABB3AC43ACD3AD63ADF),
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
    x_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,1'b0,x_reg_rep_i_2__0_n_0,x_reg_rep_i_3__0_n_0,x_reg_rep_i_4__0_n_0,x_reg_rep_i_5__0_n_0,x_reg_rep_i_6__0_n_0,x_reg_rep_i_7__0_n_0,x_reg_rep_i_8__0_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({temperature_multiplier_out_reg,DOADO}),
        .DOBDO(NLW_x_reg_rep_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_x_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_x_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(x_reg_rep_3),
        .ENBWREN(1'b0),
        .REGCEAREGCE(flipping_CE),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    x_reg_rep_i_2__0
       (.I0(x_reg[6]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_9_n_0),
        .I3(x_reg[3]),
        .I4(x_reg[5]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    x_reg_rep_i_3__0
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_9_n_0),
        .I3(x_reg[4]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    x_reg_rep_i_4__0
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    x_reg_rep_i_5__0
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h006A6A6A006A6A00)) 
    x_reg_rep_i_6__0
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(x_reg_rep_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_7__0
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(x_reg_rep_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1514)) 
    x_reg_rep_i_8__0
       (.I0(x_reg[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(x_reg_rep_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    x_reg_rep_i_9
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(x_reg_rep_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module temperature_module_15
   (DOADO,
    DOBDO,
    flipping_CE_4,
    E,
    S,
    DI,
    x_reg_rep_0,
    \selected_membrane_reg_reg[14] ,
    \noise_out_reg_reg[14] ,
    \noise_out_reg_reg[10] ,
    tmp,
    \noise_out_reg_reg[10]_0 ,
    \noise_out_reg_reg[14]_0 ,
    tmp_0,
    \noise_out_reg_reg[12] ,
    tmp_1,
    tmp_2,
    x_reg_rep_1,
    x_reg_rep_2,
    \selected_membrane_reg_reg[7] ,
    \selected_membrane_reg_reg[6] ,
    x_reg_rep_3,
    \selected_membrane_reg_reg[14]_0 ,
    \noise_out_reg_reg[14]_1 ,
    x_reg_rep_4,
    \noise_out_reg_reg[10]_1 ,
    tmp_3,
    \noise_out_reg_reg[10]_2 ,
    \noise_out_reg_reg[14]_2 ,
    tmp_4,
    \noise_out_reg_reg[12]_0 ,
    tmp_5,
    tmp_6,
    x_reg_rep_5,
    x_reg_rep_6,
    D,
    \current_state_reg[1] ,
    spikes,
    clk_IBUF_BUFG,
    x_reg_rep_7,
    x_reg_rep_8,
    flipping_CE,
    ADDRBWRADDR,
    Q,
    decrease_temp,
    spike_carry,
    spike_carry_0,
    spike_carry__0,
    membrane_compare__14_0,
    spike_carry_i_24_0,
    spike_carry_i_64_0,
    spike_carry_1,
    spike_carry_i_13_0,
    spike_carry_2,
    spike_carry_3,
    spike_carry_i_9_0,
    spike_carry_i_45_0,
    spike_carry__0_0,
    spike_carry__0_1,
    spike_carry_i_64_1,
    spike_carry_i_24_1,
    spike_carry_i_51_0,
    spike_carry__0_i_9_0,
    spike_carry_i_64_2,
    spike_carry_i_51_1,
    spike_carry_i_51_2,
    P,
    spike_carry_i_52_0,
    spike_carry_i_64_3,
    noise_out_reg_0,
    spike_carry_i_121_0,
    spike_carry_i_121_1,
    spike_carry_4,
    spike_carry_5,
    spike_carry__0_2,
    membrane_compare__14,
    spike_carry__0_i_25__0_0,
    spike_carry__0_i_55__0_0,
    spike_carry_6,
    spike_carry_i_19__0_0,
    spike_carry_7,
    spike_carry_8,
    spike_carry_i_9__0_0,
    spike_carry_i_19__0_1,
    spike_carry__0_3,
    spike_carry__0_4,
    spike_carry_i_25__0_0,
    spike_carry_i_25__0_1,
    spike_carry_i_19__0_2,
    spike_carry__0_i_18__0_0,
    spike_carry__0_i_18__0_1,
    spike_carry__0_i_21__0_0,
    spike_carry__0_i_18__0_2,
    spike_carry_i_83__0,
    spike_carry_i_24__0_0,
    spike_carry__0_i_25__0_1,
    spike_carry__0_i_83__0_0,
    noise_out_reg,
    spike_carry_i_159__0_0,
    spike_carry_i_159__0_1,
    \FSM_onehot_current_state_reg[2] ,
    CO,
    \FSM_onehot_current_state_reg[2]_0 ,
    spike_carry_i_21_0,
    spike_carry_i_21_1,
    spike_carry__0_i_12_0,
    spike_carry_i_21__0_0,
    spike_carry_i_21__0_1,
    spike_carry__0_i_12__0_0);
  output [9:0]DOADO;
  output [11:0]DOBDO;
  output flipping_CE_4;
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]x_reg_rep_0;
  output [3:0]\selected_membrane_reg_reg[14] ;
  output [1:0]\noise_out_reg_reg[14] ;
  output \noise_out_reg_reg[10] ;
  output tmp;
  output \noise_out_reg_reg[10]_0 ;
  output \noise_out_reg_reg[14]_0 ;
  output tmp_0;
  output \noise_out_reg_reg[12] ;
  output tmp_1;
  output tmp_2;
  output x_reg_rep_1;
  output x_reg_rep_2;
  output [3:0]\selected_membrane_reg_reg[7] ;
  output [3:0]\selected_membrane_reg_reg[6] ;
  output [3:0]x_reg_rep_3;
  output [3:0]\selected_membrane_reg_reg[14]_0 ;
  output \noise_out_reg_reg[14]_1 ;
  output x_reg_rep_4;
  output \noise_out_reg_reg[10]_1 ;
  output tmp_3;
  output \noise_out_reg_reg[10]_2 ;
  output \noise_out_reg_reg[14]_2 ;
  output tmp_4;
  output \noise_out_reg_reg[12]_0 ;
  output tmp_5;
  output tmp_6;
  output x_reg_rep_5;
  output x_reg_rep_6;
  output [0:0]D;
  output [0:0]\current_state_reg[1] ;
  output [0:0]spikes;
  input clk_IBUF_BUFG;
  input x_reg_rep_7;
  input x_reg_rep_8;
  input flipping_CE;
  input [6:0]ADDRBWRADDR;
  input [2:0]Q;
  input decrease_temp;
  input spike_carry;
  input [0:0]spike_carry_0;
  input spike_carry__0;
  input [7:0]membrane_compare__14_0;
  input spike_carry_i_24_0;
  input spike_carry_i_64_0;
  input spike_carry_1;
  input spike_carry_i_13_0;
  input spike_carry_2;
  input spike_carry_3;
  input spike_carry_i_9_0;
  input spike_carry_i_45_0;
  input spike_carry__0_0;
  input spike_carry__0_1;
  input spike_carry_i_64_1;
  input spike_carry_i_24_1;
  input spike_carry_i_51_0;
  input spike_carry__0_i_9_0;
  input spike_carry_i_64_2;
  input spike_carry_i_51_1;
  input spike_carry_i_51_2;
  input [2:0]P;
  input spike_carry_i_52_0;
  input spike_carry_i_64_3;
  input [5:0]noise_out_reg_0;
  input spike_carry_i_121_0;
  input spike_carry_i_121_1;
  input spike_carry_4;
  input [0:0]spike_carry_5;
  input spike_carry__0_2;
  input [7:0]membrane_compare__14;
  input spike_carry__0_i_25__0_0;
  input spike_carry__0_i_55__0_0;
  input spike_carry_6;
  input spike_carry_i_19__0_0;
  input spike_carry_7;
  input spike_carry_8;
  input spike_carry_i_9__0_0;
  input spike_carry_i_19__0_1;
  input spike_carry__0_3;
  input spike_carry__0_4;
  input spike_carry_i_25__0_0;
  input spike_carry_i_25__0_1;
  input spike_carry_i_19__0_2;
  input spike_carry__0_i_18__0_0;
  input spike_carry__0_i_18__0_1;
  input spike_carry__0_i_21__0_0;
  input spike_carry__0_i_18__0_2;
  input [2:0]spike_carry_i_83__0;
  input spike_carry_i_24__0_0;
  input spike_carry__0_i_25__0_1;
  input spike_carry__0_i_83__0_0;
  input [5:0]noise_out_reg;
  input spike_carry_i_159__0_0;
  input spike_carry_i_159__0_1;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input [0:0]CO;
  input \FSM_onehot_current_state_reg[2]_0 ;
  input spike_carry_i_21_0;
  input spike_carry_i_21_1;
  input spike_carry__0_i_12_0;
  input spike_carry_i_21__0_0;
  input spike_carry_i_21__0_1;
  input spike_carry__0_i_12__0_0;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [9:0]DOADO;
  wire [11:0]DOBDO;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [2:0]P;
  wire [2:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [0:0]\current_state_reg[1] ;
  wire decrease_temp;
  wire flipping_CE;
  wire flipping_CE_4;
  wire [7:0]membrane_compare__14;
  wire [7:0]membrane_compare__14_0;
  wire [3:1]\mult/biased_sum_exponent ;
  wire [0:0]\mult/sum_exponent ;
  wire \mult/u2/c_3__3 ;
  wire \mult/u2/c_4__3 ;
  wire \mult/u3/c_3__0 ;
  wire \mult/underflow__1 ;
  wire [5:0]noise_out_reg;
  wire [5:0]noise_out_reg_0;
  wire \noise_out_reg_reg[10] ;
  wire \noise_out_reg_reg[10]_0 ;
  wire \noise_out_reg_reg[10]_1 ;
  wire \noise_out_reg_reg[10]_2 ;
  wire \noise_out_reg_reg[12] ;
  wire \noise_out_reg_reg[12]_0 ;
  wire [1:0]\noise_out_reg_reg[14] ;
  wire \noise_out_reg_reg[14]_0 ;
  wire \noise_out_reg_reg[14]_1 ;
  wire \noise_out_reg_reg[14]_2 ;
  wire reset_flipping;
  wire [15:1]result0;
  wire [3:1]sel0;
  wire [3:0]\selected_membrane_reg_reg[14] ;
  wire [3:0]\selected_membrane_reg_reg[14]_0 ;
  wire [3:0]\selected_membrane_reg_reg[6] ;
  wire [3:0]\selected_membrane_reg_reg[7] ;
  wire spike_carry;
  wire [0:0]spike_carry_0;
  wire spike_carry_1;
  wire spike_carry_2;
  wire spike_carry_3;
  wire spike_carry_4;
  wire [0:0]spike_carry_5;
  wire spike_carry_6;
  wire spike_carry_7;
  wire spike_carry_8;
  wire spike_carry__0;
  wire spike_carry__0_0;
  wire spike_carry__0_1;
  wire spike_carry__0_2;
  wire spike_carry__0_3;
  wire spike_carry__0_4;
  wire spike_carry__0_i_12_0;
  wire spike_carry__0_i_12__0_0;
  wire spike_carry__0_i_12__0_n_2;
  wire spike_carry__0_i_12__0_n_3;
  wire spike_carry__0_i_12_n_2;
  wire spike_carry__0_i_12_n_3;
  wire spike_carry__0_i_13__0_n_0;
  wire spike_carry__0_i_13_n_0;
  wire spike_carry__0_i_14__0_n_0;
  wire spike_carry__0_i_14_n_0;
  wire spike_carry__0_i_16__0_n_0;
  wire spike_carry__0_i_16_n_0;
  wire spike_carry__0_i_18__0_0;
  wire spike_carry__0_i_18__0_1;
  wire spike_carry__0_i_18__0_2;
  wire spike_carry__0_i_18__0_n_0;
  wire spike_carry__0_i_18_n_0;
  wire spike_carry__0_i_20__0_n_0;
  wire spike_carry__0_i_20__0_n_1;
  wire spike_carry__0_i_20__0_n_2;
  wire spike_carry__0_i_20__0_n_3;
  wire spike_carry__0_i_20_n_0;
  wire spike_carry__0_i_20_n_1;
  wire spike_carry__0_i_20_n_2;
  wire spike_carry__0_i_20_n_3;
  wire spike_carry__0_i_21__0_0;
  wire spike_carry__0_i_21__0_n_0;
  wire spike_carry__0_i_21_n_0;
  wire spike_carry__0_i_23__0_n_0;
  wire spike_carry__0_i_23_n_0;
  wire spike_carry__0_i_25__0_0;
  wire spike_carry__0_i_25__0_1;
  wire spike_carry__0_i_25__0_n_0;
  wire spike_carry__0_i_25_n_0;
  wire spike_carry__0_i_27__0_n_0;
  wire spike_carry__0_i_27_n_0;
  wire spike_carry__0_i_28__0_n_0;
  wire spike_carry__0_i_28_n_0;
  wire spike_carry__0_i_29__0_n_0;
  wire spike_carry__0_i_29_n_0;
  wire spike_carry__0_i_31__0_n_0;
  wire spike_carry__0_i_31_n_0;
  wire spike_carry__0_i_32__0_n_0;
  wire spike_carry__0_i_32_n_0;
  wire spike_carry__0_i_33__0_n_0;
  wire spike_carry__0_i_33_n_0;
  wire spike_carry__0_i_34__0_n_0;
  wire spike_carry__0_i_34_n_0;
  wire spike_carry__0_i_35__0_n_0;
  wire spike_carry__0_i_35_n_0;
  wire spike_carry__0_i_36__0_n_0;
  wire spike_carry__0_i_36_n_0;
  wire spike_carry__0_i_37__0_n_0;
  wire spike_carry__0_i_37_n_0;
  wire spike_carry__0_i_38__0_n_0;
  wire spike_carry__0_i_38_n_0;
  wire spike_carry__0_i_39__0_n_0;
  wire spike_carry__0_i_39_n_0;
  wire spike_carry__0_i_41__0_n_0;
  wire spike_carry__0_i_41_n_0;
  wire spike_carry__0_i_42__0_n_0;
  wire spike_carry__0_i_42_n_0;
  wire spike_carry__0_i_43__0_n_0;
  wire spike_carry__0_i_43_n_0;
  wire spike_carry__0_i_44__0_n_0;
  wire spike_carry__0_i_44_n_0;
  wire spike_carry__0_i_45__0_n_0;
  wire spike_carry__0_i_45_n_0;
  wire spike_carry__0_i_46__0_n_0;
  wire spike_carry__0_i_46_n_0;
  wire spike_carry__0_i_47__0_n_0;
  wire spike_carry__0_i_47_n_0;
  wire spike_carry__0_i_48__0_n_0;
  wire spike_carry__0_i_48_n_0;
  wire spike_carry__0_i_49__0_n_0;
  wire spike_carry__0_i_49_n_0;
  wire spike_carry__0_i_50__0_n_0;
  wire spike_carry__0_i_50_n_0;
  wire spike_carry__0_i_51__0_n_0;
  wire spike_carry__0_i_51_n_0;
  wire spike_carry__0_i_52__0_n_0;
  wire spike_carry__0_i_52_n_0;
  wire spike_carry__0_i_53__0_n_0;
  wire spike_carry__0_i_53_n_0;
  wire spike_carry__0_i_54__0_n_0;
  wire spike_carry__0_i_54_n_0;
  wire spike_carry__0_i_55__0_0;
  wire spike_carry__0_i_55__0_n_0;
  wire spike_carry__0_i_55_n_0;
  wire spike_carry__0_i_56__0_n_0;
  wire spike_carry__0_i_56_n_0;
  wire spike_carry__0_i_57__1_n_0;
  wire spike_carry__0_i_57_n_0;
  wire spike_carry__0_i_59__0_n_0;
  wire spike_carry__0_i_59_n_0;
  wire spike_carry__0_i_60__1_n_0;
  wire spike_carry__0_i_60_n_0;
  wire spike_carry__0_i_65__0_n_0;
  wire spike_carry__0_i_65_n_0;
  wire spike_carry__0_i_66__0_n_0;
  wire spike_carry__0_i_66_n_0;
  wire spike_carry__0_i_67__0_n_0;
  wire spike_carry__0_i_67_n_0;
  wire spike_carry__0_i_68__1_n_0;
  wire spike_carry__0_i_68_n_0;
  wire spike_carry__0_i_69__0_n_0;
  wire spike_carry__0_i_69_n_0;
  wire spike_carry__0_i_70__1_n_0;
  wire spike_carry__0_i_70_n_0;
  wire spike_carry__0_i_75__0_n_0;
  wire spike_carry__0_i_75_n_0;
  wire spike_carry__0_i_76__1_n_0;
  wire spike_carry__0_i_76_n_0;
  wire spike_carry__0_i_77__0_n_0;
  wire spike_carry__0_i_77_n_0;
  wire spike_carry__0_i_78__0_n_0;
  wire spike_carry__0_i_78_n_0;
  wire spike_carry__0_i_79__0_n_0;
  wire spike_carry__0_i_79_n_0;
  wire spike_carry__0_i_80__0_n_0;
  wire spike_carry__0_i_80_n_0;
  wire spike_carry__0_i_81__1_n_0;
  wire spike_carry__0_i_81_n_0;
  wire spike_carry__0_i_82__1_n_0;
  wire spike_carry__0_i_82_n_0;
  wire spike_carry__0_i_83__0_0;
  wire spike_carry__0_i_83__0_n_0;
  wire spike_carry__0_i_83_n_0;
  wire spike_carry__0_i_84__1_n_0;
  wire spike_carry__0_i_84_n_0;
  wire spike_carry__0_i_9_0;
  wire spike_carry__0_i_9__0_n_0;
  wire spike_carry__0_i_9_n_0;
  wire spike_carry_i_101__0_n_0;
  wire spike_carry_i_101_n_0;
  wire spike_carry_i_102__1_n_0;
  wire spike_carry_i_102_n_0;
  wire spike_carry_i_103__0_n_0;
  wire spike_carry_i_103_n_0;
  wire spike_carry_i_104__1_n_0;
  wire spike_carry_i_104_n_0;
  wire spike_carry_i_106__0_n_0;
  wire spike_carry_i_106_n_0;
  wire spike_carry_i_108__0_n_0;
  wire spike_carry_i_108_n_0;
  wire spike_carry_i_110__1_n_0;
  wire spike_carry_i_110_n_0;
  wire spike_carry_i_112__1_n_0;
  wire spike_carry_i_112_n_0;
  wire spike_carry_i_114__1_n_0;
  wire spike_carry_i_114_n_0;
  wire spike_carry_i_115__0_n_0;
  wire spike_carry_i_115_n_0;
  wire spike_carry_i_116__1_n_0;
  wire spike_carry_i_116_n_0;
  wire spike_carry_i_118__1_n_0;
  wire spike_carry_i_118_n_0;
  wire spike_carry_i_11__0_n_0;
  wire spike_carry_i_11__0_n_1;
  wire spike_carry_i_11__0_n_2;
  wire spike_carry_i_11__0_n_3;
  wire spike_carry_i_11_n_0;
  wire spike_carry_i_11_n_1;
  wire spike_carry_i_11_n_2;
  wire spike_carry_i_11_n_3;
  wire spike_carry_i_120__1_n_0;
  wire spike_carry_i_120_n_0;
  wire spike_carry_i_121_0;
  wire spike_carry_i_121_1;
  wire spike_carry_i_122__1_n_0;
  wire spike_carry_i_122_n_0;
  wire spike_carry_i_124__0_n_0;
  wire spike_carry_i_124_n_0;
  wire spike_carry_i_12__0_n_0;
  wire spike_carry_i_12_n_0;
  wire spike_carry_i_130__0_n_0;
  wire spike_carry_i_130_n_0;
  wire spike_carry_i_131__1_n_0;
  wire spike_carry_i_131_n_0;
  wire spike_carry_i_133__1_n_0;
  wire spike_carry_i_133_n_0;
  wire spike_carry_i_134__1_n_0;
  wire spike_carry_i_134_n_0;
  wire spike_carry_i_135__1_n_0;
  wire spike_carry_i_135_n_0;
  wire spike_carry_i_136__1_n_0;
  wire spike_carry_i_136_n_0;
  wire spike_carry_i_13_0;
  wire spike_carry_i_13__0_n_0;
  wire spike_carry_i_13_n_0;
  wire spike_carry_i_141__0_n_0;
  wire spike_carry_i_141_n_0;
  wire spike_carry_i_142__0_n_0;
  wire spike_carry_i_142_n_0;
  wire spike_carry_i_143__1_n_0;
  wire spike_carry_i_143_n_0;
  wire spike_carry_i_144__1_n_0;
  wire spike_carry_i_144_n_0;
  wire spike_carry_i_145__1_n_0;
  wire spike_carry_i_145_n_0;
  wire spike_carry_i_146__0_n_0;
  wire spike_carry_i_146_n_0;
  wire spike_carry_i_148__0_n_0;
  wire spike_carry_i_148_n_0;
  wire spike_carry_i_151_n_0;
  wire spike_carry_i_159__0_0;
  wire spike_carry_i_159__0_1;
  wire spike_carry_i_15__0_n_0;
  wire spike_carry_i_15_n_0;
  wire spike_carry_i_161__0_n_0;
  wire spike_carry_i_161_n_0;
  wire spike_carry_i_162__0_n_0;
  wire spike_carry_i_162_n_0;
  wire spike_carry_i_168__0_n_0;
  wire spike_carry_i_168_n_0;
  wire spike_carry_i_170__0_n_0;
  wire spike_carry_i_170_n_0;
  wire spike_carry_i_174__0_n_0;
  wire spike_carry_i_174_n_0;
  wire spike_carry_i_175__0_n_0;
  wire spike_carry_i_175_n_0;
  wire spike_carry_i_17__0_n_0;
  wire spike_carry_i_17_n_0;
  wire spike_carry_i_19__0_0;
  wire spike_carry_i_19__0_1;
  wire spike_carry_i_19__0_2;
  wire spike_carry_i_19__0_n_0;
  wire spike_carry_i_19_n_0;
  wire spike_carry_i_21_0;
  wire spike_carry_i_21_1;
  wire spike_carry_i_21__0_0;
  wire spike_carry_i_21__0_1;
  wire spike_carry_i_21__0_n_0;
  wire spike_carry_i_21__0_n_1;
  wire spike_carry_i_21__0_n_2;
  wire spike_carry_i_21__0_n_3;
  wire spike_carry_i_21_n_0;
  wire spike_carry_i_21_n_1;
  wire spike_carry_i_21_n_2;
  wire spike_carry_i_21_n_3;
  wire spike_carry_i_22__0_n_0;
  wire spike_carry_i_22_n_0;
  wire spike_carry_i_24_0;
  wire spike_carry_i_24_1;
  wire spike_carry_i_24__0_0;
  wire spike_carry_i_24__0_n_0;
  wire spike_carry_i_24_n_0;
  wire spike_carry_i_25__0_0;
  wire spike_carry_i_25__0_1;
  wire spike_carry_i_25__0_n_0;
  wire spike_carry_i_25_n_0;
  wire spike_carry_i_27__1_n_0;
  wire spike_carry_i_27_n_0;
  wire spike_carry_i_28__0_n_0;
  wire spike_carry_i_28_n_0;
  wire spike_carry_i_29__0_n_0;
  wire spike_carry_i_29_n_0;
  wire spike_carry_i_30__0_n_0;
  wire spike_carry_i_30_n_0;
  wire spike_carry_i_32__0_n_0;
  wire spike_carry_i_32_n_0;
  wire spike_carry_i_33__0_n_0;
  wire spike_carry_i_33_n_0;
  wire spike_carry_i_34__0_n_0;
  wire spike_carry_i_34_n_0;
  wire spike_carry_i_35__0_n_0;
  wire spike_carry_i_35_n_0;
  wire spike_carry_i_36__0_n_0;
  wire spike_carry_i_36_n_0;
  wire spike_carry_i_37__0_n_0;
  wire spike_carry_i_37_n_0;
  wire spike_carry_i_38__0_n_0;
  wire spike_carry_i_38_n_0;
  wire spike_carry_i_39__0_n_0;
  wire spike_carry_i_39_n_0;
  wire spike_carry_i_40__0_n_0;
  wire spike_carry_i_40_n_0;
  wire spike_carry_i_41__1_n_0;
  wire spike_carry_i_41_n_0;
  wire spike_carry_i_42__0_n_0;
  wire spike_carry_i_42_n_0;
  wire spike_carry_i_43__0_n_0;
  wire spike_carry_i_43_n_0;
  wire spike_carry_i_44__0_n_0;
  wire spike_carry_i_44_n_0;
  wire spike_carry_i_45_0;
  wire spike_carry_i_45__0_n_0;
  wire spike_carry_i_45_n_0;
  wire spike_carry_i_47__0_n_0;
  wire spike_carry_i_47_n_0;
  wire spike_carry_i_48__0_n_0;
  wire spike_carry_i_48_n_0;
  wire spike_carry_i_49__0_n_0;
  wire spike_carry_i_49_n_0;
  wire spike_carry_i_50__0_n_0;
  wire spike_carry_i_50_n_0;
  wire spike_carry_i_51_0;
  wire spike_carry_i_51_1;
  wire spike_carry_i_51_2;
  wire spike_carry_i_51__0_n_0;
  wire spike_carry_i_51_n_0;
  wire spike_carry_i_52_0;
  wire spike_carry_i_52__0_n_0;
  wire spike_carry_i_52_n_0;
  wire spike_carry_i_53__0_n_0;
  wire spike_carry_i_53_n_0;
  wire spike_carry_i_54__0_n_0;
  wire spike_carry_i_54_n_0;
  wire spike_carry_i_55__0_n_0;
  wire spike_carry_i_55_n_0;
  wire spike_carry_i_56__0_n_0;
  wire spike_carry_i_56_n_0;
  wire spike_carry_i_57__0_n_0;
  wire spike_carry_i_57_n_0;
  wire spike_carry_i_58__0_n_0;
  wire spike_carry_i_58_n_0;
  wire spike_carry_i_59__0_n_0;
  wire spike_carry_i_59_n_0;
  wire spike_carry_i_60__0_n_0;
  wire spike_carry_i_60_n_0;
  wire spike_carry_i_61__0_n_0;
  wire spike_carry_i_61_n_0;
  wire spike_carry_i_62__1_n_0;
  wire spike_carry_i_62_n_0;
  wire spike_carry_i_63__0_n_0;
  wire spike_carry_i_63_n_0;
  wire spike_carry_i_64_0;
  wire spike_carry_i_64_1;
  wire spike_carry_i_64_2;
  wire spike_carry_i_64_3;
  wire spike_carry_i_64__0_n_0;
  wire spike_carry_i_64_n_0;
  wire spike_carry_i_65__0_n_0;
  wire spike_carry_i_65_n_0;
  wire spike_carry_i_66__0_n_0;
  wire spike_carry_i_66_n_0;
  wire spike_carry_i_67__0_n_0;
  wire spike_carry_i_67_n_0;
  wire spike_carry_i_68__0_n_0;
  wire spike_carry_i_68_n_0;
  wire spike_carry_i_69__0_n_0;
  wire spike_carry_i_69_n_0;
  wire spike_carry_i_74__1_n_0;
  wire spike_carry_i_74_n_0;
  wire spike_carry_i_76__1_n_0;
  wire spike_carry_i_76_n_0;
  wire spike_carry_i_78__0_n_0;
  wire spike_carry_i_78_n_0;
  wire spike_carry_i_79__1_n_0;
  wire spike_carry_i_79_n_0;
  wire spike_carry_i_82__1_n_0;
  wire spike_carry_i_82_n_0;
  wire [2:0]spike_carry_i_83__0;
  wire spike_carry_i_84__0_n_0;
  wire spike_carry_i_84_n_0;
  wire spike_carry_i_85__1_n_0;
  wire spike_carry_i_85_n_0;
  wire spike_carry_i_86__1_n_0;
  wire spike_carry_i_86_n_0;
  wire spike_carry_i_91__0_n_0;
  wire spike_carry_i_91_n_0;
  wire spike_carry_i_92__0_n_0;
  wire spike_carry_i_92_n_0;
  wire spike_carry_i_93__0_n_0;
  wire spike_carry_i_93_n_0;
  wire spike_carry_i_94__0_n_0;
  wire spike_carry_i_94_n_0;
  wire spike_carry_i_95__0_n_0;
  wire spike_carry_i_95_n_0;
  wire spike_carry_i_96__0_n_0;
  wire spike_carry_i_96_n_0;
  wire spike_carry_i_9_0;
  wire spike_carry_i_9__0_0;
  wire spike_carry_i_9__0_n_0;
  wire spike_carry_i_9_n_0;
  wire [0:0]spikes;
  wire [15:10]temperature_multiplier_out_reg;
  wire tmp;
  wire tmp_0;
  wire tmp_1;
  wire tmp_2;
  wire tmp_3;
  wire tmp_4;
  wire tmp_5;
  wire tmp_6;
  wire [3:1]\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent ;
  wire [0:0]\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/sum_exponent ;
  wire \unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ;
  wire \unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_4__3 ;
  wire \unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ;
  wire \unit1/neuron_ensemble_inst/flipping_unit_tb/mult/underflow__1 ;
  wire [15:12]\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg ;
  wire [15:1]\unit1/neuron_ensemble_inst/result0 ;
  wire [3:1]\unit1/neuron_ensemble_inst/sel0 ;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[6]_i_3_n_0 ;
  wire [6:0]x_reg;
  wire [3:0]x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire [3:0]x_reg_rep_3;
  wire x_reg_rep_4;
  wire x_reg_rep_5;
  wire x_reg_rep_6;
  wire x_reg_rep_7;
  wire x_reg_rep_8;
  wire x_reg_rep_i_17_n_0;
  wire x_reg_rep_i_3_n_0;
  wire x_reg_rep_i_4_n_0;
  wire x_reg_rep_i_5_n_0;
  wire x_reg_rep_i_6_n_0;
  wire x_reg_rep_i_7_n_0;
  wire x_reg_rep_i_8_n_0;
  wire x_reg_rep_i_9__0_n_0;
  wire [3:2]NLW_spike_carry__0_i_12_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_12_O_UNCONNECTED;
  wire [3:2]NLW_spike_carry__0_i_12__0_CO_UNCONNECTED;
  wire [3:3]NLW_spike_carry__0_i_12__0_O_UNCONNECTED;
  wire [1:0]NLW_x_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_x_reg_rep_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAA00200000)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[2] ),
        .I1(Q[0]),
        .I2(CO),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\FSM_onehot_current_state_reg[2]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \membrane_reg[15]_i_2 
       (.I0(Q[0]),
        .I1(CO),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(spikes));
  LUT3 #(
    .INIT(8'h06)) 
    \noise_out_reg[15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(flipping_CE_4));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \offset_reg[1]_i_2 
       (.I0(\FSM_onehot_current_state_reg[2]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(CO),
        .I4(Q[0]),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h8F0808088F088F8F)) 
    spike_carry__0_i_1
       (.I0(spike_carry__0_i_9_n_0),
        .I1(membrane_compare__14_0[6]),
        .I2(membrane_compare__14_0[7]),
        .I3(result0[15]),
        .I4(spike_carry_i_12_n_0),
        .I5(spike_carry__0_i_13_n_0),
        .O(\selected_membrane_reg_reg[14] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_12
       (.CI(spike_carry__0_i_20_n_0),
        .CO({NLW_spike_carry__0_i_12_CO_UNCONNECTED[3:2],spike_carry__0_i_12_n_2,spike_carry__0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_12_O_UNCONNECTED[3],result0[15:13]}),
        .S({1'b0,spike_carry__0_i_31_n_0,spike_carry__0_i_32_n_0,spike_carry__0_i_33_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_12__0
       (.CI(spike_carry__0_i_20__0_n_0),
        .CO({NLW_spike_carry__0_i_12__0_CO_UNCONNECTED[3:2],spike_carry__0_i_12__0_n_2,spike_carry__0_i_12__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike_carry__0_i_12__0_O_UNCONNECTED[3],\unit1/neuron_ensemble_inst/result0 [15:13]}),
        .S({1'b0,spike_carry__0_i_31__0_n_0,spike_carry__0_i_32__0_n_0,spike_carry__0_i_33__0_n_0}));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_13
       (.I0(spike_carry__0_i_34_n_0),
        .I1(spike_carry_i_37_n_0),
        .I2(spike_carry__0_i_35_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry_i_40_n_0),
        .I5(spike_carry__0_i_36_n_0),
        .O(spike_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_13__0
       (.I0(spike_carry__0_i_34__0_n_0),
        .I1(spike_carry_i_37__0_n_0),
        .I2(spike_carry__0_i_35__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry_i_40__0_n_0),
        .I5(spike_carry__0_i_36__0_n_0),
        .O(spike_carry__0_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444474747)) 
    spike_carry__0_i_14
       (.I0(result0[12]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry__0_i_37_n_0),
        .I3(spike_carry__0_i_34_n_0),
        .I4(spike_carry__0_i_38_n_0),
        .I5(spike_carry__0_i_39_n_0),
        .O(spike_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h4444444444474747)) 
    spike_carry__0_i_14__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [12]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry__0_i_37__0_n_0),
        .I3(spike_carry__0_i_34__0_n_0),
        .I4(spike_carry__0_i_38__0_n_0),
        .I5(spike_carry__0_i_39__0_n_0),
        .O(spike_carry__0_i_14__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    spike_carry__0_i_16
       (.I0(spike_carry__0_i_41_n_0),
        .I1(spike_carry__0_i_42_n_0),
        .I2(spike_carry__0_i_34_n_0),
        .I3(spike_carry_i_47_n_0),
        .I4(spike_carry_i_41_n_0),
        .I5(spike_carry__0_i_43_n_0),
        .O(spike_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    spike_carry__0_i_16__0
       (.I0(spike_carry__0_i_41__0_n_0),
        .I1(spike_carry__0_i_42__0_n_0),
        .I2(spike_carry__0_i_34__0_n_0),
        .I3(spike_carry_i_47__0_n_0),
        .I4(spike_carry_i_41__1_n_0),
        .I5(spike_carry__0_i_43__0_n_0),
        .O(spike_carry__0_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_18
       (.I0(result0[10]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry__0_i_44_n_0),
        .I3(spike_carry__0_i_45_n_0),
        .I4(spike_carry__0_i_46_n_0),
        .I5(spike_carry__0_i_47_n_0),
        .O(spike_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_18__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [10]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry__0_i_44__0_n_0),
        .I3(spike_carry__0_i_45__0_n_0),
        .I4(spike_carry__0_i_46__0_n_0),
        .I5(spike_carry__0_i_47__0_n_0),
        .O(spike_carry__0_i_18__0_n_0));
  LUT6 #(
    .INIT(64'h8F0808088F088F8F)) 
    spike_carry__0_i_1__0
       (.I0(spike_carry__0_i_9__0_n_0),
        .I1(membrane_compare__14[6]),
        .I2(membrane_compare__14[7]),
        .I3(\unit1/neuron_ensemble_inst/result0 [15]),
        .I4(spike_carry_i_12__0_n_0),
        .I5(spike_carry__0_i_13__0_n_0),
        .O(\selected_membrane_reg_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_2
       (.I0(spike_carry__0_i_14_n_0),
        .I1(membrane_compare__14_0[5]),
        .I2(result0[13]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry__0_i_16_n_0),
        .I5(spike_carry__0_1),
        .O(\selected_membrane_reg_reg[14] [2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_20
       (.CI(spike_carry_i_11_n_0),
        .CO({spike_carry__0_i_20_n_0,spike_carry__0_i_20_n_1,spike_carry__0_i_20_n_2,spike_carry__0_i_20_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[12:9]),
        .S({spike_carry__0_i_48_n_0,spike_carry__0_i_49_n_0,spike_carry__0_i_50_n_0,spike_carry__0_i_51_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry__0_i_20__0
       (.CI(spike_carry_i_11__0_n_0),
        .CO({spike_carry__0_i_20__0_n_0,spike_carry__0_i_20__0_n_1,spike_carry__0_i_20__0_n_2,spike_carry__0_i_20__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\unit1/neuron_ensemble_inst/result0 [12:9]),
        .S({spike_carry__0_i_48__0_n_0,spike_carry__0_i_49__0_n_0,spike_carry__0_i_50__0_n_0,spike_carry__0_i_51__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_21
       (.I0(spike_carry__0_i_34_n_0),
        .I1(spike_carry_i_40_n_0),
        .I2(spike_carry_i_41_n_0),
        .I3(spike_carry_i_37_n_0),
        .I4(spike_carry_i_44_n_0),
        .I5(spike_carry__0_i_52_n_0),
        .O(spike_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_21__0
       (.I0(spike_carry__0_i_34__0_n_0),
        .I1(spike_carry_i_40__0_n_0),
        .I2(spike_carry_i_41__1_n_0),
        .I3(spike_carry_i_37__0_n_0),
        .I4(spike_carry_i_44__0_n_0),
        .I5(spike_carry__0_i_52__0_n_0),
        .O(spike_carry__0_i_21__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry__0_i_23
       (.I0(result0[8]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry_i_41_n_0),
        .I3(spike_carry__0_i_38_n_0),
        .I4(spike_carry__0_i_53_n_0),
        .I5(spike_carry__0_i_54_n_0),
        .O(spike_carry__0_i_23_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry__0_i_23__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [8]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry_i_41__1_n_0),
        .I3(spike_carry__0_i_38__0_n_0),
        .I4(spike_carry__0_i_53__0_n_0),
        .I5(spike_carry__0_i_54__0_n_0),
        .O(spike_carry__0_i_23__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    spike_carry__0_i_25
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry_i_47_n_0),
        .I2(spike_carry__0_i_55_n_0),
        .I3(spike_carry_i_27_n_0),
        .I4(spike_carry__0_i_43_n_0),
        .I5(spike_carry__0_i_56_n_0),
        .O(spike_carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    spike_carry__0_i_25__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry_i_47__0_n_0),
        .I2(spike_carry__0_i_55__0_n_0),
        .I3(spike_carry_i_27__1_n_0),
        .I4(spike_carry__0_i_43__0_n_0),
        .I5(spike_carry__0_i_56__0_n_0),
        .O(spike_carry__0_i_25__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_27
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry__0_i_57_n_0),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(spike_carry__0_i_9_0),
        .I4(spike_carry_i_64_2),
        .I5(spike_carry__0_i_59_n_0),
        .O(spike_carry__0_i_27_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_27__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry__0_i_57__1_n_0),
        .I2(\noise_out_reg_reg[14]_2 ),
        .I3(spike_carry__0_i_18__0_0),
        .I4(spike_carry__0_i_18__0_1),
        .I5(spike_carry__0_i_59__0_n_0),
        .O(spike_carry__0_i_27__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_28
       (.I0(spike_carry__0_i_36_n_0),
        .I1(spike_carry_i_76_n_0),
        .I2(spike_carry_i_51_0),
        .I3(spike_carry_i_24_1),
        .I4(spike_carry_i_74_n_0),
        .I5(spike_carry_i_82_n_0),
        .O(spike_carry__0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_28__0
       (.I0(spike_carry__0_i_36__0_n_0),
        .I1(spike_carry_i_76__1_n_0),
        .I2(spike_carry_i_19__0_2),
        .I3(spike_carry_i_25__0_1),
        .I4(spike_carry_i_74__1_n_0),
        .I5(spike_carry_i_82__1_n_0),
        .O(spike_carry__0_i_28__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_29
       (.I0(spike_carry__0_i_34_n_0),
        .I1(spike_carry_i_79_n_0),
        .I2(spike_carry_i_78_n_0),
        .I3(spike_carry_i_51_2),
        .I4(spike_carry_i_76_n_0),
        .I5(spike_carry__0_i_60_n_0),
        .O(spike_carry__0_i_29_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_29__0
       (.I0(spike_carry__0_i_34__0_n_0),
        .I1(spike_carry_i_79__1_n_0),
        .I2(spike_carry_i_78__0_n_0),
        .I3(spike_carry__0_i_18__0_2),
        .I4(spike_carry_i_76__1_n_0),
        .I5(spike_carry__0_i_60__1_n_0),
        .O(spike_carry__0_i_29__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_2__0
       (.I0(spike_carry__0_i_14__0_n_0),
        .I1(membrane_compare__14[5]),
        .I2(\unit1/neuron_ensemble_inst/result0 [13]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry__0_i_16__0_n_0),
        .I5(spike_carry__0_4),
        .O(\selected_membrane_reg_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_3
       (.I0(spike_carry__0_i_18_n_0),
        .I1(membrane_compare__14_0[4]),
        .I2(result0[11]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry__0_i_21_n_0),
        .I5(spike_carry__0_0),
        .O(\selected_membrane_reg_reg[14] [1]));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_31
       (.I0(spike_carry__0_i_34_n_0),
        .I1(spike_carry_i_37_n_0),
        .I2(spike_carry__0_i_35_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry_i_40_n_0),
        .I5(spike_carry__0_i_36_n_0),
        .O(spike_carry__0_i_31_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_31__0
       (.I0(spike_carry__0_i_34__0_n_0),
        .I1(spike_carry_i_37__0_n_0),
        .I2(spike_carry__0_i_35__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry_i_40__0_n_0),
        .I5(spike_carry__0_i_36__0_n_0),
        .O(spike_carry__0_i_31__0_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_32
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry__0_i_12_0),
        .I2(spike_carry__0_i_28_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry__0_i_34_n_0),
        .I5(spike_carry_i_28_n_0),
        .O(spike_carry__0_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry__0_i_32__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry__0_i_12__0_0),
        .I2(spike_carry__0_i_28__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry__0_i_34__0_n_0),
        .I5(spike_carry_i_28__0_n_0),
        .O(spike_carry__0_i_32__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_33
       (.I0(spike_carry__0_i_16_n_0),
        .O(spike_carry__0_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_33__0
       (.I0(spike_carry__0_i_16__0_n_0),
        .O(spike_carry__0_i_33__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h01010110)) 
    spike_carry__0_i_34
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h01010110)) 
    spike_carry__0_i_34__0
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(x_reg_rep_4),
        .O(spike_carry__0_i_34__0_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_35
       (.I0(spike_carry_i_41_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(spike_carry_i_64_0),
        .I5(spike_carry_i_51_1),
        .O(spike_carry__0_i_35_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_35__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(\noise_out_reg_reg[10]_2 ),
        .I2(\noise_out_reg_reg[14]_2 ),
        .I3(x_reg_rep_4),
        .I4(spike_carry__0_i_55__0_0),
        .I5(spike_carry__0_i_21__0_0),
        .O(spike_carry__0_i_35__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10101002)) 
    spike_carry__0_i_36
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h10101002)) 
    spike_carry__0_i_36__0
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(x_reg_rep_4),
        .O(spike_carry__0_i_36__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFEE)) 
    spike_carry__0_i_37
       (.I0(spike_carry__0_i_65_n_0),
        .I1(spike_carry__0_i_66_n_0),
        .I2(spike_carry_i_106_n_0),
        .I3(spike_carry_i_24_0),
        .I4(spike_carry_i_84_n_0),
        .I5(spike_carry__0_i_67_n_0),
        .O(spike_carry__0_i_37_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFEE)) 
    spike_carry__0_i_37__0
       (.I0(spike_carry__0_i_65__0_n_0),
        .I1(spike_carry__0_i_66__0_n_0),
        .I2(spike_carry_i_106__0_n_0),
        .I3(spike_carry__0_i_25__0_0),
        .I4(spike_carry_i_84__0_n_0),
        .I5(spike_carry__0_i_67__0_n_0),
        .O(spike_carry__0_i_37__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_38
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_51_0),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_45_0),
        .I4(spike_carry_i_115_n_0),
        .I5(spike_carry_i_114_n_0),
        .O(spike_carry__0_i_38_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_38__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry_i_19__0_2),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry_i_19__0_1),
        .I4(spike_carry_i_115__0_n_0),
        .I5(spike_carry_i_114__1_n_0),
        .O(spike_carry__0_i_38__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_39
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry__0_i_68_n_0),
        .I2(spike_carry__0_i_69_n_0),
        .I3(spike_carry_i_51_1),
        .I4(spike_carry_i_76_n_0),
        .I5(spike_carry__0_i_70_n_0),
        .O(spike_carry__0_i_39_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_39__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry__0_i_68__1_n_0),
        .I2(spike_carry__0_i_69__0_n_0),
        .I3(spike_carry__0_i_21__0_0),
        .I4(spike_carry_i_76__1_n_0),
        .I5(spike_carry__0_i_70__1_n_0),
        .O(spike_carry__0_i_39__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_3__0
       (.I0(spike_carry__0_i_18__0_n_0),
        .I1(membrane_compare__14[4]),
        .I2(\unit1/neuron_ensemble_inst/result0 [11]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry__0_i_21__0_n_0),
        .I5(spike_carry__0_3),
        .O(\selected_membrane_reg_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_4
       (.I0(spike_carry__0_i_23_n_0),
        .I1(membrane_compare__14_0[3]),
        .I2(result0[9]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry__0_i_25_n_0),
        .I5(spike_carry__0),
        .O(\selected_membrane_reg_reg[14] [0]));
  LUT6 #(
    .INIT(64'h8080000088000000)) 
    spike_carry__0_i_41
       (.I0(spike_carry__0_i_36_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(spike_carry_i_64_1),
        .I3(spike_carry_i_24_1),
        .I4(\noise_out_reg_reg[14]_0 ),
        .I5(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_41_n_0));
  LUT6 #(
    .INIT(64'h8080000088000000)) 
    spike_carry__0_i_41__0
       (.I0(spike_carry__0_i_36__0_n_0),
        .I1(\noise_out_reg_reg[10]_2 ),
        .I2(spike_carry_i_25__0_0),
        .I3(spike_carry_i_25__0_1),
        .I4(\noise_out_reg_reg[14]_2 ),
        .I5(x_reg_rep_4),
        .O(spike_carry__0_i_41__0_n_0));
  LUT6 #(
    .INIT(64'h8040000000400000)) 
    spike_carry__0_i_42
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24_0),
        .O(spike_carry__0_i_42_n_0));
  LUT6 #(
    .INIT(64'h8040000000400000)) 
    spike_carry__0_i_42__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I5(spike_carry__0_i_25__0_0),
        .O(spike_carry__0_i_42__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_43
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_64_2),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_64_0),
        .I4(spike_carry__0_i_75_n_0),
        .I5(spike_carry__0_i_76_n_0),
        .O(spike_carry__0_i_43_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry__0_i_43__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry__0_i_18__0_1),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry__0_i_55__0_0),
        .I4(spike_carry__0_i_75__0_n_0),
        .I5(spike_carry__0_i_76__1_n_0),
        .O(spike_carry__0_i_43__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_44
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry_i_79_n_0),
        .I2(spike_carry_i_78_n_0),
        .I3(spike_carry_i_51_2),
        .I4(spike_carry_i_76_n_0),
        .I5(spike_carry__0_i_60_n_0),
        .O(spike_carry__0_i_44_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry__0_i_44__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry_i_79__1_n_0),
        .I2(spike_carry_i_78__0_n_0),
        .I3(spike_carry__0_i_18__0_2),
        .I4(spike_carry_i_76__1_n_0),
        .I5(spike_carry__0_i_60__1_n_0),
        .O(spike_carry__0_i_44__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry__0_i_45
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24_0),
        .O(spike_carry__0_i_45_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry__0_i_45__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I5(spike_carry__0_i_25__0_0),
        .O(spike_carry__0_i_45__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_46
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry__0_i_57_n_0),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(spike_carry__0_i_9_0),
        .I4(spike_carry_i_64_2),
        .I5(spike_carry__0_i_59_n_0),
        .O(spike_carry__0_i_46_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike_carry__0_i_46__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry__0_i_57__1_n_0),
        .I2(\noise_out_reg_reg[14]_2 ),
        .I3(spike_carry__0_i_18__0_0),
        .I4(spike_carry__0_i_18__0_1),
        .I5(spike_carry__0_i_59__0_n_0),
        .O(spike_carry__0_i_46__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_47
       (.I0(spike_carry__0_i_34_n_0),
        .I1(spike_carry_i_76_n_0),
        .I2(spike_carry_i_51_0),
        .I3(spike_carry_i_24_1),
        .I4(spike_carry_i_74_n_0),
        .I5(spike_carry_i_82_n_0),
        .O(spike_carry__0_i_47_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry__0_i_47__0
       (.I0(spike_carry__0_i_34__0_n_0),
        .I1(spike_carry_i_76__1_n_0),
        .I2(spike_carry_i_19__0_2),
        .I3(spike_carry_i_25__0_1),
        .I4(spike_carry_i_74__1_n_0),
        .I5(spike_carry_i_82__1_n_0),
        .O(spike_carry__0_i_47__0_n_0));
  LUT6 #(
    .INIT(64'h0000011101110111)) 
    spike_carry__0_i_48
       (.I0(spike_carry__0_i_77_n_0),
        .I1(spike_carry__0_i_78_n_0),
        .I2(spike_carry__0_i_34_n_0),
        .I3(spike_carry__0_i_38_n_0),
        .I4(spike_carry_i_41_n_0),
        .I5(spike_carry_i_91_n_0),
        .O(spike_carry__0_i_48_n_0));
  LUT6 #(
    .INIT(64'h0000011101110111)) 
    spike_carry__0_i_48__0
       (.I0(spike_carry__0_i_77__0_n_0),
        .I1(spike_carry__0_i_78__0_n_0),
        .I2(spike_carry__0_i_34__0_n_0),
        .I3(spike_carry__0_i_38__0_n_0),
        .I4(spike_carry_i_41__1_n_0),
        .I5(spike_carry_i_91__0_n_0),
        .O(spike_carry__0_i_48__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_49
       (.I0(spike_carry__0_i_21_n_0),
        .O(spike_carry__0_i_49_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_49__0
       (.I0(spike_carry__0_i_21__0_n_0),
        .O(spike_carry__0_i_49__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry__0_i_4__0
       (.I0(spike_carry__0_i_23__0_n_0),
        .I1(membrane_compare__14[3]),
        .I2(\unit1/neuron_ensemble_inst/result0 [9]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry__0_i_25__0_n_0),
        .I5(spike_carry__0_2),
        .O(\selected_membrane_reg_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'h0000D12ED12E0000)) 
    spike_carry__0_i_5
       (.I0(spike_carry__0_i_13_n_0),
        .I1(spike_carry_i_12_n_0),
        .I2(result0[15]),
        .I3(membrane_compare__14_0[7]),
        .I4(spike_carry__0_i_9_n_0),
        .I5(membrane_compare__14_0[6]),
        .O(x_reg_rep_0[3]));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry__0_i_50
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry_i_28_n_0),
        .I2(spike_carry__0_i_79_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry__0_i_46_n_0),
        .I5(spike_carry__0_i_47_n_0),
        .O(spike_carry__0_i_50_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry__0_i_50__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry_i_28__0_n_0),
        .I2(spike_carry__0_i_79__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry__0_i_46__0_n_0),
        .I5(spike_carry__0_i_47__0_n_0),
        .O(spike_carry__0_i_50__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_51
       (.I0(spike_carry__0_i_25_n_0),
        .O(spike_carry__0_i_51_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry__0_i_51__0
       (.I0(spike_carry__0_i_25__0_n_0),
        .O(spike_carry__0_i_51__0_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_52
       (.I0(spike_carry_i_27_n_0),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(\noise_out_reg_reg[14]_0 ),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(spike_carry_i_64_0),
        .I5(spike_carry_i_51_1),
        .O(spike_carry__0_i_52_n_0));
  LUT6 #(
    .INIT(64'h20A000A020800080)) 
    spike_carry__0_i_52__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(\noise_out_reg_reg[10]_2 ),
        .I2(\noise_out_reg_reg[14]_2 ),
        .I3(x_reg_rep_4),
        .I4(spike_carry__0_i_55__0_0),
        .I5(spike_carry__0_i_21__0_0),
        .O(spike_carry__0_i_52__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_53
       (.I0(spike_carry_i_106_n_0),
        .I1(spike_carry_i_24_0),
        .I2(spike_carry_i_84_n_0),
        .I3(spike_carry__0_i_80_n_0),
        .I4(spike_carry__0_i_81_n_0),
        .I5(spike_carry_i_68_n_0),
        .O(spike_carry__0_i_53_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_53__0
       (.I0(spike_carry_i_106__0_n_0),
        .I1(spike_carry__0_i_25__0_0),
        .I2(spike_carry_i_84__0_n_0),
        .I3(spike_carry__0_i_80__0_n_0),
        .I4(spike_carry__0_i_81__1_n_0),
        .I5(spike_carry_i_68__0_n_0),
        .O(spike_carry__0_i_53__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    spike_carry__0_i_54
       (.I0(spike_carry_i_92_n_0),
        .I1(spike_carry__0_i_70_n_0),
        .I2(spike_carry__0_i_82_n_0),
        .I3(spike_carry__0_i_69_n_0),
        .I4(spike_carry__0_i_68_n_0),
        .I5(spike_carry_i_27_n_0),
        .O(spike_carry__0_i_54_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    spike_carry__0_i_54__0
       (.I0(spike_carry_i_92__0_n_0),
        .I1(spike_carry__0_i_70__1_n_0),
        .I2(spike_carry__0_i_82__1_n_0),
        .I3(spike_carry__0_i_69__0_n_0),
        .I4(spike_carry__0_i_68__1_n_0),
        .I5(spike_carry_i_27__1_n_0),
        .O(spike_carry__0_i_54__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_55
       (.I0(spike_carry_i_106_n_0),
        .I1(spike_carry_i_24_0),
        .I2(spike_carry_i_84_n_0),
        .I3(spike_carry__0_i_83_n_0),
        .I4(spike_carry__0_i_84_n_0),
        .I5(spike_carry_i_61_n_0),
        .O(spike_carry__0_i_55_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    spike_carry__0_i_55__0
       (.I0(spike_carry_i_106__0_n_0),
        .I1(spike_carry__0_i_25__0_0),
        .I2(spike_carry_i_84__0_n_0),
        .I3(spike_carry__0_i_83__0_n_0),
        .I4(spike_carry__0_i_84__1_n_0),
        .I5(spike_carry_i_61__0_n_0),
        .O(spike_carry__0_i_55__0_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry__0_i_56
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64_1),
        .I2(spike_carry_i_24_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry__0_i_34_n_0),
        .O(spike_carry__0_i_56_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry__0_i_56__0
       (.I0(\noise_out_reg_reg[10]_2 ),
        .I1(spike_carry_i_25__0_0),
        .I2(spike_carry_i_25__0_1),
        .I3(\noise_out_reg_reg[14]_2 ),
        .I4(x_reg_rep_4),
        .I5(spike_carry__0_i_34__0_n_0),
        .O(spike_carry__0_i_56__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h8C00008C)) 
    spike_carry__0_i_57
       (.I0(spike_carry_i_51_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [1]),
        .O(spike_carry__0_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h8C00008C)) 
    spike_carry__0_i_57__1
       (.I0(spike_carry__0_i_21__0_0),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .O(spike_carry__0_i_57__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000095)) 
    spike_carry__0_i_59
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry__0_i_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000095)) 
    spike_carry__0_i_59__0
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(x_reg_rep_4),
        .O(spike_carry__0_i_59__0_n_0));
  LUT6 #(
    .INIT(64'h0000D12ED12E0000)) 
    spike_carry__0_i_5__0
       (.I0(spike_carry__0_i_13__0_n_0),
        .I1(spike_carry_i_12__0_n_0),
        .I2(\unit1/neuron_ensemble_inst/result0 [15]),
        .I3(membrane_compare__14[7]),
        .I4(spike_carry__0_i_9__0_n_0),
        .I5(membrane_compare__14[6]),
        .O(x_reg_rep_3[3]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_6
       (.I0(spike_carry__0_1),
        .I1(spike_carry__0_i_16_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[13]),
        .I4(spike_carry__0_i_14_n_0),
        .I5(membrane_compare__14_0[5]),
        .O(x_reg_rep_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_60
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_45_0),
        .O(spike_carry__0_i_60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_60__1
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(spike_carry_i_19__0_1),
        .O(spike_carry__0_i_60__1_n_0));
  LUT6 #(
    .INIT(64'h0280000000000000)) 
    spike_carry__0_i_65
       (.I0(spike_carry_i_64_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_65_n_0));
  LUT6 #(
    .INIT(64'h0280000000000000)) 
    spike_carry__0_i_65__0
       (.I0(spike_carry__0_i_55__0_0),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry__0_i_65__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    spike_carry__0_i_66
       (.I0(spike_carry_i_24_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_66_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    spike_carry__0_i_66__0
       (.I0(spike_carry_i_25__0_1),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry__0_i_66__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    spike_carry__0_i_67
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(sel0[3]),
        .O(spike_carry__0_i_67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    spike_carry__0_i_67__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry__0_i_67__0_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_68
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64_2),
        .O(spike_carry__0_i_68_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_68__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry__0_i_18__0_1),
        .O(spike_carry__0_i_68__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_69
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_52_0),
        .O(spike_carry__0_i_69_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_69__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry_i_24__0_0),
        .O(spike_carry__0_i_69__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_6__0
       (.I0(spike_carry__0_4),
        .I1(spike_carry__0_i_16__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [13]),
        .I4(spike_carry__0_i_14__0_n_0),
        .I5(membrane_compare__14[5]),
        .O(x_reg_rep_3[2]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_7
       (.I0(spike_carry__0_0),
        .I1(spike_carry__0_i_21_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[11]),
        .I4(spike_carry__0_i_18_n_0),
        .I5(membrane_compare__14_0[4]),
        .O(x_reg_rep_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_70
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51_2),
        .O(spike_carry__0_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry__0_i_70__1
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(spike_carry__0_i_18__0_2),
        .O(spike_carry__0_i_70__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_75
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_51_2),
        .O(spike_carry__0_i_75_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry__0_i_75__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry__0_i_18__0_2),
        .O(spike_carry__0_i_75__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_76
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51_1),
        .O(spike_carry__0_i_76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_76__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry__0_i_21__0_0),
        .O(spike_carry__0_i_76__1_n_0));
  LUT6 #(
    .INIT(64'h8800000008000000)) 
    spike_carry__0_i_77
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24_0),
        .O(spike_carry__0_i_77_n_0));
  LUT6 #(
    .INIT(64'h8800000008000000)) 
    spike_carry__0_i_77__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I5(spike_carry__0_i_25__0_0),
        .O(spike_carry__0_i_77__0_n_0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    spike_carry__0_i_78
       (.I0(spike_carry__0_i_36_n_0),
        .I1(spike_carry_i_62_n_0),
        .I2(spike_carry_i_27_n_0),
        .I3(\noise_out_reg_reg[10]_0 ),
        .I4(spike_carry_i_64_0),
        .I5(\noise_out_reg_reg[14]_0 ),
        .O(spike_carry__0_i_78_n_0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    spike_carry__0_i_78__0
       (.I0(spike_carry__0_i_36__0_n_0),
        .I1(spike_carry_i_62__1_n_0),
        .I2(spike_carry_i_27__1_n_0),
        .I3(\noise_out_reg_reg[10]_2 ),
        .I4(spike_carry__0_i_55__0_0),
        .I5(\noise_out_reg_reg[14]_2 ),
        .O(spike_carry__0_i_78__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_79
       (.I0(spike_carry_i_68_n_0),
        .I1(spike_carry__0_i_84_n_0),
        .O(spike_carry__0_i_79_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry__0_i_79__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(spike_carry__0_i_84__1_n_0),
        .O(spike_carry__0_i_79__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_7__0
       (.I0(spike_carry__0_3),
        .I1(spike_carry__0_i_21__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [11]),
        .I4(spike_carry__0_i_18__0_n_0),
        .I5(membrane_compare__14[4]),
        .O(x_reg_rep_3[1]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_8
       (.I0(spike_carry__0),
        .I1(spike_carry__0_i_25_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[9]),
        .I4(spike_carry__0_i_23_n_0),
        .I5(membrane_compare__14_0[3]),
        .O(x_reg_rep_0[0]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    spike_carry__0_i_80
       (.I0(spike_carry_i_64_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\noise_out_reg_reg[14] [1]),
        .O(spike_carry__0_i_80_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    spike_carry__0_i_80__0
       (.I0(spike_carry__0_i_55__0_0),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I5(\noise_out_reg_reg[14]_1 ),
        .O(spike_carry__0_i_80__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h02C0)) 
    spike_carry__0_i_81
       (.I0(spike_carry_i_51_1),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(spike_carry__0_i_81_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h02C0)) 
    spike_carry__0_i_81__1
       (.I0(spike_carry__0_i_21__0_0),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry__0_i_81__1_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_82
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51_1),
        .O(spike_carry__0_i_82_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry__0_i_82__1
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(spike_carry__0_i_21__0_0),
        .O(spike_carry__0_i_82__1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    spike_carry__0_i_83
       (.I0(spike_carry_i_64_0),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(sel0[3]),
        .O(spike_carry__0_i_83_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    spike_carry__0_i_83__0
       (.I0(spike_carry__0_i_55__0_0),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(x_reg_rep_4),
        .I5(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry__0_i_83__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry__0_i_84
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(spike_carry__0_i_84_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry__0_i_84__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry__0_i_84__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry__0_i_8__0
       (.I0(spike_carry__0_2),
        .I1(spike_carry__0_i_25__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [9]),
        .I4(spike_carry__0_i_23__0_n_0),
        .I5(membrane_compare__14[3]),
        .O(x_reg_rep_3[0]));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_9
       (.I0(result0[14]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry__0_i_27_n_0),
        .I3(spike_carry__0_i_28_n_0),
        .I4(spike_carry_i_44_n_0),
        .I5(spike_carry__0_i_29_n_0),
        .O(spike_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry__0_i_9__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [14]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry__0_i_27__0_n_0),
        .I3(spike_carry__0_i_28__0_n_0),
        .I4(spike_carry_i_44__0_n_0),
        .I5(spike_carry__0_i_29__0_n_0),
        .O(spike_carry__0_i_9__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_1
       (.I0(spike_carry_i_9_n_0),
        .I1(membrane_compare__14_0[2]),
        .I2(result0[7]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry_i_13_n_0),
        .I5(spike_carry_3),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_101
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_45_0),
        .O(spike_carry_i_101_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_101__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry_i_19__0_1),
        .O(spike_carry_i_101__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_102
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51_2),
        .O(spike_carry_i_102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_102__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry__0_i_18__0_2),
        .O(spike_carry_i_102__1_n_0));
  LUT3 #(
    .INIT(8'hF6)) 
    spike_carry_i_103
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(spike_carry_i_51_1),
        .O(spike_carry_i_103_n_0));
  LUT3 #(
    .INIT(8'hF6)) 
    spike_carry_i_103__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[10]_2 ),
        .I2(spike_carry__0_i_21__0_0),
        .O(spike_carry_i_103__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h42)) 
    spike_carry_i_104
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(spike_carry_i_104_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h42)) 
    spike_carry_i_104__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .O(spike_carry_i_104__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    spike_carry_i_106
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(spike_carry_i_106_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    spike_carry_i_106__0
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_106__0_n_0));
  LUT6 #(
    .INIT(64'h4441111100000000)) 
    spike_carry_i_108
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike_carry_i_24_1),
        .O(spike_carry_i_108_n_0));
  LUT6 #(
    .INIT(64'h4441111100000000)) 
    spike_carry_i_108__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I5(spike_carry_i_25__0_1),
        .O(spike_carry_i_108__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_11
       (.CI(spike_carry_i_21_n_0),
        .CO({spike_carry_i_11_n_0,spike_carry_i_11_n_1,spike_carry_i_11_n_2,spike_carry_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[8:5]),
        .S({spike_carry_i_32_n_0,spike_carry_i_33_n_0,spike_carry_i_34_n_0,spike_carry_i_35_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_110
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_51_0),
        .O(spike_carry_i_110_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_110__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry_i_19__0_2),
        .O(spike_carry_i_110__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h90)) 
    spike_carry_i_112
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_112_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h90)) 
    spike_carry_i_112__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(x_reg_rep_4),
        .O(spike_carry_i_112__1_n_0));
  LUT6 #(
    .INIT(64'h0000222200002882)) 
    spike_carry_i_113
       (.I0(\noise_out_reg_reg[12] ),
        .I1(\mult/biased_sum_exponent [1]),
        .I2(noise_out_reg_0[0]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(spike_carry_i_146_n_0),
        .I5(P[2]),
        .O(\noise_out_reg_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000222200002882)) 
    spike_carry_i_113__0
       (.I0(\noise_out_reg_reg[12]_0 ),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [1]),
        .I2(noise_out_reg[0]),
        .I3(DOBDO[10]),
        .I4(spike_carry_i_146__0_n_0),
        .I5(spike_carry_i_83__0[2]),
        .O(\noise_out_reg_reg[10]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_114
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64_3),
        .O(spike_carry_i_114_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_114__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry__0_i_25__0_1),
        .O(spike_carry_i_114__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_115
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_64_1),
        .O(spike_carry_i_115_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_115__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry_i_25__0_0),
        .O(spike_carry_i_115__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry_i_116
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_51_0),
        .O(spike_carry_i_116_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    spike_carry_i_116__1
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(spike_carry_i_19__0_2),
        .O(spike_carry_i_116__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_117
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(\noise_out_reg_reg[14] [0]),
        .O(\noise_out_reg_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_117__0
       (.I0(\noise_out_reg_reg[10]_2 ),
        .I1(x_reg_rep_4),
        .O(\noise_out_reg_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h06)) 
    spike_carry_i_118
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .O(spike_carry_i_118_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h06)) 
    spike_carry_i_118__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry_i_118__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_11__0
       (.CI(spike_carry_i_21__0_n_0),
        .CO({spike_carry_i_11__0_n_0,spike_carry_i_11__0_n_1,spike_carry_i_11__0_n_2,spike_carry_i_11__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\unit1/neuron_ensemble_inst/result0 [8:5]),
        .S({spike_carry_i_32__0_n_0,spike_carry_i_33__0_n_0,spike_carry_i_34__0_n_0,spike_carry_i_35__0_n_0}));
  LUT3 #(
    .INIT(8'h14)) 
    spike_carry_i_12
       (.I0(spike_carry_i_36_n_0),
        .I1(temperature_multiplier_out_reg[15]),
        .I2(noise_out_reg_0[5]),
        .O(spike_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_120
       (.I0(spike_carry_i_64_2),
        .I1(spike_carry_i_52_0),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_120_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_120__1
       (.I0(spike_carry__0_i_18__0_1),
        .I1(spike_carry_i_24__0_0),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_120__1_n_0));
  LUT6 #(
    .INIT(64'h5551511041141441)) 
    spike_carry_i_121
       (.I0(spike_carry_i_36_n_0),
        .I1(spike_carry_i_168_n_0),
        .I2(\mult/u2/c_4__3 ),
        .I3(noise_out_reg_0[4]),
        .I4(temperature_multiplier_out_reg[14]),
        .I5(spike_carry_i_170_n_0),
        .O(\noise_out_reg_reg[14] [1]));
  LUT6 #(
    .INIT(64'h5551511041141441)) 
    spike_carry_i_121__0
       (.I0(spike_carry_i_36__0_n_0),
        .I1(spike_carry_i_168__0_n_0),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_4__3 ),
        .I3(noise_out_reg[4]),
        .I4(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [14]),
        .I5(spike_carry_i_170__0_n_0),
        .O(\noise_out_reg_reg[14]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h000F0CA0)) 
    spike_carry_i_122
       (.I0(spike_carry_i_51_1),
        .I1(spike_carry_i_45_0),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_122_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h000F0CA0)) 
    spike_carry_i_122__1
       (.I0(spike_carry__0_i_21__0_0),
        .I1(spike_carry_i_19__0_1),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_122__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h56)) 
    spike_carry_i_123
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(tmp));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h56)) 
    spike_carry_i_123__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .O(tmp_3));
  LUT6 #(
    .INIT(64'h6600600006000000)) 
    spike_carry_i_124
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[10]_0 ),
        .I2(P[2]),
        .I3(\noise_out_reg_reg[12] ),
        .I4(P[0]),
        .I5(P[1]),
        .O(spike_carry_i_124_n_0));
  LUT6 #(
    .INIT(64'h6600600006000000)) 
    spike_carry_i_124__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[10]_2 ),
        .I2(spike_carry_i_83__0[2]),
        .I3(\noise_out_reg_reg[12]_0 ),
        .I4(spike_carry_i_83__0[0]),
        .I5(spike_carry_i_83__0[1]),
        .O(spike_carry_i_124__0_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    spike_carry_i_12__0
       (.I0(spike_carry_i_36__0_n_0),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [15]),
        .I2(noise_out_reg[5]),
        .O(spike_carry_i_12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_13
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry_i_37_n_0),
        .I2(spike_carry_i_38_n_0),
        .I3(spike_carry_i_39_n_0),
        .I4(spike_carry_i_40_n_0),
        .I5(spike_carry_i_41_n_0),
        .O(spike_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_130
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_51_0),
        .O(spike_carry_i_130_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_130__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry_i_19__0_2),
        .O(spike_carry_i_130__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_131
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_45_0),
        .O(spike_carry_i_131_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_131__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry_i_19__0_1),
        .O(spike_carry_i_131__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAA95555)) 
    spike_carry_i_132
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(sel0[3]),
        .O(\noise_out_reg_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAAA95555)) 
    spike_carry_i_132__0
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(x_reg_rep_4),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(\noise_out_reg_reg[14]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h000B)) 
    spike_carry_i_133
       (.I0(spike_carry_i_51_1),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(spike_carry_i_133_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h000B)) 
    spike_carry_i_133__1
       (.I0(spike_carry__0_i_21__0_0),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .O(spike_carry_i_133__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h20)) 
    spike_carry_i_134
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(spike_carry_i_134_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h20)) 
    spike_carry_i_134__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_134__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hA00AACCA)) 
    spike_carry_i_135
       (.I0(spike_carry_i_51_0),
        .I1(spike_carry_i_51_2),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike_carry_i_135_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hA00AACCA)) 
    spike_carry_i_135__1
       (.I0(spike_carry_i_19__0_2),
        .I1(spike_carry__0_i_18__0_2),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry_i_135__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_136
       (.I0(spike_carry_i_52_0),
        .I1(spike_carry_i_64_3),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_136_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_136__1
       (.I0(spike_carry_i_24__0_0),
        .I1(spike_carry__0_i_25__0_1),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_136__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_139
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .O(tmp_1));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_139__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(tmp_5));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_13__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry_i_37__0_n_0),
        .I2(spike_carry_i_38__0_n_0),
        .I3(spike_carry_i_39__0_n_0),
        .I4(spike_carry_i_40__0_n_0),
        .I5(spike_carry_i_41__1_n_0),
        .O(spike_carry_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h0038000000080000)) 
    spike_carry_i_141
       (.I0(spike_carry_i_45_0),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_24_1),
        .O(spike_carry_i_141_n_0));
  LUT6 #(
    .INIT(64'h0038000000080000)) 
    spike_carry_i_141__0
       (.I0(spike_carry_i_19__0_1),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(x_reg_rep_4),
        .I5(spike_carry_i_25__0_1),
        .O(spike_carry_i_141__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h88001000)) 
    spike_carry_i_142
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(spike_carry_i_51_1),
        .I3(\noise_out_reg_reg[14] [0]),
        .I4(sel0[1]),
        .O(spike_carry_i_142_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h88001000)) 
    spike_carry_i_142__0
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(spike_carry__0_i_21__0_0),
        .I3(x_reg_rep_4),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_142__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry_i_143
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(spike_carry_i_143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike_carry_i_143__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_143__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    spike_carry_i_144
       (.I0(spike_carry_i_64_2),
        .I1(sel0[1]),
        .I2(spike_carry_i_64_0),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(spike_carry_i_144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    spike_carry_i_144__1
       (.I0(spike_carry__0_i_18__0_1),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(spike_carry__0_i_55__0_0),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry_i_144__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_145
       (.I0(spike_carry_i_64_3),
        .I1(spike_carry_i_64_1),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_145_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00A00C00)) 
    spike_carry_i_145__1
       (.I0(spike_carry__0_i_25__0_1),
        .I1(spike_carry_i_25__0_0),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_145__1_n_0));
  LUT6 #(
    .INIT(64'h0000000077700000)) 
    spike_carry_i_146
       (.I0(spike_carry_i_95_n_0),
        .I1(spike_carry_i_96_n_0),
        .I2(spike_carry_i_121_0),
        .I3(spike_carry_i_121_1),
        .I4(x_reg_rep_1),
        .I5(\mult/underflow__1 ),
        .O(spike_carry_i_146_n_0));
  LUT6 #(
    .INIT(64'h0000000077700000)) 
    spike_carry_i_146__0
       (.I0(spike_carry_i_95__0_n_0),
        .I1(spike_carry_i_96__0_n_0),
        .I2(spike_carry_i_159__0_0),
        .I3(spike_carry_i_159__0_1),
        .I4(x_reg_rep_5),
        .I5(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/underflow__1 ),
        .O(spike_carry_i_146__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000EEE)) 
    spike_carry_i_147
       (.I0(spike_carry_i_121_1),
        .I1(spike_carry_i_121_0),
        .I2(spike_carry_i_96_n_0),
        .I3(spike_carry_i_95_n_0),
        .I4(x_reg_rep_1),
        .O(\noise_out_reg_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000EEE)) 
    spike_carry_i_147__0
       (.I0(spike_carry_i_159__0_1),
        .I1(spike_carry_i_159__0_0),
        .I2(spike_carry_i_96__0_n_0),
        .I3(spike_carry_i_95__0_n_0),
        .I4(x_reg_rep_5),
        .O(\noise_out_reg_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h6FF9FFFFFFFFFFFF)) 
    spike_carry_i_148
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(noise_out_reg_0[1]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg_0[0]),
        .I4(P[2]),
        .I5(\mult/biased_sum_exponent [2]),
        .O(spike_carry_i_148_n_0));
  LUT6 #(
    .INIT(64'h6FF9FFFFFFFFFFFF)) 
    spike_carry_i_148__0
       (.I0(DOBDO[11]),
        .I1(noise_out_reg[1]),
        .I2(DOBDO[10]),
        .I3(noise_out_reg[0]),
        .I4(spike_carry_i_83__0[2]),
        .I5(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [2]),
        .O(spike_carry_i_148__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    spike_carry_i_149
       (.I0(\mult/u3/c_3__0 ),
        .I1(temperature_multiplier_out_reg[13]),
        .I2(\mult/u2/c_3__3 ),
        .I3(noise_out_reg_0[3]),
        .O(\mult/biased_sum_exponent [3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    spike_carry_i_149__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ),
        .I3(noise_out_reg[3]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [3]));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_15
       (.I0(result0[4]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry_i_42_n_0),
        .I3(spike_carry_i_43_n_0),
        .I4(spike_carry_i_44_n_0),
        .I5(spike_carry_i_45_n_0),
        .O(spike_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAA999955556666A)) 
    spike_carry_i_150
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg_0[1]),
        .I2(noise_out_reg_0[0]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(temperature_multiplier_out_reg[11]),
        .I5(noise_out_reg_0[2]),
        .O(\mult/biased_sum_exponent [2]));
  LUT6 #(
    .INIT(64'hAAA999955556666A)) 
    spike_carry_i_150__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [12]),
        .I1(noise_out_reg[1]),
        .I2(noise_out_reg[0]),
        .I3(DOBDO[10]),
        .I4(DOBDO[11]),
        .I5(noise_out_reg[2]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80020280)) 
    spike_carry_i_151
       (.I0(P[2]),
        .I1(noise_out_reg_0[0]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg_0[1]),
        .I4(temperature_multiplier_out_reg[11]),
        .O(spike_carry_i_151_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h9996)) 
    spike_carry_i_152
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(noise_out_reg_0[1]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg_0[0]),
        .O(\mult/biased_sum_exponent [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h9996)) 
    spike_carry_i_152__0
       (.I0(DOBDO[11]),
        .I1(noise_out_reg[1]),
        .I2(DOBDO[10]),
        .I3(noise_out_reg[0]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [1]));
  LUT6 #(
    .INIT(64'h6888888188818111)) 
    spike_carry_i_153
       (.I0(temperature_multiplier_out_reg[14]),
        .I1(noise_out_reg_0[4]),
        .I2(temperature_multiplier_out_reg[13]),
        .I3(noise_out_reg_0[3]),
        .I4(\mult/u2/c_3__3 ),
        .I5(\mult/u3/c_3__0 ),
        .O(x_reg_rep_1));
  LUT6 #(
    .INIT(64'h6888888188818111)) 
    spike_carry_i_153__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [14]),
        .I1(noise_out_reg[4]),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I3(noise_out_reg[3]),
        .I4(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ),
        .I5(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ),
        .O(x_reg_rep_5));
  LUT4 #(
    .INIT(16'h8000)) 
    spike_carry_i_154
       (.I0(spike_carry_i_162_n_0),
        .I1(spike_carry_i_174_n_0),
        .I2(spike_carry_i_161_n_0),
        .I3(spike_carry_i_175_n_0),
        .O(x_reg_rep_2));
  LUT4 #(
    .INIT(16'h8000)) 
    spike_carry_i_154__0
       (.I0(spike_carry_i_162__0_n_0),
        .I1(spike_carry_i_174__0_n_0),
        .I2(spike_carry_i_161__0_n_0),
        .I3(spike_carry_i_175__0_n_0),
        .O(x_reg_rep_6));
  LUT6 #(
    .INIT(64'hFFFFC84CFFFFC8C8)) 
    spike_carry_i_159
       (.I0(\mult/biased_sum_exponent [2]),
        .I1(\noise_out_reg_reg[12] ),
        .I2(\mult/biased_sum_exponent [1]),
        .I3(\mult/sum_exponent ),
        .I4(spike_carry_i_146_n_0),
        .I5(P[2]),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'hFFFFC84CFFFFC8C8)) 
    spike_carry_i_159__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [2]),
        .I1(\noise_out_reg_reg[12]_0 ),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [1]),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/sum_exponent ),
        .I4(spike_carry_i_146__0_n_0),
        .I5(spike_carry_i_83__0[2]),
        .O(tmp_4));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_15__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [4]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry_i_42__0_n_0),
        .I3(spike_carry_i_43__0_n_0),
        .I4(spike_carry_i_44__0_n_0),
        .I5(spike_carry_i_45__0_n_0),
        .O(spike_carry_i_15__0_n_0));
  LUT6 #(
    .INIT(64'h000000000660FFFF)) 
    spike_carry_i_160
       (.I0(P[2]),
        .I1(\mult/sum_exponent ),
        .I2(\mult/biased_sum_exponent [3]),
        .I3(spike_carry_i_148_n_0),
        .I4(\noise_out_reg_reg[12] ),
        .I5(spike_carry_i_146_n_0),
        .O(tmp_2));
  LUT6 #(
    .INIT(64'h000000000660FFFF)) 
    spike_carry_i_160__0
       (.I0(spike_carry_i_83__0[2]),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/sum_exponent ),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [3]),
        .I3(spike_carry_i_148__0_n_0),
        .I4(\noise_out_reg_reg[12]_0 ),
        .I5(spike_carry_i_146__0_n_0),
        .O(tmp_6));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_161
       (.I0(temperature_multiplier_out_reg[11]),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(DOADO[9]),
        .I3(DOADO[8]),
        .O(spike_carry_i_161_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_161__0
       (.I0(DOBDO[11]),
        .I1(DOBDO[10]),
        .I2(DOBDO[9]),
        .I3(DOBDO[8]),
        .O(spike_carry_i_161__0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_162
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .I2(DOADO[5]),
        .I3(DOADO[4]),
        .O(spike_carry_i_162_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_162__0
       (.I0(DOBDO[7]),
        .I1(DOBDO[6]),
        .I2(DOBDO[5]),
        .I3(DOBDO[4]),
        .O(spike_carry_i_162__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h69FF)) 
    spike_carry_i_168
       (.I0(temperature_multiplier_out_reg[13]),
        .I1(\mult/u2/c_3__3 ),
        .I2(noise_out_reg_0[3]),
        .I3(\mult/u3/c_3__0 ),
        .O(spike_carry_i_168_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h69FF)) 
    spike_carry_i_168__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ),
        .I2(noise_out_reg[3]),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ),
        .O(spike_carry_i_168__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    spike_carry_i_169
       (.I0(temperature_multiplier_out_reg[13]),
        .I1(noise_out_reg_0[3]),
        .I2(\mult/u2/c_3__3 ),
        .O(\mult/u2/c_4__3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    spike_carry_i_169__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I1(noise_out_reg[3]),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_4__3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    spike_carry_i_17
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry_i_47_n_0),
        .I2(spike_carry_i_48_n_0),
        .I3(spike_carry_i_49_n_0),
        .I4(spike_carry_i_50_n_0),
        .I5(spike_carry_i_44_n_0),
        .O(spike_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFFFF)) 
    spike_carry_i_170
       (.I0(\mult/biased_sum_exponent [2]),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(noise_out_reg_0[0]),
        .I3(P[2]),
        .I4(\mult/biased_sum_exponent [1]),
        .I5(\mult/biased_sum_exponent [3]),
        .O(spike_carry_i_170_n_0));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFFFF)) 
    spike_carry_i_170__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [2]),
        .I1(DOBDO[10]),
        .I2(noise_out_reg[0]),
        .I3(spike_carry_i_83__0[2]),
        .I4(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [1]),
        .I5(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [3]),
        .O(spike_carry_i_170__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000117)) 
    spike_carry_i_171
       (.I0(\mult/u3/c_3__0 ),
        .I1(\mult/u2/c_3__3 ),
        .I2(noise_out_reg_0[3]),
        .I3(temperature_multiplier_out_reg[13]),
        .I4(noise_out_reg_0[4]),
        .I5(temperature_multiplier_out_reg[14]),
        .O(\mult/underflow__1 ));
  LUT6 #(
    .INIT(64'h0000000000000117)) 
    spike_carry_i_171__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ),
        .I2(noise_out_reg[3]),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I4(noise_out_reg[4]),
        .I5(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [14]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/underflow__1 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    spike_carry_i_172
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg_0[2]),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg_0[0]),
        .I4(noise_out_reg_0[1]),
        .I5(temperature_multiplier_out_reg[11]),
        .O(\mult/u3/c_3__0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    spike_carry_i_172__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [12]),
        .I1(noise_out_reg[2]),
        .I2(DOBDO[10]),
        .I3(noise_out_reg[0]),
        .I4(noise_out_reg[1]),
        .I5(DOBDO[11]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u3/c_3__0 ));
  LUT6 #(
    .INIT(64'hEEE8E8E8E8888888)) 
    spike_carry_i_173
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(noise_out_reg_0[2]),
        .I2(temperature_multiplier_out_reg[11]),
        .I3(temperature_multiplier_out_reg[10]),
        .I4(noise_out_reg_0[0]),
        .I5(noise_out_reg_0[1]),
        .O(\mult/u2/c_3__3 ));
  LUT6 #(
    .INIT(64'hEEE8E8E8E8888888)) 
    spike_carry_i_173__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [12]),
        .I1(noise_out_reg[2]),
        .I2(DOBDO[11]),
        .I3(DOBDO[10]),
        .I4(noise_out_reg[0]),
        .I5(noise_out_reg[1]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/u2/c_3__3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_174
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .I2(DOADO[3]),
        .I3(DOADO[2]),
        .O(spike_carry_i_174_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_174__0
       (.I0(DOBDO[1]),
        .I1(DOBDO[0]),
        .I2(DOBDO[3]),
        .I3(DOBDO[2]),
        .O(spike_carry_i_174__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_175
       (.I0(temperature_multiplier_out_reg[15]),
        .I1(temperature_multiplier_out_reg[14]),
        .I2(temperature_multiplier_out_reg[13]),
        .I3(temperature_multiplier_out_reg[12]),
        .O(spike_carry_i_175_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spike_carry_i_175__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [15]),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [14]),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [12]),
        .O(spike_carry_i_175__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_178
       (.I0(temperature_multiplier_out_reg[10]),
        .I1(noise_out_reg_0[0]),
        .O(\mult/sum_exponent ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike_carry_i_178__0
       (.I0(DOBDO[10]),
        .I1(noise_out_reg[0]),
        .O(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/sum_exponent ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    spike_carry_i_17__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry_i_47__0_n_0),
        .I2(spike_carry_i_48__0_n_0),
        .I3(spike_carry_i_49__0_n_0),
        .I4(spike_carry_i_50__0_n_0),
        .I5(spike_carry_i_44__0_n_0),
        .O(spike_carry_i_17__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_19
       (.I0(result0[2]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry_i_51_n_0),
        .I3(spike_carry_i_52_n_0),
        .I4(spike_carry_i_44_n_0),
        .I5(spike_carry_i_53_n_0),
        .O(spike_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike_carry_i_19__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [2]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry_i_51__0_n_0),
        .I3(spike_carry_i_52__0_n_0),
        .I4(spike_carry_i_44__0_n_0),
        .I5(spike_carry_i_53__0_n_0),
        .O(spike_carry_i_19__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_1__0
       (.I0(spike_carry_i_9__0_n_0),
        .I1(membrane_compare__14[2]),
        .I2(\unit1/neuron_ensemble_inst/result0 [7]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry_i_13__0_n_0),
        .I5(spike_carry_8),
        .O(\selected_membrane_reg_reg[6] [3]));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_2
       (.I0(spike_carry_i_15_n_0),
        .I1(membrane_compare__14_0[1]),
        .I2(result0[5]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry_i_17_n_0),
        .I5(spike_carry_2),
        .O(DI[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_21
       (.CI(1'b0),
        .CO({spike_carry_i_21_n_0,spike_carry_i_21_n_1,spike_carry_i_21_n_2,spike_carry_i_21_n_3}),
        .CYINIT(spike_carry_i_54_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[4:1]),
        .S({spike_carry_i_55_n_0,spike_carry_i_56_n_0,spike_carry_i_57_n_0,spike_carry_i_58_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike_carry_i_21__0
       (.CI(1'b0),
        .CO({spike_carry_i_21__0_n_0,spike_carry_i_21__0_n_1,spike_carry_i_21__0_n_2,spike_carry_i_21__0_n_3}),
        .CYINIT(spike_carry_i_54__0_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\unit1/neuron_ensemble_inst/result0 [4:1]),
        .S({spike_carry_i_55__0_n_0,spike_carry_i_56__0_n_0,spike_carry_i_57__0_n_0,spike_carry_i_58__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    spike_carry_i_22
       (.I0(spike_carry_i_59_n_0),
        .I1(spike_carry_i_60_n_0),
        .I2(spike_carry_i_61_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry_i_40_n_0),
        .I5(spike_carry_i_27_n_0),
        .O(spike_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    spike_carry_i_22__0
       (.I0(spike_carry_i_59__0_n_0),
        .I1(spike_carry_i_60__0_n_0),
        .I2(spike_carry_i_61__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry_i_40__0_n_0),
        .I5(spike_carry_i_27__1_n_0),
        .O(spike_carry_i_22__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    spike_carry_i_24
       (.I0(spike_carry_i_44_n_0),
        .I1(spike_carry_i_62_n_0),
        .I2(spike_carry_i_27_n_0),
        .I3(spike_carry_i_63_n_0),
        .I4(spike_carry_i_64_n_0),
        .I5(spike_carry_i_65_n_0),
        .O(spike_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    spike_carry_i_24__0
       (.I0(spike_carry_i_44__0_n_0),
        .I1(spike_carry_i_62__1_n_0),
        .I2(spike_carry_i_27__1_n_0),
        .I3(spike_carry_i_63__0_n_0),
        .I4(spike_carry_i_64__0_n_0),
        .I5(spike_carry_i_65__0_n_0),
        .O(spike_carry_i_24__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_25
       (.I0(spike_carry_i_61_n_0),
        .I1(spike_carry_i_66_n_0),
        .I2(spike_carry_i_67_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry_i_68_n_0),
        .I5(spike_carry_i_69_n_0),
        .O(spike_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    spike_carry_i_25__0
       (.I0(spike_carry_i_61__0_n_0),
        .I1(spike_carry_i_66__0_n_0),
        .I2(spike_carry_i_67__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry_i_68__0_n_0),
        .I5(spike_carry_i_69__0_n_0),
        .O(spike_carry_i_25__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h2228)) 
    spike_carry_i_27
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h2228)) 
    spike_carry_i_27__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(x_reg_rep_4),
        .O(spike_carry_i_27__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_28
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_45_0),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_51_2),
        .I4(spike_carry_i_78_n_0),
        .I5(spike_carry_i_79_n_0),
        .O(spike_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_28__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry_i_19__0_1),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry__0_i_18__0_2),
        .I4(spike_carry_i_78__0_n_0),
        .I5(spike_carry_i_79__1_n_0),
        .O(spike_carry_i_28__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_29
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry_i_76_n_0),
        .I2(spike_carry_i_51_0),
        .I3(spike_carry_i_24_1),
        .I4(spike_carry_i_74_n_0),
        .I5(spike_carry_i_82_n_0),
        .O(spike_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_29__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry_i_76__1_n_0),
        .I2(spike_carry_i_19__0_2),
        .I3(spike_carry_i_25__0_1),
        .I4(spike_carry_i_74__1_n_0),
        .I5(spike_carry_i_82__1_n_0),
        .O(spike_carry_i_29__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_2__0
       (.I0(spike_carry_i_15__0_n_0),
        .I1(membrane_compare__14[1]),
        .I2(\unit1/neuron_ensemble_inst/result0 [5]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry_i_17__0_n_0),
        .I5(spike_carry_7),
        .O(\selected_membrane_reg_reg[6] [2]));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_3
       (.I0(spike_carry_i_19_n_0),
        .I1(membrane_compare__14_0[0]),
        .I2(result0[3]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry_i_22_n_0),
        .I5(spike_carry_1),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    spike_carry_i_30
       (.I0(spike_carry_i_9_0),
        .I1(spike_carry_i_84_n_0),
        .I2(spike_carry_i_85_n_0),
        .I3(spike_carry_i_61_n_0),
        .I4(spike_carry_i_86_n_0),
        .I5(spike_carry_i_68_n_0),
        .O(spike_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    spike_carry_i_30__0
       (.I0(spike_carry_i_9__0_0),
        .I1(spike_carry_i_84__0_n_0),
        .I2(spike_carry_i_85__1_n_0),
        .I3(spike_carry_i_61__0_n_0),
        .I4(spike_carry_i_86__1_n_0),
        .I5(spike_carry_i_68__0_n_0),
        .O(spike_carry_i_30__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000070707)) 
    spike_carry_i_32
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry__0_i_38_n_0),
        .I2(spike_carry__0_i_53_n_0),
        .I3(spike_carry_i_27_n_0),
        .I4(spike_carry_i_91_n_0),
        .I5(spike_carry_i_92_n_0),
        .O(spike_carry_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000000070707)) 
    spike_carry_i_32__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry__0_i_38__0_n_0),
        .I2(spike_carry__0_i_53__0_n_0),
        .I3(spike_carry_i_27__1_n_0),
        .I4(spike_carry_i_91__0_n_0),
        .I5(spike_carry_i_92__0_n_0),
        .O(spike_carry_i_32__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_33
       (.I0(spike_carry_i_13_n_0),
        .O(spike_carry_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_33__0
       (.I0(spike_carry_i_13__0_n_0),
        .O(spike_carry_i_33__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry_i_34
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry_i_28_n_0),
        .I2(spike_carry_i_29_n_0),
        .I3(spike_carry_i_93_n_0),
        .I4(spike_carry_i_94_n_0),
        .I5(spike_carry_i_44_n_0),
        .O(spike_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike_carry_i_34__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry_i_28__0_n_0),
        .I2(spike_carry_i_29__0_n_0),
        .I3(spike_carry_i_93__0_n_0),
        .I4(spike_carry_i_94__0_n_0),
        .I5(spike_carry_i_44__0_n_0),
        .O(spike_carry_i_34__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_35
       (.I0(spike_carry_i_17_n_0),
        .O(spike_carry_i_35_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_35__0
       (.I0(spike_carry_i_17__0_n_0),
        .O(spike_carry_i_35__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    spike_carry_i_36
       (.I0(spike_carry_i_95_n_0),
        .I1(spike_carry_i_96_n_0),
        .I2(spike_carry_i_121_0),
        .I3(spike_carry_i_121_1),
        .O(spike_carry_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    spike_carry_i_36__0
       (.I0(spike_carry_i_95__0_n_0),
        .I1(spike_carry_i_96__0_n_0),
        .I2(spike_carry_i_159__0_0),
        .I3(spike_carry_i_159__0_1),
        .O(spike_carry_i_36__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_37
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_52_0),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_64_2),
        .I4(spike_carry_i_101_n_0),
        .I5(spike_carry_i_102_n_0),
        .O(spike_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_37__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry_i_24__0_0),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry__0_i_18__0_1),
        .I4(spike_carry_i_101__0_n_0),
        .I5(spike_carry_i_102__1_n_0),
        .O(spike_carry_i_37__0_n_0));
  LUT6 #(
    .INIT(64'h8080808080FF8080)) 
    spike_carry_i_38
       (.I0(spike_carry_i_103_n_0),
        .I1(spike_carry_i_104_n_0),
        .I2(spike_carry_i_61_n_0),
        .I3(spike_carry_i_84_n_0),
        .I4(spike_carry_i_24_0),
        .I5(spike_carry_i_106_n_0),
        .O(spike_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h8080808080FF8080)) 
    spike_carry_i_38__0
       (.I0(spike_carry_i_103__0_n_0),
        .I1(spike_carry_i_104__1_n_0),
        .I2(spike_carry_i_61__0_n_0),
        .I3(spike_carry_i_84__0_n_0),
        .I4(spike_carry__0_i_25__0_0),
        .I5(spike_carry_i_106__0_n_0),
        .O(spike_carry_i_38__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_39
       (.I0(spike_carry_i_13_0),
        .I1(spike_carry_i_104_n_0),
        .I2(spike_carry_i_68_n_0),
        .O(spike_carry_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_39__0
       (.I0(spike_carry_i_19__0_0),
        .I1(spike_carry_i_104__1_n_0),
        .I2(spike_carry_i_68__0_n_0),
        .O(spike_carry_i_39__0_n_0));
  LUT6 #(
    .INIT(64'h080008888F888FFF)) 
    spike_carry_i_3__0
       (.I0(spike_carry_i_19__0_n_0),
        .I1(membrane_compare__14[0]),
        .I2(\unit1/neuron_ensemble_inst/result0 [3]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry_i_22__0_n_0),
        .I5(spike_carry_6),
        .O(\selected_membrane_reg_reg[6] [1]));
  LUT6 #(
    .INIT(64'h040004444F444FFF)) 
    spike_carry_i_4
       (.I0(spike_carry_i_24_n_0),
        .I1(spike_carry_0),
        .I2(result0[1]),
        .I3(spike_carry_i_12_n_0),
        .I4(spike_carry_i_25_n_0),
        .I5(spike_carry),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hFFF0F0F0FEFEFAFA)) 
    spike_carry_i_40
       (.I0(spike_carry_i_108_n_0),
        .I1(spike_carry_i_64_1),
        .I2(spike_carry_i_110_n_0),
        .I3(spike_carry_i_64_3),
        .I4(spike_carry_i_112_n_0),
        .I5(\noise_out_reg_reg[10]_0 ),
        .O(spike_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'hFFF0F0F0FEFEFAFA)) 
    spike_carry_i_40__0
       (.I0(spike_carry_i_108__0_n_0),
        .I1(spike_carry_i_25__0_0),
        .I2(spike_carry_i_110__1_n_0),
        .I3(spike_carry__0_i_25__0_1),
        .I4(spike_carry_i_112__1_n_0),
        .I5(\noise_out_reg_reg[10]_2 ),
        .O(spike_carry_i_40__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    spike_carry_i_41
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    spike_carry_i_41__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(x_reg_rep_4),
        .O(spike_carry_i_41__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry_i_42
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry_i_114_n_0),
        .I2(spike_carry_i_115_n_0),
        .I3(spike_carry_i_45_0),
        .I4(spike_carry_i_76_n_0),
        .I5(spike_carry_i_116_n_0),
        .O(spike_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    spike_carry_i_42__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry_i_114__1_n_0),
        .I2(spike_carry_i_115__0_n_0),
        .I3(spike_carry_i_19__0_1),
        .I4(spike_carry_i_76__1_n_0),
        .I5(spike_carry_i_116__1_n_0),
        .O(spike_carry_i_42__0_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_43
       (.I0(spike_carry_i_61_n_0),
        .I1(\noise_out_reg_reg[10] ),
        .I2(spike_carry_i_118_n_0),
        .I3(spike_carry_i_64_0),
        .I4(spike_carry_i_120_n_0),
        .O(spike_carry_i_43_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_43__0
       (.I0(spike_carry_i_61__0_n_0),
        .I1(\noise_out_reg_reg[10]_1 ),
        .I2(spike_carry_i_118__1_n_0),
        .I3(spike_carry__0_i_55__0_0),
        .I4(spike_carry_i_120__1_n_0),
        .O(spike_carry_i_43__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry_i_44
       (.I0(spike_carry_i_24_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    spike_carry_i_44__0
       (.I0(spike_carry__0_i_25__0_0),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(x_reg_rep_4),
        .O(spike_carry_i_44__0_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    spike_carry_i_45
       (.I0(spike_carry_i_41_n_0),
        .I1(spike_carry_i_62_n_0),
        .I2(spike_carry_i_122_n_0),
        .I3(tmp),
        .I4(spike_carry_i_124_n_0),
        .I5(spike_carry_i_68_n_0),
        .O(spike_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    spike_carry_i_45__0
       (.I0(spike_carry_i_41__1_n_0),
        .I1(spike_carry_i_62__1_n_0),
        .I2(spike_carry_i_122__1_n_0),
        .I3(tmp_3),
        .I4(spike_carry_i_124__0_n_0),
        .I5(spike_carry_i_68__0_n_0),
        .O(spike_carry_i_45__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_47
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_64_3),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_52_0),
        .I4(spike_carry_i_130_n_0),
        .I5(spike_carry_i_131_n_0),
        .O(spike_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_47__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry__0_i_25__0_1),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry_i_24__0_0),
        .I4(spike_carry_i_130__0_n_0),
        .I5(spike_carry_i_131__1_n_0),
        .O(spike_carry_i_47__0_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_48
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64_1),
        .I2(spike_carry_i_24_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_41_n_0),
        .O(spike_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_48__0
       (.I0(\noise_out_reg_reg[10]_2 ),
        .I1(spike_carry_i_25__0_0),
        .I2(spike_carry_i_25__0_1),
        .I3(\noise_out_reg_reg[14]_2 ),
        .I4(x_reg_rep_4),
        .I5(spike_carry_i_41__1_n_0),
        .O(spike_carry_i_48__0_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_49
       (.I0(spike_carry_i_68_n_0),
        .I1(\noise_out_reg_reg[10] ),
        .I2(spike_carry_i_118_n_0),
        .I3(spike_carry_i_64_0),
        .I4(spike_carry_i_120_n_0),
        .O(spike_carry_i_49_n_0));
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    spike_carry_i_49__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(\noise_out_reg_reg[10]_1 ),
        .I2(spike_carry_i_118__1_n_0),
        .I3(spike_carry__0_i_55__0_0),
        .I4(spike_carry_i_120__1_n_0),
        .O(spike_carry_i_49__0_n_0));
  LUT6 #(
    .INIT(64'h040004444F444FFF)) 
    spike_carry_i_4__0
       (.I0(spike_carry_i_24__0_n_0),
        .I1(spike_carry_5),
        .I2(\unit1/neuron_ensemble_inst/result0 [1]),
        .I3(spike_carry_i_12__0_n_0),
        .I4(spike_carry_i_25__0_n_0),
        .I5(spike_carry_4),
        .O(\selected_membrane_reg_reg[6] [0]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_5
       (.I0(spike_carry_3),
        .I1(spike_carry_i_13_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[7]),
        .I4(spike_carry_i_9_n_0),
        .I5(membrane_compare__14_0[2]),
        .O(S[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_50
       (.I0(spike_carry_i_61_n_0),
        .I1(spike_carry_i_86_n_0),
        .O(spike_carry_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_50__0
       (.I0(spike_carry_i_61__0_n_0),
        .I1(spike_carry_i_86__1_n_0),
        .O(spike_carry_i_50__0_n_0));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    spike_carry_i_51
       (.I0(spike_carry_i_68_n_0),
        .I1(spike_carry_i_133_n_0),
        .I2(spike_carry_i_45_0),
        .I3(spike_carry_i_134_n_0),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_135_n_0),
        .O(spike_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    spike_carry_i_51__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(spike_carry_i_133__1_n_0),
        .I2(spike_carry_i_19__0_1),
        .I3(spike_carry_i_134__1_n_0),
        .I4(\noise_out_reg_reg[10]_1 ),
        .I5(spike_carry_i_135__1_n_0),
        .O(spike_carry_i_51__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_52
       (.I0(spike_carry_i_61_n_0),
        .I1(spike_carry_i_118_n_0),
        .I2(spike_carry_i_13_0),
        .I3(spike_carry_i_136_n_0),
        .O(spike_carry_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_52__0
       (.I0(spike_carry_i_61__0_n_0),
        .I1(spike_carry_i_118__1_n_0),
        .I2(spike_carry_i_19__0_0),
        .I3(spike_carry_i_136__1_n_0),
        .O(spike_carry_i_52__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_53
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry_i_76_n_0),
        .I2(spike_carry_i_51_0),
        .I3(spike_carry_i_24_1),
        .I4(spike_carry_i_74_n_0),
        .I5(spike_carry_i_82_n_0),
        .O(spike_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    spike_carry_i_53__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry_i_76__1_n_0),
        .I2(spike_carry_i_19__0_2),
        .I3(spike_carry_i_25__0_1),
        .I4(spike_carry_i_74__1_n_0),
        .I5(spike_carry_i_82__1_n_0),
        .O(spike_carry_i_53__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_54
       (.I0(spike_carry_i_24_n_0),
        .O(spike_carry_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_54__0
       (.I0(spike_carry_i_24__0_n_0),
        .O(spike_carry_i_54__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike_carry_i_55
       (.I0(spike_carry_i_27_n_0),
        .I1(spike_carry__0_i_38_n_0),
        .I2(spike_carry_i_21_1),
        .I3(spike_carry_i_61_n_0),
        .I4(spike_carry_i_44_n_0),
        .I5(spike_carry_i_45_n_0),
        .O(spike_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike_carry_i_55__0
       (.I0(spike_carry_i_27__1_n_0),
        .I1(spike_carry__0_i_38__0_n_0),
        .I2(spike_carry_i_21__0_1),
        .I3(spike_carry_i_61__0_n_0),
        .I4(spike_carry_i_44__0_n_0),
        .I5(spike_carry_i_45__0_n_0),
        .O(spike_carry_i_55__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_56
       (.I0(spike_carry_i_22_n_0),
        .O(spike_carry_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_56__0
       (.I0(spike_carry_i_22__0_n_0),
        .O(spike_carry_i_56__0_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry_i_57
       (.I0(spike_carry_i_68_n_0),
        .I1(spike_carry_i_66_n_0),
        .I2(spike_carry_i_52_n_0),
        .I3(spike_carry_i_44_n_0),
        .I4(spike_carry_i_21_0),
        .I5(spike_carry_i_27_n_0),
        .O(spike_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike_carry_i_57__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(spike_carry_i_66__0_n_0),
        .I2(spike_carry_i_52__0_n_0),
        .I3(spike_carry_i_44__0_n_0),
        .I4(spike_carry_i_21__0_0),
        .I5(spike_carry_i_27__1_n_0),
        .O(spike_carry_i_57__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_58
       (.I0(spike_carry_i_25_n_0),
        .O(spike_carry_i_58_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike_carry_i_58__0
       (.I0(spike_carry_i_25__0_n_0),
        .O(spike_carry_i_58__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_59
       (.I0(spike_carry_i_68_n_0),
        .I1(spike_carry_i_118_n_0),
        .I2(spike_carry_i_13_0),
        .I3(spike_carry_i_136_n_0),
        .O(spike_carry_i_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    spike_carry_i_59__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(spike_carry_i_118__1_n_0),
        .I2(spike_carry_i_19__0_0),
        .I3(spike_carry_i_136__1_n_0),
        .O(spike_carry_i_59__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_5__0
       (.I0(spike_carry_8),
        .I1(spike_carry_i_13__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [7]),
        .I4(spike_carry_i_9__0_n_0),
        .I5(membrane_compare__14[2]),
        .O(\selected_membrane_reg_reg[7] [3]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_6
       (.I0(spike_carry_2),
        .I1(spike_carry_i_17_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[5]),
        .I4(spike_carry_i_15_n_0),
        .I5(membrane_compare__14_0[1]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hFF00E400AA00E400)) 
    spike_carry_i_60
       (.I0(tmp_1),
        .I1(spike_carry_i_45_0),
        .I2(spike_carry_i_51_1),
        .I3(tmp),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_51_2),
        .O(spike_carry_i_60_n_0));
  LUT6 #(
    .INIT(64'hFF00E400AA00E400)) 
    spike_carry_i_60__0
       (.I0(tmp_5),
        .I1(spike_carry_i_19__0_1),
        .I2(spike_carry__0_i_21__0_0),
        .I3(tmp_3),
        .I4(\noise_out_reg_reg[10]_1 ),
        .I5(spike_carry__0_i_18__0_2),
        .O(spike_carry_i_60__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000002AA)) 
    spike_carry_i_61
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000002AA)) 
    spike_carry_i_61__0
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(x_reg_rep_4),
        .O(spike_carry_i_61__0_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_62
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\noise_out_reg_reg[14] [1]),
        .I4(spike_carry_i_24_1),
        .O(spike_carry_i_62_n_0));
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_62__1
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\noise_out_reg_reg[14]_1 ),
        .I4(spike_carry_i_25__0_1),
        .O(spike_carry_i_62__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    spike_carry_i_63
       (.I0(spike_carry_i_141_n_0),
        .I1(spike_carry_i_135_n_0),
        .I2(\noise_out_reg_reg[10] ),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    spike_carry_i_63__0
       (.I0(spike_carry_i_141__0_n_0),
        .I1(spike_carry_i_135__1_n_0),
        .I2(\noise_out_reg_reg[10]_1 ),
        .I3(x_reg_rep_4),
        .O(spike_carry_i_63__0_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
    spike_carry_i_64
       (.I0(spike_carry_i_142_n_0),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(spike_carry_i_143_n_0),
        .I3(spike_carry_i_52_0),
        .I4(spike_carry_i_144_n_0),
        .I5(spike_carry_i_145_n_0),
        .O(spike_carry_i_64_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
    spike_carry_i_64__0
       (.I0(spike_carry_i_142__0_n_0),
        .I1(x_reg_rep_4),
        .I2(spike_carry_i_143__1_n_0),
        .I3(spike_carry_i_24__0_0),
        .I4(spike_carry_i_144__1_n_0),
        .I5(spike_carry_i_145__1_n_0),
        .O(spike_carry_i_64__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h55578000)) 
    spike_carry_i_65
       (.I0(sel0[3]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .O(spike_carry_i_65_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h55578000)) 
    spike_carry_i_65__0
       (.I0(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .O(spike_carry_i_65__0_n_0));
  LUT6 #(
    .INIT(64'hFC00AAAF0C00AAAF)) 
    spike_carry_i_66
       (.I0(spike_carry_i_135_n_0),
        .I1(spike_carry_i_45_0),
        .I2(tmp_1),
        .I3(tmp),
        .I4(\noise_out_reg_reg[10] ),
        .I5(spike_carry_i_51_1),
        .O(spike_carry_i_66_n_0));
  LUT6 #(
    .INIT(64'hFC00AAAF0C00AAAF)) 
    spike_carry_i_66__0
       (.I0(spike_carry_i_135__1_n_0),
        .I1(spike_carry_i_19__0_1),
        .I2(tmp_5),
        .I3(tmp_3),
        .I4(\noise_out_reg_reg[10]_1 ),
        .I5(spike_carry__0_i_21__0_0),
        .O(spike_carry_i_66__0_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_67
       (.I0(\noise_out_reg_reg[10]_0 ),
        .I1(spike_carry_i_64_1),
        .I2(spike_carry_i_24_1),
        .I3(\noise_out_reg_reg[14]_0 ),
        .I4(\noise_out_reg_reg[14] [0]),
        .I5(spike_carry_i_27_n_0),
        .O(spike_carry_i_67_n_0));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    spike_carry_i_67__0
       (.I0(\noise_out_reg_reg[10]_2 ),
        .I1(spike_carry_i_25__0_0),
        .I2(spike_carry_i_25__0_1),
        .I3(\noise_out_reg_reg[14]_2 ),
        .I4(x_reg_rep_4),
        .I5(spike_carry_i_27__1_n_0),
        .O(spike_carry_i_67__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h40AA0000)) 
    spike_carry_i_68
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_68_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h40AA0000)) 
    spike_carry_i_68__0
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(x_reg_rep_4),
        .O(spike_carry_i_68__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    spike_carry_i_69
       (.I0(\noise_out_reg_reg[10] ),
        .I1(spike_carry_i_118_n_0),
        .I2(spike_carry_i_52_0),
        .I3(spike_carry_i_144_n_0),
        .I4(spike_carry_i_145_n_0),
        .O(spike_carry_i_69_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    spike_carry_i_69__0
       (.I0(\noise_out_reg_reg[10]_1 ),
        .I1(spike_carry_i_118__1_n_0),
        .I2(spike_carry_i_24__0_0),
        .I3(spike_carry_i_144__1_n_0),
        .I4(spike_carry_i_145__1_n_0),
        .O(spike_carry_i_69__0_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_6__0
       (.I0(spike_carry_7),
        .I1(spike_carry_i_17__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [5]),
        .I4(spike_carry_i_15__0_n_0),
        .I5(membrane_compare__14[1]),
        .O(\selected_membrane_reg_reg[7] [2]));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_7
       (.I0(spike_carry_1),
        .I1(spike_carry_i_22_n_0),
        .I2(spike_carry_i_12_n_0),
        .I3(result0[3]),
        .I4(spike_carry_i_19_n_0),
        .I5(membrane_compare__14_0[0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hEAAE)) 
    spike_carry_i_70
       (.I0(spike_carry_i_146_n_0),
        .I1(\noise_out_reg_reg[12] ),
        .I2(spike_carry_i_148_n_0),
        .I3(\mult/biased_sum_exponent [3]),
        .O(sel0[3]));
  LUT4 #(
    .INIT(16'hEAAE)) 
    spike_carry_i_70__0
       (.I0(spike_carry_i_146__0_n_0),
        .I1(\noise_out_reg_reg[12]_0 ),
        .I2(spike_carry_i_148__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [3]),
        .O(\unit1/neuron_ensemble_inst/sel0 [3]));
  LUT4 #(
    .INIT(16'hAEEA)) 
    spike_carry_i_71
       (.I0(spike_carry_i_146_n_0),
        .I1(\noise_out_reg_reg[12] ),
        .I2(\mult/biased_sum_exponent [2]),
        .I3(spike_carry_i_151_n_0),
        .O(sel0[2]));
  LUT4 #(
    .INIT(16'hAEEA)) 
    spike_carry_i_71__0
       (.I0(spike_carry_i_146__0_n_0),
        .I1(\noise_out_reg_reg[12]_0 ),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [2]),
        .I3(spike_carry__0_i_83__0_0),
        .O(\unit1/neuron_ensemble_inst/sel0 [2]));
  LUT6 #(
    .INIT(64'hDFFDECCECCCCCCCC)) 
    spike_carry_i_72
       (.I0(P[2]),
        .I1(spike_carry_i_146_n_0),
        .I2(temperature_multiplier_out_reg[10]),
        .I3(noise_out_reg_0[0]),
        .I4(\mult/biased_sum_exponent [1]),
        .I5(\noise_out_reg_reg[12] ),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'hDFFDECCECCCCCCCC)) 
    spike_carry_i_72__0
       (.I0(spike_carry_i_83__0[2]),
        .I1(spike_carry_i_146__0_n_0),
        .I2(DOBDO[10]),
        .I3(noise_out_reg[0]),
        .I4(\unit1/neuron_ensemble_inst/flipping_unit_tb/mult/biased_sum_exponent [1]),
        .I5(\noise_out_reg_reg[12]_0 ),
        .O(\unit1/neuron_ensemble_inst/sel0 [1]));
  LUT5 #(
    .INIT(32'hBEAAEBAA)) 
    spike_carry_i_73
       (.I0(spike_carry_i_146_n_0),
        .I1(temperature_multiplier_out_reg[10]),
        .I2(noise_out_reg_0[0]),
        .I3(\noise_out_reg_reg[12] ),
        .I4(P[2]),
        .O(\noise_out_reg_reg[14] [0]));
  LUT5 #(
    .INIT(32'hBEAAEBAA)) 
    spike_carry_i_73__0
       (.I0(spike_carry_i_146__0_n_0),
        .I1(DOBDO[10]),
        .I2(noise_out_reg[0]),
        .I3(\noise_out_reg_reg[12]_0 ),
        .I4(spike_carry_i_83__0[2]),
        .O(x_reg_rep_4));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    spike_carry_i_74
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    spike_carry_i_74__1
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(x_reg_rep_4),
        .O(spike_carry_i_74__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0900)) 
    spike_carry_i_76
       (.I0(\noise_out_reg_reg[14] [1]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(\noise_out_reg_reg[14] [0]),
        .O(spike_carry_i_76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0900)) 
    spike_carry_i_76__1
       (.I0(\noise_out_reg_reg[14]_1 ),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(x_reg_rep_4),
        .O(spike_carry_i_76__1_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_78
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(spike_carry_i_64_3),
        .O(spike_carry_i_78_n_0));
  LUT6 #(
    .INIT(64'h1000011100000000)) 
    spike_carry_i_78__0
       (.I0(x_reg_rep_4),
        .I1(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I2(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(spike_carry__0_i_25__0_1),
        .O(spike_carry_i_78__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_79
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_52_0),
        .O(spike_carry_i_79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_79__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry_i_24__0_0),
        .O(spike_carry_i_79__1_n_0));
  LUT6 #(
    .INIT(64'h000056A656A60000)) 
    spike_carry_i_7__0
       (.I0(spike_carry_6),
        .I1(spike_carry_i_22__0_n_0),
        .I2(spike_carry_i_12__0_n_0),
        .I3(\unit1/neuron_ensemble_inst/result0 [3]),
        .I4(spike_carry_i_19__0_n_0),
        .I5(membrane_compare__14[0]),
        .O(\selected_membrane_reg_reg[7] [1]));
  LUT6 #(
    .INIT(64'h202A8A8010154540)) 
    spike_carry_i_8
       (.I0(spike_carry_i_24_n_0),
        .I1(result0[1]),
        .I2(spike_carry_i_12_n_0),
        .I3(spike_carry_i_25_n_0),
        .I4(spike_carry),
        .I5(spike_carry_0),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_82
       (.I0(sel0[1]),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(\noise_out_reg_reg[14] [1]),
        .I3(sel0[3]),
        .I4(spike_carry_i_64_1),
        .O(spike_carry_i_82_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike_carry_i_82__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I1(x_reg_rep_4),
        .I2(\noise_out_reg_reg[14]_1 ),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(spike_carry_i_25__0_0),
        .O(spike_carry_i_82__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    spike_carry_i_84
       (.I0(\noise_out_reg_reg[14] [0]),
        .I1(\noise_out_reg_reg[14] [1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike_carry_i_84_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    spike_carry_i_84__0
       (.I0(x_reg_rep_4),
        .I1(\noise_out_reg_reg[14]_1 ),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry_i_84__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h22400040)) 
    spike_carry_i_85
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(spike_carry_i_64_2),
        .I3(sel0[1]),
        .I4(spike_carry_i_64_0),
        .O(spike_carry_i_85_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h22400040)) 
    spike_carry_i_85__1
       (.I0(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I1(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I2(spike_carry__0_i_18__0_1),
        .I3(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I4(spike_carry__0_i_55__0_0),
        .O(spike_carry_i_85__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00C00AF0)) 
    spike_carry_i_86
       (.I0(spike_carry_i_51_2),
        .I1(spike_carry_i_51_1),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .O(spike_carry_i_86_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00C00AF0)) 
    spike_carry_i_86__1
       (.I0(spike_carry__0_i_18__0_2),
        .I1(spike_carry__0_i_21__0_0),
        .I2(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [3]),
        .I4(\unit1/neuron_ensemble_inst/sel0 [1]),
        .O(spike_carry_i_86__1_n_0));
  LUT6 #(
    .INIT(64'h202A8A8010154540)) 
    spike_carry_i_8__0
       (.I0(spike_carry_i_24__0_n_0),
        .I1(\unit1/neuron_ensemble_inst/result0 [1]),
        .I2(spike_carry_i_12__0_n_0),
        .I3(spike_carry_i_25__0_n_0),
        .I4(spike_carry_4),
        .I5(spike_carry_5),
        .O(\selected_membrane_reg_reg[7] [0]));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry_i_9
       (.I0(result0[6]),
        .I1(spike_carry_i_12_n_0),
        .I2(spike_carry_i_27_n_0),
        .I3(spike_carry_i_28_n_0),
        .I4(spike_carry_i_29_n_0),
        .I5(spike_carry_i_30_n_0),
        .O(spike_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_91
       (.I0(spike_carry_i_74_n_0),
        .I1(spike_carry_i_51_2),
        .I2(spike_carry_i_76_n_0),
        .I3(spike_carry_i_51_1),
        .I4(spike_carry__0_i_69_n_0),
        .I5(spike_carry__0_i_68_n_0),
        .O(spike_carry_i_91_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    spike_carry_i_91__0
       (.I0(spike_carry_i_74__1_n_0),
        .I1(spike_carry__0_i_18__0_2),
        .I2(spike_carry_i_76__1_n_0),
        .I3(spike_carry__0_i_21__0_0),
        .I4(spike_carry__0_i_69__0_n_0),
        .I5(spike_carry__0_i_68__1_n_0),
        .O(spike_carry_i_91__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    spike_carry_i_92
       (.I0(spike_carry_i_24_1),
        .I1(\noise_out_reg_reg[14] [0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\noise_out_reg_reg[14] [1]),
        .I5(sel0[3]),
        .O(spike_carry_i_92_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    spike_carry_i_92__0
       (.I0(spike_carry_i_25__0_1),
        .I1(x_reg_rep_4),
        .I2(\unit1/neuron_ensemble_inst/sel0 [1]),
        .I3(\unit1/neuron_ensemble_inst/sel0 [2]),
        .I4(\noise_out_reg_reg[14]_1 ),
        .I5(\unit1/neuron_ensemble_inst/sel0 [3]),
        .O(spike_carry_i_92__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_93
       (.I0(spike_carry_i_68_n_0),
        .I1(spike_carry_i_86_n_0),
        .O(spike_carry_i_93_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spike_carry_i_93__0
       (.I0(spike_carry_i_68__0_n_0),
        .I1(spike_carry_i_86__1_n_0),
        .O(spike_carry_i_93__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_94
       (.I0(spike_carry_i_13_0),
        .I1(spike_carry_i_104_n_0),
        .I2(spike_carry_i_61_n_0),
        .O(spike_carry_i_94_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    spike_carry_i_94__0
       (.I0(spike_carry_i_19__0_0),
        .I1(spike_carry_i_104__1_n_0),
        .I2(spike_carry_i_61__0_n_0),
        .O(spike_carry_i_94__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_95
       (.I0(temperature_multiplier_out_reg[12]),
        .I1(temperature_multiplier_out_reg[13]),
        .I2(temperature_multiplier_out_reg[14]),
        .I3(temperature_multiplier_out_reg[15]),
        .I4(spike_carry_i_161_n_0),
        .O(spike_carry_i_95_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_95__0
       (.I0(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [12]),
        .I1(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [13]),
        .I2(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [14]),
        .I3(\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg [15]),
        .I4(spike_carry_i_161__0_n_0),
        .O(spike_carry_i_95__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_96
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .I2(DOADO[0]),
        .I3(DOADO[1]),
        .I4(spike_carry_i_162_n_0),
        .O(spike_carry_i_96_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    spike_carry_i_96__0
       (.I0(DOBDO[2]),
        .I1(DOBDO[3]),
        .I2(DOBDO[0]),
        .I3(DOBDO[1]),
        .I4(spike_carry_i_162__0_n_0),
        .O(spike_carry_i_96__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike_carry_i_9__0
       (.I0(\unit1/neuron_ensemble_inst/result0 [6]),
        .I1(spike_carry_i_12__0_n_0),
        .I2(spike_carry_i_27__1_n_0),
        .I3(spike_carry_i_28__0_n_0),
        .I4(spike_carry_i_29__0_n_0),
        .I5(spike_carry_i_30__0_n_0),
        .O(spike_carry_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  LUT3 #(
    .INIT(8'hC1)) 
    \x[6]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(reset_flipping));
  LUT6 #(
    .INIT(64'hF700FF00FF00FF00)) 
    \x[6]_i_2__0 
       (.I0(x_reg[5]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_17_n_0),
        .I3(decrease_temp),
        .I4(x_reg[3]),
        .I5(x_reg[6]),
        .O(E));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \x[6]_i_3 
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_17_n_0),
        .I3(x_reg[4]),
        .I4(x_reg[6]),
        .O(\x[6]_i_3_n_0 ));
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
        .D(\x[6]_i_3_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "unit0/neuron_ensemble_inst/flipping_unit_tb/temperature_module_inst/x_reg_rep" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h43CA441D446644BC4521459C463246EF47C1487F495F4AB14C784EC9533363D0),
    .INIT_01(256'h40364053406E408F40B340D9410341304161418F41C942094250429E42F64359),
    .INIT_02(256'h3E1D3E373E523E6A3E873EA53EC53EE63F093F2E3F503F783FA33FD14001401A),
    .INIT_03(256'h3CF73D053D143D233D313D413D523D633D753D883D9B3DAD3DC23DD73DEE3E05),
    .INIT_04(256'h3C443C4D3C573C603C6A3C733C7E3C893C943C9F3CAB3CB73CC23CCE3CDB3CE9),
    .INIT_05(256'h3B973BA43BB13BBF3BCD3BDB3BE73BF63C023C0A3C123C1A3C223C2A3C323C3B),
    .INIT_06(256'h3AE83AF23AFC3B063B103B1A3B253B2E3B393B443B503B5B3B673B733B7E3B8A),
    .INIT_07(256'h3A643A6A3A723A7A3A823A8A3A923A9A3AA13AAA3AB23ABB3AC43ACD3AD63ADF),
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
    x_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,1'b0,x_reg_rep_i_3_n_0,x_reg_rep_i_4_n_0,x_reg_rep_i_5_n_0,x_reg_rep_i_6_n_0,x_reg_rep_i_7_n_0,x_reg_rep_i_8_n_0,x_reg_rep_i_9__0_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({temperature_multiplier_out_reg,DOADO}),
        .DOBDO({\unit1/neuron_ensemble_inst/flipping_unit_tb/temperature_multiplier_out_reg ,DOBDO}),
        .DOPADOP(NLW_x_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_x_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(x_reg_rep_7),
        .ENBWREN(x_reg_rep_8),
        .REGCEAREGCE(flipping_CE_4),
        .REGCEB(flipping_CE),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    x_reg_rep_i_17
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(x_reg_rep_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    x_reg_rep_i_3
       (.I0(x_reg[6]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_17_n_0),
        .I3(x_reg[3]),
        .I4(x_reg[5]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    x_reg_rep_i_4
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_17_n_0),
        .I3(x_reg[4]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    x_reg_rep_i_5
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_5_n_0));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    x_reg_rep_i_6
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_6_n_0));
  LUT6 #(
    .INIT(64'h006A6A6A006A6A00)) 
    x_reg_rep_i_7
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(x_reg_rep_i_7_n_0));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_8
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(x_reg_rep_i_8_n_0));
  LUT4 #(
    .INIT(16'h1514)) 
    x_reg_rep_i_9__0
       (.I0(x_reg[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(x_reg_rep_i_9__0_n_0));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module temperature_module_6
   (E,
    ADDRBWRADDR,
    decrease_temp,
    Q,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [6:0]ADDRBWRADDR;
  input decrease_temp;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [6:0]ADDRBWRADDR;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire reset_flipping;
  wire \x[0]_i_1__0_n_0 ;
  wire \x[1]_i_1__0_n_0 ;
  wire \x[2]_i_1__0_n_0 ;
  wire \x[3]_i_1__0_n_0 ;
  wire \x[4]_i_1__0_n_0 ;
  wire \x[5]_i_1__0_n_0 ;
  wire \x[6]_i_2__1_n_0 ;
  wire [6:0]x_reg;
  wire x_reg_rep_i_18_n_0;

  LUT6 #(
    .INIT(64'hF700FF00FF00FF00)) 
    i__i_1
       (.I0(x_reg[5]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_18_n_0),
        .I3(decrease_temp),
        .I4(x_reg[3]),
        .I5(x_reg[6]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__0 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1__0 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(\x[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1__0 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(\x[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1__0 
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[3]),
        .O(\x[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
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
  LUT3 #(
    .INIT(8'hC1)) 
    \x[6]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(reset_flipping));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \x[6]_i_2__1 
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_18_n_0),
        .I3(x_reg[4]),
        .I4(x_reg[6]),
        .O(\x[6]_i_2__1_n_0 ));
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
        .D(\x[6]_i_2__1_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    x_reg_rep_i_10
       (.I0(x_reg[6]),
        .I1(x_reg[4]),
        .I2(x_reg_rep_i_18_n_0),
        .I3(x_reg[3]),
        .I4(x_reg[5]),
        .I5(reset_flipping),
        .O(ADDRBWRADDR[6]));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    x_reg_rep_i_11
       (.I0(x_reg[5]),
        .I1(x_reg[3]),
        .I2(x_reg_rep_i_18_n_0),
        .I3(x_reg[4]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    x_reg_rep_i_12
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[3]),
        .I5(reset_flipping),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    x_reg_rep_i_13
       (.I0(x_reg[3]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[2]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'h006A6A6A006A6A00)) 
    x_reg_rep_i_14
       (.I0(x_reg[2]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'h06660660)) 
    x_reg_rep_i_15
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'h1514)) 
    x_reg_rep_i_16
       (.I0(x_reg[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(ADDRBWRADDR[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    x_reg_rep_i_18
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .I2(x_reg[2]),
        .O(x_reg_rep_i_18_n_0));
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
