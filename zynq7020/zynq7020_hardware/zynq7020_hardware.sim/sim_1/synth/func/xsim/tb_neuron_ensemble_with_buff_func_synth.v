// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May  7 22:17:04 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_neuron_ensemble_with_buff_func_synth.v
// Design      : neuron_ensemble_with_memory_with_buff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (D,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    storage_CE_advance,
    reset_module_IBUF,
    clk);
  output [1:0]D;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input storage_CE_advance;
  input reset_module_IBUF;
  input clk;

  wire [1:0]D;
  wire clk;
  wire [2:0]ensemble_seed_IBUF;
  wire reset_module_IBUF;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2__1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire storage_CE_advance;
  wire write_ensemble_seed_IBUF;

  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2__1_n_0 ),
        .I1(storage_CE_advance),
        .I2(write_ensemble_seed_IBUF),
        .I3(state),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FF0099999999)) 
    \state[0]_i_2__1 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(ensemble_seed_IBUF[1]),
        .I3(ensemble_seed_IBUF[0]),
        .I4(ensemble_seed_IBUF[2]),
        .I5(write_ensemble_seed_IBUF),
        .O(\state[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAF0000CCA0)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(ensemble_seed_IBUF[1]),
        .I2(storage_CE_advance),
        .I3(write_ensemble_seed_IBUF),
        .I4(state),
        .I5(D[0]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAF0000CCA0)) 
    \state[2]_i_1 
       (.I0(D[0]),
        .I1(ensemble_seed_IBUF[2]),
        .I2(storage_CE_advance),
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
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(reset_module_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(D[0]),
        .S(reset_module_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(D[1]),
        .S(reset_module_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (SS,
    Q,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    clk);
  output [0:0]SS;
  output [7:0]Q;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input clk;

  wire [7:0]Q;
  wire [0:0]SS;
  wire clk;
  wire [15:0]flipping_seed_IBUF;
  wire state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
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
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[9]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire write_flipping_seed_IBUF;

  LUT6 #(
    .INIT(64'h00000000D88D8DD8)) 
    \state[0]_i_1__1 
       (.I0(write_flipping_seed_IBUF),
        .I1(flipping_seed_IBUF[0]),
        .I2(\state[0]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(state),
        .O(\state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_2__0 
       (.I0(Q[7]),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[10]_i_1 
       (.I0(Q[1]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[10]),
        .I3(state),
        .O(\state[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[11]_i_1 
       (.I0(Q[2]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[11]),
        .I3(state),
        .O(\state[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[12]_i_1 
       (.I0(Q[3]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[12]),
        .I3(state),
        .O(\state[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[13]_i_1 
       (.I0(Q[4]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[13]),
        .I3(state),
        .O(\state[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[14]_i_1 
       (.I0(Q[5]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[14]),
        .I3(state),
        .O(\state[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFBE)) 
    \state[15]_i_1 
       (.I0(write_flipping_seed_IBUF),
        .I1(\state_reg[0]_2 ),
        .I2(\state_reg[0]_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(state),
        .O(\state[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[15]_i_2 
       (.I0(Q[6]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[15]),
        .I3(state),
        .O(\state[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_3 
       (.I0(flipping_seed_IBUF[2]),
        .I1(flipping_seed_IBUF[1]),
        .I2(flipping_seed_IBUF[0]),
        .I3(\state[15]_i_4_n_0 ),
        .I4(\state[15]_i_5_n_0 ),
        .I5(\state[15]_i_6_n_0 ),
        .O(state));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[15]_i_4 
       (.I0(flipping_seed_IBUF[6]),
        .I1(flipping_seed_IBUF[5]),
        .I2(flipping_seed_IBUF[4]),
        .I3(flipping_seed_IBUF[3]),
        .O(\state[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[15]_i_5 
       (.I0(flipping_seed_IBUF[10]),
        .I1(flipping_seed_IBUF[9]),
        .I2(flipping_seed_IBUF[8]),
        .I3(flipping_seed_IBUF[7]),
        .O(\state[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[15]_i_6 
       (.I0(flipping_seed_IBUF[11]),
        .I1(flipping_seed_IBUF[12]),
        .I2(flipping_seed_IBUF[13]),
        .I3(flipping_seed_IBUF[14]),
        .I4(write_flipping_seed_IBUF),
        .I5(flipping_seed_IBUF[15]),
        .O(\state[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[1]),
        .I3(state),
        .O(\state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[2]),
        .I3(state),
        .O(\state[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[3]),
        .I3(state),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
       (.I0(Q[0]),
        .I1(write_flipping_seed_IBUF),
        .I2(flipping_seed_IBUF[9]),
        .I3(state),
        .O(\state[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[10] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[10]_i_1_n_0 ),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[11]_i_1_n_0 ),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[12]_i_1_n_0 ),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[13]_i_1_n_0 ),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[14] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[14]_i_1_n_0 ),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[15]_i_2_n_0 ),
        .Q(Q[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[6] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[6]_i_1_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[7] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[7]_i_1_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[8] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[8]_i_1_n_0 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(clk),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[9]_i_1_n_0 ),
        .Q(Q[1]),
        .S(SS));
  LUT3 #(
    .INIT(8'h01)) 
    y_reg_i_1
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[0]_2 ),
        .O(SS));
endmodule

module LFSR_inout
   (D,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    storage_CE_advance,
    reset_module_IBUF,
    clk);
  output [1:0]D;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input storage_CE_advance;
  input reset_module_IBUF;
  input clk;

  wire [1:0]D;
  wire clk;
  wire [2:0]ensemble_seed_IBUF;
  wire reset_module_IBUF;
  wire storage_CE_advance;
  wire write_ensemble_seed_IBUF;

  LFSR u_lfsr
       (.D(D),
        .clk(clk),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .reset_module_IBUF(reset_module_IBUF),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module LFSR_inout__parameterized0
   (SS,
    Q,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    clk);
  output [0:0]SS;
  output [7:0]Q;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input clk;

  wire [7:0]Q;
  wire [0:0]SS;
  wire clk;
  wire [15:0]flipping_seed_IBUF;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire write_flipping_seed_IBUF;

  LFSR__parameterized0 u_lfsr
       (.Q(Q),
        .SS(SS),
        .clk(clk),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[0]_2 (\state_reg[0]_1 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module distributed_graph_memory
   (mem_ram,
    \Q_out_reg[1]_0 ,
    \Q_out_reg[2]_0 ,
    \Q_out_reg[3]_0 ,
    idx_to_write_IBUF,
    write_neuron_state_IBUF,
    \mem_ram_reg[0][0] ,
    CE_output_from_distributed_graph,
    reset_module_IBUF,
    clk,
    Q);
  output mem_ram;
  output \Q_out_reg[1]_0 ;
  output \Q_out_reg[2]_0 ;
  output \Q_out_reg[3]_0 ;
  input [1:0]idx_to_write_IBUF;
  input write_neuron_state_IBUF;
  input \mem_ram_reg[0][0] ;
  input CE_output_from_distributed_graph;
  input reset_module_IBUF;
  input clk;
  input [2:0]Q;

  wire CE_output_from_distributed_graph;
  wire [2:0]Q;
  wire [3:0]Q_out;
  wire \Q_out[0]_i_1_n_0 ;
  wire \Q_out[1]_i_1_n_0 ;
  wire \Q_out[2]_i_1_n_0 ;
  wire \Q_out[3]_i_2_n_0 ;
  wire \Q_out_reg[1]_0 ;
  wire \Q_out_reg[2]_0 ;
  wire \Q_out_reg[3]_0 ;
  wire clk;
  wire [1:0]idx_to_write_IBUF;
  wire mem_ram;
  wire \mem_ram_reg[0][0] ;
  wire reset_module_IBUF;
  wire write_neuron_state_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \Q_out[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \Q_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \Q_out[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\Q_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
       (.C(clk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[0]_i_1_n_0 ),
        .Q(Q_out[0]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[1] 
       (.C(clk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[1]_i_1_n_0 ),
        .Q(Q_out[1]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[2] 
       (.C(clk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[2]_i_1_n_0 ),
        .Q(Q_out[2]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_out_reg[3] 
       (.C(clk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out[3]_i_2_n_0 ),
        .Q(Q_out[3]),
        .R(reset_module_IBUF));
  LUT6 #(
    .INIT(64'h11F0110011001100)) 
    \mem_ram[0][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_out[0]),
        .I3(write_neuron_state_IBUF),
        .I4(\mem_ram_reg[0][0] ),
        .I5(CE_output_from_distributed_graph),
        .O(mem_ram));
  LUT6 #(
    .INIT(64'h44F0440044004400)) 
    \mem_ram[1][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_out[1]),
        .I3(write_neuron_state_IBUF),
        .I4(\mem_ram_reg[0][0] ),
        .I5(CE_output_from_distributed_graph),
        .O(\Q_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h22F0220022002200)) 
    \mem_ram[2][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_out[2]),
        .I3(write_neuron_state_IBUF),
        .I4(\mem_ram_reg[0][0] ),
        .I5(CE_output_from_distributed_graph),
        .O(\Q_out_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \mem_ram[3][0]_i_1 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(Q_out[3]),
        .I3(write_neuron_state_IBUF),
        .I4(\mem_ram_reg[0][0] ),
        .I5(CE_output_from_distributed_graph),
        .O(\Q_out_reg[3]_0 ));
endmodule

module flipping_unit
   (\state_reg[0] ,
    E,
    S,
    DI,
    \stage1_r_reg[15]_0 ,
    \stage1_r_reg[15]_1 ,
    clk,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    CO,
    decrease_temp_IBUF,
    Q,
    spike0_carry,
    O,
    spike0_carry_0,
    mem_cmp,
    spike0_carry_1,
    spike0_carry_2,
    spike0_carry__0,
    spike0_carry__0_0,
    spike0_carry__0_1,
    spike0_carry__0_2);
  output \state_reg[0] ;
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\stage1_r_reg[15]_0 ;
  output [3:0]\stage1_r_reg[15]_1 ;
  input clk;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input [0:0]CO;
  input decrease_temp_IBUF;
  input [3:0]Q;
  input [0:0]spike0_carry;
  input [2:0]O;
  input spike0_carry_0;
  input [6:0]mem_cmp;
  input spike0_carry_1;
  input spike0_carry_2;
  input spike0_carry__0;
  input spike0_carry__0_0;
  input spike0_carry__0_1;
  input spike0_carry__0_2;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FP_PATH.u_fmul_n_1 ;
  wire \FP_PATH.u_fmul_n_10 ;
  wire \FP_PATH.u_fmul_n_11 ;
  wire \FP_PATH.u_fmul_n_2 ;
  wire \FP_PATH.u_fmul_n_3 ;
  wire \FP_PATH.u_fmul_n_4 ;
  wire \FP_PATH.u_fmul_n_5 ;
  wire \FP_PATH.u_fmul_n_6 ;
  wire \FP_PATH.u_fmul_n_7 ;
  wire \FP_PATH.u_fmul_n_8 ;
  wire \FP_PATH.u_fmul_n_9 ;
  wire [2:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire [4:3]biased_sum_exponent;
  wire clk;
  wire decrease_temp_IBUF;
  wire [3:1]flip_val;
  wire [15:0]flipping_seed_IBUF;
  wire [6:0]mem_cmp;
  wire [15:10]noise_fp;
  wire p_0_in;
  wire reset_flipping;
  wire [15:1]result0;
  wire [4:0]sel0;
  wire [0:0]spike0_carry;
  wire spike0_carry_0;
  wire spike0_carry_1;
  wire spike0_carry_2;
  wire spike0_carry__0;
  wire spike0_carry__0_0;
  wire spike0_carry__0_1;
  wire spike0_carry__0_2;
  wire spike0_carry__0_i_10_n_0;
  wire spike0_carry__0_i_11_n_2;
  wire spike0_carry__0_i_11_n_3;
  wire spike0_carry__0_i_12_n_0;
  wire spike0_carry__0_i_15_n_0;
  wire spike0_carry__0_i_16_n_0;
  wire spike0_carry__0_i_18_n_0;
  wire spike0_carry__0_i_20_n_0;
  wire spike0_carry__0_i_21_n_0;
  wire spike0_carry__0_i_24_n_0;
  wire spike0_carry__0_i_25_n_0;
  wire spike0_carry__0_i_25_n_1;
  wire spike0_carry__0_i_25_n_2;
  wire spike0_carry__0_i_25_n_3;
  wire spike0_carry__0_i_26_n_0;
  wire spike0_carry__0_i_29_n_0;
  wire spike0_carry__0_i_30_n_0;
  wire spike0_carry__0_i_31_n_0;
  wire spike0_carry__0_i_32_n_0;
  wire spike0_carry__0_i_33_n_0;
  wire spike0_carry__0_i_34_n_0;
  wire spike0_carry__0_i_35_n_0;
  wire spike0_carry__0_i_36_n_0;
  wire spike0_carry__0_i_37_n_0;
  wire spike0_carry__0_i_38_n_0;
  wire spike0_carry__0_i_39_n_0;
  wire spike0_carry__0_i_40_n_0;
  wire spike0_carry__0_i_41_n_0;
  wire spike0_carry__0_i_42_n_0;
  wire spike0_carry__0_i_43_n_0;
  wire spike0_carry__0_i_44_n_0;
  wire spike0_carry__0_i_46_n_0;
  wire spike0_carry__0_i_47_n_0;
  wire spike0_carry__0_i_48_n_0;
  wire spike0_carry__0_i_49_n_0;
  wire spike0_carry__0_i_50_n_0;
  wire spike0_carry__0_i_51_n_0;
  wire spike0_carry__0_i_52_n_0;
  wire spike0_carry__0_i_53_n_0;
  wire spike0_carry__0_i_54_n_0;
  wire spike0_carry__0_i_55_n_0;
  wire spike0_carry__0_i_56_n_0;
  wire spike0_carry__0_i_57_n_0;
  wire spike0_carry__0_i_58_n_0;
  wire spike0_carry__0_i_59_n_0;
  wire spike0_carry__0_i_63_n_0;
  wire spike0_carry__0_i_64_n_0;
  wire spike0_carry__0_i_65_n_0;
  wire spike0_carry__0_i_66_n_0;
  wire spike0_carry__0_i_67_n_0;
  wire spike0_carry__0_i_68_n_0;
  wire spike0_carry__0_i_73_n_0;
  wire spike0_carry__0_i_74_n_0;
  wire spike0_carry__0_i_75_n_0;
  wire spike0_carry__0_i_76_n_0;
  wire spike0_carry__0_i_77_n_0;
  wire spike0_carry__0_i_78_n_0;
  wire spike0_carry__0_i_79_n_0;
  wire spike0_carry_i_100_n_0;
  wire spike0_carry_i_101_n_0;
  wire spike0_carry_i_102_n_0;
  wire spike0_carry_i_103_n_0;
  wire spike0_carry_i_104_n_0;
  wire spike0_carry_i_105_n_0;
  wire spike0_carry_i_106_n_0;
  wire spike0_carry_i_107_n_0;
  wire spike0_carry_i_10_n_0;
  wire spike0_carry_i_11_n_0;
  wire spike0_carry_i_11_n_1;
  wire spike0_carry_i_11_n_2;
  wire spike0_carry_i_11_n_3;
  wire spike0_carry_i_12_n_0;
  wire spike0_carry_i_15_n_0;
  wire spike0_carry_i_16_n_0;
  wire spike0_carry_i_18_n_0;
  wire spike0_carry_i_22_n_0;
  wire spike0_carry_i_26_n_0;
  wire spike0_carry_i_27_n_0;
  wire spike0_carry_i_28_n_0;
  wire spike0_carry_i_29_n_0;
  wire spike0_carry_i_30_n_0;
  wire spike0_carry_i_31_n_0;
  wire spike0_carry_i_32_n_0;
  wire spike0_carry_i_32_n_1;
  wire spike0_carry_i_32_n_2;
  wire spike0_carry_i_32_n_3;
  wire spike0_carry_i_33_n_0;
  wire spike0_carry_i_34_n_0;
  wire spike0_carry_i_35_n_0;
  wire spike0_carry_i_36_n_0;
  wire spike0_carry_i_37_n_0;
  wire spike0_carry_i_38_n_0;
  wire spike0_carry_i_39_n_0;
  wire spike0_carry_i_40_n_0;
  wire spike0_carry_i_41_n_0;
  wire spike0_carry_i_42_n_0;
  wire spike0_carry_i_43_n_0;
  wire spike0_carry_i_44_n_0;
  wire spike0_carry_i_45_n_0;
  wire spike0_carry_i_46_n_0;
  wire spike0_carry_i_47_n_0;
  wire spike0_carry_i_48_n_0;
  wire spike0_carry_i_49_n_0;
  wire spike0_carry_i_50_n_0;
  wire spike0_carry_i_51_n_0;
  wire spike0_carry_i_57_n_0;
  wire spike0_carry_i_58_n_0;
  wire spike0_carry_i_59_n_0;
  wire spike0_carry_i_60_n_0;
  wire spike0_carry_i_61_n_0;
  wire spike0_carry_i_62_n_0;
  wire spike0_carry_i_63_n_0;
  wire spike0_carry_i_64_n_0;
  wire spike0_carry_i_65_n_0;
  wire spike0_carry_i_70_n_0;
  wire spike0_carry_i_71_n_0;
  wire spike0_carry_i_72_n_0;
  wire spike0_carry_i_73_n_0;
  wire spike0_carry_i_74_n_0;
  wire spike0_carry_i_75_n_0;
  wire spike0_carry_i_76_n_0;
  wire spike0_carry_i_77_n_0;
  wire spike0_carry_i_78_n_0;
  wire spike0_carry_i_79_n_0;
  wire spike0_carry_i_80_n_0;
  wire spike0_carry_i_81_n_0;
  wire spike0_carry_i_82_n_0;
  wire spike0_carry_i_83_n_0;
  wire spike0_carry_i_84_n_0;
  wire spike0_carry_i_85_n_0;
  wire spike0_carry_i_86_n_0;
  wire spike0_carry_i_87_n_0;
  wire spike0_carry_i_88_n_0;
  wire spike0_carry_i_89_n_0;
  wire spike0_carry_i_90_n_0;
  wire spike0_carry_i_91_n_0;
  wire spike0_carry_i_92_n_0;
  wire spike0_carry_i_93_n_0;
  wire spike0_carry_i_94_n_0;
  wire spike0_carry_i_95_n_0;
  wire spike0_carry_i_96_n_0;
  wire spike0_carry_i_97_n_0;
  wire spike0_carry_i_98_n_0;
  wire spike0_carry_i_99_n_0;
  wire [3:0]\stage1_r_reg[15]_0 ;
  wire [3:0]\stage1_r_reg[15]_1 ;
  wire \stage1_r_reg_n_0_[0] ;
  wire \stage1_r_reg_n_0_[15] ;
  wire \stage1_r_reg_n_0_[1] ;
  wire \stage1_r_reg_n_0_[2] ;
  wire \stage1_r_reg_n_0_[3] ;
  wire \stage1_r_reg_n_0_[4] ;
  wire \stage1_r_reg_n_0_[5] ;
  wire \stage1_r_reg_n_0_[6] ;
  wire \stage1_r_reg_n_0_[7] ;
  wire \stage1_r_reg_n_0_[8] ;
  wire \stage1_r_reg_n_0_[9] ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [14:0]temp_fp;
  wire \u2/c_3__3 ;
  wire \u3/c_3__0 ;
  wire [9:0]\u_lut/distribution_output_reg__0 ;
  wire u_noise_n_1;
  wire u_noise_n_19;
  wire u_noise_n_2;
  wire u_temp_n_15;
  wire u_temp_n_16;
  wire u_temp_n_17;
  wire u_temp_n_18;
  wire u_temp_n_19;
  wire u_temp_n_20;
  wire u_temp_n_21;
  wire u_temp_n_22;
  wire write_flipping_seed_IBUF;
  wire [3:2]NLW_spike0_carry__0_i_11_CO_UNCONNECTED;
  wire [3:3]NLW_spike0_carry__0_i_11_O_UNCONNECTED;

  float16_mult \FP_PATH.u_fmul 
       (.D({\FP_PATH.u_fmul_n_1 ,\FP_PATH.u_fmul_n_2 ,\FP_PATH.u_fmul_n_3 ,\FP_PATH.u_fmul_n_4 ,\FP_PATH.u_fmul_n_5 ,\FP_PATH.u_fmul_n_6 ,\FP_PATH.u_fmul_n_7 ,\FP_PATH.u_fmul_n_8 ,\FP_PATH.u_fmul_n_9 ,\FP_PATH.u_fmul_n_10 }),
        .DOADO(temp_fp[10:0]),
        .P(p_0_in),
        .out({noise_fp[10],\u_lut/distribution_output_reg__0 }),
        .\stage1_r_reg[9] (u_temp_n_22),
        .\stage1_r_reg[9]_0 (u_noise_n_1),
        .\stage1_r_reg[9]_1 (u_temp_n_21),
        .tmp(\FP_PATH.u_fmul_n_11 ));
  LUT6 #(
    .INIT(64'hFBABA202A202A202)) 
    spike0_carry__0_i_1
       (.I0(spike0_carry__0_2),
        .I1(spike0_carry__0_i_10_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[15]),
        .I4(spike0_carry__0_i_12_n_0),
        .I5(mem_cmp[6]),
        .O(\stage1_r_reg[15]_1 [3]));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike0_carry__0_i_10
       (.I0(spike0_carry__0_i_29_n_0),
        .I1(spike0_carry__0_i_30_n_0),
        .I2(spike0_carry__0_i_31_n_0),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry_i_30_n_0),
        .I5(spike0_carry__0_i_32_n_0),
        .O(spike0_carry__0_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry__0_i_11
       (.CI(spike0_carry__0_i_25_n_0),
        .CO({NLW_spike0_carry__0_i_11_CO_UNCONNECTED[3:2],spike0_carry__0_i_11_n_2,spike0_carry__0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike0_carry__0_i_11_O_UNCONNECTED[3],result0[15:13]}),
        .S({1'b0,spike0_carry__0_i_33_n_0,spike0_carry__0_i_34_n_0,spike0_carry__0_i_35_n_0}));
  LUT6 #(
    .INIT(64'h4444444744474447)) 
    spike0_carry__0_i_12
       (.I0(result0[14]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry__0_i_36_n_0),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry__0_i_29_n_0),
        .I5(spike0_carry__0_i_37_n_0),
        .O(spike0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    spike0_carry__0_i_15
       (.I0(spike0_carry__0_i_38_n_0),
        .I1(spike0_carry__0_i_39_n_0),
        .I2(spike0_carry_i_27_n_0),
        .I3(spike0_carry__0_i_29_n_0),
        .I4(spike0_carry_i_42_n_0),
        .I5(spike0_carry__0_i_40_n_0),
        .O(spike0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike0_carry__0_i_16
       (.I0(result0[12]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry__0_i_41_n_0),
        .I3(spike0_carry__0_i_42_n_0),
        .I4(spike0_carry__0_i_43_n_0),
        .I5(spike0_carry__0_i_44_n_0),
        .O(spike0_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'h4444444444444777)) 
    spike0_carry__0_i_18
       (.I0(result0[10]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry_i_31_n_0),
        .I3(spike0_carry__0_i_37_n_0),
        .I4(spike0_carry__0_i_46_n_0),
        .I5(spike0_carry__0_i_47_n_0),
        .O(spike0_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h5DFD045404540454)) 
    spike0_carry__0_i_2
       (.I0(spike0_carry__0_1),
        .I1(spike0_carry__0_i_15_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[13]),
        .I4(spike0_carry__0_i_16_n_0),
        .I5(mem_cmp[5]),
        .O(\stage1_r_reg[15]_1 [2]));
  LUT5 #(
    .INIT(32'h0000F888)) 
    spike0_carry__0_i_20
       (.I0(spike0_carry__0_i_30_n_0),
        .I1(spike0_carry_i_31_n_0),
        .I2(spike0_carry_i_30_n_0),
        .I3(spike0_carry__0_i_29_n_0),
        .I4(\stage1_r_reg_n_0_[15] ),
        .O(spike0_carry__0_i_20_n_0));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    spike0_carry__0_i_21
       (.I0(spike0_carry_i_27_n_0),
        .I1(result0[11]),
        .I2(spike0_carry__0_i_48_n_0),
        .I3(spike0_carry_i_41_n_0),
        .I4(\stage1_r_reg_n_0_[15] ),
        .O(spike0_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000070707)) 
    spike0_carry__0_i_24
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry_i_42_n_0),
        .I2(spike0_carry__0_i_49_n_0),
        .I3(spike0_carry_i_41_n_0),
        .I4(spike0_carry__0_i_50_n_0),
        .I5(spike0_carry__0_i_51_n_0),
        .O(spike0_carry__0_i_24_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry__0_i_25
       (.CI(spike0_carry_i_11_n_0),
        .CO({spike0_carry__0_i_25_n_0,spike0_carry__0_i_25_n_1,spike0_carry__0_i_25_n_2,spike0_carry__0_i_25_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[12:9]),
        .S({spike0_carry__0_i_52_n_0,spike0_carry__0_i_53_n_0,spike0_carry__0_i_54_n_0,spike0_carry__0_i_55_n_0}));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike0_carry__0_i_26
       (.I0(result0[8]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry__0_i_56_n_0),
        .I3(spike0_carry__0_i_57_n_0),
        .I4(spike0_carry__0_i_58_n_0),
        .I5(spike0_carry__0_i_59_n_0),
        .O(spike0_carry__0_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h01010110)) 
    spike0_carry__0_i_29
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry__0_i_29_n_0));
  LUT5 #(
    .INIT(32'h0008888F)) 
    spike0_carry__0_i_3
       (.I0(spike0_carry__0_i_18_n_0),
        .I1(mem_cmp[4]),
        .I2(spike0_carry__0_i_20_n_0),
        .I3(spike0_carry__0_i_21_n_0),
        .I4(spike0_carry__0_0),
        .O(\stage1_r_reg[15]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0208000)) 
    spike0_carry__0_i_30
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(spike0_carry_i_77_n_0),
        .I3(\stage1_r_reg_n_0_[5] ),
        .I4(\stage1_r_reg_n_0_[7] ),
        .I5(spike0_carry_i_70_n_0),
        .O(spike0_carry__0_i_30_n_0));
  LUT6 #(
    .INIT(64'hA2002200A0002000)) 
    spike0_carry__0_i_31
       (.I0(spike0_carry_i_31_n_0),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(spike0_carry_i_77_n_0),
        .I4(\stage1_r_reg_n_0_[9] ),
        .I5(\stage1_r_reg_n_0_[8] ),
        .O(spike0_carry__0_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h10101002)) 
    spike0_carry__0_i_32
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry__0_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike0_carry__0_i_33
       (.I0(spike0_carry__0_i_29_n_0),
        .I1(spike0_carry__0_i_30_n_0),
        .I2(spike0_carry__0_i_31_n_0),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry_i_30_n_0),
        .I5(spike0_carry__0_i_32_n_0),
        .O(spike0_carry__0_i_33_n_0));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    spike0_carry__0_i_34
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry__0_i_63_n_0),
        .I2(spike0_carry__0_i_64_n_0),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry__0_i_29_n_0),
        .I5(spike0_carry__0_i_37_n_0),
        .O(spike0_carry__0_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    spike0_carry__0_i_35
       (.I0(spike0_carry__0_i_38_n_0),
        .I1(spike0_carry__0_i_39_n_0),
        .I2(spike0_carry_i_27_n_0),
        .I3(spike0_carry__0_i_29_n_0),
        .I4(spike0_carry_i_42_n_0),
        .I5(spike0_carry__0_i_40_n_0),
        .O(spike0_carry__0_i_35_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    spike0_carry__0_i_36
       (.I0(spike0_carry_i_87_n_0),
        .I1(spike0_carry__0_i_32_n_0),
        .I2(spike0_carry__0_i_63_n_0),
        .I3(spike0_carry_i_31_n_0),
        .O(spike0_carry__0_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0208000)) 
    spike0_carry__0_i_37
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(spike0_carry_i_77_n_0),
        .I3(\stage1_r_reg_n_0_[4] ),
        .I4(\stage1_r_reg_n_0_[6] ),
        .I5(spike0_carry_i_86_n_0),
        .O(spike0_carry__0_i_37_n_0));
  LUT6 #(
    .INIT(64'h00000000000100E0)) 
    spike0_carry__0_i_38
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(spike0_carry_i_91_n_0),
        .O(spike0_carry__0_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    spike0_carry__0_i_39
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(spike0_carry__0_i_39_n_0));
  LUT6 #(
    .INIT(64'h5DFD045404540454)) 
    spike0_carry__0_i_4
       (.I0(spike0_carry__0),
        .I1(spike0_carry__0_i_24_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[9]),
        .I4(spike0_carry__0_i_26_n_0),
        .I5(mem_cmp[3]),
        .O(\stage1_r_reg[15]_1 [0]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry__0_i_40
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry__0_i_65_n_0),
        .I2(\stage1_r_reg_n_0_[9] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[7] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry__0_i_40_n_0));
  LUT6 #(
    .INIT(64'h8800000108000000)) 
    spike0_carry__0_i_41
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike0_carry_i_73_n_0),
        .O(spike0_carry__0_i_41_n_0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    spike0_carry__0_i_42
       (.I0(spike0_carry__0_i_32_n_0),
        .I1(spike0_carry__0_i_66_n_0),
        .I2(spike0_carry_i_41_n_0),
        .I3(spike0_carry__0_i_67_n_0),
        .I4(\stage1_r_reg_n_0_[9] ),
        .I5(spike0_carry_i_77_n_0),
        .O(spike0_carry__0_i_42_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry__0_i_43
       (.I0(spike0_carry__0_i_29_n_0),
        .I1(spike0_carry_i_93_n_0),
        .I2(\stage1_r_reg_n_0_[4] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[2] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry__0_i_43_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry__0_i_44
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry__0_i_68_n_0),
        .I2(\stage1_r_reg_n_0_[8] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[6] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry__0_i_44_n_0));
  LUT6 #(
    .INIT(64'h8000000100000000)) 
    spike0_carry__0_i_46
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(spike0_carry_i_73_n_0),
        .O(spike0_carry__0_i_46_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    spike0_carry__0_i_47
       (.I0(spike0_carry_i_87_n_0),
        .I1(spike0_carry__0_i_29_n_0),
        .I2(spike0_carry__0_i_63_n_0),
        .I3(spike0_carry_i_41_n_0),
        .O(spike0_carry__0_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hC000F0A0)) 
    spike0_carry__0_i_48
       (.I0(\stage1_r_reg_n_0_[8] ),
        .I1(\stage1_r_reg_n_0_[9] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry__0_i_48_n_0));
  LUT6 #(
    .INIT(64'hF2222222FF222222)) 
    spike0_carry__0_i_49
       (.I0(spike0_carry_i_73_n_0),
        .I1(spike0_carry_i_89_n_0),
        .I2(\stage1_r_reg_n_0_[9] ),
        .I3(spike0_carry__0_i_73_n_0),
        .I4(spike0_carry_i_62_n_0),
        .I5(sel0[0]),
        .O(spike0_carry__0_i_49_n_0));
  LUT6 #(
    .INIT(64'h000059A959A90000)) 
    spike0_carry__0_i_5
       (.I0(spike0_carry__0_2),
        .I1(spike0_carry__0_i_10_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[15]),
        .I4(spike0_carry__0_i_12_n_0),
        .I5(mem_cmp[6]),
        .O(\stage1_r_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0208000)) 
    spike0_carry__0_i_50
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(spike0_carry_i_77_n_0),
        .I3(\stage1_r_reg_n_0_[7] ),
        .I4(\stage1_r_reg_n_0_[9] ),
        .I5(spike0_carry__0_i_65_n_0),
        .O(spike0_carry__0_i_50_n_0));
  LUT6 #(
    .INIT(64'h000000000000001E)) 
    spike0_carry__0_i_51
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(spike0_carry_i_91_n_0),
        .O(spike0_carry__0_i_51_n_0));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    spike0_carry__0_i_52
       (.I0(spike0_carry__0_i_74_n_0),
        .I1(spike0_carry_i_27_n_0),
        .I2(spike0_carry__0_i_42_n_0),
        .I3(spike0_carry__0_i_29_n_0),
        .I4(spike0_carry_i_84_n_0),
        .I5(spike0_carry__0_i_44_n_0),
        .O(spike0_carry__0_i_52_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    spike0_carry__0_i_53
       (.I0(spike0_carry__0_i_75_n_0),
        .I1(spike0_carry_i_89_n_0),
        .I2(spike0_carry__0_i_30_n_0),
        .I3(spike0_carry__0_i_76_n_0),
        .I4(spike0_carry__0_i_77_n_0),
        .I5(spike0_carry__0_i_78_n_0),
        .O(spike0_carry__0_i_53_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike0_carry__0_i_54
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry__0_i_37_n_0),
        .I2(spike0_carry__0_i_73_n_0),
        .I3(spike0_carry_i_75_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry__0_i_47_n_0),
        .O(spike0_carry__0_i_54_n_0));
  LUT6 #(
    .INIT(64'h0000000000070707)) 
    spike0_carry__0_i_55
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry_i_42_n_0),
        .I2(spike0_carry__0_i_49_n_0),
        .I3(spike0_carry_i_41_n_0),
        .I4(spike0_carry__0_i_50_n_0),
        .I5(spike0_carry__0_i_51_n_0),
        .O(spike0_carry__0_i_55_n_0));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    spike0_carry__0_i_56
       (.I0(spike0_carry_i_44_n_0),
        .I1(spike0_carry__0_i_73_n_0),
        .I2(\stage1_r_reg_n_0_[9] ),
        .I3(spike0_carry_i_89_n_0),
        .I4(spike0_carry_i_73_n_0),
        .O(spike0_carry__0_i_56_n_0));
  LUT6 #(
    .INIT(64'hFFEAC0C0C0C0C0C0)) 
    spike0_carry__0_i_57
       (.I0(sel0[1]),
        .I1(spike0_carry__0_i_29_n_0),
        .I2(spike0_carry__0_i_66_n_0),
        .I3(\stage1_r_reg_n_0_[8] ),
        .I4(spike0_carry_i_74_n_0),
        .I5(spike0_carry_i_75_n_0),
        .O(spike0_carry__0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry__0_i_58
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry__0_i_68_n_0),
        .I2(\stage1_r_reg_n_0_[8] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[6] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry__0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry__0_i_59
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry_i_93_n_0),
        .I2(\stage1_r_reg_n_0_[4] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[2] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry__0_i_59_n_0));
  LUT6 #(
    .INIT(64'h000059A959A90000)) 
    spike0_carry__0_i_6
       (.I0(spike0_carry__0_1),
        .I1(spike0_carry__0_i_15_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[13]),
        .I4(spike0_carry__0_i_16_n_0),
        .I5(mem_cmp[5]),
        .O(\stage1_r_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hF0F0C0A000F0C0A0)) 
    spike0_carry__0_i_63
       (.I0(\stage1_r_reg_n_0_[7] ),
        .I1(\stage1_r_reg_n_0_[9] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\stage1_r_reg_n_0_[8] ),
        .O(spike0_carry__0_i_63_n_0));
  LUT6 #(
    .INIT(64'h000100E000000000)) 
    spike0_carry__0_i_64
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(spike0_carry_i_87_n_0),
        .O(spike0_carry__0_i_64_n_0));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry__0_i_65
       (.I0(\stage1_r_reg_n_0_[8] ),
        .I1(\stage1_r_reg_n_0_[6] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry__0_i_65_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    spike0_carry__0_i_66
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(\stage1_r_reg_n_0_[0] ),
        .O(spike0_carry__0_i_66_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    spike0_carry__0_i_67
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(spike0_carry__0_i_67_n_0));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry__0_i_68
       (.I0(\stage1_r_reg_n_0_[7] ),
        .I1(\stage1_r_reg_n_0_[5] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry__0_i_68_n_0));
  LUT5 #(
    .INIT(32'h015402A8)) 
    spike0_carry__0_i_7
       (.I0(spike0_carry__0_i_18_n_0),
        .I1(spike0_carry__0_i_20_n_0),
        .I2(spike0_carry__0_i_21_n_0),
        .I3(spike0_carry__0_0),
        .I4(mem_cmp[4]),
        .O(\stage1_r_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike0_carry__0_i_73
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(spike0_carry__0_i_73_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    spike0_carry__0_i_74
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(spike0_carry__0_i_74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    spike0_carry__0_i_75
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(spike0_carry__0_i_75_n_0));
  LUT6 #(
    .INIT(64'h4000000000000001)) 
    spike0_carry__0_i_76
       (.I0(spike0_carry_i_73_n_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[0]),
        .O(spike0_carry__0_i_76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h55578000)) 
    spike0_carry__0_i_77
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .O(spike0_carry__0_i_77_n_0));
  LUT5 #(
    .INIT(32'hF5030000)) 
    spike0_carry__0_i_78
       (.I0(spike0_carry_i_30_n_0),
        .I1(spike0_carry__0_i_48_n_0),
        .I2(spike0_carry__0_i_75_n_0),
        .I3(spike0_carry__0_i_79_n_0),
        .I4(spike0_carry_i_89_n_0),
        .O(spike0_carry__0_i_78_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    spike0_carry__0_i_79
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(spike0_carry__0_i_79_n_0));
  LUT6 #(
    .INIT(64'h000059A959A90000)) 
    spike0_carry__0_i_8
       (.I0(spike0_carry__0),
        .I1(spike0_carry__0_i_24_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[9]),
        .I4(spike0_carry__0_i_26_n_0),
        .I5(mem_cmp[3]),
        .O(\stage1_r_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h5DFD045404540454)) 
    spike0_carry_i_1
       (.I0(spike0_carry_1),
        .I1(spike0_carry_i_10_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[7]),
        .I4(spike0_carry_i_12_n_0),
        .I5(mem_cmp[2]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    spike0_carry_i_10
       (.I0(spike0_carry_i_26_n_0),
        .I1(spike0_carry_i_27_n_0),
        .I2(spike0_carry_i_28_n_0),
        .I3(spike0_carry_i_29_n_0),
        .I4(spike0_carry_i_30_n_0),
        .I5(spike0_carry_i_31_n_0),
        .O(spike0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000028080808)) 
    spike0_carry_i_100
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\stage1_r_reg_n_0_[15] ),
        .O(spike0_carry_i_100_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    spike0_carry_i_101
       (.I0(\stage1_r_reg_n_0_[4] ),
        .I1(\stage1_r_reg_n_0_[5] ),
        .I2(\stage1_r_reg_n_0_[6] ),
        .I3(\stage1_r_reg_n_0_[7] ),
        .I4(\stage1_r_reg_n_0_[9] ),
        .I5(\stage1_r_reg_n_0_[8] ),
        .O(spike0_carry_i_101_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    spike0_carry_i_102
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(spike0_carry_i_102_n_0));
  LUT6 #(
    .INIT(64'h05F5F55331313110)) 
    spike0_carry_i_103
       (.I0(spike0_carry_i_30_n_0),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(spike0_carry_i_103_n_0));
  LUT6 #(
    .INIT(64'hABABABABABABABBA)) 
    spike0_carry_i_104
       (.I0(spike0_carry__0_i_76_n_0),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(spike0_carry_i_104_n_0));
  LUT5 #(
    .INIT(32'hFAEABAAA)) 
    spike0_carry_i_105
       (.I0(spike0_carry_i_99_n_0),
        .I1(sel0[1]),
        .I2(spike0_carry_i_74_n_0),
        .I3(\stage1_r_reg_n_0_[1] ),
        .I4(\stage1_r_reg_n_0_[3] ),
        .O(spike0_carry_i_105_n_0));
  LUT6 #(
    .INIT(64'h2AA87FFE28007C02)) 
    spike0_carry_i_106
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(spike0_carry_i_91_n_0),
        .O(spike0_carry_i_106_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry_i_107
       (.I0(\stage1_r_reg_n_0_[9] ),
        .I1(sel0[1]),
        .I2(\stage1_r_reg_n_0_[7] ),
        .O(spike0_carry_i_107_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry_i_11
       (.CI(spike0_carry_i_32_n_0),
        .CO({spike0_carry_i_11_n_0,spike0_carry_i_11_n_1,spike0_carry_i_11_n_2,spike0_carry_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[8:5]),
        .S({spike0_carry_i_33_n_0,spike0_carry_i_34_n_0,spike0_carry_i_35_n_0,spike0_carry_i_36_n_0}));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike0_carry_i_12
       (.I0(result0[6]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry_i_37_n_0),
        .I3(spike0_carry_i_38_n_0),
        .I4(spike0_carry_i_39_n_0),
        .I5(spike0_carry_i_40_n_0),
        .O(spike0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike0_carry_i_15
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_42_n_0),
        .I2(spike0_carry_i_43_n_0),
        .I3(spike0_carry_i_44_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_45_n_0),
        .O(spike0_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike0_carry_i_16
       (.I0(result0[4]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry_i_46_n_0),
        .I3(spike0_carry_i_47_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_48_n_0),
        .O(spike0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    spike0_carry_i_18
       (.I0(result0[2]),
        .I1(\stage1_r_reg_n_0_[15] ),
        .I2(spike0_carry_i_49_n_0),
        .I3(spike0_carry_i_50_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_51_n_0),
        .O(spike0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h5DFD045404540454)) 
    spike0_carry_i_2
       (.I0(spike0_carry_0),
        .I1(spike0_carry_i_15_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[5]),
        .I4(spike0_carry_i_16_n_0),
        .I5(mem_cmp[1]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF55EA40)) 
    spike0_carry_i_20
       (.I0(\stage1_r_reg_n_0_[15] ),
        .I1(spike0_carry_i_41_n_0),
        .I2(spike0_carry_i_30_n_0),
        .I3(result0[3]),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_57_n_0),
        .O(flip_val[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEEEEE)) 
    spike0_carry_i_22
       (.I0(spike0_carry_i_27_n_0),
        .I1(spike0_carry_i_58_n_0),
        .I2(spike0_carry_i_59_n_0),
        .I3(spike0_carry_i_60_n_0),
        .I4(spike0_carry_i_61_n_0),
        .I5(spike0_carry_i_62_n_0),
        .O(spike0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    spike0_carry_i_23
       (.I0(spike0_carry_i_63_n_0),
        .I1(result0[1]),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry_i_64_n_0),
        .I5(spike0_carry_i_65_n_0),
        .O(flip_val[1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry_i_26
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_70_n_0),
        .I2(\stage1_r_reg_n_0_[7] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[5] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h8000000000000002)) 
    spike0_carry_i_27
       (.I0(spike0_carry_i_73_n_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[0]),
        .O(spike0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h0000082000000800)) 
    spike0_carry_i_28
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\stage1_r_reg_n_0_[8] ),
        .O(spike0_carry_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    spike0_carry_i_29
       (.I0(\stage1_r_reg_n_0_[9] ),
        .I1(sel0[1]),
        .I2(\stage1_r_reg_n_0_[7] ),
        .I3(spike0_carry_i_74_n_0),
        .I4(spike0_carry_i_75_n_0),
        .O(spike0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h0000A808A808FFFF)) 
    spike0_carry_i_3
       (.I0(spike0_carry_i_18_n_0),
        .I1(O[1]),
        .I2(spike0_carry),
        .I3(Q[2]),
        .I4(flip_val[3]),
        .I5(spike0_carry_2),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hAAAAF000CC00AAAA)) 
    spike0_carry_i_30
       (.I0(spike0_carry_i_76_n_0),
        .I1(\stage1_r_reg_n_0_[2] ),
        .I2(\stage1_r_reg_n_0_[3] ),
        .I3(spike0_carry_i_77_n_0),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(spike0_carry_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    spike0_carry_i_31
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(spike0_carry_i_31_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry_i_32
       (.CI(1'b0),
        .CO({spike0_carry_i_32_n_0,spike0_carry_i_32_n_1,spike0_carry_i_32_n_2,spike0_carry_i_32_n_3}),
        .CYINIT(spike0_carry_i_78_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result0[4:1]),
        .S({spike0_carry_i_79_n_0,spike0_carry_i_80_n_0,spike0_carry_i_81_n_0,spike0_carry_i_82_n_0}));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    spike0_carry_i_33
       (.I0(spike0_carry_i_83_n_0),
        .I1(spike0_carry_i_27_n_0),
        .I2(spike0_carry__0_i_57_n_0),
        .I3(spike0_carry__0_i_58_n_0),
        .I4(spike0_carry_i_31_n_0),
        .I5(spike0_carry_i_84_n_0),
        .O(spike0_carry_i_33_n_0));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    spike0_carry_i_34
       (.I0(spike0_carry_i_26_n_0),
        .I1(spike0_carry_i_27_n_0),
        .I2(spike0_carry_i_28_n_0),
        .I3(spike0_carry_i_29_n_0),
        .I4(spike0_carry_i_30_n_0),
        .I5(spike0_carry_i_31_n_0),
        .O(spike0_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    spike0_carry_i_35
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry__0_i_37_n_0),
        .I2(spike0_carry_i_38_n_0),
        .I3(spike0_carry_i_39_n_0),
        .I4(spike0_carry_i_85_n_0),
        .I5(spike0_carry_i_27_n_0),
        .O(spike0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike0_carry_i_36
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_42_n_0),
        .I2(spike0_carry_i_43_n_0),
        .I3(spike0_carry_i_44_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_45_n_0),
        .O(spike0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry_i_37
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_86_n_0),
        .I2(\stage1_r_reg_n_0_[6] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[4] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h60000000)) 
    spike0_carry_i_38
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(spike0_carry_i_87_n_0),
        .O(spike0_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h2808080800000000)) 
    spike0_carry_i_39
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(spike0_carry_i_43_n_0),
        .O(spike0_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'h4F044F4F4F040404)) 
    spike0_carry_i_4
       (.I0(spike0_carry_i_22_n_0),
        .I1(Q[0]),
        .I2(flip_val[1]),
        .I3(Q[1]),
        .I4(spike0_carry),
        .I5(O[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    spike0_carry_i_40
       (.I0(spike0_carry_i_44_n_0),
        .I1(spike0_carry_i_88_n_0),
        .I2(spike0_carry_i_89_n_0),
        .I3(spike0_carry_i_73_n_0),
        .O(spike0_carry_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2228)) 
    spike0_carry_i_41
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(spike0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0208000)) 
    spike0_carry_i_42
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(spike0_carry_i_77_n_0),
        .I3(\stage1_r_reg_n_0_[3] ),
        .I4(\stage1_r_reg_n_0_[5] ),
        .I5(spike0_carry_i_90_n_0),
        .O(spike0_carry_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h33080308)) 
    spike0_carry_i_43
       (.I0(\stage1_r_reg_n_0_[6] ),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\stage1_r_reg_n_0_[8] ),
        .O(spike0_carry_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00001F00)) 
    spike0_carry_i_44
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .O(spike0_carry_i_44_n_0));
  LUT4 #(
    .INIT(16'hF444)) 
    spike0_carry_i_45
       (.I0(spike0_carry_i_91_n_0),
        .I1(spike0_carry_i_31_n_0),
        .I2(spike0_carry_i_92_n_0),
        .I3(spike0_carry_i_75_n_0),
        .O(spike0_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    spike0_carry_i_46
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_93_n_0),
        .I2(\stage1_r_reg_n_0_[4] ),
        .I3(spike0_carry_i_71_n_0),
        .I4(\stage1_r_reg_n_0_[2] ),
        .I5(spike0_carry_i_72_n_0),
        .O(spike0_carry_i_46_n_0));
  LUT6 #(
    .INIT(64'h0404044400000000)) 
    spike0_carry_i_47
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(spike0_carry_i_92_n_0),
        .O(spike0_carry_i_47_n_0));
  LUT5 #(
    .INIT(32'hFF808080)) 
    spike0_carry_i_48
       (.I0(spike0_carry_i_31_n_0),
        .I1(spike0_carry_i_71_n_0),
        .I2(\stage1_r_reg_n_0_[0] ),
        .I3(spike0_carry_i_94_n_0),
        .I4(spike0_carry_i_75_n_0),
        .O(spike0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'h2808080800000000)) 
    spike0_carry_i_49
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(spike0_carry_i_95_n_0),
        .O(spike0_carry_i_49_n_0));
  LUT6 #(
    .INIT(64'h000059A959A90000)) 
    spike0_carry_i_5
       (.I0(spike0_carry_1),
        .I1(spike0_carry_i_10_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[7]),
        .I4(spike0_carry_i_12_n_0),
        .I5(mem_cmp[2]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0404044400000000)) 
    spike0_carry_i_50
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(spike0_carry_i_96_n_0),
        .O(spike0_carry_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h1E000000)) 
    spike0_carry_i_51
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(spike0_carry_i_87_n_0),
        .O(spike0_carry_i_51_n_0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    spike0_carry_i_57
       (.I0(spike0_carry_i_96_n_0),
        .I1(spike0_carry_i_75_n_0),
        .I2(spike0_carry_i_94_n_0),
        .I3(spike0_carry_i_44_n_0),
        .I4(\stage1_r_reg_n_0_[15] ),
        .O(spike0_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    spike0_carry_i_58
       (.I0(\stage1_r_reg_n_0_[0] ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(spike0_carry_i_58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    spike0_carry_i_59
       (.I0(spike0_carry_i_97_n_0),
        .I1(spike0_carry_i_98_n_0),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(spike0_carry_i_59_n_0));
  LUT6 #(
    .INIT(64'h000059A959A90000)) 
    spike0_carry_i_6
       (.I0(spike0_carry_0),
        .I1(spike0_carry_i_15_n_0),
        .I2(\stage1_r_reg_n_0_[15] ),
        .I3(result0[5]),
        .I4(spike0_carry_i_16_n_0),
        .I5(mem_cmp[1]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h00000000FFFFA0C0)) 
    spike0_carry_i_60
       (.I0(\stage1_r_reg_n_0_[3] ),
        .I1(\stage1_r_reg_n_0_[1] ),
        .I2(spike0_carry_i_74_n_0),
        .I3(sel0[1]),
        .I4(spike0_carry_i_99_n_0),
        .I5(sel0[0]),
        .O(spike0_carry_i_60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h80000200)) 
    spike0_carry_i_61
       (.I0(\stage1_r_reg_n_0_[8] ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(spike0_carry_i_61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6222222A)) 
    spike0_carry_i_62
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(spike0_carry_i_62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spike0_carry_i_63
       (.I0(\stage1_r_reg_n_0_[15] ),
        .I1(spike0_carry_i_41_n_0),
        .I2(spike0_carry_i_91_n_0),
        .O(spike0_carry_i_63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    spike0_carry_i_64
       (.I0(\stage1_r_reg_n_0_[15] ),
        .I1(spike0_carry_i_44_n_0),
        .I2(spike0_carry_i_95_n_0),
        .O(spike0_carry_i_64_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCCCC4800000)) 
    spike0_carry_i_65
       (.I0(sel0[1]),
        .I1(spike0_carry_i_100_n_0),
        .I2(\stage1_r_reg_n_0_[3] ),
        .I3(\stage1_r_reg_n_0_[1] ),
        .I4(spike0_carry_i_74_n_0),
        .I5(spike0_carry_i_99_n_0),
        .O(spike0_carry_i_65_n_0));
  LUT6 #(
    .INIT(64'h4144411182888222)) 
    spike0_carry_i_7
       (.I0(spike0_carry_i_18_n_0),
        .I1(flip_val[3]),
        .I2(Q[3]),
        .I3(spike0_carry),
        .I4(O[2]),
        .I5(mem_cmp[0]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry_i_70
       (.I0(\stage1_r_reg_n_0_[6] ),
        .I1(\stage1_r_reg_n_0_[4] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0900)) 
    spike0_carry_i_71
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(spike0_carry_i_71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    spike0_carry_i_72
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(spike0_carry_i_72_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    spike0_carry_i_73
       (.I0(\stage1_r_reg_n_0_[1] ),
        .I1(\stage1_r_reg_n_0_[0] ),
        .I2(\stage1_r_reg_n_0_[3] ),
        .I3(\stage1_r_reg_n_0_[2] ),
        .I4(spike0_carry_i_101_n_0),
        .I5(spike0_carry_i_102_n_0),
        .O(spike0_carry_i_73_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h42)) 
    spike0_carry_i_74
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(spike0_carry_i_74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0F800000)) 
    spike0_carry_i_75
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .O(spike0_carry_i_75_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    spike0_carry_i_76
       (.I0(\stage1_r_reg_n_0_[1] ),
        .I1(\stage1_r_reg_n_0_[0] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[0]),
        .O(spike0_carry_i_76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAA95555)) 
    spike0_carry_i_77
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(spike0_carry_i_77_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_78
       (.I0(spike0_carry_i_22_n_0),
        .O(spike0_carry_i_78_n_0));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    spike0_carry_i_79
       (.I0(spike0_carry_i_41_n_0),
        .I1(spike0_carry_i_84_n_0),
        .I2(spike0_carry_i_92_n_0),
        .I3(spike0_carry_i_44_n_0),
        .I4(spike0_carry_i_27_n_0),
        .I5(spike0_carry_i_48_n_0),
        .O(spike0_carry_i_79_n_0));
  LUT6 #(
    .INIT(64'h8288822241444111)) 
    spike0_carry_i_8
       (.I0(spike0_carry_i_22_n_0),
        .I1(flip_val[1]),
        .I2(Q[1]),
        .I3(spike0_carry),
        .I4(O[0]),
        .I5(Q[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hEEEEEFEEFEEEFFEE)) 
    spike0_carry_i_80
       (.I0(spike0_carry_i_103_n_0),
        .I1(spike0_carry_i_104_n_0),
        .I2(sel0[0]),
        .I3(spike0_carry__0_i_77_n_0),
        .I4(spike0_carry_i_94_n_0),
        .I5(spike0_carry_i_96_n_0),
        .O(spike0_carry_i_80_n_0));
  LUT6 #(
    .INIT(64'h0000001500150015)) 
    spike0_carry_i_81
       (.I0(spike0_carry_i_49_n_0),
        .I1(spike0_carry_i_96_n_0),
        .I2(spike0_carry_i_44_n_0),
        .I3(spike0_carry_i_27_n_0),
        .I4(spike0_carry_i_87_n_0),
        .I5(spike0_carry_i_41_n_0),
        .O(spike0_carry_i_81_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBAAAFAA)) 
    spike0_carry_i_82
       (.I0(spike0_carry_i_104_n_0),
        .I1(spike0_carry_i_105_n_0),
        .I2(spike0_carry_i_95_n_0),
        .I3(spike0_carry__0_i_77_n_0),
        .I4(sel0[0]),
        .I5(spike0_carry_i_106_n_0),
        .O(spike0_carry_i_82_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    spike0_carry_i_83
       (.I0(\stage1_r_reg_n_0_[9] ),
        .I1(sel0[0]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(spike0_carry_i_83_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0208000)) 
    spike0_carry_i_84
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(spike0_carry_i_77_n_0),
        .I3(\stage1_r_reg_n_0_[2] ),
        .I4(\stage1_r_reg_n_0_[4] ),
        .I5(spike0_carry_i_93_n_0),
        .O(spike0_carry_i_84_n_0));
  LUT5 #(
    .INIT(32'hB8000000)) 
    spike0_carry_i_85
       (.I0(\stage1_r_reg_n_0_[9] ),
        .I1(sel0[1]),
        .I2(\stage1_r_reg_n_0_[7] ),
        .I3(spike0_carry_i_74_n_0),
        .I4(spike0_carry_i_44_n_0),
        .O(spike0_carry_i_85_n_0));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry_i_86
       (.I0(\stage1_r_reg_n_0_[5] ),
        .I1(\stage1_r_reg_n_0_[3] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry_i_86_n_0));
  LUT6 #(
    .INIT(64'hCC00F000AA000000)) 
    spike0_carry_i_87
       (.I0(\stage1_r_reg_n_0_[1] ),
        .I1(\stage1_r_reg_n_0_[0] ),
        .I2(\stage1_r_reg_n_0_[2] ),
        .I3(spike0_carry_i_77_n_0),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(spike0_carry_i_87_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h22400040)) 
    spike0_carry_i_88
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\stage1_r_reg_n_0_[7] ),
        .I3(sel0[1]),
        .I4(\stage1_r_reg_n_0_[9] ),
        .O(spike0_carry_i_88_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    spike0_carry_i_89
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike0_carry_i_89_n_0));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry_i_90
       (.I0(\stage1_r_reg_n_0_[4] ),
        .I1(\stage1_r_reg_n_0_[2] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry_i_90_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF5F77FF)) 
    spike0_carry_i_91
       (.I0(spike0_carry_i_77_n_0),
        .I1(\stage1_r_reg_n_0_[0] ),
        .I2(\stage1_r_reg_n_0_[1] ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry_i_91_n_0));
  LUT6 #(
    .INIT(64'h5250121042400200)) 
    spike0_carry_i_92
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\stage1_r_reg_n_0_[5] ),
        .I4(\stage1_r_reg_n_0_[7] ),
        .I5(\stage1_r_reg_n_0_[9] ),
        .O(spike0_carry_i_92_n_0));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    spike0_carry_i_93
       (.I0(\stage1_r_reg_n_0_[3] ),
        .I1(\stage1_r_reg_n_0_[1] ),
        .I2(spike0_carry_i_77_n_0),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(spike0_carry_i_93_n_0));
  LUT6 #(
    .INIT(64'h5654464416140604)) 
    spike0_carry_i_94
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\stage1_r_reg_n_0_[4] ),
        .I4(\stage1_r_reg_n_0_[8] ),
        .I5(\stage1_r_reg_n_0_[6] ),
        .O(spike0_carry_i_94_n_0));
  LUT6 #(
    .INIT(64'h7737733344044000)) 
    spike0_carry_i_95
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\stage1_r_reg_n_0_[4] ),
        .I4(\stage1_r_reg_n_0_[8] ),
        .I5(spike0_carry_i_98_n_0),
        .O(spike0_carry_i_95_n_0));
  LUT6 #(
    .INIT(64'h5654161442400200)) 
    spike0_carry_i_96
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\stage1_r_reg_n_0_[3] ),
        .I4(\stage1_r_reg_n_0_[5] ),
        .I5(spike0_carry_i_107_n_0),
        .O(spike0_carry_i_96_n_0));
  LUT6 #(
    .INIT(64'h0038000000080000)) 
    spike0_carry_i_97
       (.I0(\stage1_r_reg_n_0_[4] ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\stage1_r_reg_n_0_[0] ),
        .O(spike0_carry_i_97_n_0));
  LUT5 #(
    .INIT(32'hF00AACCF)) 
    spike0_carry_i_98
       (.I0(\stage1_r_reg_n_0_[2] ),
        .I1(\stage1_r_reg_n_0_[6] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(spike0_carry_i_98_n_0));
  LUT6 #(
    .INIT(64'h1514050411100100)) 
    spike0_carry_i_99
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\stage1_r_reg_n_0_[9] ),
        .I4(\stage1_r_reg_n_0_[5] ),
        .I5(\stage1_r_reg_n_0_[7] ),
        .O(spike0_carry_i_99_n_0));
  LUT3 #(
    .INIT(8'h76)) 
    \stage1_r[15]_i_1 
       (.I0(\state_reg[0]_2 ),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[0]_0 ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_10 ),
        .Q(\stage1_r_reg_n_0_[0] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[10] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_20),
        .Q(sel0[0]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[11] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_19),
        .Q(sel0[1]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[12] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_18),
        .Q(sel0[2]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[13] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_17),
        .Q(sel0[3]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[14] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_16),
        .Q(sel0[4]),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[15] 
       (.C(clk),
        .CE(E),
        .D(u_temp_n_15),
        .Q(\stage1_r_reg_n_0_[15] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_9 ),
        .Q(\stage1_r_reg_n_0_[1] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_8 ),
        .Q(\stage1_r_reg_n_0_[2] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_7 ),
        .Q(\stage1_r_reg_n_0_[3] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_6 ),
        .Q(\stage1_r_reg_n_0_[4] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_5 ),
        .Q(\stage1_r_reg_n_0_[5] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_4 ),
        .Q(\stage1_r_reg_n_0_[6] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_3 ),
        .Q(\stage1_r_reg_n_0_[7] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_2 ),
        .Q(\stage1_r_reg_n_0_[8] ),
        .R(reset_flipping));
  FDRE #(
    .INIT(1'b0)) 
    \stage1_r_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\FP_PATH.u_fmul_n_1 ),
        .Q(\stage1_r_reg_n_0_[9] ),
        .R(reset_flipping));
  LUT4 #(
    .INIT(16'hC1FF)) 
    \state[0]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[0]_2 ),
        .I3(CO),
        .O(\state_reg[0] ));
  log_noise_generator u_noise
       (.DOADO(temp_fp[14:10]),
        .SR(reset_flipping),
        .biased_sum_exponent(biased_sum_exponent),
        .c_3__0(\u3/c_3__0 ),
        .c_3__3(\u2/c_3__3 ),
        .clk(clk),
        .distribution_output_reg(u_noise_n_1),
        .distribution_output_reg_0(u_noise_n_2),
        .distribution_output_reg_1(u_noise_n_19),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .out({noise_fp,\u_lut/distribution_output_reg__0 }),
        .\state_reg[0] (\state_reg[0]_0 ),
        .\state_reg[0]_0 (\state_reg[0]_1 ),
        .\state_reg[0]_1 (\state_reg[0]_2 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  temperature_module u_temp
       (.D({u_temp_n_15,u_temp_n_16,u_temp_n_17,u_temp_n_18,u_temp_n_19,u_temp_n_20}),
        .DOADO(temp_fp),
        .P(p_0_in),
        .SR(reset_flipping),
        .c_3__0(\u3/c_3__0 ),
        .c_3__3(\u2/c_3__3 ),
        .clk(clk),
        .decrease_temp_IBUF(decrease_temp_IBUF),
        .out(noise_fp),
        .\stage1_r_reg[11] (\FP_PATH.u_fmul_n_11 ),
        .\stage1_r_reg[14] (u_noise_n_1),
        .\stage1_r_reg[14]_0 (biased_sum_exponent),
        .\stage1_r_reg[15] (u_noise_n_2),
        .\stage1_r_reg[15]_0 (u_noise_n_19),
        .y_reg(u_temp_n_21),
        .y_reg_0(u_temp_n_22));
endmodule

module float16_mult
   (P,
    D,
    tmp,
    DOADO,
    out,
    \stage1_r_reg[9] ,
    \stage1_r_reg[9]_0 ,
    \stage1_r_reg[9]_1 );
  output [0:0]P;
  output [9:0]D;
  output tmp;
  input [10:0]DOADO;
  input [10:0]out;
  input \stage1_r_reg[9] ;
  input \stage1_r_reg[9]_0 ;
  input \stage1_r_reg[9]_1 ;

  wire [9:0]D;
  wire [10:0]DOADO;
  wire [0:0]P;
  wire [10:0]out;
  wire \stage1_r_reg[9] ;
  wire \stage1_r_reg[9]_0 ;
  wire \stage1_r_reg[9]_1 ;
  wire tmp;

  mulBITSxBITS u1
       (.D(D),
        .DOADO(DOADO),
        .P(P),
        .out(out),
        .\stage1_r_reg[9] (\stage1_r_reg[9] ),
        .\stage1_r_reg[9]_0 (\stage1_r_reg[9]_0 ),
        .\stage1_r_reg[9]_1 (\stage1_r_reg[9]_1 ),
        .tmp_0(tmp));
endmodule

module log_LUT
   (distribution_output_reg_0,
    distribution_output_reg_1,
    out,
    distribution_output_reg_2,
    biased_sum_exponent,
    c_3__0,
    c_3__3,
    DOADO,
    clk,
    SS,
    Q,
    distribution_output_reg_3,
    distribution_output_reg_4);
  output distribution_output_reg_0;
  output distribution_output_reg_1;
  output [15:0]out;
  output distribution_output_reg_2;
  output [1:0]biased_sum_exponent;
  output c_3__0;
  input c_3__3;
  input [4:0]DOADO;
  input clk;
  input [0:0]SS;
  input [7:0]Q;
  input distribution_output_reg_3;
  input distribution_output_reg_4;

  wire [4:0]DOADO;
  wire [7:0]Q;
  wire [0:0]SS;
  wire [1:0]biased_sum_exponent;
  wire c_3__0;
  wire c_3__3;
  wire clk;
  wire distribution_output_reg_0;
  wire distribution_output_reg_1;
  wire distribution_output_reg_2;
  wire distribution_output_reg_3;
  wire distribution_output_reg_4;
  wire distribution_output_reg_i_1_n_0;
  wire distribution_output_reg_n_32;
  wire distribution_output_reg_n_33;
  wire [15:0]out;
  wire \stage1_r[14]_i_10_n_0 ;
  wire \stage1_r[14]_i_11_n_0 ;
  wire \stage1_r[15]_i_10_n_0 ;
  wire \stage1_r[15]_i_9_n_0 ;
  wire [15:0]NLW_distribution_output_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_distribution_output_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4608" *) 
  (* RTL_RAM_NAME = "neuron_ensemble_with_memory_with_buff/neuron_ensemble_inst/u_flip/u_noise/u_lut/distribution_output_reg" *) 
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
    .INITP_00(256'h0000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFECDFEC2FEB6FEA9FE9BFE8CFE7BFE68FE53FE3AFE1DFDF9FDCBFD8AFD1CF75E),
    .INIT_01(256'hFF41FF3CFF36FF30FF2BFF25FF1EFF18FF11FF0AFF02FEFBFEF2FEEAFEE1FED7),
    .INIT_02(256'hFF83FF80FF7CFF79FF75FF71FF6EFF6AFF66FF61FF5DFF59FF54FF50FF4BFF46),
    .INIT_03(256'hFFB2FFB0FFADFFAAFFA8FFA5FFA2FF9FFF9DFF9AFF97FF94FF90FF8DFF8AFF87),
    .INIT_04(256'hFFD6FFD4FFD2FFD0FFCEFFCCFFCAFFC8FFC5FFC3FFC1FFBEFFBCFFBAFFB7FFB5),
    .INIT_05(256'hFFF4FFF2FFF1FFEFFFEDFFEBFFEAFFE8FFE6FFE4FFE2FFE0FFDEFFDCFFDAFFD8),
    .INIT_06(256'h000D000B000A000900070006000400020001FFFFFFFEFFFCFFFBFFF9FFF7FFF6),
    .INIT_07(256'h002200210020001F001D001C001B00190018001700150014001300110010000E),
    .INIT_08(256'h003500340033003200310030002F002D002C002B002A00290027002600250024),
    .INIT_09(256'h0046004500440043004200410040003F003E003D003C003B003A003900380037),
    .INIT_0A(256'h0056005500540053005200510050004F004E004D004C004B004A004900480047),
    .INIT_0B(256'h006400630062006100600060005F005E005D005C005B005A0059005800580057),
    .INIT_0C(256'h00710070006F006E006E006D006C006B006A006A006900680067006600650065),
    .INIT_0D(256'h007C007C007B007A007A00790078007700770076007500740074007300720071),
    .INIT_0E(256'h008800870086008600850084008400830082008200810080007F007F007E007D),
    .INIT_0F(256'h00920091009100900090008F008E008E008D008C008C008B008A008A00890088),
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
    distribution_output_reg
       (.ADDRARDADDR({1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(out),
        .DOBDO(NLW_distribution_output_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP({distribution_output_reg_n_32,distribution_output_reg_n_33}),
        .DOPBDOP(NLW_distribution_output_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(distribution_output_reg_i_1_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SS),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h7)) 
    distribution_output_reg_i_1
       (.I0(distribution_output_reg_3),
        .I1(distribution_output_reg_4),
        .O(distribution_output_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    \stage1_r[13]_i_3 
       (.I0(c_3__0),
        .I1(c_3__3),
        .I2(out[13]),
        .I3(DOADO[3]),
        .O(biased_sum_exponent[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stage1_r[14]_i_10 
       (.I0(out[15]),
        .I1(out[14]),
        .I2(out[13]),
        .I3(out[12]),
        .O(\stage1_r[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stage1_r[14]_i_11 
       (.I0(out[7]),
        .I1(out[6]),
        .I2(out[5]),
        .I3(out[4]),
        .O(\stage1_r[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h81177EE87EE88117)) 
    \stage1_r[14]_i_3 
       (.I0(c_3__0),
        .I1(c_3__3),
        .I2(out[13]),
        .I3(DOADO[3]),
        .I4(out[14]),
        .I5(DOADO[4]),
        .O(biased_sum_exponent[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stage1_r[14]_i_6 
       (.I0(\stage1_r[15]_i_10_n_0 ),
        .I1(\stage1_r[14]_i_10_n_0 ),
        .I2(\stage1_r[15]_i_9_n_0 ),
        .I3(\stage1_r[14]_i_11_n_0 ),
        .O(distribution_output_reg_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \stage1_r[14]_i_9 
       (.I0(out[12]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(out[10]),
        .I4(DOADO[1]),
        .I5(out[11]),
        .O(c_3__0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stage1_r[15]_i_10 
       (.I0(out[11]),
        .I1(out[10]),
        .I2(out[9]),
        .I3(out[8]),
        .O(\stage1_r[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stage1_r[15]_i_5 
       (.I0(out[4]),
        .I1(out[5]),
        .I2(out[6]),
        .I3(out[7]),
        .I4(\stage1_r[15]_i_9_n_0 ),
        .O(distribution_output_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stage1_r[15]_i_6 
       (.I0(out[12]),
        .I1(out[13]),
        .I2(out[14]),
        .I3(out[15]),
        .I4(\stage1_r[15]_i_10_n_0 ),
        .O(distribution_output_reg_2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stage1_r[15]_i_9 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\stage1_r[15]_i_9_n_0 ));
endmodule

module log_noise_generator
   (SR,
    distribution_output_reg,
    distribution_output_reg_0,
    out,
    distribution_output_reg_1,
    biased_sum_exponent,
    c_3__0,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    c_3__3,
    DOADO,
    clk);
  output [0:0]SR;
  output distribution_output_reg;
  output distribution_output_reg_0;
  output [15:0]out;
  output distribution_output_reg_1;
  output [1:0]biased_sum_exponent;
  output c_3__0;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input c_3__3;
  input [4:0]DOADO;
  input clk;

  wire [4:0]DOADO;
  wire [0:0]SR;
  wire [1:0]biased_sum_exponent;
  wire c_3__0;
  wire c_3__3;
  wire clk;
  wire distribution_output_reg;
  wire distribution_output_reg_0;
  wire distribution_output_reg_1;
  wire [15:0]flipping_seed_IBUF;
  wire [15:0]out;
  wire [7:0]sel;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire write_flipping_seed_IBUF;

  log_LUT u_lut
       (.DOADO(DOADO),
        .Q(sel),
        .SS(SR),
        .biased_sum_exponent(biased_sum_exponent),
        .c_3__0(c_3__0),
        .c_3__3(c_3__3),
        .clk(clk),
        .distribution_output_reg_0(distribution_output_reg),
        .distribution_output_reg_1(distribution_output_reg_0),
        .distribution_output_reg_2(distribution_output_reg_1),
        .distribution_output_reg_3(\state_reg[0]_0 ),
        .distribution_output_reg_4(\state_reg[0]_1 ),
        .out(out));
  LFSR_inout__parameterized0 u_src
       (.Q(sel),
        .SS(SR),
        .clk(clk),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
endmodule

module mulBITSxBITS
   (P,
    D,
    tmp_0,
    DOADO,
    out,
    \stage1_r_reg[9] ,
    \stage1_r_reg[9]_0 ,
    \stage1_r_reg[9]_1 );
  output [0:0]P;
  output [9:0]D;
  output tmp_0;
  input [10:0]DOADO;
  input [10:0]out;
  input \stage1_r_reg[9] ;
  input \stage1_r_reg[9]_0 ;
  input \stage1_r_reg[9]_1 ;

  wire [9:0]D;
  wire [10:0]DOADO;
  wire [0:0]P;
  wire [10:0]out;
  wire \stage1_r_reg[9] ;
  wire \stage1_r_reg[9]_0 ;
  wire \stage1_r_reg[9]_1 ;
  wire tmp_0;
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
  wire tmp_n_85;
  wire tmp_n_86;
  wire tmp_n_87;
  wire tmp_n_88;
  wire tmp_n_89;
  wire tmp_n_90;
  wire tmp_n_91;
  wire tmp_n_92;
  wire tmp_n_93;
  wire tmp_n_94;
  wire tmp_n_95;
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

  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[0]_i_1 
       (.I0(tmp_n_94),
        .I1(tmp_n_95),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h82)) 
    \stage1_r[11]_i_2 
       (.I0(P),
        .I1(out[10]),
        .I2(DOADO[10]),
        .O(tmp_0));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[1]_i_1 
       (.I0(tmp_n_93),
        .I1(tmp_n_94),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[2]_i_1 
       (.I0(tmp_n_92),
        .I1(tmp_n_93),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[3]_i_1 
       (.I0(tmp_n_91),
        .I1(tmp_n_92),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[4]_i_1 
       (.I0(tmp_n_90),
        .I1(tmp_n_91),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[5]_i_1 
       (.I0(tmp_n_89),
        .I1(tmp_n_90),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[6]_i_1 
       (.I0(tmp_n_88),
        .I1(tmp_n_89),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[7]_i_1 
       (.I0(tmp_n_87),
        .I1(tmp_n_88),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[8]_i_1 
       (.I0(tmp_n_86),
        .I1(tmp_n_87),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \stage1_r[9]_i_1 
       (.I0(tmp_n_85),
        .I1(tmp_n_86),
        .I2(\stage1_r_reg[9] ),
        .I3(\stage1_r_reg[9]_0 ),
        .I4(\stage1_r_reg[9]_1 ),
        .I5(P),
        .O(D[9]));
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,out[9:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,DOADO[9:0]}),
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
        .P({NLW_tmp_P_UNCONNECTED[47:32],tmp_n_74,tmp_n_75,tmp_n_76,tmp_n_77,tmp_n_78,tmp_n_79,tmp_n_80,tmp_n_81,tmp_n_82,tmp_n_83,P,tmp_n_85,tmp_n_86,tmp_n_87,tmp_n_88,tmp_n_89,tmp_n_90,tmp_n_91,tmp_n_92,tmp_n_93,tmp_n_94,tmp_n_95,tmp_n_96,tmp_n_97,tmp_n_98,tmp_n_99,tmp_n_100,tmp_n_101,tmp_n_102,tmp_n_103,tmp_n_104,tmp_n_105}),
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
   (CO,
    \state_reg[0] ,
    E,
    CE_output_from_distributed_graph,
    \mem_p_reg[15]_0 ,
    \st_p_reg[0]_0 ,
    \idx_p_reg[1]_0 ,
    clk,
    reset_module_IBUF,
    \mem_ram_reg[3][0] ,
    \mem_ram_reg[2][0] ,
    \mem_ram_reg[1][0] ,
    mem_ram,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    flipping_seed_IBUF,
    write_flipping_seed_IBUF,
    membrane_data_in_IBUF,
    write_neuron_state_IBUF,
    \Q_out_reg[3] ,
    \state_reg[0]_0 ,
    \Q_out_reg[3]_0 ,
    incrementing_reg,
    idx_to_write_IBUF,
    Q,
    decrease_temp_IBUF,
    neuron_state_in_IBUF,
    storage_CE_advance);
  output [0:0]CO;
  output \state_reg[0] ;
  output [0:0]E;
  output CE_output_from_distributed_graph;
  output [15:0]\mem_p_reg[15]_0 ;
  output [0:0]\st_p_reg[0]_0 ;
  output [1:0]\idx_p_reg[1]_0 ;
  input clk;
  input reset_module_IBUF;
  input \mem_ram_reg[3][0] ;
  input \mem_ram_reg[2][0] ;
  input \mem_ram_reg[1][0] ;
  input mem_ram;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input [15:0]flipping_seed_IBUF;
  input write_flipping_seed_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input write_neuron_state_IBUF;
  input \Q_out_reg[3] ;
  input \state_reg[0]_0 ;
  input \Q_out_reg[3]_0 ;
  input incrementing_reg;
  input [1:0]idx_to_write_IBUF;
  input [2:0]Q;
  input decrease_temp_IBUF;
  input [1:0]neuron_state_in_IBUF;
  input storage_CE_advance;

  wire CE_output_from_distributed_graph;
  wire [0:0]CO;
  wire [0:0]E;
  wire [2:0]Q;
  wire \Q_out_reg[3] ;
  wire \Q_out_reg[3]_0 ;
  wire clk;
  wire decrease_temp_IBUF;
  wire [2:0]ensemble_seed_IBUF;
  wire [15:0]flipping_seed_IBUF;
  wire [1:0]\idx_p_reg[1]_0 ;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire [14:2]mem_cmp;
  wire [15:1]mem_cmp0;
  wire [15:0]\mem_p_reg[15]_0 ;
  wire mem_ram;
  wire \mem_ram_reg[1][0] ;
  wire \mem_ram_reg[2][0] ;
  wire \mem_ram_reg[3][0] ;
  wire [15:0]membrane_data_in_IBUF;
  wire [1:0]neuron_state;
  wire [1:0]neuron_state_in_IBUF;
  wire reset_module_IBUF;
  wire [1:0]selected_idx_offset;
  wire [15:0]selected_membrane;
  wire spike0_carry__0_i_14_n_0;
  wire spike0_carry__0_i_22_n_0;
  wire spike0_carry__0_i_23_n_0;
  wire spike0_carry__0_i_28_n_2;
  wire spike0_carry__0_i_28_n_3;
  wire spike0_carry__0_i_45_n_0;
  wire spike0_carry__0_i_45_n_1;
  wire spike0_carry__0_i_45_n_2;
  wire spike0_carry__0_i_45_n_3;
  wire spike0_carry__0_i_60_n_0;
  wire spike0_carry__0_i_61_n_0;
  wire spike0_carry__0_i_62_n_0;
  wire spike0_carry__0_i_69_n_0;
  wire spike0_carry__0_i_70_n_0;
  wire spike0_carry__0_i_71_n_0;
  wire spike0_carry__0_i_72_n_0;
  wire spike0_carry__0_i_9_n_0;
  wire spike0_carry__0_n_1;
  wire spike0_carry__0_n_2;
  wire spike0_carry__0_n_3;
  wire spike0_carry_i_14_n_0;
  wire spike0_carry_i_19_n_0;
  wire spike0_carry_i_19_n_1;
  wire spike0_carry_i_19_n_2;
  wire spike0_carry_i_19_n_3;
  wire spike0_carry_i_21_n_0;
  wire spike0_carry_i_25_n_0;
  wire spike0_carry_i_25_n_1;
  wire spike0_carry_i_25_n_2;
  wire spike0_carry_i_25_n_3;
  wire spike0_carry_i_52_n_0;
  wire spike0_carry_i_53_n_0;
  wire spike0_carry_i_54_n_0;
  wire spike0_carry_i_55_n_0;
  wire spike0_carry_i_56_n_0;
  wire spike0_carry_i_66_n_0;
  wire spike0_carry_i_67_n_0;
  wire spike0_carry_i_68_n_0;
  wire spike0_carry_i_69_n_0;
  wire spike0_carry_i_9_n_0;
  wire spike0_carry_n_0;
  wire spike0_carry_n_1;
  wire spike0_carry_n_2;
  wire spike0_carry_n_3;
  wire [1:1]st_p;
  wire [0:0]\st_p_reg[0]_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire storage_CE;
  wire storage_CE_advance;
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
  wire u_flip_n_9;
  wire write_ensemble_seed_IBUF;
  wire write_flipping_seed_IBUF;
  wire write_neuron_state_IBUF;
  wire [3:0]NLW_spike0_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_spike0_carry__0_i_28_CO_UNCONNECTED;
  wire [3:3]NLW_spike0_carry__0_i_28_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[0] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_idx_offset[0]),
        .Q(\idx_p_reg[1]_0 [0]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \idx_p_reg[1] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_idx_offset[1]),
        .Q(\idx_p_reg[1]_0 [1]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[0] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\mem_p_reg[15]_0 [0]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[10] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[10]),
        .Q(\mem_p_reg[15]_0 [10]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[11] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[11]),
        .Q(\mem_p_reg[15]_0 [11]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[12] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[12]),
        .Q(\mem_p_reg[15]_0 [12]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[13] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[13]),
        .Q(\mem_p_reg[15]_0 [13]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[14] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[14]),
        .Q(\mem_p_reg[15]_0 [14]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[15] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[15]),
        .Q(\mem_p_reg[15]_0 [15]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[1] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\mem_p_reg[15]_0 [1]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[2] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\mem_p_reg[15]_0 [2]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[3] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\mem_p_reg[15]_0 [3]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[4] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\mem_p_reg[15]_0 [4]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[5] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\mem_p_reg[15]_0 [5]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[6] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\mem_p_reg[15]_0 [6]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[7] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\mem_p_reg[15]_0 [7]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[8] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\mem_p_reg[15]_0 [8]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_p_reg[9] 
       (.C(clk),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\mem_p_reg[15]_0 [9]),
        .R(reset_module_IBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry
       (.CI(1'b0),
        .CO({spike0_carry_n_0,spike0_carry_n_1,spike0_carry_n_2,spike0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_6,u_flip_n_7,u_flip_n_8,u_flip_n_9}),
        .O(NLW_spike0_carry_O_UNCONNECTED[3:0]),
        .S({u_flip_n_2,u_flip_n_3,u_flip_n_4,u_flip_n_5}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry__0
       (.CI(spike0_carry_n_0),
        .CO({CO,spike0_carry__0_n_1,spike0_carry__0_n_2,spike0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .O(NLW_spike0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry__0_i_13
       (.I0(\mem_p_reg[15]_0 [14]),
        .I1(st_p),
        .I2(mem_cmp0[14]),
        .O(mem_cmp[14]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry__0_i_14
       (.I0(\mem_p_reg[15]_0 [13]),
        .I1(st_p),
        .I2(mem_cmp0[13]),
        .O(spike0_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry__0_i_17
       (.I0(\mem_p_reg[15]_0 [12]),
        .I1(st_p),
        .I2(mem_cmp0[12]),
        .O(mem_cmp[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry__0_i_19
       (.I0(\mem_p_reg[15]_0 [10]),
        .I1(st_p),
        .I2(mem_cmp0[10]),
        .O(mem_cmp[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry__0_i_22
       (.I0(\mem_p_reg[15]_0 [11]),
        .I1(st_p),
        .I2(mem_cmp0[11]),
        .O(spike0_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry__0_i_23
       (.I0(\mem_p_reg[15]_0 [9]),
        .I1(st_p),
        .I2(mem_cmp0[9]),
        .O(spike0_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry__0_i_27
       (.I0(\mem_p_reg[15]_0 [8]),
        .I1(st_p),
        .I2(mem_cmp0[8]),
        .O(mem_cmp[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry__0_i_28
       (.CI(spike0_carry__0_i_45_n_0),
        .CO({NLW_spike0_carry__0_i_28_CO_UNCONNECTED[3:2],spike0_carry__0_i_28_n_2,spike0_carry__0_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_spike0_carry__0_i_28_O_UNCONNECTED[3],mem_cmp0[15:13]}),
        .S({1'b0,spike0_carry__0_i_60_n_0,spike0_carry__0_i_61_n_0,spike0_carry__0_i_62_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry__0_i_45
       (.CI(spike0_carry_i_25_n_0),
        .CO({spike0_carry__0_i_45_n_0,spike0_carry__0_i_45_n_1,spike0_carry__0_i_45_n_2,spike0_carry__0_i_45_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[12:9]),
        .S({spike0_carry__0_i_69_n_0,spike0_carry__0_i_70_n_0,spike0_carry__0_i_71_n_0,spike0_carry__0_i_72_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_60
       (.I0(\mem_p_reg[15]_0 [15]),
        .O(spike0_carry__0_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_61
       (.I0(\mem_p_reg[15]_0 [14]),
        .O(spike0_carry__0_i_61_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_62
       (.I0(\mem_p_reg[15]_0 [13]),
        .O(spike0_carry__0_i_62_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_69
       (.I0(\mem_p_reg[15]_0 [12]),
        .O(spike0_carry__0_i_69_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_70
       (.I0(\mem_p_reg[15]_0 [11]),
        .O(spike0_carry__0_i_70_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_71
       (.I0(\mem_p_reg[15]_0 [10]),
        .O(spike0_carry__0_i_71_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry__0_i_72
       (.I0(\mem_p_reg[15]_0 [9]),
        .O(spike0_carry__0_i_72_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry__0_i_9
       (.I0(\mem_p_reg[15]_0 [15]),
        .I1(st_p),
        .I2(mem_cmp0[15]),
        .O(spike0_carry__0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry_i_13
       (.I0(\mem_p_reg[15]_0 [6]),
        .I1(st_p),
        .I2(mem_cmp0[6]),
        .O(mem_cmp[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry_i_14
       (.I0(\mem_p_reg[15]_0 [5]),
        .I1(st_p),
        .I2(mem_cmp0[5]),
        .O(spike0_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry_i_17
       (.I0(\mem_p_reg[15]_0 [4]),
        .I1(st_p),
        .I2(mem_cmp0[4]),
        .O(mem_cmp[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry_i_19
       (.CI(1'b0),
        .CO({spike0_carry_i_19_n_0,spike0_carry_i_19_n_1,spike0_carry_i_19_n_2,spike0_carry_i_19_n_3}),
        .CYINIT(spike0_carry_i_52_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[4:1]),
        .S({spike0_carry_i_53_n_0,spike0_carry_i_54_n_0,spike0_carry_i_55_n_0,spike0_carry_i_56_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry_i_21
       (.I0(\mem_p_reg[15]_0 [3]),
        .I1(st_p),
        .I2(mem_cmp0[3]),
        .O(spike0_carry_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spike0_carry_i_24
       (.I0(\mem_p_reg[15]_0 [2]),
        .I1(st_p),
        .I2(mem_cmp0[2]),
        .O(mem_cmp[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 spike0_carry_i_25
       (.CI(spike0_carry_i_19_n_0),
        .CO({spike0_carry_i_25_n_0,spike0_carry_i_25_n_1,spike0_carry_i_25_n_2,spike0_carry_i_25_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_cmp0[8:5]),
        .S({spike0_carry_i_66_n_0,spike0_carry_i_67_n_0,spike0_carry_i_68_n_0,spike0_carry_i_69_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_52
       (.I0(\mem_p_reg[15]_0 [0]),
        .O(spike0_carry_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_53
       (.I0(\mem_p_reg[15]_0 [4]),
        .O(spike0_carry_i_53_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_54
       (.I0(\mem_p_reg[15]_0 [3]),
        .O(spike0_carry_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_55
       (.I0(\mem_p_reg[15]_0 [2]),
        .O(spike0_carry_i_55_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_56
       (.I0(\mem_p_reg[15]_0 [1]),
        .O(spike0_carry_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_66
       (.I0(\mem_p_reg[15]_0 [8]),
        .O(spike0_carry_i_66_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_67
       (.I0(\mem_p_reg[15]_0 [7]),
        .O(spike0_carry_i_67_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_68
       (.I0(\mem_p_reg[15]_0 [6]),
        .O(spike0_carry_i_68_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    spike0_carry_i_69
       (.I0(\mem_p_reg[15]_0 [5]),
        .O(spike0_carry_i_69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h47)) 
    spike0_carry_i_9
       (.I0(\mem_p_reg[15]_0 [7]),
        .I1(st_p),
        .I2(mem_cmp0[7]),
        .O(spike0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    \st_p[1]_i_1 
       (.I0(\Q_out_reg[3] ),
        .I1(\state_reg[0]_0 ),
        .I2(\Q_out_reg[3]_0 ),
        .O(storage_CE));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[0] 
       (.C(clk),
        .CE(storage_CE),
        .D(neuron_state[0]),
        .Q(\st_p_reg[0]_0 ),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \st_p_reg[1] 
       (.C(clk),
        .CE(storage_CE),
        .D(neuron_state[1]),
        .Q(st_p),
        .R(reset_module_IBUF));
  flipping_unit u_flip
       (.CO(CO),
        .DI({u_flip_n_6,u_flip_n_7,u_flip_n_8,u_flip_n_9}),
        .E(E),
        .O(mem_cmp0[3:1]),
        .Q(\mem_p_reg[15]_0 [3:0]),
        .S({u_flip_n_2,u_flip_n_3,u_flip_n_4,u_flip_n_5}),
        .clk(clk),
        .decrease_temp_IBUF(decrease_temp_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .mem_cmp({mem_cmp[14],mem_cmp[12],mem_cmp[10],mem_cmp[8],mem_cmp[6],mem_cmp[4],mem_cmp[2]}),
        .spike0_carry(st_p),
        .spike0_carry_0(spike0_carry_i_14_n_0),
        .spike0_carry_1(spike0_carry_i_9_n_0),
        .spike0_carry_2(spike0_carry_i_21_n_0),
        .spike0_carry__0(spike0_carry__0_i_23_n_0),
        .spike0_carry__0_0(spike0_carry__0_i_22_n_0),
        .spike0_carry__0_1(spike0_carry__0_i_14_n_0),
        .spike0_carry__0_2(spike0_carry__0_i_9_n_0),
        .\stage1_r_reg[15]_0 ({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}),
        .\stage1_r_reg[15]_1 ({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\Q_out_reg[3]_0 ),
        .\state_reg[0]_2 (\Q_out_reg[3] ),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF));
  neuron_ensemble_storage u_store
       (.CE_output_from_distributed_graph(CE_output_from_distributed_graph),
        .Q(Q),
        .\Q_out_reg[3] (\Q_out_reg[3] ),
        .\Q_out_reg[3]_0 (\Q_out_reg[3]_0 ),
        .clk(clk),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .mem_ram(mem_ram),
        .\mem_ram_reg[0][15]_0 (\state_reg[0]_0 ),
        .\mem_ram_reg[1][0]_0 (\mem_ram_reg[1][0] ),
        .\mem_ram_reg[2][0]_0 (\mem_ram_reg[2][0] ),
        .\mem_ram_reg[3][0]_0 (\mem_ram_reg[3][0] ),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .\neuron_state_reg[1]_0 (neuron_state),
        .reset_module_IBUF(reset_module_IBUF),
        .\selected_idx_offset_reg[1]_0 (selected_idx_offset),
        .\selected_membrane_reg[15]_0 (selected_membrane),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_neuron_state_IBUF(write_neuron_state_IBUF));
endmodule

module neuron_ensemble_storage
   (CE_output_from_distributed_graph,
    \neuron_state_reg[1]_0 ,
    \selected_membrane_reg[15]_0 ,
    \selected_idx_offset_reg[1]_0 ,
    reset_module_IBUF,
    \mem_ram_reg[3][0]_0 ,
    clk,
    \mem_ram_reg[2][0]_0 ,
    \mem_ram_reg[1][0]_0 ,
    mem_ram,
    write_ensemble_seed_IBUF,
    ensemble_seed_IBUF,
    membrane_data_in_IBUF,
    write_neuron_state_IBUF,
    \Q_out_reg[3] ,
    \mem_ram_reg[0][15]_0 ,
    \Q_out_reg[3]_0 ,
    incrementing_reg,
    idx_to_write_IBUF,
    Q,
    neuron_state_in_IBUF,
    storage_CE_advance);
  output CE_output_from_distributed_graph;
  output [1:0]\neuron_state_reg[1]_0 ;
  output [15:0]\selected_membrane_reg[15]_0 ;
  output [1:0]\selected_idx_offset_reg[1]_0 ;
  input reset_module_IBUF;
  input \mem_ram_reg[3][0]_0 ;
  input clk;
  input \mem_ram_reg[2][0]_0 ;
  input \mem_ram_reg[1][0]_0 ;
  input mem_ram;
  input write_ensemble_seed_IBUF;
  input [2:0]ensemble_seed_IBUF;
  input [15:0]membrane_data_in_IBUF;
  input write_neuron_state_IBUF;
  input \Q_out_reg[3] ;
  input \mem_ram_reg[0][15]_0 ;
  input \Q_out_reg[3]_0 ;
  input incrementing_reg;
  input [1:0]idx_to_write_IBUF;
  input [2:0]Q;
  input [1:0]neuron_state_in_IBUF;
  input storage_CE_advance;

  wire CE_output_from_distributed_graph;
  wire [2:0]Q;
  wire \Q_out_reg[3] ;
  wire \Q_out_reg[3]_0 ;
  wire clk;
  wire [2:0]ensemble_seed_IBUF;
  wire [1:0]idx_offset;
  wire [1:0]idx_r;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire mem_ram;
  wire \mem_ram[0][0]_i_3_n_0 ;
  wire \mem_ram[0][0]_i_4_n_0 ;
  wire \mem_ram[0][0]_i_5_n_0 ;
  wire \mem_ram[0][0]_i_6_n_0 ;
  wire \mem_ram[0][0]_i_7_n_0 ;
  wire \mem_ram[0][12]_i_2_n_0 ;
  wire \mem_ram[0][12]_i_3_n_0 ;
  wire \mem_ram[0][12]_i_4_n_0 ;
  wire \mem_ram[0][12]_i_5_n_0 ;
  wire \mem_ram[0][4]_i_2_n_0 ;
  wire \mem_ram[0][4]_i_3_n_0 ;
  wire \mem_ram[0][4]_i_4_n_0 ;
  wire \mem_ram[0][4]_i_5_n_0 ;
  wire \mem_ram[0][8]_i_2_n_0 ;
  wire \mem_ram[0][8]_i_3_n_0 ;
  wire \mem_ram[0][8]_i_4_n_0 ;
  wire \mem_ram[0][8]_i_5_n_0 ;
  wire \mem_ram[1][0]_i_3_n_0 ;
  wire \mem_ram[1][0]_i_4_n_0 ;
  wire \mem_ram[1][0]_i_5_n_0 ;
  wire \mem_ram[1][0]_i_6_n_0 ;
  wire \mem_ram[1][0]_i_7_n_0 ;
  wire \mem_ram[1][12]_i_2_n_0 ;
  wire \mem_ram[1][12]_i_3_n_0 ;
  wire \mem_ram[1][12]_i_4_n_0 ;
  wire \mem_ram[1][12]_i_5_n_0 ;
  wire \mem_ram[1][4]_i_2_n_0 ;
  wire \mem_ram[1][4]_i_3_n_0 ;
  wire \mem_ram[1][4]_i_4_n_0 ;
  wire \mem_ram[1][4]_i_5_n_0 ;
  wire \mem_ram[1][8]_i_2_n_0 ;
  wire \mem_ram[1][8]_i_3_n_0 ;
  wire \mem_ram[1][8]_i_4_n_0 ;
  wire \mem_ram[1][8]_i_5_n_0 ;
  wire \mem_ram[2][0]_i_3_n_0 ;
  wire \mem_ram[2][0]_i_4_n_0 ;
  wire \mem_ram[2][0]_i_5_n_0 ;
  wire \mem_ram[2][0]_i_6_n_0 ;
  wire \mem_ram[2][0]_i_7_n_0 ;
  wire \mem_ram[2][12]_i_2_n_0 ;
  wire \mem_ram[2][12]_i_3_n_0 ;
  wire \mem_ram[2][12]_i_4_n_0 ;
  wire \mem_ram[2][12]_i_5_n_0 ;
  wire \mem_ram[2][4]_i_2_n_0 ;
  wire \mem_ram[2][4]_i_3_n_0 ;
  wire \mem_ram[2][4]_i_4_n_0 ;
  wire \mem_ram[2][4]_i_5_n_0 ;
  wire \mem_ram[2][8]_i_2_n_0 ;
  wire \mem_ram[2][8]_i_3_n_0 ;
  wire \mem_ram[2][8]_i_4_n_0 ;
  wire \mem_ram[2][8]_i_5_n_0 ;
  wire \mem_ram[3][0]_i_3_n_0 ;
  wire \mem_ram[3][0]_i_4_n_0 ;
  wire \mem_ram[3][0]_i_5_n_0 ;
  wire \mem_ram[3][0]_i_6_n_0 ;
  wire \mem_ram[3][0]_i_7_n_0 ;
  wire \mem_ram[3][0]_i_8_n_0 ;
  wire \mem_ram[3][12]_i_2_n_0 ;
  wire \mem_ram[3][12]_i_3_n_0 ;
  wire \mem_ram[3][12]_i_4_n_0 ;
  wire \mem_ram[3][12]_i_5_n_0 ;
  wire \mem_ram[3][4]_i_2_n_0 ;
  wire \mem_ram[3][4]_i_3_n_0 ;
  wire \mem_ram[3][4]_i_4_n_0 ;
  wire \mem_ram[3][4]_i_5_n_0 ;
  wire \mem_ram[3][8]_i_2_n_0 ;
  wire \mem_ram[3][8]_i_3_n_0 ;
  wire \mem_ram[3][8]_i_4_n_0 ;
  wire \mem_ram[3][8]_i_5_n_0 ;
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
  wire \mem_ram_reg[0][15]_0 ;
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
  wire \mem_ram_reg[1][0]_0 ;
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
  wire \mem_ram_reg[2][0]_0 ;
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
  wire \mem_ram_reg[3][0]_0 ;
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
  wire \neuron_state[0]_i_1_n_0 ;
  wire \neuron_state[1]_i_1_n_0 ;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]\neuron_state_reg[1]_0 ;
  wire reset_module_IBUF;
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
  wire [15:0]\selected_membrane_reg[15]_0 ;
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
  wire \state_ram[2][1]_i_5_n_0 ;
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
  wire storage_CE_advance;
  wire write_ensemble_seed_IBUF;
  wire write_neuron_state_IBUF;
  wire [3:3]\NLW_mem_ram_reg[0][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[2][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_ram_reg[3][12]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q_out[3]_i_1 
       (.I0(\Q_out_reg[3]_0 ),
        .I1(\Q_out_reg[3] ),
        .O(CE_output_from_distributed_graph));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(idx_offset[0]),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(idx_offset[1]),
        .Q(idx_r[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][0]_i_3 
       (.I0(\mem_ram_reg[0]_3 [1]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[0][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][0]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [3]),
        .O(\mem_ram[0][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][0]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [2]),
        .O(\mem_ram[0][0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[0][0]_i_6 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[0]_3 [1]),
        .I2(write_neuron_state_IBUF),
        .O(\mem_ram[0][0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[0][0]_i_7 
       (.I0(\mem_ram_reg[0]_3 [0]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[0][0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5A3C)) 
    \mem_ram[0][12]_i_2 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[0]_3 [15]),
        .I2(\mem_ram[3][0]_i_3_n_0 ),
        .I3(write_neuron_state_IBUF),
        .O(\mem_ram[0][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][12]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [14]),
        .O(\mem_ram[0][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][12]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [13]),
        .O(\mem_ram[0][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][12]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [12]),
        .O(\mem_ram[0][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][4]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [7]),
        .O(\mem_ram[0][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][4]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [6]),
        .O(\mem_ram[0][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][4]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [5]),
        .O(\mem_ram[0][4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][4]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [4]),
        .O(\mem_ram[0][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][8]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [11]),
        .O(\mem_ram[0][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][8]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [10]),
        .O(\mem_ram[0][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][8]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [9]),
        .O(\mem_ram[0][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[0][8]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[0]_3 [8]),
        .O(\mem_ram[0][8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][0]_i_3 
       (.I0(\mem_ram_reg[1]_2 [1]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[1][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][0]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [3]),
        .O(\mem_ram[1][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][0]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [2]),
        .O(\mem_ram[1][0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[1][0]_i_6 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[1]_2 [1]),
        .I2(write_neuron_state_IBUF),
        .O(\mem_ram[1][0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[1][0]_i_7 
       (.I0(\mem_ram_reg[1]_2 [0]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[1][0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5A3C)) 
    \mem_ram[1][12]_i_2 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[1]_2 [15]),
        .I2(\mem_ram[3][0]_i_3_n_0 ),
        .I3(write_neuron_state_IBUF),
        .O(\mem_ram[1][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][12]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [14]),
        .O(\mem_ram[1][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][12]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [13]),
        .O(\mem_ram[1][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][12]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [12]),
        .O(\mem_ram[1][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][4]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [7]),
        .O(\mem_ram[1][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][4]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [6]),
        .O(\mem_ram[1][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][4]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [5]),
        .O(\mem_ram[1][4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][4]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [4]),
        .O(\mem_ram[1][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][8]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [11]),
        .O(\mem_ram[1][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][8]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [10]),
        .O(\mem_ram[1][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][8]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [9]),
        .O(\mem_ram[1][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[1][8]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[1]_2 [8]),
        .O(\mem_ram[1][8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][0]_i_3 
       (.I0(\mem_ram_reg[2]_1 [1]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[2][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][0]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [3]),
        .O(\mem_ram[2][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][0]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [2]),
        .O(\mem_ram[2][0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[2][0]_i_6 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[2]_1 [1]),
        .I2(write_neuron_state_IBUF),
        .O(\mem_ram[2][0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[2][0]_i_7 
       (.I0(\mem_ram_reg[2]_1 [0]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[2][0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5A3C)) 
    \mem_ram[2][12]_i_2 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[2]_1 [15]),
        .I2(\mem_ram[3][0]_i_3_n_0 ),
        .I3(write_neuron_state_IBUF),
        .O(\mem_ram[2][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][12]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [14]),
        .O(\mem_ram[2][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][12]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [13]),
        .O(\mem_ram[2][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][12]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [12]),
        .O(\mem_ram[2][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][4]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [7]),
        .O(\mem_ram[2][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][4]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [6]),
        .O(\mem_ram[2][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][4]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [5]),
        .O(\mem_ram[2][4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][4]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [4]),
        .O(\mem_ram[2][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][8]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [11]),
        .O(\mem_ram[2][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][8]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [10]),
        .O(\mem_ram[2][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][8]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [9]),
        .O(\mem_ram[2][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[2][8]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[2]_1 [8]),
        .O(\mem_ram[2][8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0A010E01)) 
    \mem_ram[3][0]_i_3 
       (.I0(\Q_out_reg[3] ),
        .I1(\mem_ram_reg[0][15]_0 ),
        .I2(write_neuron_state_IBUF),
        .I3(\Q_out_reg[3]_0 ),
        .I4(incrementing_reg),
        .O(\mem_ram[3][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][0]_i_4 
       (.I0(\mem_ram_reg[3]_0 [1]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[1]),
        .O(\mem_ram[3][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][0]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[3]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [3]),
        .O(\mem_ram[3][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][0]_i_6 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[2]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [2]),
        .O(\mem_ram[3][0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mem_ram[3][0]_i_7 
       (.I0(membrane_data_in_IBUF[1]),
        .I1(\mem_ram_reg[3]_0 [1]),
        .I2(write_neuron_state_IBUF),
        .O(\mem_ram[3][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \mem_ram[3][0]_i_8 
       (.I0(\mem_ram_reg[3]_0 [0]),
        .I1(write_neuron_state_IBUF),
        .I2(membrane_data_in_IBUF[0]),
        .O(\mem_ram[3][0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5A3C)) 
    \mem_ram[3][12]_i_2 
       (.I0(membrane_data_in_IBUF[15]),
        .I1(\mem_ram_reg[3]_0 [15]),
        .I2(\mem_ram[3][0]_i_3_n_0 ),
        .I3(write_neuron_state_IBUF),
        .O(\mem_ram[3][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][12]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[14]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [14]),
        .O(\mem_ram[3][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][12]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[13]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [13]),
        .O(\mem_ram[3][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][12]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[12]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [12]),
        .O(\mem_ram[3][12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][4]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[7]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [7]),
        .O(\mem_ram[3][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][4]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[6]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [6]),
        .O(\mem_ram[3][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][4]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[5]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [5]),
        .O(\mem_ram[3][4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][4]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[4]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [4]),
        .O(\mem_ram[3][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][8]_i_2 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[11]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [11]),
        .O(\mem_ram[3][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][8]_i_3 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[10]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [10]),
        .O(\mem_ram[3][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][8]_i_4 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[9]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [9]),
        .O(\mem_ram[3][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \mem_ram[3][8]_i_5 
       (.I0(\mem_ram[3][0]_i_3_n_0 ),
        .I1(membrane_data_in_IBUF[8]),
        .I2(write_neuron_state_IBUF),
        .I3(\mem_ram_reg[3]_0 [8]),
        .O(\mem_ram[3][8]_i_5_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][0] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[0]_3 [0]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[0][0]_i_2_n_0 ,\mem_ram_reg[0][0]_i_2_n_1 ,\mem_ram_reg[0][0]_i_2_n_2 ,\mem_ram_reg[0][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[0][0]_i_3_n_0 ,1'b0}),
        .O({\mem_ram_reg[0][0]_i_2_n_4 ,\mem_ram_reg[0][0]_i_2_n_5 ,\mem_ram_reg[0][0]_i_2_n_6 ,\mem_ram_reg[0][0]_i_2_n_7 }),
        .S({\mem_ram[0][0]_i_4_n_0 ,\mem_ram[0][0]_i_5_n_0 ,\mem_ram[0][0]_i_6_n_0 ,\mem_ram[0][0]_i_7_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][10] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [10]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][11] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [11]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][12] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [12]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][12]_i_1 
       (.CI(\mem_ram_reg[0][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[0][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[0][12]_i_1_n_1 ,\mem_ram_reg[0][12]_i_1_n_2 ,\mem_ram_reg[0][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[0][12]_i_1_n_4 ,\mem_ram_reg[0][12]_i_1_n_5 ,\mem_ram_reg[0][12]_i_1_n_6 ,\mem_ram_reg[0][12]_i_1_n_7 }),
        .S({\mem_ram[0][12]_i_2_n_0 ,\mem_ram[0][12]_i_3_n_0 ,\mem_ram[0][12]_i_4_n_0 ,\mem_ram[0][12]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][13] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [13]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][14] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [14]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][15] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [15]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][1] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[0]_3 [1]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][2] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[0]_3 [2]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][3] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[0]_3 [3]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][4] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [4]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][4]_i_1 
       (.CI(\mem_ram_reg[0][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[0][4]_i_1_n_0 ,\mem_ram_reg[0][4]_i_1_n_1 ,\mem_ram_reg[0][4]_i_1_n_2 ,\mem_ram_reg[0][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[0][4]_i_1_n_4 ,\mem_ram_reg[0][4]_i_1_n_5 ,\mem_ram_reg[0][4]_i_1_n_6 ,\mem_ram_reg[0][4]_i_1_n_7 }),
        .S({\mem_ram[0][4]_i_2_n_0 ,\mem_ram[0][4]_i_3_n_0 ,\mem_ram[0][4]_i_4_n_0 ,\mem_ram[0][4]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][5] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [5]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][6] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[0]_3 [6]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][7] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[0]_3 [7]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][8] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[0]_3 [8]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[0][8]_i_1 
       (.CI(\mem_ram_reg[0][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[0][8]_i_1_n_0 ,\mem_ram_reg[0][8]_i_1_n_1 ,\mem_ram_reg[0][8]_i_1_n_2 ,\mem_ram_reg[0][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[0][8]_i_1_n_4 ,\mem_ram_reg[0][8]_i_1_n_5 ,\mem_ram_reg[0][8]_i_1_n_6 ,\mem_ram_reg[0][8]_i_1_n_7 }),
        .S({\mem_ram[0][8]_i_2_n_0 ,\mem_ram[0][8]_i_3_n_0 ,\mem_ram[0][8]_i_4_n_0 ,\mem_ram[0][8]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[0][9] 
       (.C(clk),
        .CE(mem_ram),
        .D(\mem_ram_reg[0][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[0]_3 [9]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][0] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[1]_2 [0]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[1][0]_i_2_n_0 ,\mem_ram_reg[1][0]_i_2_n_1 ,\mem_ram_reg[1][0]_i_2_n_2 ,\mem_ram_reg[1][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[1][0]_i_3_n_0 ,1'b0}),
        .O({\mem_ram_reg[1][0]_i_2_n_4 ,\mem_ram_reg[1][0]_i_2_n_5 ,\mem_ram_reg[1][0]_i_2_n_6 ,\mem_ram_reg[1][0]_i_2_n_7 }),
        .S({\mem_ram[1][0]_i_4_n_0 ,\mem_ram[1][0]_i_5_n_0 ,\mem_ram[1][0]_i_6_n_0 ,\mem_ram[1][0]_i_7_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][10] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [10]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][11] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [11]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][12] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [12]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][12]_i_1 
       (.CI(\mem_ram_reg[1][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[1][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[1][12]_i_1_n_1 ,\mem_ram_reg[1][12]_i_1_n_2 ,\mem_ram_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[1][12]_i_1_n_4 ,\mem_ram_reg[1][12]_i_1_n_5 ,\mem_ram_reg[1][12]_i_1_n_6 ,\mem_ram_reg[1][12]_i_1_n_7 }),
        .S({\mem_ram[1][12]_i_2_n_0 ,\mem_ram[1][12]_i_3_n_0 ,\mem_ram[1][12]_i_4_n_0 ,\mem_ram[1][12]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][13] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [13]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][14] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [14]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][15] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [15]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][1] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[1]_2 [1]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][2] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[1]_2 [2]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][3] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[1]_2 [3]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][4] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [4]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][4]_i_1 
       (.CI(\mem_ram_reg[1][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[1][4]_i_1_n_0 ,\mem_ram_reg[1][4]_i_1_n_1 ,\mem_ram_reg[1][4]_i_1_n_2 ,\mem_ram_reg[1][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[1][4]_i_1_n_4 ,\mem_ram_reg[1][4]_i_1_n_5 ,\mem_ram_reg[1][4]_i_1_n_6 ,\mem_ram_reg[1][4]_i_1_n_7 }),
        .S({\mem_ram[1][4]_i_2_n_0 ,\mem_ram[1][4]_i_3_n_0 ,\mem_ram[1][4]_i_4_n_0 ,\mem_ram[1][4]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][5] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [5]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][6] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[1]_2 [6]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][7] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[1]_2 [7]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][8] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[1]_2 [8]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[1][8]_i_1 
       (.CI(\mem_ram_reg[1][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[1][8]_i_1_n_0 ,\mem_ram_reg[1][8]_i_1_n_1 ,\mem_ram_reg[1][8]_i_1_n_2 ,\mem_ram_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[1][8]_i_1_n_4 ,\mem_ram_reg[1][8]_i_1_n_5 ,\mem_ram_reg[1][8]_i_1_n_6 ,\mem_ram_reg[1][8]_i_1_n_7 }),
        .S({\mem_ram[1][8]_i_2_n_0 ,\mem_ram[1][8]_i_3_n_0 ,\mem_ram[1][8]_i_4_n_0 ,\mem_ram[1][8]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[1][9] 
       (.C(clk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram_reg[1][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[1]_2 [9]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][0] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[2]_1 [0]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[2][0]_i_2_n_0 ,\mem_ram_reg[2][0]_i_2_n_1 ,\mem_ram_reg[2][0]_i_2_n_2 ,\mem_ram_reg[2][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[2][0]_i_3_n_0 ,1'b0}),
        .O({\mem_ram_reg[2][0]_i_2_n_4 ,\mem_ram_reg[2][0]_i_2_n_5 ,\mem_ram_reg[2][0]_i_2_n_6 ,\mem_ram_reg[2][0]_i_2_n_7 }),
        .S({\mem_ram[2][0]_i_4_n_0 ,\mem_ram[2][0]_i_5_n_0 ,\mem_ram[2][0]_i_6_n_0 ,\mem_ram[2][0]_i_7_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][10] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [10]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][11] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [11]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][12] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [12]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][12]_i_1 
       (.CI(\mem_ram_reg[2][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[2][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[2][12]_i_1_n_1 ,\mem_ram_reg[2][12]_i_1_n_2 ,\mem_ram_reg[2][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[2][12]_i_1_n_4 ,\mem_ram_reg[2][12]_i_1_n_5 ,\mem_ram_reg[2][12]_i_1_n_6 ,\mem_ram_reg[2][12]_i_1_n_7 }),
        .S({\mem_ram[2][12]_i_2_n_0 ,\mem_ram[2][12]_i_3_n_0 ,\mem_ram[2][12]_i_4_n_0 ,\mem_ram[2][12]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][13] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [13]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][14] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [14]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][15] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [15]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][1] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[2]_1 [1]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][2] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[2]_1 [2]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][3] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[2]_1 [3]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][4] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [4]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][4]_i_1 
       (.CI(\mem_ram_reg[2][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[2][4]_i_1_n_0 ,\mem_ram_reg[2][4]_i_1_n_1 ,\mem_ram_reg[2][4]_i_1_n_2 ,\mem_ram_reg[2][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[2][4]_i_1_n_4 ,\mem_ram_reg[2][4]_i_1_n_5 ,\mem_ram_reg[2][4]_i_1_n_6 ,\mem_ram_reg[2][4]_i_1_n_7 }),
        .S({\mem_ram[2][4]_i_2_n_0 ,\mem_ram[2][4]_i_3_n_0 ,\mem_ram[2][4]_i_4_n_0 ,\mem_ram[2][4]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][5] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [5]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][6] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[2]_1 [6]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][7] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[2]_1 [7]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][8] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[2]_1 [8]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[2][8]_i_1 
       (.CI(\mem_ram_reg[2][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[2][8]_i_1_n_0 ,\mem_ram_reg[2][8]_i_1_n_1 ,\mem_ram_reg[2][8]_i_1_n_2 ,\mem_ram_reg[2][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[2][8]_i_1_n_4 ,\mem_ram_reg[2][8]_i_1_n_5 ,\mem_ram_reg[2][8]_i_1_n_6 ,\mem_ram_reg[2][8]_i_1_n_7 }),
        .S({\mem_ram[2][8]_i_2_n_0 ,\mem_ram[2][8]_i_3_n_0 ,\mem_ram[2][8]_i_4_n_0 ,\mem_ram[2][8]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[2][9] 
       (.C(clk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram_reg[2][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[2]_1 [9]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][0] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_7 ),
        .Q(\mem_ram_reg[3]_0 [0]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][0]_i_2 
       (.CI(1'b0),
        .CO({\mem_ram_reg[3][0]_i_2_n_0 ,\mem_ram_reg[3][0]_i_2_n_1 ,\mem_ram_reg[3][0]_i_2_n_2 ,\mem_ram_reg[3][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_4_n_0 ,1'b0}),
        .O({\mem_ram_reg[3][0]_i_2_n_4 ,\mem_ram_reg[3][0]_i_2_n_5 ,\mem_ram_reg[3][0]_i_2_n_6 ,\mem_ram_reg[3][0]_i_2_n_7 }),
        .S({\mem_ram[3][0]_i_5_n_0 ,\mem_ram[3][0]_i_6_n_0 ,\mem_ram[3][0]_i_7_n_0 ,\mem_ram[3][0]_i_8_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][10] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [10]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][11] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [11]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][12] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [12]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][12]_i_1 
       (.CI(\mem_ram_reg[3][8]_i_1_n_0 ),
        .CO({\NLW_mem_ram_reg[3][12]_i_1_CO_UNCONNECTED [3],\mem_ram_reg[3][12]_i_1_n_1 ,\mem_ram_reg[3][12]_i_1_n_2 ,\mem_ram_reg[3][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[3][12]_i_1_n_4 ,\mem_ram_reg[3][12]_i_1_n_5 ,\mem_ram_reg[3][12]_i_1_n_6 ,\mem_ram_reg[3][12]_i_1_n_7 }),
        .S({\mem_ram[3][12]_i_2_n_0 ,\mem_ram[3][12]_i_3_n_0 ,\mem_ram[3][12]_i_4_n_0 ,\mem_ram[3][12]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][13] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [13]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][14] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [14]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][15] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][12]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [15]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][1] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_6 ),
        .Q(\mem_ram_reg[3]_0 [1]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][2] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_5 ),
        .Q(\mem_ram_reg[3]_0 [2]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][3] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][0]_i_2_n_4 ),
        .Q(\mem_ram_reg[3]_0 [3]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][4] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [4]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][4]_i_1 
       (.CI(\mem_ram_reg[3][0]_i_2_n_0 ),
        .CO({\mem_ram_reg[3][4]_i_1_n_0 ,\mem_ram_reg[3][4]_i_1_n_1 ,\mem_ram_reg[3][4]_i_1_n_2 ,\mem_ram_reg[3][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[3][4]_i_1_n_4 ,\mem_ram_reg[3][4]_i_1_n_5 ,\mem_ram_reg[3][4]_i_1_n_6 ,\mem_ram_reg[3][4]_i_1_n_7 }),
        .S({\mem_ram[3][4]_i_2_n_0 ,\mem_ram[3][4]_i_3_n_0 ,\mem_ram[3][4]_i_4_n_0 ,\mem_ram[3][4]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][5] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [5]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][6] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_5 ),
        .Q(\mem_ram_reg[3]_0 [6]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][7] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][4]_i_1_n_4 ),
        .Q(\mem_ram_reg[3]_0 [7]),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][8] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_7 ),
        .Q(\mem_ram_reg[3]_0 [8]),
        .R(reset_module_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mem_ram_reg[3][8]_i_1 
       (.CI(\mem_ram_reg[3][4]_i_1_n_0 ),
        .CO({\mem_ram_reg[3][8]_i_1_n_0 ,\mem_ram_reg[3][8]_i_1_n_1 ,\mem_ram_reg[3][8]_i_1_n_2 ,\mem_ram_reg[3][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 ,\mem_ram[3][0]_i_3_n_0 }),
        .O({\mem_ram_reg[3][8]_i_1_n_4 ,\mem_ram_reg[3][8]_i_1_n_5 ,\mem_ram_reg[3][8]_i_1_n_6 ,\mem_ram_reg[3][8]_i_1_n_7 }),
        .S({\mem_ram[3][8]_i_2_n_0 ,\mem_ram[3][8]_i_3_n_0 ,\mem_ram[3][8]_i_4_n_0 ,\mem_ram[3][8]_i_5_n_0 }));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \mem_ram_reg[3][9] 
       (.C(clk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram_reg[3][8]_i_1_n_6 ),
        .Q(\mem_ram_reg[3]_0 [9]),
        .R(reset_module_IBUF));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \neuron_state[0]_i_1 
       (.I0(\state_ram_reg_n_0_[2][0] ),
        .I1(\state_ram_reg_n_0_[3][0] ),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\state_ram_reg_n_0_[0][0] ),
        .I5(\state_ram_reg_n_0_[1][0] ),
        .O(\neuron_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \neuron_state[1]_i_1 
       (.I0(\state_ram_reg_n_0_[2][1] ),
        .I1(\state_ram_reg_n_0_[3][1] ),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\state_ram_reg_n_0_[0][1] ),
        .I5(\state_ram_reg_n_0_[1][1] ),
        .O(\neuron_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1_n_0 ),
        .Q(\neuron_state_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1_n_0 ),
        .Q(\neuron_state_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(\selected_idx_offset_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_idx_offset_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(\selected_idx_offset_reg[1]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[0]_i_1 
       (.I0(\mem_ram_reg[2]_1 [0]),
        .I1(\mem_ram_reg[3]_0 [0]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [0]),
        .I5(\mem_ram_reg[1]_2 [0]),
        .O(\selected_membrane[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[10]_i_1 
       (.I0(\mem_ram_reg[2]_1 [10]),
        .I1(\mem_ram_reg[3]_0 [10]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [10]),
        .I5(\mem_ram_reg[1]_2 [10]),
        .O(\selected_membrane[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[11]_i_1 
       (.I0(\mem_ram_reg[2]_1 [11]),
        .I1(\mem_ram_reg[3]_0 [11]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [11]),
        .I5(\mem_ram_reg[1]_2 [11]),
        .O(\selected_membrane[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[12]_i_1 
       (.I0(\mem_ram_reg[2]_1 [12]),
        .I1(\mem_ram_reg[3]_0 [12]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [12]),
        .I5(\mem_ram_reg[1]_2 [12]),
        .O(\selected_membrane[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[13]_i_1 
       (.I0(\mem_ram_reg[2]_1 [13]),
        .I1(\mem_ram_reg[3]_0 [13]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [13]),
        .I5(\mem_ram_reg[1]_2 [13]),
        .O(\selected_membrane[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[14]_i_1 
       (.I0(\mem_ram_reg[2]_1 [14]),
        .I1(\mem_ram_reg[3]_0 [14]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [14]),
        .I5(\mem_ram_reg[1]_2 [14]),
        .O(\selected_membrane[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[15]_i_1 
       (.I0(\mem_ram_reg[2]_1 [15]),
        .I1(\mem_ram_reg[3]_0 [15]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [15]),
        .I5(\mem_ram_reg[1]_2 [15]),
        .O(\selected_membrane[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[1]_i_1 
       (.I0(\mem_ram_reg[2]_1 [1]),
        .I1(\mem_ram_reg[3]_0 [1]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [1]),
        .I5(\mem_ram_reg[1]_2 [1]),
        .O(\selected_membrane[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[2]_i_1 
       (.I0(\mem_ram_reg[2]_1 [2]),
        .I1(\mem_ram_reg[3]_0 [2]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [2]),
        .I5(\mem_ram_reg[1]_2 [2]),
        .O(\selected_membrane[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[3]_i_1 
       (.I0(\mem_ram_reg[2]_1 [3]),
        .I1(\mem_ram_reg[3]_0 [3]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [3]),
        .I5(\mem_ram_reg[1]_2 [3]),
        .O(\selected_membrane[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[4]_i_1 
       (.I0(\mem_ram_reg[2]_1 [4]),
        .I1(\mem_ram_reg[3]_0 [4]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [4]),
        .I5(\mem_ram_reg[1]_2 [4]),
        .O(\selected_membrane[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[5]_i_1 
       (.I0(\mem_ram_reg[2]_1 [5]),
        .I1(\mem_ram_reg[3]_0 [5]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [5]),
        .I5(\mem_ram_reg[1]_2 [5]),
        .O(\selected_membrane[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[6]_i_1 
       (.I0(\mem_ram_reg[2]_1 [6]),
        .I1(\mem_ram_reg[3]_0 [6]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [6]),
        .I5(\mem_ram_reg[1]_2 [6]),
        .O(\selected_membrane[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[7]_i_1 
       (.I0(\mem_ram_reg[2]_1 [7]),
        .I1(\mem_ram_reg[3]_0 [7]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [7]),
        .I5(\mem_ram_reg[1]_2 [7]),
        .O(\selected_membrane[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[8]_i_1 
       (.I0(\mem_ram_reg[2]_1 [8]),
        .I1(\mem_ram_reg[3]_0 [8]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [8]),
        .I5(\mem_ram_reg[1]_2 [8]),
        .O(\selected_membrane[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \selected_membrane[9]_i_1 
       (.I0(\mem_ram_reg[2]_1 [9]),
        .I1(\mem_ram_reg[3]_0 [9]),
        .I2(idx_r[1]),
        .I3(idx_r[0]),
        .I4(\mem_ram_reg[0]_3 [9]),
        .I5(\mem_ram_reg[1]_2 [9]),
        .O(\selected_membrane[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[10]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[11]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[12]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[13]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[14]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[15]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selected_membrane_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1_n_0 ),
        .Q(\selected_membrane_reg[15]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[0][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[0][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404040404FF04)) 
    \state_ram[0][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_state_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[2][1]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state_ram[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[1][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[1][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40404040FF404040)) 
    \state_ram[1][1]_i_2 
       (.I0(idx_to_write_IBUF[1]),
        .I1(idx_to_write_IBUF[0]),
        .I2(write_neuron_state_IBUF),
        .I3(\state_ram[2][1]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state_ram[1][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAFAAABA)) 
    \state_ram[2][0]_i_2 
       (.I0(\state_ram[2][0]_i_3_n_0 ),
        .I1(\state_ram_reg_n_0_[2][0] ),
        .I2(Q[1]),
        .I3(write_neuron_state_IBUF),
        .I4(Q[0]),
        .I5(\state_ram_reg_n_0_[3][0] ),
        .O(state_ram[0]));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][0]_i_3 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_ram_reg_n_0_[1][0] ),
        .I4(write_neuron_state_IBUF),
        .I5(neuron_state_in_IBUF[0]),
        .O(\state_ram[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[2][1]_i_1 
       (.I0(state_ram[1]),
        .I1(\state_ram[2][1]_i_3_n_0 ),
        .I2(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAFAAABA)) 
    \state_ram[2][1]_i_2 
       (.I0(\state_ram[2][1]_i_4_n_0 ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(Q[1]),
        .I3(write_neuron_state_IBUF),
        .I4(Q[0]),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(state_ram[1]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \state_ram[2][1]_i_3 
       (.I0(idx_to_write_IBUF[1]),
        .I1(write_neuron_state_IBUF),
        .I2(idx_to_write_IBUF[0]),
        .I3(\state_ram[2][1]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\state_ram[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF013100000131)) 
    \state_ram[2][1]_i_4 
       (.I0(\state_ram_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_ram_reg_n_0_[1][1] ),
        .I4(write_neuron_state_IBUF),
        .I5(neuron_state_in_IBUF[1]),
        .O(\state_ram[2][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \state_ram[2][1]_i_5 
       (.I0(\Q_out_reg[3]_0 ),
        .I1(\Q_out_reg[3] ),
        .I2(\mem_ram_reg[0][15]_0 ),
        .I3(write_neuron_state_IBUF),
        .I4(Q[2]),
        .O(\state_ram[2][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_ram[3][0]_i_1 
       (.I0(state_ram[0]),
        .I1(\state_ram[3][1]_i_2_n_0 ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
        .I2(write_neuron_state_IBUF),
        .I3(\state_ram[2][1]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state_ram[3][1]_i_2_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(reset_module_IBUF));
  (* RAM_STYLE = "block" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_ram_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(reset_module_IBUF));
  LFSR_inout u_lfsr
       (.D(idx_offset),
        .clk(clk),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .reset_module_IBUF(reset_module_IBUF),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF));
endmodule

(* ENSEMBLE_GENERATE_STATE = "2'b00" *) (* ENSEMBLE_INC_STATE = "2'b10" *) (* ENSEMBLE_RESET_STATE = "2'b01" *) 
(* ENSEMBLE_SUB_STATE = "2'b11" *) (* ENSEMBLE_WITH_MEM_FETCH_Q = "3'b100" *) (* ENSEMBLE_WITH_MEM_GENERATE_1 = "3'b001" *) 
(* ENSEMBLE_WITH_MEM_GENERATE_2 = "3'b010" *) (* ENSEMBLE_WITH_MEM_HOLD = "3'b011" *) (* ENSEMBLE_WITH_MEM_RESET = "3'b000" *) 
(* ENSEMBLE_WITH_MEM_UPDATE = "3'b101" *) (* FIXED_TOTAL_WIDTH = "18" *) (* FLIPPING_OUTPUT_WIDTH = "16" *) 
(* FRACTIONAL_PART = "9" *) (* GRAPH_DISTRIB_FILE = "adj_matrix_N8_A2_distributed0.mif" *) (* GRAPH_WIDTH = "8" *) 
(* LOG_LUT_BIT_SIZE = "8" *) (* LOG_NOISE_LUT_FILENAME = "log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif" *) (* LOG_NOISE_SOURCE_WIDTH = "16" *) 
(* MEMBRANE_WIDTH = "16" *) (* NEURON_SEL_LFSR_WIDTH = "3" *) (* NEURON_WIDTH = "2" *) 
(* NO_OF_CLK_CYCLES_TO_PROPAGATE = "1" *) (* NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE = "2" *) (* NUMBER_OF_NEURONS = "4" *) 
(* PIPELINED_ENSEMBLE_STORAGE = "1" *) (* PIPELINED_ROMs = "1" *) (* REAL_WIDTH = "18" *) 
(* S_FETCH = "3'b100" *) (* S_GEN1 = "3'b001" *) (* S_GEN2 = "3'b010" *) 
(* S_HOLD = "3'b011" *) (* S_RST = "3'b000" *) (* S_UPDATE = "3'b101" *) 
(* TEMPERATURE_LUT_FILENAME = "temperature_LUT_fixed_N9.mif" *) (* TEMPERATURE_LUT_WIDTH = "9" *) (* UNIT_NO = "0" *) 
(* UNIT_WIDTH = "1" *) (* USE_FLOAT_POINT = "1" *) 
(* NotValidForBitStream *)
module neuron_ensemble_with_memory_with_buff
   (clk,
    reset_module,
    halt,
    update_memory,
    should_increment,
    index_of_neuron_that_fired,
    write_ensemble_seed,
    ensemble_seed,
    write_flipping_seed,
    flipping_seed,
    decrease_temp,
    write_neuron_state,
    idx_to_write,
    membrane_data_in,
    neuron_state_in,
    spike_out,
    offset_out,
    membrane_out,
    add_mem_out,
    unit_number);
  input clk;
  input reset_module;
  input halt;
  input update_memory;
  input should_increment;
  input [2:0]index_of_neuron_that_fired;
  input write_ensemble_seed;
  input [2:0]ensemble_seed;
  input write_flipping_seed;
  input [15:0]flipping_seed;
  input decrease_temp;
  input write_neuron_state;
  input [1:0]idx_to_write;
  input [15:0]membrane_data_in;
  input [3:0]neuron_state_in;
  output spike_out;
  output [1:0]offset_out;
  output [15:0]membrane_out;
  output add_mem_out;
  output [0:0]unit_number;

  wire CE_output_from_distributed_graph;
  wire G_memory_n_1;
  wire G_memory_n_2;
  wire G_memory_n_3;
  wire add_mem_out;
  wire add_mem_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire decrease_temp;
  wire decrease_temp_IBUF;
  wire [2:0]ensemble_seed;
  wire [2:0]ensemble_seed_IBUF;
  wire flipping_CE;
  wire [15:0]flipping_seed;
  wire [15:0]flipping_seed_IBUF;
  wire halt;
  wire halt_IBUF;
  wire [1:0]idx_p;
  wire [1:0]idx_to_write;
  wire [1:0]idx_to_write_IBUF;
  wire incrementing_reg;
  wire incrementing_reg_i_1_n_0;
  wire [2:0]index_of_neuron_that_fired;
  wire [2:0]index_of_neuron_that_fired_IBUF;
  wire [2:0]index_of_neuron_that_fired_reg;
  wire [15:0]mem_p;
  wire [15:0]membrane_data_in;
  wire [15:0]membrane_data_in_IBUF;
  wire [15:0]membrane_out;
  wire [15:0]membrane_out_OBUF;
  wire neuron_ensemble_inst_n_0;
  wire neuron_ensemble_inst_n_1;
  wire [3:0]neuron_state_in;
  wire [1:0]neuron_state_in_IBUF;
  wire [1:0]offset_out;
  wire [1:0]offset_out_OBUF;
  wire reset_module;
  wire reset_module_IBUF;
  wire should_increment;
  wire should_increment_IBUF;
  wire spike_out;
  wire spike_out_OBUF;
  wire [0:0]st_p;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire \u_store/mem_ram ;
  wire [0:0]unit_number;
  wire update_memory;
  wire update_memory_IBUF;
  wire write_ensemble_seed;
  wire write_ensemble_seed_IBUF;
  wire write_flipping_seed;
  wire write_flipping_seed_IBUF;
  wire write_neuron_state;
  wire write_neuron_state_IBUF;

  distributed_graph_memory G_memory
       (.CE_output_from_distributed_graph(CE_output_from_distributed_graph),
        .Q(index_of_neuron_that_fired_reg),
        .\Q_out_reg[1]_0 (G_memory_n_1),
        .\Q_out_reg[2]_0 (G_memory_n_2),
        .\Q_out_reg[3]_0 (G_memory_n_3),
        .clk(clk_IBUF_BUFG),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .mem_ram(\u_store/mem_ram ),
        .\mem_ram_reg[0][0] (\state_reg_n_0_[0] ),
        .reset_module_IBUF(reset_module_IBUF),
        .write_neuron_state_IBUF(write_neuron_state_IBUF));
  OBUF add_mem_out_OBUF_inst
       (.I(add_mem_out_OBUF),
        .O(add_mem_out));
  transmit_buffer buffer
       (.CO(neuron_ensemble_inst_n_0),
        .E(flipping_CE),
        .Q(st_p),
        .add_mem_out_OBUF(add_mem_out_OBUF),
        .clk(clk_IBUF_BUFG),
        .\membrane_reg_reg[15]_0 (membrane_out_OBUF),
        .\membrane_reg_reg[15]_1 (mem_p),
        .\offset_reg_reg[1]_0 (offset_out_OBUF),
        .\offset_reg_reg[1]_1 (idx_p),
        .reset_module_IBUF(reset_module_IBUF),
        .spike_out_OBUF(spike_out_OBUF),
        .\state_reg[0]_0 (neuron_ensemble_inst_n_1),
        .storage_CE_advance(storage_CE_advance),
        .update_memory_IBUF(update_memory_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
  IBUF halt_IBUF_inst
       (.I(halt),
        .O(halt_IBUF));
  IBUF \idx_to_write_IBUF[0]_inst 
       (.I(idx_to_write[0]),
        .O(idx_to_write_IBUF[0]));
  IBUF \idx_to_write_IBUF[1]_inst 
       (.I(idx_to_write[1]),
        .O(idx_to_write_IBUF[1]));
  LUT3 #(
    .INIT(8'h04)) 
    incrementing_reg_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(incrementing_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    incrementing_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(incrementing_reg_i_1_n_0),
        .D(should_increment_IBUF),
        .Q(incrementing_reg),
        .R(reset_module_IBUF));
  IBUF \index_of_neuron_that_fired_IBUF[0]_inst 
       (.I(index_of_neuron_that_fired[0]),
        .O(index_of_neuron_that_fired_IBUF[0]));
  IBUF \index_of_neuron_that_fired_IBUF[1]_inst 
       (.I(index_of_neuron_that_fired[1]),
        .O(index_of_neuron_that_fired_IBUF[1]));
  IBUF \index_of_neuron_that_fired_IBUF[2]_inst 
       (.I(index_of_neuron_that_fired[2]),
        .O(index_of_neuron_that_fired_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory_IBUF),
        .D(index_of_neuron_that_fired_IBUF[0]),
        .Q(index_of_neuron_that_fired_reg[0]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory_IBUF),
        .D(index_of_neuron_that_fired_IBUF[1]),
        .Q(index_of_neuron_that_fired_reg[1]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \index_of_neuron_that_fired_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memory_IBUF),
        .D(index_of_neuron_that_fired_IBUF[2]),
        .Q(index_of_neuron_that_fired_reg[2]),
        .R(reset_module_IBUF));
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
  OBUF \membrane_out_OBUF[0]_inst 
       (.I(membrane_out_OBUF[0]),
        .O(membrane_out[0]));
  OBUF \membrane_out_OBUF[10]_inst 
       (.I(membrane_out_OBUF[10]),
        .O(membrane_out[10]));
  OBUF \membrane_out_OBUF[11]_inst 
       (.I(membrane_out_OBUF[11]),
        .O(membrane_out[11]));
  OBUF \membrane_out_OBUF[12]_inst 
       (.I(membrane_out_OBUF[12]),
        .O(membrane_out[12]));
  OBUF \membrane_out_OBUF[13]_inst 
       (.I(membrane_out_OBUF[13]),
        .O(membrane_out[13]));
  OBUF \membrane_out_OBUF[14]_inst 
       (.I(membrane_out_OBUF[14]),
        .O(membrane_out[14]));
  OBUF \membrane_out_OBUF[15]_inst 
       (.I(membrane_out_OBUF[15]),
        .O(membrane_out[15]));
  OBUF \membrane_out_OBUF[1]_inst 
       (.I(membrane_out_OBUF[1]),
        .O(membrane_out[1]));
  OBUF \membrane_out_OBUF[2]_inst 
       (.I(membrane_out_OBUF[2]),
        .O(membrane_out[2]));
  OBUF \membrane_out_OBUF[3]_inst 
       (.I(membrane_out_OBUF[3]),
        .O(membrane_out[3]));
  OBUF \membrane_out_OBUF[4]_inst 
       (.I(membrane_out_OBUF[4]),
        .O(membrane_out[4]));
  OBUF \membrane_out_OBUF[5]_inst 
       (.I(membrane_out_OBUF[5]),
        .O(membrane_out[5]));
  OBUF \membrane_out_OBUF[6]_inst 
       (.I(membrane_out_OBUF[6]),
        .O(membrane_out[6]));
  OBUF \membrane_out_OBUF[7]_inst 
       (.I(membrane_out_OBUF[7]),
        .O(membrane_out[7]));
  OBUF \membrane_out_OBUF[8]_inst 
       (.I(membrane_out_OBUF[8]),
        .O(membrane_out[8]));
  OBUF \membrane_out_OBUF[9]_inst 
       (.I(membrane_out_OBUF[9]),
        .O(membrane_out[9]));
  neuron_ensemble neuron_ensemble_inst
       (.CE_output_from_distributed_graph(CE_output_from_distributed_graph),
        .CO(neuron_ensemble_inst_n_0),
        .E(flipping_CE),
        .Q(index_of_neuron_that_fired_reg),
        .\Q_out_reg[3] (\state_reg_n_0_[1] ),
        .\Q_out_reg[3]_0 (\state_reg_n_0_[2] ),
        .clk(clk_IBUF_BUFG),
        .decrease_temp_IBUF(decrease_temp_IBUF),
        .ensemble_seed_IBUF(ensemble_seed_IBUF),
        .flipping_seed_IBUF(flipping_seed_IBUF),
        .\idx_p_reg[1]_0 (idx_p),
        .idx_to_write_IBUF(idx_to_write_IBUF),
        .incrementing_reg(incrementing_reg),
        .\mem_p_reg[15]_0 (mem_p),
        .mem_ram(\u_store/mem_ram ),
        .\mem_ram_reg[1][0] (G_memory_n_1),
        .\mem_ram_reg[2][0] (G_memory_n_2),
        .\mem_ram_reg[3][0] (G_memory_n_3),
        .membrane_data_in_IBUF(membrane_data_in_IBUF),
        .neuron_state_in_IBUF(neuron_state_in_IBUF),
        .reset_module_IBUF(reset_module_IBUF),
        .\st_p_reg[0]_0 (st_p),
        .\state_reg[0] (neuron_ensemble_inst_n_1),
        .\state_reg[0]_0 (\state_reg_n_0_[0] ),
        .storage_CE_advance(storage_CE_advance),
        .write_ensemble_seed_IBUF(write_ensemble_seed_IBUF),
        .write_flipping_seed_IBUF(write_flipping_seed_IBUF),
        .write_neuron_state_IBUF(write_neuron_state_IBUF));
  IBUF \neuron_state_in_IBUF[0]_inst 
       (.I(neuron_state_in[0]),
        .O(neuron_state_in_IBUF[0]));
  IBUF \neuron_state_in_IBUF[1]_inst 
       (.I(neuron_state_in[1]),
        .O(neuron_state_in_IBUF[1]));
  OBUF \offset_out_OBUF[0]_inst 
       (.I(offset_out_OBUF[0]),
        .O(offset_out[0]));
  OBUF \offset_out_OBUF[1]_inst 
       (.I(offset_out_OBUF[1]),
        .O(offset_out[1]));
  IBUF reset_module_IBUF_inst
       (.I(reset_module),
        .O(reset_module_IBUF));
  IBUF should_increment_IBUF_inst
       (.I(should_increment),
        .O(should_increment_IBUF));
  OBUF spike_out_OBUF_inst
       (.I(spike_out_OBUF),
        .O(spike_out));
  LUT6 #(
    .INIT(64'h0000AAAA0000EEFB)) 
    \state[0]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_module_IBUF),
        .I5(update_memory_IBUF),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000FBAE)) 
    \state[1]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_module_IBUF),
        .I5(update_memory_IBUF),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500005010)) 
    \state[2]_i_1 
       (.I0(halt_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_module_IBUF),
        .I5(update_memory_IBUF),
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
  OBUF \unit_number_OBUF[0]_inst 
       (.I(1'b0),
        .O(unit_number));
  IBUF update_memory_IBUF_inst
       (.I(update_memory),
        .O(update_memory_IBUF));
  IBUF write_ensemble_seed_IBUF_inst
       (.I(write_ensemble_seed),
        .O(write_ensemble_seed_IBUF));
  IBUF write_flipping_seed_IBUF_inst
       (.I(write_flipping_seed),
        .O(write_flipping_seed_IBUF));
  IBUF write_neuron_state_IBUF_inst
       (.I(write_neuron_state),
        .O(write_neuron_state_IBUF));
endmodule

module temperature_mapping
   (DOADO,
    D,
    y_reg_0,
    y_reg_1,
    y_reg_2,
    clk,
    SR,
    Q,
    P,
    \stage1_r_reg[14] ,
    \stage1_r_reg[11] ,
    \stage1_r_reg[14]_0 ,
    \stage1_r_reg[15] ,
    \stage1_r_reg[15]_0 ,
    out,
    c_3__0);
  output [14:0]DOADO;
  output [5:0]D;
  output y_reg_0;
  output y_reg_1;
  output y_reg_2;
  input clk;
  input [0:0]SR;
  input [8:0]Q;
  input [0:0]P;
  input \stage1_r_reg[14] ;
  input \stage1_r_reg[11] ;
  input [1:0]\stage1_r_reg[14]_0 ;
  input \stage1_r_reg[15] ;
  input \stage1_r_reg[15]_0 ;
  input [5:0]out;
  input c_3__0;

  wire [5:0]D;
  wire [14:0]DOADO;
  wire [2:1]\FP_PATH.u_fmul/biased_sum_exponent ;
  wire [0:0]\FP_PATH.u_fmul/sum_exponent ;
  wire [0:0]P;
  wire [8:0]Q;
  wire [0:0]SR;
  wire c_3__0;
  wire clk;
  wire [5:0]out;
  wire \stage1_r[12]_i_2_n_0 ;
  wire \stage1_r[13]_i_2_n_0 ;
  wire \stage1_r[14]_i_12_n_0 ;
  wire \stage1_r[14]_i_13_n_0 ;
  wire \stage1_r[14]_i_2_n_0 ;
  wire \stage1_r[14]_i_5_n_0 ;
  wire \stage1_r[15]_i_3_n_0 ;
  wire \stage1_r[15]_i_4_n_0 ;
  wire \stage1_r[15]_i_7_n_0 ;
  wire \stage1_r[15]_i_8_n_0 ;
  wire \stage1_r_reg[11] ;
  wire \stage1_r_reg[14] ;
  wire [1:0]\stage1_r_reg[14]_0 ;
  wire \stage1_r_reg[15] ;
  wire \stage1_r_reg[15]_0 ;
  wire [15:15]temp_fp;
  wire y_reg_0;
  wire y_reg_1;
  wire y_reg_2;
  wire y_reg_n_32;
  wire y_reg_n_33;
  wire [15:0]NLW_y_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_y_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000FF090000)) 
    \stage1_r[10]_i_1 
       (.I0(P),
        .I1(\FP_PATH.u_fmul/sum_exponent ),
        .I2(y_reg_0),
        .I3(\stage1_r[14]_i_5_n_0 ),
        .I4(\stage1_r_reg[14] ),
        .I5(y_reg_1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \stage1_r[10]_i_2 
       (.I0(DOADO[10]),
        .I1(out[0]),
        .O(\FP_PATH.u_fmul/sum_exponent ));
  LUT6 #(
    .INIT(64'h00000000FF060000)) 
    \stage1_r[11]_i_1 
       (.I0(\stage1_r_reg[11] ),
        .I1(\FP_PATH.u_fmul/biased_sum_exponent [1]),
        .I2(y_reg_0),
        .I3(\stage1_r[14]_i_5_n_0 ),
        .I4(\stage1_r_reg[14] ),
        .I5(y_reg_1),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE11E)) 
    \stage1_r[11]_i_3 
       (.I0(DOADO[10]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(DOADO[11]),
        .O(\FP_PATH.u_fmul/biased_sum_exponent [1]));
  LUT6 #(
    .INIT(64'h00000000FF060000)) 
    \stage1_r[12]_i_1 
       (.I0(\stage1_r[12]_i_2_n_0 ),
        .I1(\FP_PATH.u_fmul/biased_sum_exponent [2]),
        .I2(y_reg_0),
        .I3(\stage1_r[14]_i_5_n_0 ),
        .I4(\stage1_r_reg[14] ),
        .I5(y_reg_1),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h90060000)) 
    \stage1_r[12]_i_2 
       (.I0(DOADO[11]),
        .I1(out[1]),
        .I2(DOADO[10]),
        .I3(out[0]),
        .I4(P),
        .O(\stage1_r[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0011F011FFEE0)) 
    \stage1_r[12]_i_3 
       (.I0(DOADO[10]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(DOADO[11]),
        .I4(out[2]),
        .I5(DOADO[12]),
        .O(\FP_PATH.u_fmul/biased_sum_exponent [2]));
  LUT6 #(
    .INIT(64'h00000000FF060000)) 
    \stage1_r[13]_i_1 
       (.I0(\stage1_r[13]_i_2_n_0 ),
        .I1(\stage1_r_reg[14]_0 [0]),
        .I2(y_reg_0),
        .I3(\stage1_r[14]_i_5_n_0 ),
        .I4(\stage1_r_reg[14] ),
        .I5(y_reg_1),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8000000800088000)) 
    \stage1_r[13]_i_2 
       (.I0(\FP_PATH.u_fmul/biased_sum_exponent [2]),
        .I1(P),
        .I2(out[0]),
        .I3(DOADO[10]),
        .I4(out[1]),
        .I5(DOADO[11]),
        .O(\stage1_r[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF060000)) 
    \stage1_r[14]_i_1 
       (.I0(\stage1_r[14]_i_2_n_0 ),
        .I1(\stage1_r_reg[14]_0 [1]),
        .I2(y_reg_0),
        .I3(\stage1_r[14]_i_5_n_0 ),
        .I4(\stage1_r_reg[14] ),
        .I5(y_reg_1),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \stage1_r[14]_i_12 
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .I2(DOADO[3]),
        .I3(DOADO[2]),
        .O(\stage1_r[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \stage1_r[14]_i_13 
       (.I0(temp_fp),
        .I1(DOADO[14]),
        .I2(DOADO[13]),
        .I3(DOADO[12]),
        .O(\stage1_r[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6996000000000000)) 
    \stage1_r[14]_i_2 
       (.I0(DOADO[13]),
        .I1(out[3]),
        .I2(y_reg_2),
        .I3(c_3__0),
        .I4(\stage1_r[12]_i_2_n_0 ),
        .I5(\FP_PATH.u_fmul/biased_sum_exponent [2]),
        .O(\stage1_r[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6888888188818111)) 
    \stage1_r[14]_i_4 
       (.I0(DOADO[14]),
        .I1(out[4]),
        .I2(DOADO[13]),
        .I3(out[3]),
        .I4(y_reg_2),
        .I5(c_3__0),
        .O(y_reg_0));
  LUT6 #(
    .INIT(64'h6888888088808000)) 
    \stage1_r[14]_i_5 
       (.I0(DOADO[14]),
        .I1(out[4]),
        .I2(DOADO[13]),
        .I3(out[3]),
        .I4(y_reg_2),
        .I5(c_3__0),
        .O(\stage1_r[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \stage1_r[14]_i_7 
       (.I0(\stage1_r[15]_i_8_n_0 ),
        .I1(\stage1_r[14]_i_12_n_0 ),
        .I2(\stage1_r[15]_i_7_n_0 ),
        .I3(\stage1_r[14]_i_13_n_0 ),
        .O(y_reg_1));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \stage1_r[14]_i_8 
       (.I0(DOADO[12]),
        .I1(out[2]),
        .I2(DOADO[11]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(DOADO[10]),
        .O(y_reg_2));
  LUT6 #(
    .INIT(64'h0000777077700000)) 
    \stage1_r[15]_i_2 
       (.I0(\stage1_r[15]_i_3_n_0 ),
        .I1(\stage1_r[15]_i_4_n_0 ),
        .I2(\stage1_r_reg[15] ),
        .I3(\stage1_r_reg[15]_0 ),
        .I4(temp_fp),
        .I5(out[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \stage1_r[15]_i_3 
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(DOADO[14]),
        .I3(temp_fp),
        .I4(\stage1_r[15]_i_7_n_0 ),
        .O(\stage1_r[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \stage1_r[15]_i_4 
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .I2(DOADO[0]),
        .I3(DOADO[1]),
        .I4(\stage1_r[15]_i_8_n_0 ),
        .O(\stage1_r[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \stage1_r[15]_i_7 
       (.I0(DOADO[11]),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(DOADO[8]),
        .O(\stage1_r[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stage1_r[15]_i_8 
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .I2(DOADO[5]),
        .I3(DOADO[4]),
        .O(\stage1_r[15]_i_8_n_0 ));
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
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({temp_fp,DOADO}),
        .DOBDO(NLW_y_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP({y_reg_n_32,y_reg_n_33}),
        .DOPBDOP(NLW_y_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module temperature_module
   (DOADO,
    D,
    y_reg,
    y_reg_0,
    c_3__3,
    clk,
    SR,
    decrease_temp_IBUF,
    P,
    \stage1_r_reg[14] ,
    \stage1_r_reg[11] ,
    \stage1_r_reg[14]_0 ,
    \stage1_r_reg[15] ,
    \stage1_r_reg[15]_0 ,
    out,
    c_3__0);
  output [14:0]DOADO;
  output [5:0]D;
  output y_reg;
  output y_reg_0;
  output c_3__3;
  input clk;
  input [0:0]SR;
  input decrease_temp_IBUF;
  input [0:0]P;
  input \stage1_r_reg[14] ;
  input \stage1_r_reg[11] ;
  input [1:0]\stage1_r_reg[14]_0 ;
  input \stage1_r_reg[15] ;
  input \stage1_r_reg[15]_0 ;
  input [5:0]out;
  input c_3__0;

  wire [5:0]D;
  wire [14:0]DOADO;
  wire [0:0]P;
  wire [0:0]SR;
  wire c_3__0;
  wire c_3__3;
  wire clk;
  wire decrease_temp_IBUF;
  wire [5:0]out;
  wire [8:0]p_0_in__0;
  wire \stage1_r_reg[11] ;
  wire \stage1_r_reg[14] ;
  wire [1:0]\stage1_r_reg[14]_0 ;
  wire \stage1_r_reg[15] ;
  wire \stage1_r_reg[15]_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[8]_i_1_n_0 ;
  wire \x[8]_i_3_n_0 ;
  wire [8:0]x_reg;
  wire y_reg;
  wire y_reg_0;

  temperature_mapping u_rom
       (.D(D),
        .DOADO(DOADO),
        .P(P),
        .Q(x_reg),
        .SR(SR),
        .c_3__0(c_3__0),
        .clk(clk),
        .out(out),
        .\stage1_r_reg[11] (\stage1_r_reg[11] ),
        .\stage1_r_reg[14] (\stage1_r_reg[14] ),
        .\stage1_r_reg[14]_0 (\stage1_r_reg[14]_0 ),
        .\stage1_r_reg[15] (\stage1_r_reg[15] ),
        .\stage1_r_reg[15]_0 (\stage1_r_reg[15]_0 ),
        .y_reg_0(y_reg),
        .y_reg_1(y_reg_0),
        .y_reg_2(c_3__3));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_1 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x[5]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[1]),
        .I3(x_reg[0]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(\x[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \x[6]_i_1 
       (.I0(x_reg[5]),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x[7]_i_1 
       (.I0(x_reg[6]),
        .I1(\x[8]_i_3_n_0 ),
        .I2(x_reg[5]),
        .I3(x_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hFF7F0000FFFF0000)) 
    \x[8]_i_1 
       (.I0(x_reg[7]),
        .I1(x_reg[8]),
        .I2(x_reg[6]),
        .I3(\x[8]_i_3_n_0 ),
        .I4(decrease_temp_IBUF),
        .I5(x_reg[5]),
        .O(\x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \x[8]_i_2 
       (.I0(x_reg[7]),
        .I1(x_reg[5]),
        .I2(\x[8]_i_3_n_0 ),
        .I3(x_reg[6]),
        .I4(x_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \x[8]_i_3 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .O(\x[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(x_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(x_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(x_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(x_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(x_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[5]_i_1_n_0 ),
        .Q(x_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(x_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(x_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk),
        .CE(\x[8]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(x_reg[8]),
        .R(SR));
endmodule

module transmit_buffer
   (spike_out_OBUF,
    add_mem_out_OBUF,
    storage_CE_advance,
    \offset_reg_reg[1]_0 ,
    \membrane_reg_reg[15]_0 ,
    clk,
    Q,
    reset_module_IBUF,
    update_memory_IBUF,
    E,
    CO,
    \state_reg[0]_0 ,
    \offset_reg_reg[1]_1 ,
    \membrane_reg_reg[15]_1 );
  output spike_out_OBUF;
  output add_mem_out_OBUF;
  output storage_CE_advance;
  output [1:0]\offset_reg_reg[1]_0 ;
  output [15:0]\membrane_reg_reg[15]_0 ;
  input clk;
  input [0:0]Q;
  input reset_module_IBUF;
  input update_memory_IBUF;
  input [0:0]E;
  input [0:0]CO;
  input \state_reg[0]_0 ;
  input [1:0]\offset_reg_reg[1]_1 ;
  input [15:0]\membrane_reg_reg[15]_1 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire add_mem_out_OBUF;
  wire clk;
  wire \cnt_prop[0]_i_1_n_0 ;
  wire \cnt_prop_reg_n_0_[0] ;
  wire [1:0]cnt_upd;
  wire \cnt_upd[0]_i_1_n_0 ;
  wire \cnt_upd[1]_i_1_n_0 ;
  wire [15:0]\membrane_reg_reg[15]_0 ;
  wire [15:0]\membrane_reg_reg[15]_1 ;
  wire new_sample_i_1_n_0;
  wire \offset_reg[1]_i_1_n_0 ;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire [1:0]\offset_reg_reg[1]_1 ;
  wire reset_module_IBUF;
  wire spike_out_OBUF;
  wire spike_reg_i_1_n_0;
  wire spike_reg_i_2_n_0;
  wire spike_reg_i_3_n_0;
  wire [2:0]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state_reg[0]_0 ;
  wire storage_CE_advance;
  wire update_memory_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    add_mem_reg_reg
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(Q),
        .Q(add_mem_out_OBUF),
        .R(spike_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_prop[0]_i_1 
       (.I0(state[0]),
        .I1(\cnt_prop_reg_n_0_[0] ),
        .I2(reset_module_IBUF),
        .I3(state[2]),
        .I4(state[1]),
        .O(\cnt_prop[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_prop[0]_i_1_n_0 ),
        .Q(\cnt_prop_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \cnt_upd[0]_i_1 
       (.I0(cnt_upd[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(reset_module_IBUF),
        .I4(state[2]),
        .O(\cnt_upd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \cnt_upd[1]_i_1 
       (.I0(cnt_upd[1]),
        .I1(cnt_upd[0]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(reset_module_IBUF),
        .I5(state[2]),
        .O(\cnt_upd[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_upd[0]_i_1_n_0 ),
        .Q(cnt_upd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_upd_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_upd[1]_i_1_n_0 ),
        .Q(cnt_upd[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[0] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [0]),
        .Q(\membrane_reg_reg[15]_0 [0]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[10] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [10]),
        .Q(\membrane_reg_reg[15]_0 [10]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[11] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [11]),
        .Q(\membrane_reg_reg[15]_0 [11]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[12] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [12]),
        .Q(\membrane_reg_reg[15]_0 [12]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[13] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [13]),
        .Q(\membrane_reg_reg[15]_0 [13]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[14] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [14]),
        .Q(\membrane_reg_reg[15]_0 [14]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[15] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [15]),
        .Q(\membrane_reg_reg[15]_0 [15]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[1] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [1]),
        .Q(\membrane_reg_reg[15]_0 [1]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[2] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [2]),
        .Q(\membrane_reg_reg[15]_0 [2]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[3] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [3]),
        .Q(\membrane_reg_reg[15]_0 [3]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[4] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [4]),
        .Q(\membrane_reg_reg[15]_0 [4]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[5] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [5]),
        .Q(\membrane_reg_reg[15]_0 [5]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[6] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [6]),
        .Q(\membrane_reg_reg[15]_0 [6]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[7] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [7]),
        .Q(\membrane_reg_reg[15]_0 [7]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[8] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [8]),
        .Q(\membrane_reg_reg[15]_0 [8]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \membrane_reg_reg[9] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\membrane_reg_reg[15]_1 [9]),
        .Q(\membrane_reg_reg[15]_0 [9]),
        .R(spike_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    new_sample_i_1
       (.I0(reset_module_IBUF),
        .O(new_sample_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_sample_reg
       (.C(clk),
        .CE(1'b1),
        .D(new_sample_i_1_n_0),
        .Q(storage_CE_advance),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    \offset_reg[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\offset_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[0] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\offset_reg_reg[1]_1 [0]),
        .Q(\offset_reg_reg[1]_0 [0]),
        .R(spike_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg_reg[1] 
       (.C(clk),
        .CE(\offset_reg[1]_i_1_n_0 ),
        .D(\offset_reg_reg[1]_1 [1]),
        .Q(\offset_reg_reg[1]_0 [1]),
        .R(spike_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    spike_reg_i_1
       (.I0(reset_module_IBUF),
        .I1(update_memory_IBUF),
        .O(spike_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    spike_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(spike_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    spike_reg_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .O(spike_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spike_reg_reg
       (.C(clk),
        .CE(spike_reg_i_2_n_0),
        .D(spike_reg_i_3_n_0),
        .Q(spike_out_OBUF),
        .R(spike_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF04FFFFFF5500)) 
    \state[0]_i_1__0 
       (.I0(state[1]),
        .I1(\state_reg[0]_0 ),
        .I2(state[2]),
        .I3(\state[2]_i_2__0_n_0 ),
        .I4(update_memory_IBUF),
        .I5(state[0]),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF8000)) 
    \state[1]_i_1__0 
       (.I0(E),
        .I1(CO),
        .I2(\offset_reg[1]_i_1_n_0 ),
        .I3(\state[2]_i_2__0_n_0 ),
        .I4(update_memory_IBUF),
        .I5(state[1]),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006222)) 
    \state[2]_i_1__0 
       (.I0(state[2]),
        .I1(\state[2]_i_2__0_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(update_memory_IBUF),
        .I5(reset_module_IBUF),
        .O(\state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFEEEFE)) 
    \state[2]_i_2__0 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\cnt_prop_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(cnt_upd[1]),
        .I5(cnt_upd[0]),
        .O(\state[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(reset_module_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
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
