// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  5 16:13:02 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_scheduler_2_func_synth.v
// Design      : scheduler_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* COUNTER_WIDTH = "40" *) (* GRAPH_WIDTH = "12" *) (* IDX_WIDTH = "4" *) 
(* MEMBRANE_WIDTH = "16" *) (* NEURON_NUM_WIDTH = "2" *) (* NO_CLK_CYCLES_AFTER_UPDATE = "3" *) 
(* SOLUTION_WIDTH = "16" *) (* S_CAPTURE = "2'b10" *) (* S_HALT = "2'b11" *) 
(* S_RESET = "2'b00" *) (* S_WAIT = "2'b01" *) (* TEMP_INC_WIDTH = "16" *) 
(* UNIT_WIDTH = "2" *) 
(* NotValidForBitStream *)
module scheduler_2
   (clk,
    reset,
    halt_scheduler,
    flip,
    unit_number,
    offset,
    membrane,
    add_membrane,
    index_of_neuron_that_fired,
    reset_modules,
    halt_modules,
    update_memories,
    should_increment,
    decrease_temp,
    cuts_best_transmit);
  input clk;
  input reset;
  input halt_scheduler;
  input flip;
  input [1:0]unit_number;
  input [1:0]offset;
  input [15:0]membrane;
  input add_membrane;
  output [3:0]index_of_neuron_that_fired;
  output reset_modules;
  output halt_modules;
  output update_memories;
  output should_increment;
  output decrease_temp;
  output [15:0]cuts_best_transmit;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire add_membrane;
  wire add_membrane_IBUF;
  wire add_r_reg_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cuts_best;
  wire \cuts_best[11]_i_2_n_0 ;
  wire \cuts_best[11]_i_3_n_0 ;
  wire \cuts_best[11]_i_4_n_0 ;
  wire \cuts_best[11]_i_5_n_0 ;
  wire \cuts_best[15]_i_10_n_0 ;
  wire \cuts_best[15]_i_11_n_0 ;
  wire \cuts_best[15]_i_12_n_0 ;
  wire \cuts_best[15]_i_13_n_0 ;
  wire \cuts_best[15]_i_14_n_0 ;
  wire \cuts_best[15]_i_15_n_0 ;
  wire \cuts_best[15]_i_16_n_0 ;
  wire \cuts_best[15]_i_17_n_0 ;
  wire \cuts_best[15]_i_18_n_0 ;
  wire \cuts_best[15]_i_19_n_0 ;
  wire \cuts_best[15]_i_20_n_0 ;
  wire \cuts_best[15]_i_21_n_0 ;
  wire \cuts_best[15]_i_22_n_0 ;
  wire \cuts_best[15]_i_23_n_0 ;
  wire \cuts_best[15]_i_24_n_0 ;
  wire \cuts_best[15]_i_4_n_0 ;
  wire \cuts_best[15]_i_5_n_0 ;
  wire \cuts_best[15]_i_6_n_0 ;
  wire \cuts_best[15]_i_7_n_0 ;
  wire \cuts_best[15]_i_9_n_0 ;
  wire \cuts_best[3]_i_2_n_0 ;
  wire \cuts_best[3]_i_3_n_0 ;
  wire \cuts_best[3]_i_4_n_0 ;
  wire \cuts_best[3]_i_5_n_0 ;
  wire \cuts_best[7]_i_2_n_0 ;
  wire \cuts_best[7]_i_3_n_0 ;
  wire \cuts_best[7]_i_4_n_0 ;
  wire \cuts_best[7]_i_5_n_0 ;
  wire \cuts_best_reg[11]_i_1_n_0 ;
  wire \cuts_best_reg[11]_i_1_n_1 ;
  wire \cuts_best_reg[11]_i_1_n_2 ;
  wire \cuts_best_reg[11]_i_1_n_3 ;
  wire \cuts_best_reg[11]_i_1_n_4 ;
  wire \cuts_best_reg[11]_i_1_n_5 ;
  wire \cuts_best_reg[11]_i_1_n_6 ;
  wire \cuts_best_reg[11]_i_1_n_7 ;
  wire \cuts_best_reg[15]_i_2_n_1 ;
  wire \cuts_best_reg[15]_i_2_n_2 ;
  wire \cuts_best_reg[15]_i_2_n_3 ;
  wire \cuts_best_reg[15]_i_2_n_4 ;
  wire \cuts_best_reg[15]_i_2_n_5 ;
  wire \cuts_best_reg[15]_i_2_n_6 ;
  wire \cuts_best_reg[15]_i_2_n_7 ;
  wire \cuts_best_reg[15]_i_3_n_0 ;
  wire \cuts_best_reg[15]_i_3_n_1 ;
  wire \cuts_best_reg[15]_i_3_n_2 ;
  wire \cuts_best_reg[15]_i_3_n_3 ;
  wire \cuts_best_reg[15]_i_8_n_0 ;
  wire \cuts_best_reg[15]_i_8_n_1 ;
  wire \cuts_best_reg[15]_i_8_n_2 ;
  wire \cuts_best_reg[15]_i_8_n_3 ;
  wire \cuts_best_reg[3]_i_1_n_0 ;
  wire \cuts_best_reg[3]_i_1_n_1 ;
  wire \cuts_best_reg[3]_i_1_n_2 ;
  wire \cuts_best_reg[3]_i_1_n_3 ;
  wire \cuts_best_reg[3]_i_1_n_4 ;
  wire \cuts_best_reg[3]_i_1_n_5 ;
  wire \cuts_best_reg[3]_i_1_n_6 ;
  wire \cuts_best_reg[3]_i_1_n_7 ;
  wire \cuts_best_reg[7]_i_1_n_0 ;
  wire \cuts_best_reg[7]_i_1_n_1 ;
  wire \cuts_best_reg[7]_i_1_n_2 ;
  wire \cuts_best_reg[7]_i_1_n_3 ;
  wire \cuts_best_reg[7]_i_1_n_4 ;
  wire \cuts_best_reg[7]_i_1_n_5 ;
  wire \cuts_best_reg[7]_i_1_n_6 ;
  wire \cuts_best_reg[7]_i_1_n_7 ;
  wire [15:0]cuts_best_transmit;
  wire [15:0]cuts_best_transmit_OBUF;
  wire \cuts_cur[0]_i_2_n_0 ;
  wire \cuts_cur[0]_i_3_n_0 ;
  wire \cuts_cur[0]_i_4_n_0 ;
  wire \cuts_cur[0]_i_5_n_0 ;
  wire \cuts_cur[12]_i_2_n_0 ;
  wire \cuts_cur[12]_i_3_n_0 ;
  wire \cuts_cur[12]_i_4_n_0 ;
  wire \cuts_cur[12]_i_5_n_0 ;
  wire \cuts_cur[4]_i_2_n_0 ;
  wire \cuts_cur[4]_i_3_n_0 ;
  wire \cuts_cur[4]_i_4_n_0 ;
  wire \cuts_cur[4]_i_5_n_0 ;
  wire \cuts_cur[8]_i_2_n_0 ;
  wire \cuts_cur[8]_i_3_n_0 ;
  wire \cuts_cur[8]_i_4_n_0 ;
  wire \cuts_cur[8]_i_5_n_0 ;
  wire [15:0]cuts_cur_reg;
  wire \cuts_cur_reg[0]_i_1_n_0 ;
  wire \cuts_cur_reg[0]_i_1_n_1 ;
  wire \cuts_cur_reg[0]_i_1_n_2 ;
  wire \cuts_cur_reg[0]_i_1_n_3 ;
  wire \cuts_cur_reg[0]_i_1_n_4 ;
  wire \cuts_cur_reg[0]_i_1_n_5 ;
  wire \cuts_cur_reg[0]_i_1_n_6 ;
  wire \cuts_cur_reg[0]_i_1_n_7 ;
  wire \cuts_cur_reg[12]_i_1_n_1 ;
  wire \cuts_cur_reg[12]_i_1_n_2 ;
  wire \cuts_cur_reg[12]_i_1_n_3 ;
  wire \cuts_cur_reg[12]_i_1_n_4 ;
  wire \cuts_cur_reg[12]_i_1_n_5 ;
  wire \cuts_cur_reg[12]_i_1_n_6 ;
  wire \cuts_cur_reg[12]_i_1_n_7 ;
  wire \cuts_cur_reg[4]_i_1_n_0 ;
  wire \cuts_cur_reg[4]_i_1_n_1 ;
  wire \cuts_cur_reg[4]_i_1_n_2 ;
  wire \cuts_cur_reg[4]_i_1_n_3 ;
  wire \cuts_cur_reg[4]_i_1_n_4 ;
  wire \cuts_cur_reg[4]_i_1_n_5 ;
  wire \cuts_cur_reg[4]_i_1_n_6 ;
  wire \cuts_cur_reg[4]_i_1_n_7 ;
  wire \cuts_cur_reg[8]_i_1_n_0 ;
  wire \cuts_cur_reg[8]_i_1_n_1 ;
  wire \cuts_cur_reg[8]_i_1_n_2 ;
  wire \cuts_cur_reg[8]_i_1_n_3 ;
  wire \cuts_cur_reg[8]_i_1_n_4 ;
  wire \cuts_cur_reg[8]_i_1_n_5 ;
  wire \cuts_cur_reg[8]_i_1_n_6 ;
  wire \cuts_cur_reg[8]_i_1_n_7 ;
  wire decrease_temp;
  wire decrease_temp_OBUF;
  wire decrease_temp_OBUF_inst_i_2_n_0;
  wire decrease_temp_OBUF_inst_i_3_n_0;
  wire flip;
  wire flip_IBUF;
  wire \halt_cnt[0]_i_1_n_0 ;
  wire \halt_cnt[1]_i_1_n_0 ;
  wire \halt_cnt_reg_n_0_[0] ;
  wire \halt_cnt_reg_n_0_[1] ;
  wire halt_modules;
  wire halt_modules_OBUF;
  wire halt_scheduler;
  wire [3:0]index_of_neuron_that_fired;
  wire [3:0]index_of_neuron_that_fired_OBUF;
  wire [15:0]mem_r;
  wire [15:0]membrane;
  wire [15:0]membrane_IBUF;
  wire [1:0]offset;
  wire [1:0]offset_IBUF;
  wire reset;
  wire reset_IBUF;
  wire reset_modules;
  wire reset_modules_OBUF;
  wire should_increment;
  wire should_increment_OBUF;
  wire \step_cnt[0]_i_2_n_0 ;
  wire [15:0]step_cnt_reg;
  wire \step_cnt_reg[0]_i_1_n_0 ;
  wire \step_cnt_reg[0]_i_1_n_1 ;
  wire \step_cnt_reg[0]_i_1_n_2 ;
  wire \step_cnt_reg[0]_i_1_n_3 ;
  wire \step_cnt_reg[0]_i_1_n_4 ;
  wire \step_cnt_reg[0]_i_1_n_5 ;
  wire \step_cnt_reg[0]_i_1_n_6 ;
  wire \step_cnt_reg[0]_i_1_n_7 ;
  wire \step_cnt_reg[12]_i_1_n_1 ;
  wire \step_cnt_reg[12]_i_1_n_2 ;
  wire \step_cnt_reg[12]_i_1_n_3 ;
  wire \step_cnt_reg[12]_i_1_n_4 ;
  wire \step_cnt_reg[12]_i_1_n_5 ;
  wire \step_cnt_reg[12]_i_1_n_6 ;
  wire \step_cnt_reg[12]_i_1_n_7 ;
  wire \step_cnt_reg[4]_i_1_n_0 ;
  wire \step_cnt_reg[4]_i_1_n_1 ;
  wire \step_cnt_reg[4]_i_1_n_2 ;
  wire \step_cnt_reg[4]_i_1_n_3 ;
  wire \step_cnt_reg[4]_i_1_n_4 ;
  wire \step_cnt_reg[4]_i_1_n_5 ;
  wire \step_cnt_reg[4]_i_1_n_6 ;
  wire \step_cnt_reg[4]_i_1_n_7 ;
  wire \step_cnt_reg[8]_i_1_n_0 ;
  wire \step_cnt_reg[8]_i_1_n_1 ;
  wire \step_cnt_reg[8]_i_1_n_2 ;
  wire \step_cnt_reg[8]_i_1_n_3 ;
  wire \step_cnt_reg[8]_i_1_n_4 ;
  wire \step_cnt_reg[8]_i_1_n_5 ;
  wire \step_cnt_reg[8]_i_1_n_6 ;
  wire \step_cnt_reg[8]_i_1_n_7 ;
  wire [1:0]unit_number;
  wire [1:0]unit_number_IBUF;
  wire unit_r;
  wire update_memories;
  wire update_memories_OBUF;
  wire [3:3]\NLW_cuts_best_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cuts_best_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_cuts_best_reg[15]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_cuts_cur_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(reset_modules_OBUF),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\halt_cnt_reg_n_0_[1] ),
        .I1(\halt_cnt_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(unit_r),
        .I4(update_memories_OBUF),
        .I5(reset_modules_OBUF),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(reset_modules_OBUF),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(update_memories_OBUF),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(update_memories_OBUF),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(reset_IBUF));
  IBUF add_membrane_IBUF_inst
       (.I(add_membrane),
        .O(add_membrane_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    add_r_i_1
       (.I0(flip_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(unit_r));
  FDRE #(
    .INIT(1'b0)) 
    add_r_reg
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(add_membrane_IBUF),
        .Q(add_r_reg_n_0),
        .R(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[11]_i_2 
       (.I0(cuts_cur_reg[11]),
        .I1(mem_r[11]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[11]_i_3 
       (.I0(cuts_cur_reg[10]),
        .I1(mem_r[10]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[11]_i_4 
       (.I0(cuts_cur_reg[9]),
        .I1(mem_r[9]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[11]_i_5 
       (.I0(cuts_cur_reg[8]),
        .I1(mem_r[8]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cuts_best[15]_i_1 
       (.I0(update_memories_OBUF),
        .I1(\cuts_best_reg[15]_i_3_n_0 ),
        .O(cuts_best));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_10 
       (.I0(\cuts_best_reg[15]_i_2_n_6 ),
        .I1(cuts_best_transmit_OBUF[13]),
        .I2(\cuts_best_reg[15]_i_2_n_7 ),
        .I3(cuts_best_transmit_OBUF[12]),
        .O(\cuts_best[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_11 
       (.I0(\cuts_best_reg[11]_i_1_n_4 ),
        .I1(cuts_best_transmit_OBUF[11]),
        .I2(\cuts_best_reg[11]_i_1_n_5 ),
        .I3(cuts_best_transmit_OBUF[10]),
        .O(\cuts_best[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_12 
       (.I0(\cuts_best_reg[11]_i_1_n_6 ),
        .I1(cuts_best_transmit_OBUF[9]),
        .I2(\cuts_best_reg[11]_i_1_n_7 ),
        .I3(cuts_best_transmit_OBUF[8]),
        .O(\cuts_best[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_13 
       (.I0(cuts_best_transmit_OBUF[15]),
        .I1(\cuts_best_reg[15]_i_2_n_4 ),
        .I2(cuts_best_transmit_OBUF[14]),
        .I3(\cuts_best_reg[15]_i_2_n_5 ),
        .O(\cuts_best[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_14 
       (.I0(cuts_best_transmit_OBUF[13]),
        .I1(\cuts_best_reg[15]_i_2_n_6 ),
        .I2(cuts_best_transmit_OBUF[12]),
        .I3(\cuts_best_reg[15]_i_2_n_7 ),
        .O(\cuts_best[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_15 
       (.I0(cuts_best_transmit_OBUF[11]),
        .I1(\cuts_best_reg[11]_i_1_n_4 ),
        .I2(cuts_best_transmit_OBUF[10]),
        .I3(\cuts_best_reg[11]_i_1_n_5 ),
        .O(\cuts_best[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_16 
       (.I0(cuts_best_transmit_OBUF[9]),
        .I1(\cuts_best_reg[11]_i_1_n_6 ),
        .I2(cuts_best_transmit_OBUF[8]),
        .I3(\cuts_best_reg[11]_i_1_n_7 ),
        .O(\cuts_best[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_17 
       (.I0(\cuts_best_reg[7]_i_1_n_4 ),
        .I1(cuts_best_transmit_OBUF[7]),
        .I2(\cuts_best_reg[7]_i_1_n_5 ),
        .I3(cuts_best_transmit_OBUF[6]),
        .O(\cuts_best[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_18 
       (.I0(\cuts_best_reg[7]_i_1_n_6 ),
        .I1(cuts_best_transmit_OBUF[5]),
        .I2(\cuts_best_reg[7]_i_1_n_7 ),
        .I3(cuts_best_transmit_OBUF[4]),
        .O(\cuts_best[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_19 
       (.I0(\cuts_best_reg[3]_i_1_n_4 ),
        .I1(cuts_best_transmit_OBUF[3]),
        .I2(\cuts_best_reg[3]_i_1_n_5 ),
        .I3(cuts_best_transmit_OBUF[2]),
        .O(\cuts_best[15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_20 
       (.I0(\cuts_best_reg[3]_i_1_n_6 ),
        .I1(cuts_best_transmit_OBUF[1]),
        .I2(\cuts_best_reg[3]_i_1_n_7 ),
        .I3(cuts_best_transmit_OBUF[0]),
        .O(\cuts_best[15]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_21 
       (.I0(cuts_best_transmit_OBUF[7]),
        .I1(\cuts_best_reg[7]_i_1_n_4 ),
        .I2(cuts_best_transmit_OBUF[6]),
        .I3(\cuts_best_reg[7]_i_1_n_5 ),
        .O(\cuts_best[15]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_22 
       (.I0(cuts_best_transmit_OBUF[5]),
        .I1(\cuts_best_reg[7]_i_1_n_6 ),
        .I2(cuts_best_transmit_OBUF[4]),
        .I3(\cuts_best_reg[7]_i_1_n_7 ),
        .O(\cuts_best[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_23 
       (.I0(cuts_best_transmit_OBUF[3]),
        .I1(\cuts_best_reg[3]_i_1_n_4 ),
        .I2(cuts_best_transmit_OBUF[2]),
        .I3(\cuts_best_reg[3]_i_1_n_5 ),
        .O(\cuts_best[15]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cuts_best[15]_i_24 
       (.I0(cuts_best_transmit_OBUF[1]),
        .I1(\cuts_best_reg[3]_i_1_n_6 ),
        .I2(cuts_best_transmit_OBUF[0]),
        .I3(\cuts_best_reg[3]_i_1_n_7 ),
        .O(\cuts_best[15]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[15]_i_4 
       (.I0(add_r_reg_n_0),
        .I1(cuts_cur_reg[15]),
        .I2(mem_r[15]),
        .O(\cuts_best[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[15]_i_5 
       (.I0(cuts_cur_reg[14]),
        .I1(mem_r[14]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[15]_i_6 
       (.I0(cuts_cur_reg[13]),
        .I1(mem_r[13]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[15]_i_7 
       (.I0(cuts_cur_reg[12]),
        .I1(mem_r[12]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cuts_best[15]_i_9 
       (.I0(\cuts_best_reg[15]_i_2_n_4 ),
        .I1(cuts_best_transmit_OBUF[15]),
        .I2(\cuts_best_reg[15]_i_2_n_5 ),
        .I3(cuts_best_transmit_OBUF[14]),
        .O(\cuts_best[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[3]_i_2 
       (.I0(cuts_cur_reg[3]),
        .I1(mem_r[3]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[3]_i_3 
       (.I0(cuts_cur_reg[2]),
        .I1(mem_r[2]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[3]_i_4 
       (.I0(cuts_cur_reg[1]),
        .I1(mem_r[1]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[3]_i_5 
       (.I0(cuts_cur_reg[0]),
        .I1(mem_r[0]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[7]_i_2 
       (.I0(cuts_cur_reg[7]),
        .I1(mem_r[7]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[7]_i_3 
       (.I0(cuts_cur_reg[6]),
        .I1(mem_r[6]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[7]_i_4 
       (.I0(cuts_cur_reg[5]),
        .I1(mem_r[5]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_best[7]_i_5 
       (.I0(cuts_cur_reg[4]),
        .I1(mem_r[4]),
        .I2(add_r_reg_n_0),
        .O(\cuts_best[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[3]_i_1_n_7 ),
        .Q(cuts_best_transmit_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[11]_i_1_n_5 ),
        .Q(cuts_best_transmit_OBUF[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[11]_i_1_n_4 ),
        .Q(cuts_best_transmit_OBUF[11]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[11]_i_1 
       (.CI(\cuts_best_reg[7]_i_1_n_0 ),
        .CO({\cuts_best_reg[11]_i_1_n_0 ,\cuts_best_reg[11]_i_1_n_1 ,\cuts_best_reg[11]_i_1_n_2 ,\cuts_best_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur_reg[11:8]),
        .O({\cuts_best_reg[11]_i_1_n_4 ,\cuts_best_reg[11]_i_1_n_5 ,\cuts_best_reg[11]_i_1_n_6 ,\cuts_best_reg[11]_i_1_n_7 }),
        .S({\cuts_best[11]_i_2_n_0 ,\cuts_best[11]_i_3_n_0 ,\cuts_best[11]_i_4_n_0 ,\cuts_best[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[15]_i_2_n_7 ),
        .Q(cuts_best_transmit_OBUF[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[15]_i_2_n_6 ),
        .Q(cuts_best_transmit_OBUF[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[15]_i_2_n_5 ),
        .Q(cuts_best_transmit_OBUF[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[15]_i_2_n_4 ),
        .Q(cuts_best_transmit_OBUF[15]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[15]_i_2 
       (.CI(\cuts_best_reg[11]_i_1_n_0 ),
        .CO({\NLW_cuts_best_reg[15]_i_2_CO_UNCONNECTED [3],\cuts_best_reg[15]_i_2_n_1 ,\cuts_best_reg[15]_i_2_n_2 ,\cuts_best_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,cuts_cur_reg[14:12]}),
        .O({\cuts_best_reg[15]_i_2_n_4 ,\cuts_best_reg[15]_i_2_n_5 ,\cuts_best_reg[15]_i_2_n_6 ,\cuts_best_reg[15]_i_2_n_7 }),
        .S({\cuts_best[15]_i_4_n_0 ,\cuts_best[15]_i_5_n_0 ,\cuts_best[15]_i_6_n_0 ,\cuts_best[15]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[15]_i_3 
       (.CI(\cuts_best_reg[15]_i_8_n_0 ),
        .CO({\cuts_best_reg[15]_i_3_n_0 ,\cuts_best_reg[15]_i_3_n_1 ,\cuts_best_reg[15]_i_3_n_2 ,\cuts_best_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\cuts_best[15]_i_9_n_0 ,\cuts_best[15]_i_10_n_0 ,\cuts_best[15]_i_11_n_0 ,\cuts_best[15]_i_12_n_0 }),
        .O(\NLW_cuts_best_reg[15]_i_3_O_UNCONNECTED [3:0]),
        .S({\cuts_best[15]_i_13_n_0 ,\cuts_best[15]_i_14_n_0 ,\cuts_best[15]_i_15_n_0 ,\cuts_best[15]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[15]_i_8 
       (.CI(1'b0),
        .CO({\cuts_best_reg[15]_i_8_n_0 ,\cuts_best_reg[15]_i_8_n_1 ,\cuts_best_reg[15]_i_8_n_2 ,\cuts_best_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\cuts_best[15]_i_17_n_0 ,\cuts_best[15]_i_18_n_0 ,\cuts_best[15]_i_19_n_0 ,\cuts_best[15]_i_20_n_0 }),
        .O(\NLW_cuts_best_reg[15]_i_8_O_UNCONNECTED [3:0]),
        .S({\cuts_best[15]_i_21_n_0 ,\cuts_best[15]_i_22_n_0 ,\cuts_best[15]_i_23_n_0 ,\cuts_best[15]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[3]_i_1_n_6 ),
        .Q(cuts_best_transmit_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[3]_i_1_n_5 ),
        .Q(cuts_best_transmit_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[3]_i_1_n_4 ),
        .Q(cuts_best_transmit_OBUF[3]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\cuts_best_reg[3]_i_1_n_0 ,\cuts_best_reg[3]_i_1_n_1 ,\cuts_best_reg[3]_i_1_n_2 ,\cuts_best_reg[3]_i_1_n_3 }),
        .CYINIT(add_r_reg_n_0),
        .DI(cuts_cur_reg[3:0]),
        .O({\cuts_best_reg[3]_i_1_n_4 ,\cuts_best_reg[3]_i_1_n_5 ,\cuts_best_reg[3]_i_1_n_6 ,\cuts_best_reg[3]_i_1_n_7 }),
        .S({\cuts_best[3]_i_2_n_0 ,\cuts_best[3]_i_3_n_0 ,\cuts_best[3]_i_4_n_0 ,\cuts_best[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[7]_i_1_n_7 ),
        .Q(cuts_best_transmit_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[7]_i_1_n_6 ),
        .Q(cuts_best_transmit_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[7]_i_1_n_5 ),
        .Q(cuts_best_transmit_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[7]_i_1_n_4 ),
        .Q(cuts_best_transmit_OBUF[7]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cuts_best_reg[7]_i_1 
       (.CI(\cuts_best_reg[3]_i_1_n_0 ),
        .CO({\cuts_best_reg[7]_i_1_n_0 ,\cuts_best_reg[7]_i_1_n_1 ,\cuts_best_reg[7]_i_1_n_2 ,\cuts_best_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur_reg[7:4]),
        .O({\cuts_best_reg[7]_i_1_n_4 ,\cuts_best_reg[7]_i_1_n_5 ,\cuts_best_reg[7]_i_1_n_6 ,\cuts_best_reg[7]_i_1_n_7 }),
        .S({\cuts_best[7]_i_2_n_0 ,\cuts_best[7]_i_3_n_0 ,\cuts_best[7]_i_4_n_0 ,\cuts_best[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[11]_i_1_n_7 ),
        .Q(cuts_best_transmit_OBUF[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_best_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(cuts_best),
        .D(\cuts_best_reg[11]_i_1_n_6 ),
        .Q(cuts_best_transmit_OBUF[9]),
        .R(reset_IBUF));
  OBUF \cuts_best_transmit_OBUF[0]_inst 
       (.I(cuts_best_transmit_OBUF[0]),
        .O(cuts_best_transmit[0]));
  OBUF \cuts_best_transmit_OBUF[10]_inst 
       (.I(cuts_best_transmit_OBUF[10]),
        .O(cuts_best_transmit[10]));
  OBUF \cuts_best_transmit_OBUF[11]_inst 
       (.I(cuts_best_transmit_OBUF[11]),
        .O(cuts_best_transmit[11]));
  OBUF \cuts_best_transmit_OBUF[12]_inst 
       (.I(cuts_best_transmit_OBUF[12]),
        .O(cuts_best_transmit[12]));
  OBUF \cuts_best_transmit_OBUF[13]_inst 
       (.I(cuts_best_transmit_OBUF[13]),
        .O(cuts_best_transmit[13]));
  OBUF \cuts_best_transmit_OBUF[14]_inst 
       (.I(cuts_best_transmit_OBUF[14]),
        .O(cuts_best_transmit[14]));
  OBUF \cuts_best_transmit_OBUF[15]_inst 
       (.I(cuts_best_transmit_OBUF[15]),
        .O(cuts_best_transmit[15]));
  OBUF \cuts_best_transmit_OBUF[1]_inst 
       (.I(cuts_best_transmit_OBUF[1]),
        .O(cuts_best_transmit[1]));
  OBUF \cuts_best_transmit_OBUF[2]_inst 
       (.I(cuts_best_transmit_OBUF[2]),
        .O(cuts_best_transmit[2]));
  OBUF \cuts_best_transmit_OBUF[3]_inst 
       (.I(cuts_best_transmit_OBUF[3]),
        .O(cuts_best_transmit[3]));
  OBUF \cuts_best_transmit_OBUF[4]_inst 
       (.I(cuts_best_transmit_OBUF[4]),
        .O(cuts_best_transmit[4]));
  OBUF \cuts_best_transmit_OBUF[5]_inst 
       (.I(cuts_best_transmit_OBUF[5]),
        .O(cuts_best_transmit[5]));
  OBUF \cuts_best_transmit_OBUF[6]_inst 
       (.I(cuts_best_transmit_OBUF[6]),
        .O(cuts_best_transmit[6]));
  OBUF \cuts_best_transmit_OBUF[7]_inst 
       (.I(cuts_best_transmit_OBUF[7]),
        .O(cuts_best_transmit[7]));
  OBUF \cuts_best_transmit_OBUF[8]_inst 
       (.I(cuts_best_transmit_OBUF[8]),
        .O(cuts_best_transmit[8]));
  OBUF \cuts_best_transmit_OBUF[9]_inst 
       (.I(cuts_best_transmit_OBUF[9]),
        .O(cuts_best_transmit[9]));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[0]_i_2 
       (.I0(mem_r[3]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[3]),
        .O(\cuts_cur[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[0]_i_3 
       (.I0(mem_r[2]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[2]),
        .O(\cuts_cur[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[0]_i_4 
       (.I0(mem_r[1]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[1]),
        .O(\cuts_cur[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[0]_i_5 
       (.I0(mem_r[0]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[0]),
        .O(\cuts_cur[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[12]_i_2 
       (.I0(add_r_reg_n_0),
        .I1(cuts_cur_reg[15]),
        .I2(mem_r[15]),
        .O(\cuts_cur[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[12]_i_3 
       (.I0(mem_r[14]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[14]),
        .O(\cuts_cur[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[12]_i_4 
       (.I0(mem_r[13]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[13]),
        .O(\cuts_cur[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[12]_i_5 
       (.I0(mem_r[12]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[12]),
        .O(\cuts_cur[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[4]_i_2 
       (.I0(mem_r[7]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[7]),
        .O(\cuts_cur[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[4]_i_3 
       (.I0(mem_r[6]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[6]),
        .O(\cuts_cur[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[4]_i_4 
       (.I0(mem_r[5]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[5]),
        .O(\cuts_cur[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[4]_i_5 
       (.I0(mem_r[4]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[4]),
        .O(\cuts_cur[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[8]_i_2 
       (.I0(mem_r[11]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[11]),
        .O(\cuts_cur[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[8]_i_3 
       (.I0(mem_r[10]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[10]),
        .O(\cuts_cur[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[8]_i_4 
       (.I0(mem_r[9]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[9]),
        .O(\cuts_cur[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cuts_cur[8]_i_5 
       (.I0(mem_r[8]),
        .I1(add_r_reg_n_0),
        .I2(cuts_cur_reg[8]),
        .O(\cuts_cur[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[0]_i_1_n_7 ),
        .Q(cuts_cur_reg[0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cuts_cur_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cuts_cur_reg[0]_i_1_n_0 ,\cuts_cur_reg[0]_i_1_n_1 ,\cuts_cur_reg[0]_i_1_n_2 ,\cuts_cur_reg[0]_i_1_n_3 }),
        .CYINIT(add_r_reg_n_0),
        .DI(cuts_cur_reg[3:0]),
        .O({\cuts_cur_reg[0]_i_1_n_4 ,\cuts_cur_reg[0]_i_1_n_5 ,\cuts_cur_reg[0]_i_1_n_6 ,\cuts_cur_reg[0]_i_1_n_7 }),
        .S({\cuts_cur[0]_i_2_n_0 ,\cuts_cur[0]_i_3_n_0 ,\cuts_cur[0]_i_4_n_0 ,\cuts_cur[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[8]_i_1_n_5 ),
        .Q(cuts_cur_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[8]_i_1_n_4 ),
        .Q(cuts_cur_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[12]_i_1_n_7 ),
        .Q(cuts_cur_reg[12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cuts_cur_reg[12]_i_1 
       (.CI(\cuts_cur_reg[8]_i_1_n_0 ),
        .CO({\NLW_cuts_cur_reg[12]_i_1_CO_UNCONNECTED [3],\cuts_cur_reg[12]_i_1_n_1 ,\cuts_cur_reg[12]_i_1_n_2 ,\cuts_cur_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,cuts_cur_reg[14:12]}),
        .O({\cuts_cur_reg[12]_i_1_n_4 ,\cuts_cur_reg[12]_i_1_n_5 ,\cuts_cur_reg[12]_i_1_n_6 ,\cuts_cur_reg[12]_i_1_n_7 }),
        .S({\cuts_cur[12]_i_2_n_0 ,\cuts_cur[12]_i_3_n_0 ,\cuts_cur[12]_i_4_n_0 ,\cuts_cur[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[12]_i_1_n_6 ),
        .Q(cuts_cur_reg[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[12]_i_1_n_5 ),
        .Q(cuts_cur_reg[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[12]_i_1_n_4 ),
        .Q(cuts_cur_reg[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[0]_i_1_n_6 ),
        .Q(cuts_cur_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[0]_i_1_n_5 ),
        .Q(cuts_cur_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[0]_i_1_n_4 ),
        .Q(cuts_cur_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[4]_i_1_n_7 ),
        .Q(cuts_cur_reg[4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cuts_cur_reg[4]_i_1 
       (.CI(\cuts_cur_reg[0]_i_1_n_0 ),
        .CO({\cuts_cur_reg[4]_i_1_n_0 ,\cuts_cur_reg[4]_i_1_n_1 ,\cuts_cur_reg[4]_i_1_n_2 ,\cuts_cur_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur_reg[7:4]),
        .O({\cuts_cur_reg[4]_i_1_n_4 ,\cuts_cur_reg[4]_i_1_n_5 ,\cuts_cur_reg[4]_i_1_n_6 ,\cuts_cur_reg[4]_i_1_n_7 }),
        .S({\cuts_cur[4]_i_2_n_0 ,\cuts_cur[4]_i_3_n_0 ,\cuts_cur[4]_i_4_n_0 ,\cuts_cur[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[4]_i_1_n_6 ),
        .Q(cuts_cur_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[4]_i_1_n_5 ),
        .Q(cuts_cur_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[4]_i_1_n_4 ),
        .Q(cuts_cur_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[8]_i_1_n_7 ),
        .Q(cuts_cur_reg[8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cuts_cur_reg[8]_i_1 
       (.CI(\cuts_cur_reg[4]_i_1_n_0 ),
        .CO({\cuts_cur_reg[8]_i_1_n_0 ,\cuts_cur_reg[8]_i_1_n_1 ,\cuts_cur_reg[8]_i_1_n_2 ,\cuts_cur_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(cuts_cur_reg[11:8]),
        .O({\cuts_cur_reg[8]_i_1_n_4 ,\cuts_cur_reg[8]_i_1_n_5 ,\cuts_cur_reg[8]_i_1_n_6 ,\cuts_cur_reg[8]_i_1_n_7 }),
        .S({\cuts_cur[8]_i_2_n_0 ,\cuts_cur[8]_i_3_n_0 ,\cuts_cur[8]_i_4_n_0 ,\cuts_cur[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cuts_cur_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(update_memories_OBUF),
        .D(\cuts_cur_reg[8]_i_1_n_6 ),
        .Q(cuts_cur_reg[9]),
        .R(reset_IBUF));
  OBUF decrease_temp_OBUF_inst
       (.I(decrease_temp_OBUF),
        .O(decrease_temp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    decrease_temp_OBUF_inst_i_1
       (.I0(decrease_temp_OBUF_inst_i_2_n_0),
        .I1(step_cnt_reg[1]),
        .I2(step_cnt_reg[0]),
        .I3(step_cnt_reg[3]),
        .I4(step_cnt_reg[2]),
        .I5(decrease_temp_OBUF_inst_i_3_n_0),
        .O(decrease_temp_OBUF));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    decrease_temp_OBUF_inst_i_2
       (.I0(step_cnt_reg[12]),
        .I1(step_cnt_reg[13]),
        .I2(step_cnt_reg[10]),
        .I3(step_cnt_reg[11]),
        .I4(step_cnt_reg[15]),
        .I5(step_cnt_reg[14]),
        .O(decrease_temp_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    decrease_temp_OBUF_inst_i_3
       (.I0(step_cnt_reg[6]),
        .I1(step_cnt_reg[7]),
        .I2(step_cnt_reg[4]),
        .I3(step_cnt_reg[5]),
        .I4(step_cnt_reg[9]),
        .I5(step_cnt_reg[8]),
        .O(decrease_temp_OBUF_inst_i_3_n_0));
  IBUF flip_IBUF_inst
       (.I(flip),
        .O(flip_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \halt_cnt[0]_i_1 
       (.I0(update_memories_OBUF),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\halt_cnt_reg_n_0_[0] ),
        .O(\halt_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h53A0)) 
    \halt_cnt[1]_i_1 
       (.I0(\halt_cnt_reg_n_0_[0] ),
        .I1(update_memories_OBUF),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\halt_cnt_reg_n_0_[1] ),
        .O(\halt_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \halt_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_cnt[0]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \halt_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\halt_cnt[1]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[1] ),
        .R(reset_IBUF));
  OBUF halt_modules_OBUF_inst
       (.I(halt_modules_OBUF),
        .O(halt_modules));
  IBUF halt_scheduler_IBUF_inst
       (.I(halt_scheduler),
        .O(halt_modules_OBUF));
  OBUF \index_of_neuron_that_fired_OBUF[0]_inst 
       (.I(index_of_neuron_that_fired_OBUF[0]),
        .O(index_of_neuron_that_fired[0]));
  OBUF \index_of_neuron_that_fired_OBUF[1]_inst 
       (.I(index_of_neuron_that_fired_OBUF[1]),
        .O(index_of_neuron_that_fired[1]));
  OBUF \index_of_neuron_that_fired_OBUF[2]_inst 
       (.I(index_of_neuron_that_fired_OBUF[2]),
        .O(index_of_neuron_that_fired[2]));
  OBUF \index_of_neuron_that_fired_OBUF[3]_inst 
       (.I(index_of_neuron_that_fired_OBUF[3]),
        .O(index_of_neuron_that_fired[3]));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[0]),
        .Q(mem_r[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[10]),
        .Q(mem_r[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[11]),
        .Q(mem_r[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[12]),
        .Q(mem_r[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[13]),
        .Q(mem_r[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[14]),
        .Q(mem_r[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[15]),
        .Q(mem_r[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[1]),
        .Q(mem_r[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[2]),
        .Q(mem_r[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[3]),
        .Q(mem_r[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[4]),
        .Q(mem_r[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[5]),
        .Q(mem_r[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[6]),
        .Q(mem_r[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[7]),
        .Q(mem_r[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[8]),
        .Q(mem_r[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(membrane_IBUF[9]),
        .Q(mem_r[9]),
        .R(reset_IBUF));
  IBUF \membrane_IBUF[0]_inst 
       (.I(membrane[0]),
        .O(membrane_IBUF[0]));
  IBUF \membrane_IBUF[10]_inst 
       (.I(membrane[10]),
        .O(membrane_IBUF[10]));
  IBUF \membrane_IBUF[11]_inst 
       (.I(membrane[11]),
        .O(membrane_IBUF[11]));
  IBUF \membrane_IBUF[12]_inst 
       (.I(membrane[12]),
        .O(membrane_IBUF[12]));
  IBUF \membrane_IBUF[13]_inst 
       (.I(membrane[13]),
        .O(membrane_IBUF[13]));
  IBUF \membrane_IBUF[14]_inst 
       (.I(membrane[14]),
        .O(membrane_IBUF[14]));
  IBUF \membrane_IBUF[15]_inst 
       (.I(membrane[15]),
        .O(membrane_IBUF[15]));
  IBUF \membrane_IBUF[1]_inst 
       (.I(membrane[1]),
        .O(membrane_IBUF[1]));
  IBUF \membrane_IBUF[2]_inst 
       (.I(membrane[2]),
        .O(membrane_IBUF[2]));
  IBUF \membrane_IBUF[3]_inst 
       (.I(membrane[3]),
        .O(membrane_IBUF[3]));
  IBUF \membrane_IBUF[4]_inst 
       (.I(membrane[4]),
        .O(membrane_IBUF[4]));
  IBUF \membrane_IBUF[5]_inst 
       (.I(membrane[5]),
        .O(membrane_IBUF[5]));
  IBUF \membrane_IBUF[6]_inst 
       (.I(membrane[6]),
        .O(membrane_IBUF[6]));
  IBUF \membrane_IBUF[7]_inst 
       (.I(membrane[7]),
        .O(membrane_IBUF[7]));
  IBUF \membrane_IBUF[8]_inst 
       (.I(membrane[8]),
        .O(membrane_IBUF[8]));
  IBUF \membrane_IBUF[9]_inst 
       (.I(membrane[9]),
        .O(membrane_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \off_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(offset_IBUF[0]),
        .Q(index_of_neuron_that_fired_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \off_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(offset_IBUF[1]),
        .Q(index_of_neuron_that_fired_OBUF[1]),
        .R(reset_IBUF));
  IBUF \offset_IBUF[0]_inst 
       (.I(offset[0]),
        .O(offset_IBUF[0]));
  IBUF \offset_IBUF[1]_inst 
       (.I(offset[1]),
        .O(offset_IBUF[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF reset_modules_OBUF_inst
       (.I(reset_modules_OBUF),
        .O(reset_modules));
  OBUF should_increment_OBUF_inst
       (.I(should_increment_OBUF),
        .O(should_increment));
  LUT2 #(
    .INIT(4'h8)) 
    should_increment_OBUF_inst_i_1
       (.I0(update_memories_OBUF),
        .I1(add_r_reg_n_0),
        .O(should_increment_OBUF));
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
        .R(reset_IBUF));
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
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_4 ),
        .Q(step_cnt_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[12]_i_1_n_7 ),
        .Q(step_cnt_reg[12]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \step_cnt_reg[12]_i_1 
       (.CI(\step_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_step_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\step_cnt_reg[12]_i_1_n_1 ,\step_cnt_reg[12]_i_1_n_2 ,\step_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_cnt_reg[12]_i_1_n_4 ,\step_cnt_reg[12]_i_1_n_5 ,\step_cnt_reg[12]_i_1_n_6 ,\step_cnt_reg[12]_i_1_n_7 }),
        .S(step_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[12]_i_1_n_6 ),
        .Q(step_cnt_reg[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[12]_i_1_n_5 ),
        .Q(step_cnt_reg[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[12]_i_1_n_4 ),
        .Q(step_cnt_reg[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_6 ),
        .Q(step_cnt_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_5 ),
        .Q(step_cnt_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_4 ),
        .Q(step_cnt_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_7 ),
        .Q(step_cnt_reg[4]),
        .R(reset_IBUF));
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
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_5 ),
        .Q(step_cnt_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_4 ),
        .Q(step_cnt_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_7 ),
        .Q(step_cnt_reg[8]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \step_cnt_reg[8]_i_1 
       (.CI(\step_cnt_reg[4]_i_1_n_0 ),
        .CO({\step_cnt_reg[8]_i_1_n_0 ,\step_cnt_reg[8]_i_1_n_1 ,\step_cnt_reg[8]_i_1_n_2 ,\step_cnt_reg[8]_i_1_n_3 }),
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
        .R(reset_IBUF));
  IBUF \unit_number_IBUF[0]_inst 
       (.I(unit_number[0]),
        .O(unit_number_IBUF[0]));
  IBUF \unit_number_IBUF[1]_inst 
       (.I(unit_number[1]),
        .O(unit_number_IBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \unit_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(unit_number_IBUF[0]),
        .Q(index_of_neuron_that_fired_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \unit_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(unit_r),
        .D(unit_number_IBUF[1]),
        .Q(index_of_neuron_that_fired_OBUF[3]),
        .R(reset_IBUF));
  OBUF update_memories_OBUF_inst
       (.I(update_memories_OBUF),
        .O(update_memories));
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
