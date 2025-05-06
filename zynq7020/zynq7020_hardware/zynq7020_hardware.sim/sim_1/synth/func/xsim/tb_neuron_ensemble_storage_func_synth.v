// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May  4 20:02:29 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_neuron_ensemble_storage_func_synth.v
// Design      : neuron_ensemble_storage
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (D,
    write_seed_IBUF,
    seed_IBUF,
    advance_index_IBUF,
    reset_IBUF,
    CLK);
  output [1:0]D;
  input write_seed_IBUF;
  input [2:0]seed_IBUF;
  input advance_index_IBUF;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire advance_index_IBUF;
  wire reset_IBUF;
  wire [2:0]seed_IBUF;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire write_seed_IBUF;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0002)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state),
        .I2(write_seed_IBUF),
        .I3(advance_index_IBUF),
        .I4(\state[0]_i_2_n_0 ),
        .I5(reset_IBUF),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FF0099999999)) 
    \state[0]_i_2 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(seed_IBUF[1]),
        .I3(seed_IBUF[0]),
        .I4(seed_IBUF[2]),
        .I5(write_seed_IBUF),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0002)) 
    \state[1]_i_1 
       (.I0(D[0]),
        .I1(state),
        .I2(write_seed_IBUF),
        .I3(advance_index_IBUF),
        .I4(\state[1]_i_2_n_0 ),
        .I5(reset_IBUF),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0CCCAAAA)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(seed_IBUF[1]),
        .I2(seed_IBUF[0]),
        .I3(seed_IBUF[2]),
        .I4(write_seed_IBUF),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0002)) 
    \state[2]_i_1 
       (.I0(D[1]),
        .I1(state),
        .I2(write_seed_IBUF),
        .I3(advance_index_IBUF),
        .I4(\state[2]_i_3_n_0 ),
        .I5(reset_IBUF),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[2]_i_2 
       (.I0(write_seed_IBUF),
        .I1(seed_IBUF[2]),
        .I2(seed_IBUF[0]),
        .I3(seed_IBUF[1]),
        .O(state));
  LUT5 #(
    .INIT(32'h3F00AAAA)) 
    \state[2]_i_3 
       (.I0(D[0]),
        .I1(seed_IBUF[1]),
        .I2(seed_IBUF[0]),
        .I3(seed_IBUF[2]),
        .I4(write_seed_IBUF),
        .O(\state[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
endmodule

module LFSR_inout
   (D,
    write_seed_IBUF,
    seed_IBUF,
    advance_index_IBUF,
    reset_IBUF,
    CLK);
  output [1:0]D;
  input write_seed_IBUF;
  input [2:0]seed_IBUF;
  input advance_index_IBUF;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire advance_index_IBUF;
  wire reset_IBUF;
  wire [2:0]seed_IBUF;
  wire write_seed_IBUF;

  LFSR u_lfsr
       (.CLK(CLK),
        .D(D),
        .advance_index_IBUF(advance_index_IBUF),
        .reset_IBUF(reset_IBUF),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
endmodule

(* DELTA = "2" *) (* DEPTH = "4" *) (* EN_GEN = "2'b00" *) 
(* EN_INC = "2'b10" *) (* EN_RST = "2'b01" *) (* EN_SUB = "2'b11" *) 
(* LFSR_WIDTH = "3" *) (* MEMBRANE_W = "16" *) (* NEURON_WIDTH = "2" *) 
(* NotValidForBitStream *)
module neuron_ensemble_storage
   (clk,
    reset,
    advance_index,
    write_seed,
    seed,
    write,
    idx_to_write,
    membrane_data_in,
    neuron_state_in,
    control,
    Q_inp,
    update_ds,
    idx_offset_to_update,
    selected_idx_offset,
    selected_membrane,
    neuron_state);
  input clk;
  input reset;
  input advance_index;
  input write_seed;
  input [2:0]seed;
  input write;
  input [1:0]idx_to_write;
  input [15:0]membrane_data_in;
  input [3:0]neuron_state_in;
  input [1:0]control;
  input [3:0]Q_inp;
  input update_ds;
  input [1:0]idx_offset_to_update;
  output [1:0]selected_idx_offset;
  output [15:0]selected_membrane;
  output [3:0]neuron_state;

  wire [3:0]Q_inp;
  wire [3:0]Q_inp_IBUF;
  wire advance_index;
  wire advance_index_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]control;
  wire [1:0]control_IBUF;
  wire [1:0]idx_offset;
  wire [1:0]idx_offset_to_update;
  wire [1:0]idx_offset_to_update_IBUF;
  wire [1:0]idx_r;
  wire [1:0]idx_to_write;
  wire [1:0]idx_to_write_IBUF;
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
  wire [15:0]\mem_ram_reg[0] ;
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
  wire [15:0]\mem_ram_reg[1] ;
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
  wire [15:0]\mem_ram_reg[2] ;
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
  wire [15:0]\mem_ram_reg[3] ;
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
  wire [15:0]membrane_data_in;
  wire [15:0]membrane_data_in_IBUF;
  wire [3:0]neuron_state;
  wire \neuron_state[0]_i_1_n_0 ;
  wire \neuron_state[1]_i_1_n_0 ;
  wire \neuron_state[2]_i_1_n_0 ;
  wire \neuron_state[3]_i_1_n_0 ;
  wire [3:0]neuron_state_OBUF;
  wire [3:0]neuron_state_in;
  wire [3:0]neuron_state_in_IBUF;
  wire p_0_in;
  wire [15:0]p_0_in__0;
  wire p_1_in;
  wire reset;
  wire reset_IBUF;
  wire [2:0]seed;
  wire [2:0]seed_IBUF;
  wire [1:0]selected_idx_offset;
  wire [1:0]selected_idx_offset_OBUF;
  wire [15:0]selected_membrane;
  wire [15:0]selected_membrane_OBUF;
  wire [3:0]state_ram;
  wire \state_ram[0][3]_i_1_n_0 ;
  wire \state_ram[1][3]_i_1_n_0 ;
  wire \state_ram[2][3]_i_1_n_0 ;
  wire \state_ram[3][3]_i_1_n_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[0][2] ;
  wire \state_ram_reg_n_0_[0][3] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[1][2] ;
  wire \state_ram_reg_n_0_[1][3] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[2][2] ;
  wire \state_ram_reg_n_0_[2][3] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire \state_ram_reg_n_0_[3][2] ;
  wire \state_ram_reg_n_0_[3][3] ;
  wire update_ds;
  wire update_ds_IBUF;
  wire write;
  wire write_IBUF;
  wire write_seed;
  wire write_seed_IBUF;
  wire [3:3]\NLW_mem_ram_reg[0][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[2][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[3][12]_i_1_CO_UNCONNECTED ;

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
  IBUF \idx_offset_to_update_IBUF[0]_inst 
       (.I(idx_offset_to_update[0]),
        .O(idx_offset_to_update_IBUF[0]));
  IBUF \idx_offset_to_update_IBUF[1]_inst 
       (.I(idx_offset_to_update[1]),
        .O(idx_offset_to_update_IBUF[1]));
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
  IBUF \idx_to_write_IBUF[0]_inst 
       (.I(idx_to_write[0]),
        .O(idx_to_write_IBUF[0]));
  IBUF \idx_to_write_IBUF[1]_inst 
       (.I(idx_to_write[1]),
        .O(idx_to_write_IBUF[1]));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \mem_ram[0][0]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(control_IBUF[1]),
        .I4(Q_inp_IBUF[0]),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][0]_i_5 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[0] [1]),
        .O(\mem_ram[0][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [3]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[3]),
        .O(\mem_ram[0][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [2]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[2]),
        .O(\mem_ram[0][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mem_ram[0][0]_i_8 
       (.I0(\mem_ram_reg[0] [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_IBUF),
        .O(\mem_ram[0][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][0]_i_9 
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[0] [0]),
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
    .INIT(16'hF606)) 
    \mem_ram[0][12]_i_5 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [15]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[15]),
        .O(\mem_ram[0][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [14]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[14]),
        .O(\mem_ram[0][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [13]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[13]),
        .O(\mem_ram[0][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [12]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[12]),
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
    .INIT(16'hF606)) 
    \mem_ram[0][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [7]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[7]),
        .O(\mem_ram[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [6]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[6]),
        .O(\mem_ram[0][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [5]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[5]),
        .O(\mem_ram[0][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [4]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[4]),
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
    .INIT(16'hF606)) 
    \mem_ram[0][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [11]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[11]),
        .O(\mem_ram[0][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [10]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[10]),
        .O(\mem_ram[0][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [9]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[9]),
        .O(\mem_ram[0][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[0][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[0] [8]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[8]),
        .O(\mem_ram[0][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2F202020)) 
    \mem_ram[1][0]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(control_IBUF[1]),
        .I4(Q_inp_IBUF[1]),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][0]_i_5 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[1] [1]),
        .O(\mem_ram[1][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [3]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[3]),
        .O(\mem_ram[1][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [2]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[2]),
        .O(\mem_ram[1][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mem_ram[1][0]_i_8 
       (.I0(\mem_ram_reg[1] [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_IBUF),
        .O(\mem_ram[1][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][0]_i_9 
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[1] [0]),
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
    .INIT(16'hF606)) 
    \mem_ram[1][12]_i_5 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [15]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[15]),
        .O(\mem_ram[1][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [14]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[14]),
        .O(\mem_ram[1][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [13]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[13]),
        .O(\mem_ram[1][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [12]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[12]),
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
    .INIT(16'hF606)) 
    \mem_ram[1][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [7]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[7]),
        .O(\mem_ram[1][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [6]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[6]),
        .O(\mem_ram[1][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [5]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[5]),
        .O(\mem_ram[1][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [4]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[4]),
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
    .INIT(16'hF606)) 
    \mem_ram[1][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [11]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[11]),
        .O(\mem_ram[1][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [10]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[10]),
        .O(\mem_ram[1][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [9]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[9]),
        .O(\mem_ram[1][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[1][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[1] [8]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[8]),
        .O(\mem_ram[1][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2F202020)) 
    \mem_ram[2][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_IBUF),
        .I3(control_IBUF[1]),
        .I4(Q_inp_IBUF[2]),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][0]_i_5 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[2] [1]),
        .O(\mem_ram[2][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [3]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[3]),
        .O(\mem_ram[2][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [2]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[2]),
        .O(\mem_ram[2][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mem_ram[2][0]_i_8 
       (.I0(\mem_ram_reg[2] [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_IBUF),
        .O(\mem_ram[2][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][0]_i_9 
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[2] [0]),
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
    .INIT(16'hF606)) 
    \mem_ram[2][12]_i_5 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [15]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[15]),
        .O(\mem_ram[2][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [14]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[14]),
        .O(\mem_ram[2][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [13]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[13]),
        .O(\mem_ram[2][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [12]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[12]),
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
    .INIT(16'hF606)) 
    \mem_ram[2][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [7]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[7]),
        .O(\mem_ram[2][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [6]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[6]),
        .O(\mem_ram[2][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [5]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[5]),
        .O(\mem_ram[2][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [4]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[4]),
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
    .INIT(16'hF606)) 
    \mem_ram[2][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [11]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[11]),
        .O(\mem_ram[2][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [10]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[10]),
        .O(\mem_ram[2][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [9]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[9]),
        .O(\mem_ram[2][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[2][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[2] [8]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[8]),
        .O(\mem_ram[2][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \mem_ram[3][0]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(control_IBUF[1]),
        .I4(Q_inp_IBUF[3]),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][0]_i_5 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[3] [1]),
        .O(\mem_ram[3][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][0]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [3]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[3]),
        .O(\mem_ram[3][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][0]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [2]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[2]),
        .O(\mem_ram[3][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mem_ram[3][0]_i_8 
       (.I0(\mem_ram_reg[3] [1]),
        .I1(membrane_data_in_IBUF[1]),
        .I2(write_IBUF),
        .O(\mem_ram[3][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][0]_i_9 
       (.I0(membrane_data_in_IBUF[0]),
        .I1(write_IBUF),
        .I2(\mem_ram_reg[3] [0]),
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
    .INIT(16'hF606)) 
    \mem_ram[3][12]_i_5 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [15]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[15]),
        .O(\mem_ram[3][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][12]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [14]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[14]),
        .O(\mem_ram[3][12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][12]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [13]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[13]),
        .O(\mem_ram[3][12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][12]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [12]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[12]),
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
    .INIT(16'hF606)) 
    \mem_ram[3][4]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [7]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[7]),
        .O(\mem_ram[3][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][4]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [6]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[6]),
        .O(\mem_ram[3][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][4]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [5]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[5]),
        .O(\mem_ram[3][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][4]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [4]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[4]),
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
    .INIT(16'hF606)) 
    \mem_ram[3][8]_i_6 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [11]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[11]),
        .O(\mem_ram[3][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][8]_i_7 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [10]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[10]),
        .O(\mem_ram[3][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][8]_i_8 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [9]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[9]),
        .O(\mem_ram[3][8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \mem_ram[3][8]_i_9 
       (.I0(control_IBUF[0]),
        .I1(\mem_ram_reg[3] [8]),
        .I2(write_IBUF),
        .I3(membrane_data_in_IBUF[8]),
        .O(\mem_ram[3][8]_i_9_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[0] [0]),
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
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[0] [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[0] [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[0] [12]),
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
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[0] [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[0] [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[0] [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[0] [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[0] [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[0] [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[0] [4]),
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
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[0] [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[0] [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[0] [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[0] [8]),
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
       (.C(clk_IBUF_BUFG),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[0] [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[1] [0]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[1] [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[1] [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[1] [12]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[1] [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[1] [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[1] [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[1] [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[1] [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[1] [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[1] [4]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[1] [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[1] [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[1] [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[1] [8]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[1][0]_i_1_n_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[1] [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[2] [0]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[2] [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[2] [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[2] [12]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[2] [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[2] [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[2] [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[2] [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[2] [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[2] [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[2] [4]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[2] [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[2] [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[2] [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[2] [8]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[2][0]_i_1_n_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[2] [9]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[3] [0]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[3] [10]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[3] [11]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[3] [12]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[3] [13]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[3] [14]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[3] [15]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[3] [1]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[3] [2]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[3] [3]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[3] [4]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[3] [5]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[3] [6]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[3] [7]),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[3] [8]),
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
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ram[3][0]_i_1_n_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[3] [9]),
        .R(reset_IBUF));
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
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \neuron_state[0]_i_1 
       (.I0(\state_ram_reg_n_0_[1][0] ),
        .I1(\state_ram_reg_n_0_[0][0] ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\state_ram_reg_n_0_[2][0] ),
        .O(\neuron_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \neuron_state[1]_i_1 
       (.I0(\state_ram_reg_n_0_[1][1] ),
        .I1(\state_ram_reg_n_0_[0][1] ),
        .I2(\state_ram_reg_n_0_[3][1] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\state_ram_reg_n_0_[2][1] ),
        .O(\neuron_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \neuron_state[2]_i_1 
       (.I0(\state_ram_reg_n_0_[1][2] ),
        .I1(\state_ram_reg_n_0_[0][2] ),
        .I2(\state_ram_reg_n_0_[3][2] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\state_ram_reg_n_0_[2][2] ),
        .O(\neuron_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \neuron_state[3]_i_1 
       (.I0(\state_ram_reg_n_0_[1][3] ),
        .I1(\state_ram_reg_n_0_[0][3] ),
        .I2(\state_ram_reg_n_0_[3][3] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\state_ram_reg_n_0_[2][3] ),
        .O(\neuron_state[3]_i_1_n_0 ));
  OBUF \neuron_state_OBUF[0]_inst 
       (.I(neuron_state_OBUF[0]),
        .O(neuron_state[0]));
  OBUF \neuron_state_OBUF[1]_inst 
       (.I(neuron_state_OBUF[1]),
        .O(neuron_state[1]));
  OBUF \neuron_state_OBUF[2]_inst 
       (.I(neuron_state_OBUF[2]),
        .O(neuron_state[2]));
  OBUF \neuron_state_OBUF[3]_inst 
       (.I(neuron_state_OBUF[3]),
        .O(neuron_state[3]));
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
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1_n_0 ),
        .Q(neuron_state_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1_n_0 ),
        .Q(neuron_state_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[2]_i_1_n_0 ),
        .Q(neuron_state_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\neuron_state[3]_i_1_n_0 ),
        .Q(neuron_state_OBUF[3]),
        .R(1'b0));
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
  OBUF \selected_idx_offset_OBUF[0]_inst 
       (.I(selected_idx_offset_OBUF[0]),
        .O(selected_idx_offset[0]));
  OBUF \selected_idx_offset_OBUF[1]_inst 
       (.I(selected_idx_offset_OBUF[1]),
        .O(selected_idx_offset[1]));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(selected_idx_offset_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(selected_idx_offset_OBUF[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[0]_i_1 
       (.I0(\mem_ram_reg[1] [0]),
        .I1(\mem_ram_reg[0] [0]),
        .I2(\mem_ram_reg[3] [0]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[10]_i_1 
       (.I0(\mem_ram_reg[1] [10]),
        .I1(\mem_ram_reg[0] [10]),
        .I2(\mem_ram_reg[3] [10]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[11]_i_1 
       (.I0(\mem_ram_reg[1] [11]),
        .I1(\mem_ram_reg[0] [11]),
        .I2(\mem_ram_reg[3] [11]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [11]),
        .O(p_0_in__0[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[12]_i_1 
       (.I0(\mem_ram_reg[1] [12]),
        .I1(\mem_ram_reg[0] [12]),
        .I2(\mem_ram_reg[3] [12]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [12]),
        .O(p_0_in__0[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[13]_i_1 
       (.I0(\mem_ram_reg[1] [13]),
        .I1(\mem_ram_reg[0] [13]),
        .I2(\mem_ram_reg[3] [13]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [13]),
        .O(p_0_in__0[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[14]_i_1 
       (.I0(\mem_ram_reg[1] [14]),
        .I1(\mem_ram_reg[0] [14]),
        .I2(\mem_ram_reg[3] [14]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [14]),
        .O(p_0_in__0[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[15]_i_1 
       (.I0(\mem_ram_reg[1] [15]),
        .I1(\mem_ram_reg[0] [15]),
        .I2(\mem_ram_reg[3] [15]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [15]),
        .O(p_0_in__0[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[1]_i_1 
       (.I0(\mem_ram_reg[1] [1]),
        .I1(\mem_ram_reg[0] [1]),
        .I2(\mem_ram_reg[3] [1]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[2]_i_1 
       (.I0(\mem_ram_reg[1] [2]),
        .I1(\mem_ram_reg[0] [2]),
        .I2(\mem_ram_reg[3] [2]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[3]_i_1 
       (.I0(\mem_ram_reg[1] [3]),
        .I1(\mem_ram_reg[0] [3]),
        .I2(\mem_ram_reg[3] [3]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[4]_i_1 
       (.I0(\mem_ram_reg[1] [4]),
        .I1(\mem_ram_reg[0] [4]),
        .I2(\mem_ram_reg[3] [4]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[5]_i_1 
       (.I0(\mem_ram_reg[1] [5]),
        .I1(\mem_ram_reg[0] [5]),
        .I2(\mem_ram_reg[3] [5]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[6]_i_1 
       (.I0(\mem_ram_reg[1] [6]),
        .I1(\mem_ram_reg[0] [6]),
        .I2(\mem_ram_reg[3] [6]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [6]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[7]_i_1 
       (.I0(\mem_ram_reg[1] [7]),
        .I1(\mem_ram_reg[0] [7]),
        .I2(\mem_ram_reg[3] [7]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[8]_i_1 
       (.I0(\mem_ram_reg[1] [8]),
        .I1(\mem_ram_reg[0] [8]),
        .I2(\mem_ram_reg[3] [8]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \selected_membrane[9]_i_1 
       (.I0(\mem_ram_reg[1] [9]),
        .I1(\mem_ram_reg[0] [9]),
        .I2(\mem_ram_reg[3] [9]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[2] [9]),
        .O(p_0_in__0[9]));
  OBUF \selected_membrane_OBUF[0]_inst 
       (.I(selected_membrane_OBUF[0]),
        .O(selected_membrane[0]));
  OBUF \selected_membrane_OBUF[10]_inst 
       (.I(selected_membrane_OBUF[10]),
        .O(selected_membrane[10]));
  OBUF \selected_membrane_OBUF[11]_inst 
       (.I(selected_membrane_OBUF[11]),
        .O(selected_membrane[11]));
  OBUF \selected_membrane_OBUF[12]_inst 
       (.I(selected_membrane_OBUF[12]),
        .O(selected_membrane[12]));
  OBUF \selected_membrane_OBUF[13]_inst 
       (.I(selected_membrane_OBUF[13]),
        .O(selected_membrane[13]));
  OBUF \selected_membrane_OBUF[14]_inst 
       (.I(selected_membrane_OBUF[14]),
        .O(selected_membrane[14]));
  OBUF \selected_membrane_OBUF[15]_inst 
       (.I(selected_membrane_OBUF[15]),
        .O(selected_membrane[15]));
  OBUF \selected_membrane_OBUF[1]_inst 
       (.I(selected_membrane_OBUF[1]),
        .O(selected_membrane[1]));
  OBUF \selected_membrane_OBUF[2]_inst 
       (.I(selected_membrane_OBUF[2]),
        .O(selected_membrane[2]));
  OBUF \selected_membrane_OBUF[3]_inst 
       (.I(selected_membrane_OBUF[3]),
        .O(selected_membrane[3]));
  OBUF \selected_membrane_OBUF[4]_inst 
       (.I(selected_membrane_OBUF[4]),
        .O(selected_membrane[4]));
  OBUF \selected_membrane_OBUF[5]_inst 
       (.I(selected_membrane_OBUF[5]),
        .O(selected_membrane[5]));
  OBUF \selected_membrane_OBUF[6]_inst 
       (.I(selected_membrane_OBUF[6]),
        .O(selected_membrane[6]));
  OBUF \selected_membrane_OBUF[7]_inst 
       (.I(selected_membrane_OBUF[7]),
        .O(selected_membrane[7]));
  OBUF \selected_membrane_OBUF[8]_inst 
       (.I(selected_membrane_OBUF[8]),
        .O(selected_membrane[8]));
  OBUF \selected_membrane_OBUF[9]_inst 
       (.I(selected_membrane_OBUF[9]),
        .O(selected_membrane[9]));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(selected_membrane_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(selected_membrane_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[11]),
        .Q(selected_membrane_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[12]),
        .Q(selected_membrane_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[13]),
        .Q(selected_membrane_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[14]),
        .Q(selected_membrane_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[15]),
        .Q(selected_membrane_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(selected_membrane_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(selected_membrane_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(selected_membrane_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(selected_membrane_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(selected_membrane_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(selected_membrane_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(selected_membrane_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(selected_membrane_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(selected_membrane_OBUF[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1010101010101F10)) 
    \state_ram[0][3]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(update_ds_IBUF),
        .I4(idx_offset_to_update_IBUF[0]),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20202F2020202020)) 
    \state_ram[1][3]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(update_ds_IBUF),
        .I4(idx_offset_to_update_IBUF[1]),
        .I5(idx_offset_to_update_IBUF[0]),
        .O(\state_ram[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \state_ram[2][0]_i_1 
       (.I0(neuron_state_in_IBUF[0]),
        .I1(p_0_in),
        .I2(write_IBUF),
        .O(state_ram[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \state_ram[2][1]_i_1 
       (.I0(neuron_state_in_IBUF[1]),
        .I1(p_1_in),
        .I2(write_IBUF),
        .O(state_ram[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \state_ram[2][2]_i_1 
       (.I0(neuron_state_in_IBUF[2]),
        .I1(p_1_in),
        .I2(write_IBUF),
        .O(state_ram[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \state_ram[2][2]_i_2 
       (.I0(\state_ram_reg_n_0_[1][1] ),
        .I1(\state_ram_reg_n_0_[0][1] ),
        .I2(\state_ram_reg_n_0_[3][1] ),
        .I3(idx_offset_to_update_IBUF[1]),
        .I4(idx_offset_to_update_IBUF[0]),
        .I5(\state_ram_reg_n_0_[2][1] ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h20202F2020202020)) 
    \state_ram[2][3]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_IBUF),
        .I3(update_ds_IBUF),
        .I4(idx_offset_to_update_IBUF[0]),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \state_ram[2][3]_i_2 
       (.I0(neuron_state_in_IBUF[3]),
        .I1(p_0_in),
        .I2(write_IBUF),
        .O(state_ram[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \state_ram[2][3]_i_3 
       (.I0(\state_ram_reg_n_0_[1][0] ),
        .I1(\state_ram_reg_n_0_[0][0] ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .I3(idx_offset_to_update_IBUF[1]),
        .I4(idx_offset_to_update_IBUF[0]),
        .I5(\state_ram_reg_n_0_[2][0] ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \state_ram[3][3]_i_1 
       (.I0(idx_to_write_IBUF[0]),
        .I1(idx_to_write_IBUF[1]),
        .I2(write_IBUF),
        .I3(update_ds_IBUF),
        .I4(idx_offset_to_update_IBUF[0]),
        .I5(idx_offset_to_update_IBUF[1]),
        .O(\state_ram[3][3]_i_1_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[0][3]_i_1_n_0 ),
        .D(state_ram[0]),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[0][3]_i_1_n_0 ),
        .D(state_ram[1]),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[0][3]_i_1_n_0 ),
        .D(state_ram[2]),
        .Q(\state_ram_reg_n_0_[0][2] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[0][3]_i_1_n_0 ),
        .D(state_ram[3]),
        .Q(\state_ram_reg_n_0_[0][3] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[1][3]_i_1_n_0 ),
        .D(state_ram[0]),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[1][3]_i_1_n_0 ),
        .D(state_ram[1]),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[1][3]_i_1_n_0 ),
        .D(state_ram[2]),
        .Q(\state_ram_reg_n_0_[1][2] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[1][3]_i_1_n_0 ),
        .D(state_ram[3]),
        .Q(\state_ram_reg_n_0_[1][3] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[2][3]_i_1_n_0 ),
        .D(state_ram[0]),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[2][3]_i_1_n_0 ),
        .D(state_ram[1]),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[2][3]_i_1_n_0 ),
        .D(state_ram[2]),
        .Q(\state_ram_reg_n_0_[2][2] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[2][3]_i_1_n_0 ),
        .D(state_ram[3]),
        .Q(\state_ram_reg_n_0_[2][3] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[3][3]_i_1_n_0 ),
        .D(state_ram[0]),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[3][3]_i_1_n_0 ),
        .D(state_ram[1]),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[3][3]_i_1_n_0 ),
        .D(state_ram[2]),
        .Q(\state_ram_reg_n_0_[3][2] ),
        .R(reset_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_ram[3][3]_i_1_n_0 ),
        .D(state_ram[3]),
        .Q(\state_ram_reg_n_0_[3][3] ),
        .R(reset_IBUF));
  LFSR_inout u_lfsr
       (.CLK(clk_IBUF_BUFG),
        .D(idx_offset),
        .advance_index_IBUF(advance_index_IBUF),
        .reset_IBUF(reset_IBUF),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
  IBUF update_ds_IBUF_inst
       (.I(update_ds),
        .O(update_ds_IBUF));
  IBUF write_IBUF_inst
       (.I(write),
        .O(write_IBUF));
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
