// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat May  3 19:22:00 2025
// Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.sim/sim_1/synth/func/xsim/tb_log_noise_func_synth.v
// Design      : log_noise_generator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (Q,
    write_seed_IBUF,
    seed_IBUF,
    SS,
    CLK,
    CE_IBUF);
  output [7:0]Q;
  input write_seed_IBUF;
  input [15:0]seed_IBUF;
  input [0:0]SS;
  input CLK;
  input CE_IBUF;

  wire CE_IBUF;
  wire CLK;
  wire [7:0]Q;
  wire [0:0]SS;
  wire [0:0]p_1_in;
  wire [15:0]seed_IBUF;
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
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(\state_reg_n_0_[3] ),
        .I4(write_seed_IBUF),
        .I5(seed_IBUF[0]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[10]_i_1 
       (.I0(Q[1]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[10]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[11]_i_1 
       (.I0(Q[2]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[11]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[12]_i_1 
       (.I0(Q[3]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[12]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[13]_i_1 
       (.I0(Q[4]),
        .I1(write_seed_IBUF),
        .I2(seed_IBUF[13]),
        .I3(\state[15]_i_3_n_0 ),
        .I4(\state[15]_i_4_n_0 ),
        .I5(\state[15]_i_5_n_0 ),
        .O(\state[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \state[14]_i_1 
       (.I0(Q[5]),
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
       (.I0(Q[6]),
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
       (.I0(Q[0]),
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
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[11]_i_1_n_0 ),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[12]_i_1_n_0 ),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[13]_i_1_n_0 ),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[14] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[14]_i_1_n_0 ),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[15]_i_2_n_0 ),
        .Q(Q[7]),
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
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(CLK),
        .CE(\state[15]_i_1_n_0 ),
        .D(\state[9]_i_1_n_0 ),
        .Q(Q[1]),
        .S(SS));
endmodule

module LFSR_inout
   (Q,
    write_seed_IBUF,
    seed_IBUF,
    SS,
    CLK,
    CE_IBUF);
  output [7:0]Q;
  input write_seed_IBUF;
  input [15:0]seed_IBUF;
  input [0:0]SS;
  input CLK;
  input CE_IBUF;

  wire CE_IBUF;
  wire CLK;
  wire [7:0]Q;
  wire [0:0]SS;
  wire [15:0]seed_IBUF;
  wire write_seed_IBUF;

  LFSR u_lfsr
       (.CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .Q(Q),
        .SS(SS),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
endmodule

module log_LUT
   (out,
    CLK,
    SS,
    Q,
    CE_IBUF);
  output [17:0]out;
  input CLK;
  input [0:0]SS;
  input [7:0]Q;
  input CE_IBUF;

  wire CE_IBUF;
  wire CLK;
  wire [7:0]Q;
  wire [0:0]SS;
  wire distribution_output_reg_i_1_n_0;
  wire [17:0]out;
  wire [15:0]NLW_distribution_output_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_distribution_output_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4608" *) 
  (* RTL_RAM_NAME = "log_noise_generator/u_lut/distribution_output_reg" *) 
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
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(out[15:0]),
        .DOBDO(NLW_distribution_output_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(out[17:16]),
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
    .INIT(4'hE)) 
    distribution_output_reg_i_1
       (.I0(SS),
        .I1(CE_IBUF),
        .O(distribution_output_reg_i_1_n_0));
endmodule

(* LUT_BIT_SIZE = "8" *) (* LUT_WIDTH = "18" *) (* NOISE_SOURCE_WIDTH = "16" *) 
(* NotValidForBitStream *)
module log_noise_generator
   (clk,
    reset,
    CE,
    write_seed,
    seed,
    noise_out);
  input clk;
  input reset;
  input CE;
  input write_seed;
  input [15:0]seed;
  output [17:0]noise_out;

  wire CE;
  wire CE_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [17:0]noise_out;
  wire [17:0]noise_out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [15:0]seed;
  wire [15:0]seed_IBUF;
  wire [7:0]sel;
  wire write_seed;
  wire write_seed_IBUF;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \noise_out_OBUF[0]_inst 
       (.I(noise_out_OBUF[0]),
        .O(noise_out[0]));
  OBUF \noise_out_OBUF[10]_inst 
       (.I(noise_out_OBUF[10]),
        .O(noise_out[10]));
  OBUF \noise_out_OBUF[11]_inst 
       (.I(noise_out_OBUF[11]),
        .O(noise_out[11]));
  OBUF \noise_out_OBUF[12]_inst 
       (.I(noise_out_OBUF[12]),
        .O(noise_out[12]));
  OBUF \noise_out_OBUF[13]_inst 
       (.I(noise_out_OBUF[13]),
        .O(noise_out[13]));
  OBUF \noise_out_OBUF[14]_inst 
       (.I(noise_out_OBUF[14]),
        .O(noise_out[14]));
  OBUF \noise_out_OBUF[15]_inst 
       (.I(noise_out_OBUF[15]),
        .O(noise_out[15]));
  OBUF \noise_out_OBUF[16]_inst 
       (.I(noise_out_OBUF[16]),
        .O(noise_out[16]));
  OBUF \noise_out_OBUF[17]_inst 
       (.I(noise_out_OBUF[17]),
        .O(noise_out[17]));
  OBUF \noise_out_OBUF[1]_inst 
       (.I(noise_out_OBUF[1]),
        .O(noise_out[1]));
  OBUF \noise_out_OBUF[2]_inst 
       (.I(noise_out_OBUF[2]),
        .O(noise_out[2]));
  OBUF \noise_out_OBUF[3]_inst 
       (.I(noise_out_OBUF[3]),
        .O(noise_out[3]));
  OBUF \noise_out_OBUF[4]_inst 
       (.I(noise_out_OBUF[4]),
        .O(noise_out[4]));
  OBUF \noise_out_OBUF[5]_inst 
       (.I(noise_out_OBUF[5]),
        .O(noise_out[5]));
  OBUF \noise_out_OBUF[6]_inst 
       (.I(noise_out_OBUF[6]),
        .O(noise_out[6]));
  OBUF \noise_out_OBUF[7]_inst 
       (.I(noise_out_OBUF[7]),
        .O(noise_out[7]));
  OBUF \noise_out_OBUF[8]_inst 
       (.I(noise_out_OBUF[8]),
        .O(noise_out[8]));
  OBUF \noise_out_OBUF[9]_inst 
       (.I(noise_out_OBUF[9]),
        .O(noise_out[9]));
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
  log_LUT u_lut
       (.CE_IBUF(CE_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(sel),
        .SS(reset_IBUF),
        .out(noise_out_OBUF));
  LFSR_inout u_src
       (.CE_IBUF(CE_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(sel),
        .SS(reset_IBUF),
        .seed_IBUF(seed_IBUF),
        .write_seed_IBUF(write_seed_IBUF));
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
