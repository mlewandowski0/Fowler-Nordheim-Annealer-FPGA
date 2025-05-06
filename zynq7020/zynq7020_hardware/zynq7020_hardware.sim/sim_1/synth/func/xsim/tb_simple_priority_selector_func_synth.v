// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  5 13:44:19 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_simple_priority_selector_func_synth.v
// Design      : simple_priority_selector
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* MEMBRANE_WIDTH = "16" *) (* NEURON_NUM_WIDTH = "2" *) (* UNITS = "4" *) 
(* UNIT_WIDTH = "2" *) 
(* NotValidForBitStream *)
module simple_priority_selector
   (spikes,
    all_unit_numbers,
    offsets,
    all_membranes,
    add_mems,
    spiked,
    unit_numb,
    offset,
    membrane,
    add_mem);
  input [3:0]spikes;
  input [7:0]all_unit_numbers;
  input [7:0]offsets;
  input [63:0]all_membranes;
  input [3:0]add_mems;
  output spiked;
  output [1:0]unit_numb;
  output [1:0]offset;
  output [15:0]membrane;
  output add_mem;

  wire add_mem;
  wire add_mem_OBUF;
  wire add_mem_OBUF_inst_i_2_n_0;
  wire [3:0]add_mems;
  wire [3:0]add_mems_IBUF;
  wire [63:0]all_membranes;
  wire [63:0]all_membranes_IBUF;
  wire [7:0]all_unit_numbers;
  wire [7:0]all_unit_numbers_IBUF;
  wire [15:0]membrane;
  wire [15:0]membrane_OBUF;
  wire \membrane_OBUF[0]_inst_i_2_n_0 ;
  wire \membrane_OBUF[10]_inst_i_2_n_0 ;
  wire \membrane_OBUF[11]_inst_i_2_n_0 ;
  wire \membrane_OBUF[12]_inst_i_2_n_0 ;
  wire \membrane_OBUF[13]_inst_i_2_n_0 ;
  wire \membrane_OBUF[14]_inst_i_2_n_0 ;
  wire \membrane_OBUF[15]_inst_i_2_n_0 ;
  wire \membrane_OBUF[1]_inst_i_2_n_0 ;
  wire \membrane_OBUF[2]_inst_i_2_n_0 ;
  wire \membrane_OBUF[3]_inst_i_2_n_0 ;
  wire \membrane_OBUF[4]_inst_i_2_n_0 ;
  wire \membrane_OBUF[5]_inst_i_2_n_0 ;
  wire \membrane_OBUF[6]_inst_i_2_n_0 ;
  wire \membrane_OBUF[7]_inst_i_2_n_0 ;
  wire \membrane_OBUF[8]_inst_i_2_n_0 ;
  wire \membrane_OBUF[9]_inst_i_2_n_0 ;
  wire [1:0]offset;
  wire [1:0]offset_OBUF;
  wire \offset_OBUF[0]_inst_i_2_n_0 ;
  wire \offset_OBUF[1]_inst_i_2_n_0 ;
  wire [7:0]offsets;
  wire [7:0]offsets_IBUF;
  wire spiked;
  wire spiked_OBUF;
  wire [3:0]spikes;
  wire [3:0]spikes_IBUF;
  wire [1:0]unit_numb;
  wire [1:0]unit_numb_OBUF;
  wire \unit_numb_OBUF[0]_inst_i_2_n_0 ;
  wire \unit_numb_OBUF[1]_inst_i_2_n_0 ;

  OBUF add_mem_OBUF_inst
       (.I(add_mem_OBUF),
        .O(add_mem));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    add_mem_OBUF_inst_i_1
       (.I0(add_mems_IBUF[3]),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(add_mem_OBUF_inst_i_2_n_0),
        .O(add_mem_OBUF));
  LUT6 #(
    .INIT(64'hFFF8FF0800F80008)) 
    add_mem_OBUF_inst_i_2
       (.I0(add_mems_IBUF[2]),
        .I1(spikes_IBUF[2]),
        .I2(spikes_IBUF[1]),
        .I3(spikes_IBUF[0]),
        .I4(add_mems_IBUF[1]),
        .I5(add_mems_IBUF[0]),
        .O(add_mem_OBUF_inst_i_2_n_0));
  IBUF \add_mems_IBUF[0]_inst 
       (.I(add_mems[0]),
        .O(add_mems_IBUF[0]));
  IBUF \add_mems_IBUF[1]_inst 
       (.I(add_mems[1]),
        .O(add_mems_IBUF[1]));
  IBUF \add_mems_IBUF[2]_inst 
       (.I(add_mems[2]),
        .O(add_mems_IBUF[2]));
  IBUF \add_mems_IBUF[3]_inst 
       (.I(add_mems[3]),
        .O(add_mems_IBUF[3]));
  IBUF \all_membranes_IBUF[0]_inst 
       (.I(all_membranes[0]),
        .O(all_membranes_IBUF[0]));
  IBUF \all_membranes_IBUF[10]_inst 
       (.I(all_membranes[10]),
        .O(all_membranes_IBUF[10]));
  IBUF \all_membranes_IBUF[11]_inst 
       (.I(all_membranes[11]),
        .O(all_membranes_IBUF[11]));
  IBUF \all_membranes_IBUF[12]_inst 
       (.I(all_membranes[12]),
        .O(all_membranes_IBUF[12]));
  IBUF \all_membranes_IBUF[13]_inst 
       (.I(all_membranes[13]),
        .O(all_membranes_IBUF[13]));
  IBUF \all_membranes_IBUF[14]_inst 
       (.I(all_membranes[14]),
        .O(all_membranes_IBUF[14]));
  IBUF \all_membranes_IBUF[15]_inst 
       (.I(all_membranes[15]),
        .O(all_membranes_IBUF[15]));
  IBUF \all_membranes_IBUF[16]_inst 
       (.I(all_membranes[16]),
        .O(all_membranes_IBUF[16]));
  IBUF \all_membranes_IBUF[17]_inst 
       (.I(all_membranes[17]),
        .O(all_membranes_IBUF[17]));
  IBUF \all_membranes_IBUF[18]_inst 
       (.I(all_membranes[18]),
        .O(all_membranes_IBUF[18]));
  IBUF \all_membranes_IBUF[19]_inst 
       (.I(all_membranes[19]),
        .O(all_membranes_IBUF[19]));
  IBUF \all_membranes_IBUF[1]_inst 
       (.I(all_membranes[1]),
        .O(all_membranes_IBUF[1]));
  IBUF \all_membranes_IBUF[20]_inst 
       (.I(all_membranes[20]),
        .O(all_membranes_IBUF[20]));
  IBUF \all_membranes_IBUF[21]_inst 
       (.I(all_membranes[21]),
        .O(all_membranes_IBUF[21]));
  IBUF \all_membranes_IBUF[22]_inst 
       (.I(all_membranes[22]),
        .O(all_membranes_IBUF[22]));
  IBUF \all_membranes_IBUF[23]_inst 
       (.I(all_membranes[23]),
        .O(all_membranes_IBUF[23]));
  IBUF \all_membranes_IBUF[24]_inst 
       (.I(all_membranes[24]),
        .O(all_membranes_IBUF[24]));
  IBUF \all_membranes_IBUF[25]_inst 
       (.I(all_membranes[25]),
        .O(all_membranes_IBUF[25]));
  IBUF \all_membranes_IBUF[26]_inst 
       (.I(all_membranes[26]),
        .O(all_membranes_IBUF[26]));
  IBUF \all_membranes_IBUF[27]_inst 
       (.I(all_membranes[27]),
        .O(all_membranes_IBUF[27]));
  IBUF \all_membranes_IBUF[28]_inst 
       (.I(all_membranes[28]),
        .O(all_membranes_IBUF[28]));
  IBUF \all_membranes_IBUF[29]_inst 
       (.I(all_membranes[29]),
        .O(all_membranes_IBUF[29]));
  IBUF \all_membranes_IBUF[2]_inst 
       (.I(all_membranes[2]),
        .O(all_membranes_IBUF[2]));
  IBUF \all_membranes_IBUF[30]_inst 
       (.I(all_membranes[30]),
        .O(all_membranes_IBUF[30]));
  IBUF \all_membranes_IBUF[31]_inst 
       (.I(all_membranes[31]),
        .O(all_membranes_IBUF[31]));
  IBUF \all_membranes_IBUF[32]_inst 
       (.I(all_membranes[32]),
        .O(all_membranes_IBUF[32]));
  IBUF \all_membranes_IBUF[33]_inst 
       (.I(all_membranes[33]),
        .O(all_membranes_IBUF[33]));
  IBUF \all_membranes_IBUF[34]_inst 
       (.I(all_membranes[34]),
        .O(all_membranes_IBUF[34]));
  IBUF \all_membranes_IBUF[35]_inst 
       (.I(all_membranes[35]),
        .O(all_membranes_IBUF[35]));
  IBUF \all_membranes_IBUF[36]_inst 
       (.I(all_membranes[36]),
        .O(all_membranes_IBUF[36]));
  IBUF \all_membranes_IBUF[37]_inst 
       (.I(all_membranes[37]),
        .O(all_membranes_IBUF[37]));
  IBUF \all_membranes_IBUF[38]_inst 
       (.I(all_membranes[38]),
        .O(all_membranes_IBUF[38]));
  IBUF \all_membranes_IBUF[39]_inst 
       (.I(all_membranes[39]),
        .O(all_membranes_IBUF[39]));
  IBUF \all_membranes_IBUF[3]_inst 
       (.I(all_membranes[3]),
        .O(all_membranes_IBUF[3]));
  IBUF \all_membranes_IBUF[40]_inst 
       (.I(all_membranes[40]),
        .O(all_membranes_IBUF[40]));
  IBUF \all_membranes_IBUF[41]_inst 
       (.I(all_membranes[41]),
        .O(all_membranes_IBUF[41]));
  IBUF \all_membranes_IBUF[42]_inst 
       (.I(all_membranes[42]),
        .O(all_membranes_IBUF[42]));
  IBUF \all_membranes_IBUF[43]_inst 
       (.I(all_membranes[43]),
        .O(all_membranes_IBUF[43]));
  IBUF \all_membranes_IBUF[44]_inst 
       (.I(all_membranes[44]),
        .O(all_membranes_IBUF[44]));
  IBUF \all_membranes_IBUF[45]_inst 
       (.I(all_membranes[45]),
        .O(all_membranes_IBUF[45]));
  IBUF \all_membranes_IBUF[46]_inst 
       (.I(all_membranes[46]),
        .O(all_membranes_IBUF[46]));
  IBUF \all_membranes_IBUF[47]_inst 
       (.I(all_membranes[47]),
        .O(all_membranes_IBUF[47]));
  IBUF \all_membranes_IBUF[48]_inst 
       (.I(all_membranes[48]),
        .O(all_membranes_IBUF[48]));
  IBUF \all_membranes_IBUF[49]_inst 
       (.I(all_membranes[49]),
        .O(all_membranes_IBUF[49]));
  IBUF \all_membranes_IBUF[4]_inst 
       (.I(all_membranes[4]),
        .O(all_membranes_IBUF[4]));
  IBUF \all_membranes_IBUF[50]_inst 
       (.I(all_membranes[50]),
        .O(all_membranes_IBUF[50]));
  IBUF \all_membranes_IBUF[51]_inst 
       (.I(all_membranes[51]),
        .O(all_membranes_IBUF[51]));
  IBUF \all_membranes_IBUF[52]_inst 
       (.I(all_membranes[52]),
        .O(all_membranes_IBUF[52]));
  IBUF \all_membranes_IBUF[53]_inst 
       (.I(all_membranes[53]),
        .O(all_membranes_IBUF[53]));
  IBUF \all_membranes_IBUF[54]_inst 
       (.I(all_membranes[54]),
        .O(all_membranes_IBUF[54]));
  IBUF \all_membranes_IBUF[55]_inst 
       (.I(all_membranes[55]),
        .O(all_membranes_IBUF[55]));
  IBUF \all_membranes_IBUF[56]_inst 
       (.I(all_membranes[56]),
        .O(all_membranes_IBUF[56]));
  IBUF \all_membranes_IBUF[57]_inst 
       (.I(all_membranes[57]),
        .O(all_membranes_IBUF[57]));
  IBUF \all_membranes_IBUF[58]_inst 
       (.I(all_membranes[58]),
        .O(all_membranes_IBUF[58]));
  IBUF \all_membranes_IBUF[59]_inst 
       (.I(all_membranes[59]),
        .O(all_membranes_IBUF[59]));
  IBUF \all_membranes_IBUF[5]_inst 
       (.I(all_membranes[5]),
        .O(all_membranes_IBUF[5]));
  IBUF \all_membranes_IBUF[60]_inst 
       (.I(all_membranes[60]),
        .O(all_membranes_IBUF[60]));
  IBUF \all_membranes_IBUF[61]_inst 
       (.I(all_membranes[61]),
        .O(all_membranes_IBUF[61]));
  IBUF \all_membranes_IBUF[62]_inst 
       (.I(all_membranes[62]),
        .O(all_membranes_IBUF[62]));
  IBUF \all_membranes_IBUF[63]_inst 
       (.I(all_membranes[63]),
        .O(all_membranes_IBUF[63]));
  IBUF \all_membranes_IBUF[6]_inst 
       (.I(all_membranes[6]),
        .O(all_membranes_IBUF[6]));
  IBUF \all_membranes_IBUF[7]_inst 
       (.I(all_membranes[7]),
        .O(all_membranes_IBUF[7]));
  IBUF \all_membranes_IBUF[8]_inst 
       (.I(all_membranes[8]),
        .O(all_membranes_IBUF[8]));
  IBUF \all_membranes_IBUF[9]_inst 
       (.I(all_membranes[9]),
        .O(all_membranes_IBUF[9]));
  IBUF \all_unit_numbers_IBUF[0]_inst 
       (.I(all_unit_numbers[0]),
        .O(all_unit_numbers_IBUF[0]));
  IBUF \all_unit_numbers_IBUF[1]_inst 
       (.I(all_unit_numbers[1]),
        .O(all_unit_numbers_IBUF[1]));
  IBUF \all_unit_numbers_IBUF[2]_inst 
       (.I(all_unit_numbers[2]),
        .O(all_unit_numbers_IBUF[2]));
  IBUF \all_unit_numbers_IBUF[3]_inst 
       (.I(all_unit_numbers[3]),
        .O(all_unit_numbers_IBUF[3]));
  IBUF \all_unit_numbers_IBUF[4]_inst 
       (.I(all_unit_numbers[4]),
        .O(all_unit_numbers_IBUF[4]));
  IBUF \all_unit_numbers_IBUF[5]_inst 
       (.I(all_unit_numbers[5]),
        .O(all_unit_numbers_IBUF[5]));
  IBUF \all_unit_numbers_IBUF[6]_inst 
       (.I(all_unit_numbers[6]),
        .O(all_unit_numbers_IBUF[6]));
  IBUF \all_unit_numbers_IBUF[7]_inst 
       (.I(all_unit_numbers[7]),
        .O(all_unit_numbers_IBUF[7]));
  OBUF \membrane_OBUF[0]_inst 
       (.I(membrane_OBUF[0]),
        .O(membrane[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[0]_inst_i_1 
       (.I0(\membrane_OBUF[0]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[48]),
        .O(membrane_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[0]_inst_i_2 
       (.I0(all_membranes_IBUF[32]),
        .I1(all_membranes_IBUF[0]),
        .I2(all_membranes_IBUF[16]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[0]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[10]_inst 
       (.I(membrane_OBUF[10]),
        .O(membrane[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[10]_inst_i_1 
       (.I0(\membrane_OBUF[10]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[58]),
        .O(membrane_OBUF[10]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[10]_inst_i_2 
       (.I0(all_membranes_IBUF[42]),
        .I1(all_membranes_IBUF[10]),
        .I2(all_membranes_IBUF[26]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[10]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[11]_inst 
       (.I(membrane_OBUF[11]),
        .O(membrane[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[11]_inst_i_1 
       (.I0(\membrane_OBUF[11]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[59]),
        .O(membrane_OBUF[11]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[11]_inst_i_2 
       (.I0(all_membranes_IBUF[43]),
        .I1(all_membranes_IBUF[11]),
        .I2(all_membranes_IBUF[27]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[11]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[12]_inst 
       (.I(membrane_OBUF[12]),
        .O(membrane[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[12]_inst_i_1 
       (.I0(\membrane_OBUF[12]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[60]),
        .O(membrane_OBUF[12]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[12]_inst_i_2 
       (.I0(all_membranes_IBUF[44]),
        .I1(all_membranes_IBUF[12]),
        .I2(all_membranes_IBUF[28]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[12]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[13]_inst 
       (.I(membrane_OBUF[13]),
        .O(membrane[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[13]_inst_i_1 
       (.I0(\membrane_OBUF[13]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[61]),
        .O(membrane_OBUF[13]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[13]_inst_i_2 
       (.I0(all_membranes_IBUF[45]),
        .I1(all_membranes_IBUF[13]),
        .I2(all_membranes_IBUF[29]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[13]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[14]_inst 
       (.I(membrane_OBUF[14]),
        .O(membrane[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[14]_inst_i_1 
       (.I0(\membrane_OBUF[14]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[62]),
        .O(membrane_OBUF[14]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[14]_inst_i_2 
       (.I0(all_membranes_IBUF[46]),
        .I1(all_membranes_IBUF[14]),
        .I2(all_membranes_IBUF[30]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[14]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[15]_inst 
       (.I(membrane_OBUF[15]),
        .O(membrane[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[15]_inst_i_1 
       (.I0(\membrane_OBUF[15]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[63]),
        .O(membrane_OBUF[15]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[15]_inst_i_2 
       (.I0(all_membranes_IBUF[47]),
        .I1(all_membranes_IBUF[15]),
        .I2(all_membranes_IBUF[31]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[15]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[1]_inst 
       (.I(membrane_OBUF[1]),
        .O(membrane[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[1]_inst_i_1 
       (.I0(\membrane_OBUF[1]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[49]),
        .O(membrane_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[1]_inst_i_2 
       (.I0(all_membranes_IBUF[33]),
        .I1(all_membranes_IBUF[1]),
        .I2(all_membranes_IBUF[17]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[1]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[2]_inst 
       (.I(membrane_OBUF[2]),
        .O(membrane[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[2]_inst_i_1 
       (.I0(\membrane_OBUF[2]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[50]),
        .O(membrane_OBUF[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[2]_inst_i_2 
       (.I0(all_membranes_IBUF[34]),
        .I1(all_membranes_IBUF[2]),
        .I2(all_membranes_IBUF[18]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[2]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[3]_inst 
       (.I(membrane_OBUF[3]),
        .O(membrane[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[3]_inst_i_1 
       (.I0(\membrane_OBUF[3]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[51]),
        .O(membrane_OBUF[3]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[3]_inst_i_2 
       (.I0(all_membranes_IBUF[35]),
        .I1(all_membranes_IBUF[3]),
        .I2(all_membranes_IBUF[19]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[3]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[4]_inst 
       (.I(membrane_OBUF[4]),
        .O(membrane[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[4]_inst_i_1 
       (.I0(\membrane_OBUF[4]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[52]),
        .O(membrane_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[4]_inst_i_2 
       (.I0(all_membranes_IBUF[36]),
        .I1(all_membranes_IBUF[4]),
        .I2(all_membranes_IBUF[20]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[4]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[5]_inst 
       (.I(membrane_OBUF[5]),
        .O(membrane[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[5]_inst_i_1 
       (.I0(\membrane_OBUF[5]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[53]),
        .O(membrane_OBUF[5]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[5]_inst_i_2 
       (.I0(all_membranes_IBUF[37]),
        .I1(all_membranes_IBUF[5]),
        .I2(all_membranes_IBUF[21]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[5]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[6]_inst 
       (.I(membrane_OBUF[6]),
        .O(membrane[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[6]_inst_i_1 
       (.I0(\membrane_OBUF[6]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[54]),
        .O(membrane_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[6]_inst_i_2 
       (.I0(all_membranes_IBUF[38]),
        .I1(all_membranes_IBUF[6]),
        .I2(all_membranes_IBUF[22]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[6]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[7]_inst 
       (.I(membrane_OBUF[7]),
        .O(membrane[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[7]_inst_i_1 
       (.I0(\membrane_OBUF[7]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[55]),
        .O(membrane_OBUF[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[7]_inst_i_2 
       (.I0(all_membranes_IBUF[39]),
        .I1(all_membranes_IBUF[7]),
        .I2(all_membranes_IBUF[23]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[7]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[8]_inst 
       (.I(membrane_OBUF[8]),
        .O(membrane[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[8]_inst_i_1 
       (.I0(\membrane_OBUF[8]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[56]),
        .O(membrane_OBUF[8]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[8]_inst_i_2 
       (.I0(all_membranes_IBUF[40]),
        .I1(all_membranes_IBUF[8]),
        .I2(all_membranes_IBUF[24]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[8]_inst_i_2_n_0 ));
  OBUF \membrane_OBUF[9]_inst 
       (.I(membrane_OBUF[9]),
        .O(membrane[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \membrane_OBUF[9]_inst_i_1 
       (.I0(\membrane_OBUF[9]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_membranes_IBUF[57]),
        .O(membrane_OBUF[9]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \membrane_OBUF[9]_inst_i_2 
       (.I0(all_membranes_IBUF[41]),
        .I1(all_membranes_IBUF[9]),
        .I2(all_membranes_IBUF[25]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\membrane_OBUF[9]_inst_i_2_n_0 ));
  OBUF \offset_OBUF[0]_inst 
       (.I(offset_OBUF[0]),
        .O(offset[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \offset_OBUF[0]_inst_i_1 
       (.I0(\offset_OBUF[0]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(offsets_IBUF[6]),
        .O(offset_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \offset_OBUF[0]_inst_i_2 
       (.I0(offsets_IBUF[4]),
        .I1(offsets_IBUF[0]),
        .I2(offsets_IBUF[2]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\offset_OBUF[0]_inst_i_2_n_0 ));
  OBUF \offset_OBUF[1]_inst 
       (.I(offset_OBUF[1]),
        .O(offset[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \offset_OBUF[1]_inst_i_1 
       (.I0(\offset_OBUF[1]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(offsets_IBUF[7]),
        .O(offset_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \offset_OBUF[1]_inst_i_2 
       (.I0(offsets_IBUF[5]),
        .I1(offsets_IBUF[1]),
        .I2(offsets_IBUF[3]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\offset_OBUF[1]_inst_i_2_n_0 ));
  IBUF \offsets_IBUF[0]_inst 
       (.I(offsets[0]),
        .O(offsets_IBUF[0]));
  IBUF \offsets_IBUF[1]_inst 
       (.I(offsets[1]),
        .O(offsets_IBUF[1]));
  IBUF \offsets_IBUF[2]_inst 
       (.I(offsets[2]),
        .O(offsets_IBUF[2]));
  IBUF \offsets_IBUF[3]_inst 
       (.I(offsets[3]),
        .O(offsets_IBUF[3]));
  IBUF \offsets_IBUF[4]_inst 
       (.I(offsets[4]),
        .O(offsets_IBUF[4]));
  IBUF \offsets_IBUF[5]_inst 
       (.I(offsets[5]),
        .O(offsets_IBUF[5]));
  IBUF \offsets_IBUF[6]_inst 
       (.I(offsets[6]),
        .O(offsets_IBUF[6]));
  IBUF \offsets_IBUF[7]_inst 
       (.I(offsets[7]),
        .O(offsets_IBUF[7]));
  OBUF spiked_OBUF_inst
       (.I(spiked_OBUF),
        .O(spiked));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spiked_OBUF_inst_i_1
       (.I0(spikes_IBUF[0]),
        .I1(spikes_IBUF[1]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[3]),
        .O(spiked_OBUF));
  IBUF \spikes_IBUF[0]_inst 
       (.I(spikes[0]),
        .O(spikes_IBUF[0]));
  IBUF \spikes_IBUF[1]_inst 
       (.I(spikes[1]),
        .O(spikes_IBUF[1]));
  IBUF \spikes_IBUF[2]_inst 
       (.I(spikes[2]),
        .O(spikes_IBUF[2]));
  IBUF \spikes_IBUF[3]_inst 
       (.I(spikes[3]),
        .O(spikes_IBUF[3]));
  OBUF \unit_numb_OBUF[0]_inst 
       (.I(unit_numb_OBUF[0]),
        .O(unit_numb[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \unit_numb_OBUF[0]_inst_i_1 
       (.I0(\unit_numb_OBUF[0]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_unit_numbers_IBUF[6]),
        .O(unit_numb_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \unit_numb_OBUF[0]_inst_i_2 
       (.I0(all_unit_numbers_IBUF[4]),
        .I1(all_unit_numbers_IBUF[0]),
        .I2(all_unit_numbers_IBUF[2]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\unit_numb_OBUF[0]_inst_i_2_n_0 ));
  OBUF \unit_numb_OBUF[1]_inst 
       (.I(unit_numb_OBUF[1]),
        .O(unit_numb[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \unit_numb_OBUF[1]_inst_i_1 
       (.I0(\unit_numb_OBUF[1]_inst_i_2_n_0 ),
        .I1(spikes_IBUF[3]),
        .I2(spikes_IBUF[2]),
        .I3(spikes_IBUF[1]),
        .I4(spikes_IBUF[0]),
        .I5(all_unit_numbers_IBUF[7]),
        .O(unit_numb_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCCCCCCCF0F0AA00)) 
    \unit_numb_OBUF[1]_inst_i_2 
       (.I0(all_unit_numbers_IBUF[5]),
        .I1(all_unit_numbers_IBUF[1]),
        .I2(all_unit_numbers_IBUF[3]),
        .I3(spikes_IBUF[2]),
        .I4(spikes_IBUF[1]),
        .I5(spikes_IBUF[0]),
        .O(\unit_numb_OBUF[1]_inst_i_2_n_0 ));
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
