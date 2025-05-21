// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May 21 21:46:47 2025
// Host        : mlewand running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/zynq7020/zynq7020_hardware/zynq7020_hardware.gen/sources_1/bd/whole_system/ip/whole_system_fowler_nordheim_anne_0_1/whole_system_fowler_nordheim_anne_0_1_sim_netlist.v
// Design      : whole_system_fowler_nordheim_anne_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "whole_system_fowler_nordheim_anne_0_1,fowler_nordheim_annealer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fowler_nordheim_annealer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module whole_system_fowler_nordheim_anne_0_1
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN whole_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN whole_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  whole_system_fowler_nordheim_anne_0_1_fowler_nordheim_annealer inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR
   (Q,
    \state_reg[0]_0 ,
    \state_reg[4]_0 ,
    \state_reg[0]_1 ,
    s00_axi_aclk,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]\state_reg[0]_0 ;
  input [4:0]\state_reg[4]_0 ;
  input [0:0]\state_reg[0]_1 ;
  input s00_axi_aclk;
  input storage_CE_advance;

  wire [1:0]Q;
  wire s00_axi_aclk;
  wire state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[2]_i_1__3_n_0 ;
  wire \state[3]_i_1__1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire [4:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;

  LUT5 #(
    .INIT(32'h0000F909)) 
    \state[0]_i_1__1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[4]_0 [0]),
        .I4(state),
        .O(\state[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [1]),
        .I3(state),
        .O(\state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [2]),
        .I3(state),
        .O(\state[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1__1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [3]),
        .I3(state),
        .O(\state[3]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(storage_CE_advance),
        .I2(state),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_2 
       (.I0(Q[0]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [4]),
        .I3(state),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[4]_i_3 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[4]_0 [2]),
        .I2(\state_reg[4]_0 [3]),
        .I3(\state_reg[4]_0 [4]),
        .I4(\state_reg[4]_0 [0]),
        .I5(\state_reg[4]_0 [1]),
        .O(state));
  FDSE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[2]_i_1__3_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[3]_i_1__1_n_0 ),
        .Q(Q[0]),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[4]_i_2_n_0 ),
        .Q(Q[1]),
        .S(\state_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR_4
   (Q,
    \state_reg[0]_0 ,
    \state_reg[4]_0 ,
    \state_reg[0]_1 ,
    s00_axi_aclk,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]\state_reg[0]_0 ;
  input [4:0]\state_reg[4]_0 ;
  input [0:0]\state_reg[0]_1 ;
  input s00_axi_aclk;
  input storage_CE_advance;

  wire [1:0]Q;
  wire s00_axi_aclk;
  wire state;
  wire \state[0]_i_1__2_n_0 ;
  wire \state[1]_i_1__2_n_0 ;
  wire \state[2]_i_1__4_n_0 ;
  wire \state[3]_i_1__2_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2__0_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire [4:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;

  LUT5 #(
    .INIT(32'h0000F909)) 
    \state[0]_i_1__2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[4]_0 [0]),
        .I4(state),
        .O(\state[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[1]_i_1__2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [1]),
        .I3(state),
        .O(\state[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[2]_i_1__4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [2]),
        .I3(state),
        .O(\state[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[3]_i_1__2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [3]),
        .I3(state),
        .O(\state[3]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_1 
       (.I0(storage_CE_advance),
        .I1(\state_reg[0]_0 ),
        .I2(state),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[4]_i_2__0 
       (.I0(Q[0]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[4]_0 [4]),
        .I3(state),
        .O(\state[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[4]_i_3__0 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[4]_0 [2]),
        .I2(\state_reg[4]_0 [3]),
        .I3(\state_reg[4]_0 [4]),
        .I4(\state_reg[4]_0 [0]),
        .I5(\state_reg[4]_0 [1]),
        .O(state));
  FDSE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[0]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[1]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[2]_i_1__4_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[3]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\state_reg[0]_1 ));
  FDSE \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[4]_i_2__0_n_0 ),
        .Q(Q[1]),
        .S(\state_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR__parameterized0
   (SS,
    \state_reg[15]_0 ,
    \state_reg[0]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[15]_3 ,
    \state_reg[4]_0 ,
    s00_axi_aclk);
  output [0:0]SS;
  output [7:0]\state_reg[15]_0 ;
  input [0:0]\state_reg[0]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input \state_reg[15]_3 ;
  input [4:0]\state_reg[4]_0 ;
  input s00_axi_aclk;

  wire [0:0]SS;
  wire s00_axi_aclk;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[10]_i_1__0_n_0 ;
  wire \state[11]_i_1__0_n_0 ;
  wire \state[12]_i_1__0_n_0 ;
  wire \state[13]_i_1__0_n_0 ;
  wire \state[14]_i_1__0_n_0 ;
  wire \state[15]_i_2__0_n_0 ;
  wire \state[15]_i_3__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__2_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[4]_i_1__0_n_0 ;
  wire \state[5]_i_1__0_n_0 ;
  wire \state[6]_i_1__0_n_0 ;
  wire \state[7]_i_1__0_n_0 ;
  wire \state[8]_i_1__0_n_0 ;
  wire \state[9]_i_1__0_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire \state_reg[15]_3 ;
  wire [4:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'hB88B8BB88BB8B88B)) 
    \state[0]_i_1__0 
       (.I0(\state_reg[4]_0 [0]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[15]_0 [6]),
        .I3(\state_reg[15]_0 [4]),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg[15]_0 [7]),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[10]_i_1__0 
       (.I0(\state_reg[15]_0 [1]),
        .I1(\state_reg[0]_0 ),
        .O(\state[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[11]_i_1__0 
       (.I0(\state_reg[15]_0 [2]),
        .I1(\state_reg[0]_0 ),
        .O(\state[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[12]_i_1__0 
       (.I0(\state_reg[15]_0 [3]),
        .I1(\state_reg[0]_0 ),
        .O(\state[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[13]_i_1__0 
       (.I0(\state_reg[15]_0 [4]),
        .I1(\state_reg[0]_0 ),
        .O(\state[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[14]_i_1__0 
       (.I0(\state_reg[15]_0 [5]),
        .I1(\state_reg[0]_0 ),
        .O(\state[14]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[15]_i_1__0 
       (.I0(\state_reg[15]_3 ),
        .I1(\state_reg[15]_2 ),
        .I2(\state_reg[15]_1 ),
        .O(SS));
  LUT4 #(
    .INIT(16'hBFBE)) 
    \state[15]_i_2__0 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[15]_1 ),
        .I2(\state_reg[15]_2 ),
        .I3(\state_reg[15]_3 ),
        .O(\state[15]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[15]_i_3__0 
       (.I0(\state_reg[15]_0 [6]),
        .I1(\state_reg[0]_0 ),
        .O(\state[15]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_1__0 
       (.I0(\state_reg[4]_0 [1]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__2 
       (.I0(\state_reg[4]_0 [2]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1__0 
       (.I0(\state_reg[4]_0 [3]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1__0 
       (.I0(\state_reg[4]_0 [4]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[5]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg[0]_0 ),
        .O(\state[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[6]_i_1__0 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg[0]_0 ),
        .O(\state[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[7]_i_1__0 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg[0]_0 ),
        .O(\state[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[8]_i_1__0 
       (.I0(\state_reg_n_0_[7] ),
        .I1(\state_reg[0]_0 ),
        .O(\state[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[9]_i_1__0 
       (.I0(\state_reg[15]_0 [0]),
        .I1(\state_reg[0]_0 ),
        .O(\state[9]_i_1__0_n_0 ));
  FDSE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE \state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[10]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [2]),
        .S(SS));
  FDSE \state_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[11]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [3]),
        .S(SS));
  FDSE \state_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[12]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [4]),
        .S(SS));
  FDSE \state_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[13]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [5]),
        .S(SS));
  FDSE \state_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[14]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [6]),
        .S(SS));
  FDSE \state_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[15]_i_3__0_n_0 ),
        .Q(\state_reg[15]_0 [7]),
        .S(SS));
  FDSE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[2]_i_1__2_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[3]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[4]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[5]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE \state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[6]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE \state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[7]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE \state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[8]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [0]),
        .S(SS));
  FDSE \state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2__0_n_0 ),
        .D(\state[9]_i_1__0_n_0 ),
        .Q(\state_reg[15]_0 [1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR__parameterized0_8
   (SS,
    \state_reg[15]_0 ,
    \state_reg[0]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[15]_3 ,
    \state_reg[4]_0 ,
    s00_axi_aclk);
  output [0:0]SS;
  output [7:0]\state_reg[15]_0 ;
  input [0:0]\state_reg[0]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input \state_reg[15]_3 ;
  input [4:0]\state_reg[4]_0 ;
  input s00_axi_aclk;

  wire [0:0]SS;
  wire [15:0]p_1_in;
  wire s00_axi_aclk;
  wire \state[15]_i_2_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire \state_reg[15]_3 ;
  wire [4:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'hB88B8BB88BB8B88B)) 
    \state[0]_i_1 
       (.I0(\state_reg[4]_0 [0]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[15]_0 [6]),
        .I3(\state_reg[15]_0 [4]),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg[15]_0 [7]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[10]_i_1 
       (.I0(\state_reg[15]_0 [1]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[11]_i_1 
       (.I0(\state_reg[15]_0 [2]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[12]_i_1 
       (.I0(\state_reg[15]_0 [3]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[13]_i_1 
       (.I0(\state_reg[15]_0 [4]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[14]_i_1 
       (.I0(\state_reg[15]_0 [5]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[14]));
  LUT3 #(
    .INIT(8'h01)) 
    \state[15]_i_1 
       (.I0(\state_reg[15]_3 ),
        .I1(\state_reg[15]_2 ),
        .I2(\state_reg[15]_1 ),
        .O(SS));
  LUT4 #(
    .INIT(16'hBFBE)) 
    \state[15]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[15]_1 ),
        .I2(\state_reg[15]_2 ),
        .I3(\state_reg[15]_3 ),
        .O(\state[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[15]_i_3 
       (.I0(\state_reg[15]_0 [6]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_1 
       (.I0(\state_reg[4]_0 [1]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__1 
       (.I0(\state_reg[4]_0 [2]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[1] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_1 
       (.I0(\state_reg[4]_0 [3]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1 
       (.I0(\state_reg[4]_0 [4]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[3] ),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[6]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[7]_i_1 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[8]_i_1 
       (.I0(\state_reg_n_0_[7] ),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[9]_i_1 
       (.I0(\state_reg[15]_0 [0]),
        .I1(\state_reg[0]_0 ),
        .O(p_1_in[9]));
  FDSE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(\state_reg_n_0_[0] ),
        .S(SS));
  FDSE \state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(\state_reg[15]_0 [2]),
        .S(SS));
  FDSE \state_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(\state_reg[15]_0 [3]),
        .S(SS));
  FDSE \state_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(\state_reg[15]_0 [4]),
        .S(SS));
  FDSE \state_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(\state_reg[15]_0 [5]),
        .S(SS));
  FDSE \state_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(\state_reg[15]_0 [6]),
        .S(SS));
  FDSE \state_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(\state_reg[15]_0 [7]),
        .S(SS));
  FDSE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(\state_reg_n_0_[1] ),
        .S(SS));
  FDSE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(\state_reg_n_0_[2] ),
        .S(SS));
  FDSE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(\state_reg_n_0_[3] ),
        .S(SS));
  FDSE \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(\state_reg_n_0_[4] ),
        .S(SS));
  FDSE \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(\state_reg_n_0_[5] ),
        .S(SS));
  FDSE \state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(\state_reg_n_0_[6] ),
        .S(SS));
  FDSE \state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(\state_reg_n_0_[7] ),
        .S(SS));
  FDSE \state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(\state_reg[15]_0 [0]),
        .S(SS));
  FDSE \state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\state[15]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(\state_reg[15]_0 [1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR_inout
   (Q,
    \state_reg[0] ,
    \state_reg[4] ,
    \state_reg[0]_0 ,
    s00_axi_aclk,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input [0:0]\state_reg[0]_0 ;
  input s00_axi_aclk;
  input storage_CE_advance;

  wire [1:0]Q;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [4:0]\state_reg[4] ;
  wire storage_CE_advance;

  whole_system_fowler_nordheim_anne_0_1_LFSR u_lfsr
       (.Q(Q),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[4]_0 (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR_inout_3
   (Q,
    \state_reg[0] ,
    \state_reg[4] ,
    \state_reg[0]_0 ,
    s00_axi_aclk,
    storage_CE_advance);
  output [1:0]Q;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input [0:0]\state_reg[0]_0 ;
  input s00_axi_aclk;
  input storage_CE_advance;

  wire [1:0]Q;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [4:0]\state_reg[4] ;
  wire storage_CE_advance;

  whole_system_fowler_nordheim_anne_0_1_LFSR_4 u_lfsr
       (.Q(Q),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[4]_0 (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR_inout__parameterized0
   (SS,
    \state_reg[15] ,
    \state_reg[0] ,
    \state_reg[15]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[4] ,
    s00_axi_aclk);
  output [0:0]SS;
  output [7:0]\state_reg[15] ;
  input [0:0]\state_reg[0] ;
  input \state_reg[15]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input [4:0]\state_reg[4] ;
  input s00_axi_aclk;

  wire [0:0]SS;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire [4:0]\state_reg[4] ;

  whole_system_fowler_nordheim_anne_0_1_LFSR__parameterized0 u_lfsr
       (.SS(SS),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[15]_0 (\state_reg[15] ),
        .\state_reg[15]_1 (\state_reg[15]_0 ),
        .\state_reg[15]_2 (\state_reg[15]_1 ),
        .\state_reg[15]_3 (\state_reg[15]_2 ),
        .\state_reg[4]_0 (\state_reg[4] ));
endmodule

(* ORIG_REF_NAME = "LFSR_inout" *) 
module whole_system_fowler_nordheim_anne_0_1_LFSR_inout__parameterized0_7
   (SS,
    \state_reg[15] ,
    \state_reg[0] ,
    \state_reg[15]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[4] ,
    s00_axi_aclk);
  output [0:0]SS;
  output [7:0]\state_reg[15] ;
  input [0:0]\state_reg[0] ;
  input \state_reg[15]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input [4:0]\state_reg[4] ;
  input s00_axi_aclk;

  wire [0:0]SS;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire [4:0]\state_reg[4] ;

  whole_system_fowler_nordheim_anne_0_1_LFSR__parameterized0_8 u_lfsr
       (.SS(SS),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[15]_0 (\state_reg[15] ),
        .\state_reg[15]_1 (\state_reg[15]_0 ),
        .\state_reg[15]_2 (\state_reg[15]_1 ),
        .\state_reg[15]_3 (\state_reg[15]_2 ),
        .\state_reg[4]_0 (\state_reg[4] ));
endmodule

(* ORIG_REF_NAME = "distributed_graph_memory" *) 
module whole_system_fowler_nordheim_anne_0_1_distributed_graph_memory
   (E,
    \slv_reg6_reg[1] ,
    \slv_reg6_reg[0] ,
    \slv_reg6_reg[1]_0 ,
    \mem_ram_reg[3][0] ,
    \mem_ram_reg[3][0]_0 ,
    \mem_ram_reg[0][0] ,
    \Q_out_reg[0]_0 ,
    \Q_out_reg[0]_1 ,
    Q,
    \Q_out_reg[3]_0 ,
    s00_axi_aclk);
  output [0:0]E;
  output [0:0]\slv_reg6_reg[1] ;
  output [0:0]\slv_reg6_reg[0] ;
  output [0:0]\slv_reg6_reg[1]_0 ;
  input [1:0]\mem_ram_reg[3][0] ;
  input [0:0]\mem_ram_reg[3][0]_0 ;
  input \mem_ram_reg[0][0] ;
  input \Q_out_reg[0]_0 ;
  input \Q_out_reg[0]_1 ;
  input [0:0]Q;
  input [3:0]\Q_out_reg[3]_0 ;
  input s00_axi_aclk;

  wire CE_output_from_distributed_graph;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]Q_out;
  wire \Q_out_reg[0]_0 ;
  wire \Q_out_reg[0]_1 ;
  wire [3:0]\Q_out_reg[3]_0 ;
  wire \mem_ram_reg[0][0] ;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [0:0]\mem_ram_reg[3][0]_0 ;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg6_reg[0] ;
  wire [0:0]\slv_reg6_reg[1] ;
  wire [0:0]\slv_reg6_reg[1]_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \Q_out[3]_i_1 
       (.I0(\Q_out_reg[0]_0 ),
        .I1(\Q_out_reg[0]_1 ),
        .O(CE_output_from_distributed_graph));
  FDRE \Q_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [0]),
        .Q(Q_out[0]),
        .R(Q));
  FDRE \Q_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [1]),
        .Q(Q_out[1]),
        .R(Q));
  FDRE \Q_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [2]),
        .Q(Q_out[2]),
        .R(Q));
  FDRE \Q_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [3]),
        .Q(Q_out[3]),
        .R(Q));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \mem_ram[0][9]_i_1 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[0]),
        .I4(\mem_ram_reg[0][0] ),
        .O(E));
  LUT5 #(
    .INIT(32'h4F404040)) 
    \mem_ram[1][9]_i_1 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[1]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[1] ));
  LUT5 #(
    .INIT(32'h4F404040)) 
    \mem_ram[2][9]_i_1 
       (.I0(\mem_ram_reg[3][0] [0]),
        .I1(\mem_ram_reg[3][0] [1]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[2]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[0] ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \mem_ram[3][9]_i_1 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[3]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "distributed_graph_memory" *) 
module whole_system_fowler_nordheim_anne_0_1_distributed_graph_memory__parameterized0
   (E,
    \slv_reg6_reg[1] ,
    \slv_reg6_reg[0] ,
    \slv_reg6_reg[1]_0 ,
    \mem_ram_reg[3][0] ,
    \mem_ram_reg[3][0]_0 ,
    \mem_ram_reg[0][0] ,
    \Q_out_reg[0]_0 ,
    \Q_out_reg[0]_1 ,
    Q,
    \Q_out_reg[3]_0 ,
    s00_axi_aclk);
  output [0:0]E;
  output [0:0]\slv_reg6_reg[1] ;
  output [0:0]\slv_reg6_reg[0] ;
  output [0:0]\slv_reg6_reg[1]_0 ;
  input [1:0]\mem_ram_reg[3][0] ;
  input [0:0]\mem_ram_reg[3][0]_0 ;
  input \mem_ram_reg[0][0] ;
  input \Q_out_reg[0]_0 ;
  input \Q_out_reg[0]_1 ;
  input [0:0]Q;
  input [3:0]\Q_out_reg[3]_0 ;
  input s00_axi_aclk;

  wire CE_output_from_distributed_graph;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]Q_out;
  wire \Q_out_reg[0]_0 ;
  wire \Q_out_reg[0]_1 ;
  wire [3:0]\Q_out_reg[3]_0 ;
  wire \mem_ram_reg[0][0] ;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [0:0]\mem_ram_reg[3][0]_0 ;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg6_reg[0] ;
  wire [0:0]\slv_reg6_reg[1] ;
  wire [0:0]\slv_reg6_reg[1]_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \Q_out[3]_i_1__0 
       (.I0(\Q_out_reg[0]_0 ),
        .I1(\Q_out_reg[0]_1 ),
        .O(CE_output_from_distributed_graph));
  FDRE \Q_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [0]),
        .Q(Q_out[0]),
        .R(Q));
  FDRE \Q_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [1]),
        .Q(Q_out[1]),
        .R(Q));
  FDRE \Q_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [2]),
        .Q(Q_out[2]),
        .R(Q));
  FDRE \Q_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(CE_output_from_distributed_graph),
        .D(\Q_out_reg[3]_0 [3]),
        .Q(Q_out[3]),
        .R(Q));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \mem_ram[0][9]_i_1__0 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[0]),
        .I4(\mem_ram_reg[0][0] ),
        .O(E));
  LUT5 #(
    .INIT(32'h4F404040)) 
    \mem_ram[1][9]_i_1__0 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[1]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[1] ));
  LUT5 #(
    .INIT(32'h4F404040)) 
    \mem_ram[2][9]_i_1__0 
       (.I0(\mem_ram_reg[3][0] [0]),
        .I1(\mem_ram_reg[3][0] [1]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[2]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[0] ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \mem_ram[3][9]_i_1__0 
       (.I0(\mem_ram_reg[3][0] [1]),
        .I1(\mem_ram_reg[3][0] [0]),
        .I2(\mem_ram_reg[3][0]_0 ),
        .I3(Q_out[3]),
        .I4(\mem_ram_reg[0][0] ),
        .O(\slv_reg6_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module whole_system_fowler_nordheim_anne_0_1_flipping_unit
   (flipping_CE_0,
    DI,
    ADDRBWRADDR,
    S,
    \state_reg[1] ,
    stage1_r_reg_0,
    \mem_p_reg[7] ,
    E,
    \state_reg[15] ,
    s00_axi_aclk,
    B,
    stage1_r_reg_1,
    spike0_carry__0,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    Q,
    spike0_carry__0_0,
    spike0_carry__0_1,
    spike0_carry,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    spike0_carry_0,
    spike0_carry_1,
    spike0_carry_2,
    spike0_carry__0_2,
    \x_reg[8] ,
    \state_reg[4] );
  output flipping_CE_0;
  output [3:0]DI;
  output [8:0]ADDRBWRADDR;
  output [3:0]S;
  output \state_reg[1] ;
  output [3:0]stage1_r_reg_0;
  output [3:0]\mem_p_reg[7] ;
  output [0:0]E;
  output [7:0]\state_reg[15] ;
  input s00_axi_aclk;
  input [17:0]B;
  input [11:0]stage1_r_reg_1;
  input spike0_carry__0;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input [9:0]Q;
  input spike0_carry__0_0;
  input spike0_carry__0_1;
  input [0:0]spike0_carry;
  input [0:0]\state_reg[0] ;
  input [0:0]\state_reg[0]_0 ;
  input spike0_carry_0;
  input spike0_carry_1;
  input spike0_carry_2;
  input spike0_carry__0_2;
  input \x_reg[8] ;
  input [4:0]\state_reg[4] ;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [3:0]DI;
  wire [0:0]E;
  wire [9:0]Q;
  wire [3:0]S;
  wire flipping_CE_0;
  wire [3:0]\mem_p_reg[7] ;
  wire reset_flipping;
  wire s00_axi_aclk;
  wire [0:0]spike0_carry;
  wire spike0_carry_0;
  wire spike0_carry_1;
  wire spike0_carry_2;
  wire spike0_carry__0;
  wire spike0_carry__0_0;
  wire spike0_carry__0_1;
  wire spike0_carry__0_2;
  wire [3:0]stage1_r_reg_0;
  wire [11:0]stage1_r_reg_1;
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
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1] ;
  wire [4:0]\state_reg[4] ;
  wire \x_reg[8] ;
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
        .I1(spike0_carry__0_2),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h1)) 
    spike0_carry__0_i_2__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h1)) 
    spike0_carry__0_i_3__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h45555510)) 
    spike0_carry__0_i_4__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry),
        .I2(spike0_carry__0_1),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h69)) 
    spike0_carry__0_i_5__0
       (.I0(Q[9]),
        .I1(spike0_carry__0_0),
        .I2(stage1_r_reg__0[17]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_6__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0_2),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    spike0_carry__0_i_7__0
       (.I0(stage1_r_reg__0[17]),
        .I1(spike0_carry__0_2),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h88141181)) 
    spike0_carry__0_i_8__0
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(spike0_carry__0_1),
        .I3(spike0_carry),
        .I4(stage1_r_reg__0[17]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h55010054F515507C)) 
    spike0_carry_i_1__0
       (.I0(stage1_r_reg__0[16]),
        .I1(spike0_carry_2),
        .I2(Q[6]),
        .I3(spike0_carry),
        .I4(Q[7]),
        .I5(stage1_r_reg__0[15]),
        .O(stage1_r_reg_0[3]));
  LUT6 #(
    .INIT(64'h44451110CD555730)) 
    spike0_carry_i_2__0
       (.I0(stage1_r_reg__0[14]),
        .I1(spike0_carry),
        .I2(spike0_carry_1),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(stage1_r_reg__0[13]),
        .O(stage1_r_reg_0[2]));
  LUT6 #(
    .INIT(64'h44451110CD555730)) 
    spike0_carry_i_3__0
       (.I0(stage1_r_reg__0[12]),
        .I1(spike0_carry),
        .I2(spike0_carry_0),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(stage1_r_reg__0[11]),
        .O(stage1_r_reg_0[1]));
  LUT5 #(
    .INIT(32'h4414D474)) 
    spike0_carry_i_4__0
       (.I0(stage1_r_reg__0[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(spike0_carry),
        .I4(stage1_r_reg__0[9]),
        .O(stage1_r_reg_0[0]));
  LUT6 #(
    .INIT(64'h9006906009600909)) 
    spike0_carry_i_5__0
       (.I0(Q[7]),
        .I1(stage1_r_reg__0[16]),
        .I2(Q[6]),
        .I3(spike0_carry),
        .I4(spike0_carry_2),
        .I5(stage1_r_reg__0[15]),
        .O(\mem_p_reg[7] [3]));
  LUT6 #(
    .INIT(64'h9090066009096009)) 
    spike0_carry_i_6__0
       (.I0(Q[5]),
        .I1(stage1_r_reg__0[14]),
        .I2(Q[4]),
        .I3(spike0_carry_1),
        .I4(spike0_carry),
        .I5(stage1_r_reg__0[13]),
        .O(\mem_p_reg[7] [2]));
  LUT6 #(
    .INIT(64'h9090066009096009)) 
    spike0_carry_i_7__0
       (.I0(Q[3]),
        .I1(stage1_r_reg__0[12]),
        .I2(Q[2]),
        .I3(spike0_carry_0),
        .I4(spike0_carry),
        .I5(stage1_r_reg__0[11]),
        .O(\mem_p_reg[7] [1]));
  LUT5 #(
    .INIT(32'h960000C3)) 
    spike0_carry_i_8__0
       (.I0(spike0_carry),
        .I1(Q[1]),
        .I2(stage1_r_reg__0[10]),
        .I3(stage1_r_reg__0[9]),
        .I4(Q[0]),
        .O(\mem_p_reg[7] [0]));
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
       (.A({stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11],stage1_r_reg_1[11:10],stage1_r_reg_1[11],stage1_r_reg_1[9:0]}),
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
        .CEA2(flipping_CE_0),
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
        .CEP(flipping_CE_0),
        .CLK(s00_axi_aclk),
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
    .INIT(8'h3E)) 
    stage1_r_reg_i_1__0
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .O(flipping_CE_0));
  LUT4 #(
    .INIT(16'h2A28)) 
    \state[0]_i_2__0 
       (.I0(\state_reg[0]_0 ),
        .I1(x_reg_rep),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .O(\state_reg[1] ));
  whole_system_fowler_nordheim_anne_0_1_log_noise_generator u_noise
       (.reset_flipping(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (x_reg_rep),
        .\state_reg[15]_1 (x_reg_rep_0),
        .\state_reg[15]_2 (x_reg_rep_1),
        .\state_reg[4] (\state_reg[4] ));
  whole_system_fowler_nordheim_anne_0_1_temperature_module u_temp
       (.ADDRBWRADDR(ADDRBWRADDR),
        .E(E),
        .reset_flipping(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\x_reg[8]_0 (\x_reg[8] ),
        .x_reg_rep(x_reg_rep),
        .x_reg_rep_0(x_reg_rep_0),
        .x_reg_rep_1(x_reg_rep_1));
endmodule

(* ORIG_REF_NAME = "flipping_unit" *) 
module whole_system_fowler_nordheim_anne_0_1_flipping_unit_1
   (flipping_CE,
    DI,
    S,
    \state_reg[1] ,
    stage1_r_reg_0,
    \mem_p_reg[7] ,
    \state_reg[15] ,
    B,
    s00_axi_aclk,
    A,
    spike0_carry__0,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    Q,
    spike0_carry__0_0,
    spike0_carry__0_1,
    spike0_carry,
    \state_reg[0] ,
    CO,
    spike0_carry_0,
    spike0_carry_1,
    spike0_carry_2,
    mem_cmp,
    \x_reg[0] ,
    \state_reg[4] ,
    x_reg_rep_2,
    ADDRBWRADDR);
  output flipping_CE;
  output [3:0]DI;
  output [3:0]S;
  output \state_reg[1] ;
  output [3:0]stage1_r_reg_0;
  output [3:0]\mem_p_reg[7] ;
  output [7:0]\state_reg[15] ;
  output [17:0]B;
  input s00_axi_aclk;
  input [11:0]A;
  input spike0_carry__0;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input [9:0]Q;
  input spike0_carry__0_0;
  input spike0_carry__0_1;
  input [0:0]spike0_carry;
  input [0:0]\state_reg[0] ;
  input [0:0]CO;
  input spike0_carry_0;
  input spike0_carry_1;
  input spike0_carry_2;
  input [0:0]mem_cmp;
  input \x_reg[0] ;
  input [4:0]\state_reg[4] ;
  input x_reg_rep_2;
  input [8:0]ADDRBWRADDR;

  wire [11:0]A;
  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire flipping_CE;
  wire [0:0]mem_cmp;
  wire [3:0]\mem_p_reg[7] ;
  wire p_0_in0;
  wire reset_flipping;
  wire s00_axi_aclk;
  wire [0:0]spike0_carry;
  wire spike0_carry_0;
  wire spike0_carry_1;
  wire spike0_carry_2;
  wire spike0_carry__0;
  wire spike0_carry__0_0;
  wire spike0_carry__0_1;
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
  wire [0:0]\state_reg[0] ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1] ;
  wire [4:0]\state_reg[4] ;
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
  wire \x_reg[0] ;
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
    .INIT(4'h1)) 
    spike0_carry__0_i_2
       (.I0(p_0_in0),
        .I1(spike0_carry__0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h1)) 
    spike0_carry__0_i_3
       (.I0(p_0_in0),
        .I1(spike0_carry__0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h45555510)) 
    spike0_carry__0_i_4
       (.I0(p_0_in0),
        .I1(spike0_carry),
        .I2(spike0_carry__0_1),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h69)) 
    spike0_carry__0_i_5
       (.I0(Q[9]),
        .I1(spike0_carry__0_0),
        .I2(p_0_in0),
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
    .INIT(32'h88141181)) 
    spike0_carry__0_i_8
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(spike0_carry__0_1),
        .I3(spike0_carry),
        .I4(p_0_in0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h55010054F515507C)) 
    spike0_carry_i_1
       (.I0(stage1_r_reg_n_80),
        .I1(spike0_carry_2),
        .I2(Q[6]),
        .I3(spike0_carry),
        .I4(Q[7]),
        .I5(stage1_r_reg_n_81),
        .O(stage1_r_reg_0[3]));
  LUT6 #(
    .INIT(64'h44451110CD555730)) 
    spike0_carry_i_2
       (.I0(stage1_r_reg_n_82),
        .I1(spike0_carry),
        .I2(spike0_carry_1),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(stage1_r_reg_n_83),
        .O(stage1_r_reg_0[2]));
  LUT6 #(
    .INIT(64'h44451110CD555730)) 
    spike0_carry_i_3
       (.I0(stage1_r_reg_n_84),
        .I1(spike0_carry),
        .I2(spike0_carry_0),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(stage1_r_reg_n_85),
        .O(stage1_r_reg_0[1]));
  LUT5 #(
    .INIT(32'h4414D474)) 
    spike0_carry_i_4
       (.I0(stage1_r_reg_n_86),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(spike0_carry),
        .I4(stage1_r_reg_n_87),
        .O(stage1_r_reg_0[0]));
  LUT6 #(
    .INIT(64'h9006906009600909)) 
    spike0_carry_i_5
       (.I0(Q[7]),
        .I1(stage1_r_reg_n_80),
        .I2(Q[6]),
        .I3(spike0_carry),
        .I4(spike0_carry_2),
        .I5(stage1_r_reg_n_81),
        .O(\mem_p_reg[7] [3]));
  LUT6 #(
    .INIT(64'h9090066009096009)) 
    spike0_carry_i_6
       (.I0(Q[5]),
        .I1(stage1_r_reg_n_82),
        .I2(Q[4]),
        .I3(spike0_carry_1),
        .I4(spike0_carry),
        .I5(stage1_r_reg_n_83),
        .O(\mem_p_reg[7] [2]));
  LUT6 #(
    .INIT(64'h9090066009096009)) 
    spike0_carry_i_7
       (.I0(Q[3]),
        .I1(stage1_r_reg_n_84),
        .I2(Q[2]),
        .I3(spike0_carry_0),
        .I4(spike0_carry),
        .I5(stage1_r_reg_n_85),
        .O(\mem_p_reg[7] [1]));
  LUT5 #(
    .INIT(32'h960000C3)) 
    spike0_carry_i_8
       (.I0(spike0_carry),
        .I1(Q[1]),
        .I2(stage1_r_reg_n_86),
        .I3(stage1_r_reg_n_87),
        .I4(Q[0]),
        .O(\mem_p_reg[7] [0]));
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
       (.A({A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11],A[11:10],A[11],A[9:0]}),
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
        .CLK(s00_axi_aclk),
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
    .INIT(8'h3E)) 
    stage1_r_reg_i_1
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .O(flipping_CE));
  LUT4 #(
    .INIT(16'h2A28)) 
    \state[0]_i_2 
       (.I0(CO),
        .I1(x_reg_rep),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .O(\state_reg[1] ));
  whole_system_fowler_nordheim_anne_0_1_log_noise_generator_5 u_noise
       (.reset_flipping(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (x_reg_rep),
        .\state_reg[15]_1 (x_reg_rep_0),
        .\state_reg[15]_2 (x_reg_rep_1),
        .\state_reg[4] (\state_reg[4] ));
  whole_system_fowler_nordheim_anne_0_1_temperature_module_6 u_temp
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .out({u_temp_n_0,u_temp_n_1,u_temp_n_2,u_temp_n_3,u_temp_n_4,u_temp_n_5,u_temp_n_6,u_temp_n_7,u_temp_n_8,u_temp_n_9,u_temp_n_10,u_temp_n_11,u_temp_n_12,u_temp_n_13,u_temp_n_14,u_temp_n_15,u_temp_n_16,u_temp_n_17}),
        .reset_flipping(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\x_reg[0]_0 (\x_reg[0] ),
        .x_reg_rep_0(x_reg_rep),
        .x_reg_rep_1(x_reg_rep_0),
        .x_reg_rep_2(x_reg_rep_1),
        .x_reg_rep_3(x_reg_rep_2));
endmodule

(* ORIG_REF_NAME = "fowler_nordheim_annealer" *) 
module whole_system_fowler_nordheim_anne_0_1_fowler_nordheim_annealer
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire \UUT/NEURO_SA/reset_module ;
  wire [0:0]\UUT/NEURO_SA/spikes ;
  wire [2:0]\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state ;
  wire \UUT/NEURO_SA/unit_gen[0].unit_inst/flipping_CE ;
  wire [2:0]\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state ;
  wire \UUT/NEURO_SA/unit_gen[1].unit_inst/flipping_CE ;
  wire \UUT/NEURO_SA/update_memory ;
  wire \UUT/spike_reg ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_wready_i_1_n_0;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32;
  wire fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33;
  wire new_sample_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire spike_reg_i_1__0_n_0;
  wire spike_reg_i_1_n_0;
  wire \state[0]_i_1__0__0_n_0 ;
  wire \state[0]_i_1__3_n_0 ;
  wire \state[1]_i_1__0__0_n_0 ;
  wire \state[1]_i_1__3_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire x_reg_rep_i_2_n_0;

  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  LUT5 #(
    .INIT(32'hCFCCCF4F)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg),
        .I2(state_write[0]),
        .I3(s00_axi_wvalid),
        .I4(state_write[1]),
        .O(axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAF2AA22F2AAF2AA)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(axi_awready0__0),
        .I5(state_write[0]),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg),
        .O(axi_rvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  whole_system_fowler_nordheim_anne_0_1_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst
       (.CO(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31),
        .E(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q({\UUT/NEURO_SA/update_memory ,\UUT/NEURO_SA/reset_module }),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready0__0(axi_awready0__0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .\cnt_prop_reg[0] (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28),
        .\cnt_prop_reg[0]_0 (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29),
        .flipping_CE(\UUT/NEURO_SA/unit_gen[0].unit_inst/flipping_CE ),
        .flipping_CE_0(\UUT/NEURO_SA/unit_gen[1].unit_inst/flipping_CE ),
        .new_sample_reg(new_sample_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .spike_reg(\UUT/spike_reg ),
        .spike_reg_reg(spike_reg_i_1_n_0),
        .spike_reg_reg_0(spike_reg_i_1__0_n_0),
        .spikes(\UUT/NEURO_SA/spikes ),
        .stage1_r_reg(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33),
        .state(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state ),
        .state_1(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state ),
        .state_read(state_read),
        .\state_reg[0] (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2),
        .\state_reg[0]_0 (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19),
        .\state_reg[0]_1 (\state[0]_i_1__3_n_0 ),
        .\state_reg[0]_2 (\state[0]_i_1__0__0_n_0 ),
        .\state_reg[1] (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20),
        .\state_reg[1]_0 (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30),
        .\state_reg[1]_1 (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32),
        .\state_reg[1]_2 (\state[1]_i_1__3_n_0 ),
        .\state_reg[1]_3 (\state[1]_i_1__0__0_n_0 ),
        .\state_reg[2] (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21),
        .state_write(state_write),
        .\x_reg[7] (fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27),
        .x_reg_rep(x_reg_rep_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_sample_i_1
       (.I0(\UUT/NEURO_SA/reset_module ),
        .O(new_sample_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000AAB2)) 
    spike_reg_i_1
       (.I0(\UUT/NEURO_SA/spikes ),
        .I1(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [0]),
        .I2(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [1]),
        .I3(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [2]),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/reset_module ),
        .O(spike_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000AAB2)) 
    spike_reg_i_1__0
       (.I0(\UUT/spike_reg ),
        .I1(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [0]),
        .I2(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [1]),
        .I3(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [2]),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/reset_module ),
        .O(spike_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFF5500)) 
    \state[0]_i_1__0__0 
       (.I0(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [1]),
        .I1(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [2]),
        .I2(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32),
        .I3(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [0]),
        .O(\state[0]_i_1__0__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFF5500)) 
    \state[0]_i_1__3 
       (.I0(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [1]),
        .I1(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [2]),
        .I2(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30),
        .I3(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [0]),
        .O(\state[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF8000)) 
    \state[1]_i_1__0__0 
       (.I0(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33),
        .I1(\UUT/NEURO_SA/unit_gen[1].unit_inst/flipping_CE ),
        .I2(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2),
        .I3(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/unit_gen[1].unit_inst/buffer/state [1]),
        .O(\state[1]_i_1__0__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF8000)) 
    \state[1]_i_1__3 
       (.I0(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31),
        .I1(\UUT/NEURO_SA/unit_gen[0].unit_inst/flipping_CE ),
        .I2(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1),
        .I3(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28),
        .I4(\UUT/NEURO_SA/update_memory ),
        .I5(\UUT/NEURO_SA/unit_gen[0].unit_inst/buffer/state [1]),
        .O(\state[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    x_reg_rep_i_2
       (.I0(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20),
        .I1(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21),
        .I2(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19),
        .I3(fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27),
        .O(x_reg_rep_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI" *) 
module whole_system_fowler_nordheim_anne_0_1_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI
   (flipping_CE,
    E,
    \state_reg[0] ,
    flipping_CE_0,
    Q,
    state,
    spikes,
    state_1,
    spike_reg,
    s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \state_reg[2] ,
    state_write,
    state_read,
    axi_awready0__0,
    \x_reg[7] ,
    \cnt_prop_reg[0] ,
    \cnt_prop_reg[0]_0 ,
    \state_reg[1]_0 ,
    CO,
    \state_reg[1]_1 ,
    stage1_r_reg,
    s00_axi_rdata,
    s00_axi_aclk,
    new_sample_reg,
    \state_reg[1]_2 ,
    \state_reg[0]_1 ,
    spike_reg_reg,
    \state_reg[1]_3 ,
    \state_reg[0]_2 ,
    spike_reg_reg_0,
    axi_bvalid_reg_0,
    axi_awready_reg_1,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_wvalid,
    s00_axi_wstrb,
    x_reg_rep,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn);
  output flipping_CE;
  output [0:0]E;
  output [0:0]\state_reg[0] ;
  output flipping_CE_0;
  output [1:0]Q;
  output [2:0]state;
  output [0:0]spikes;
  output [2:0]state_1;
  output spike_reg;
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \state_reg[0]_0 ;
  output \state_reg[1] ;
  output \state_reg[2] ;
  output [1:0]state_write;
  output [1:0]state_read;
  output axi_awready0__0;
  output [0:0]\x_reg[7] ;
  output \cnt_prop_reg[0] ;
  output \cnt_prop_reg[0]_0 ;
  output \state_reg[1]_0 ;
  output [0:0]CO;
  output \state_reg[1]_1 ;
  output [0:0]stage1_r_reg;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input new_sample_reg;
  input \state_reg[1]_2 ;
  input \state_reg[0]_1 ;
  input spike_reg_reg;
  input \state_reg[1]_3 ;
  input \state_reg[0]_2 ;
  input spike_reg_reg_0;
  input axi_bvalid_reg_0;
  input axi_awready_reg_1;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input x_reg_rep;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [1:0]Q;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire axi_awaddr;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready_reg_0;
  wire \cnt_prop_reg[0] ;
  wire \cnt_prop_reg[0]_0 ;
  wire [31:0]flip_counts;
  wire flipping_CE;
  wire flipping_CE_0;
  wire new_sample_reg;
  wire [31:7]p_1_in;
  wire [15:0]reg8_wire;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_3_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire [1:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire \slv_reg0[31]_i_4_n_0 ;
  wire \slv_reg0[31]_i_5_n_0 ;
  wire [31:2]slv_reg0__0;
  wire [1:0]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[31]_i_2_n_0 ;
  wire \slv_reg10[31]_i_3_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[31]_i_2_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:2]slv_reg1__0;
  wire [1:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:2]slv_reg2__0;
  wire [15:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[31]_i_3_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:16]slv_reg3__0;
  wire [4:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:5]slv_reg4__0;
  wire [13:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:14]slv_reg5__0;
  wire [1:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:2]slv_reg6__0;
  wire \slv_reg7_reg_n_0_[0] ;
  wire \slv_reg7_reg_n_0_[10] ;
  wire \slv_reg7_reg_n_0_[11] ;
  wire \slv_reg7_reg_n_0_[12] ;
  wire \slv_reg7_reg_n_0_[13] ;
  wire \slv_reg7_reg_n_0_[14] ;
  wire \slv_reg7_reg_n_0_[15] ;
  wire \slv_reg7_reg_n_0_[1] ;
  wire \slv_reg7_reg_n_0_[2] ;
  wire \slv_reg7_reg_n_0_[3] ;
  wire \slv_reg7_reg_n_0_[4] ;
  wire \slv_reg7_reg_n_0_[5] ;
  wire \slv_reg7_reg_n_0_[6] ;
  wire \slv_reg7_reg_n_0_[7] ;
  wire \slv_reg7_reg_n_0_[8] ;
  wire \slv_reg7_reg_n_0_[9] ;
  wire [31:0]slv_reg8;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire spike_reg;
  wire spike_reg_reg;
  wire spike_reg_reg_0;
  wire [0:0]spikes;
  wire [0:0]stage1_r_reg;
  wire [2:0]state;
  wire [2:0]state_1;
  wire [1:0]state_read;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[2] ;
  wire [1:0]state_write;
  wire [0:0]\x_reg[7] ;
  wire x_reg_rep;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  whole_system_fowler_nordheim_anne_0_1_neuroSA_comm_wrapper_large_problem UUT
       (.CO(CO),
        .D(flip_counts),
        .E(E),
        .Q(Q),
        .\cnt_prop_reg[0] (\cnt_prop_reg[0] ),
        .\cnt_prop_reg[0]_0 (\cnt_prop_reg[0]_0 ),
        .\cuts_best_reg[15] (reg8_wire),
        .flipping_CE(flipping_CE),
        .flipping_CE_0(flipping_CE_0),
        .\mem_ram_reg[3][0] (slv_reg6),
        .\mem_ram_reg[3][9] (slv_reg2),
        .new_sample_reg(new_sample_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .spike_reg_reg(spikes),
        .spike_reg_reg_0(spike_reg),
        .spike_reg_reg_1(spike_reg_reg),
        .spike_reg_reg_2(spike_reg_reg_0),
        .stage1_r_reg(stage1_r_reg),
        .\state_ram_reg[3][1] (slv_reg5[11:0]),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (state[0]),
        .\state_reg[0]_1 (state_1[0]),
        .\state_reg[0]_2 (\state_reg[0]_0 ),
        .\state_reg[0]_3 (\state_reg[0]_1 ),
        .\state_reg[0]_4 (\state_reg[0]_2 ),
        .\state_reg[0]_5 (slv_reg1),
        .\state_reg[1] (state[1]),
        .\state_reg[1]_0 (state_1[1]),
        .\state_reg[1]_1 (\state_reg[1] ),
        .\state_reg[1]_2 (\state_reg[1]_0 ),
        .\state_reg[1]_3 (\state_reg[1]_1 ),
        .\state_reg[1]_4 (\state_reg[1]_2 ),
        .\state_reg[1]_5 (\state_reg[1]_3 ),
        .\state_reg[2] (state[2]),
        .\state_reg[2]_0 (state_1[2]),
        .\state_reg[2]_1 (\state_reg[2] ),
        .\state_reg[2]_2 (slv_reg0),
        .\state_reg[4] (slv_reg3[4:0]),
        .\state_reg[4]_0 (slv_reg4),
        .\x_reg[7] (\x_reg[7] ),
        .x_reg_rep(x_reg_rep));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[5]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[5]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_awaddr[5]_i_1 
       (.I0(state_write[1]),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[0]),
        .O(axi_awaddr));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_1),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[10]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[10] ),
        .I1(slv_reg6__0[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_3 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2__0[10]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[10]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[11]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(slv_reg6__0[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_3 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2__0[11]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[11]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[12]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[12] ),
        .I1(slv_reg6__0[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_3 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2__0[12]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[12]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[13]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(slv_reg6__0[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_3 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2__0[13]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[13]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[14]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[14] ),
        .I1(slv_reg6__0[14]),
        .I2(sel0[1]),
        .I3(slv_reg5__0[14]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_3 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2__0[14]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[14]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[15]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(slv_reg6__0[15]),
        .I2(sel0[1]),
        .I3(slv_reg5__0[15]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_3 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2__0[15]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[15]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[16]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(slv_reg6__0[16]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[16]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_3 
       (.I0(slv_reg3__0[16]),
        .I1(slv_reg2__0[16]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[16]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[17]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(slv_reg6__0[17]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[17]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_3 
       (.I0(slv_reg3__0[17]),
        .I1(slv_reg2__0[17]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[17]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[18]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(slv_reg6__0[18]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[18]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_3 
       (.I0(slv_reg3__0[18]),
        .I1(slv_reg2__0[18]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[18]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[19]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(slv_reg6__0[19]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[19]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_3 
       (.I0(slv_reg3__0[19]),
        .I1(slv_reg2__0[19]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[19]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[20]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg6__0[20]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[20]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_3 
       (.I0(slv_reg3__0[20]),
        .I1(slv_reg2__0[20]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[20]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[21]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg6__0[21]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[21]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_3 
       (.I0(slv_reg3__0[21]),
        .I1(slv_reg2__0[21]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[21]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[22]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(slv_reg6__0[22]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[22]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_3 
       (.I0(slv_reg3__0[22]),
        .I1(slv_reg2__0[22]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[22]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[23]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(slv_reg6__0[23]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[23]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_3 
       (.I0(slv_reg3__0[23]),
        .I1(slv_reg2__0[23]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[23]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[24]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(slv_reg6__0[24]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[24]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_3 
       (.I0(slv_reg3__0[24]),
        .I1(slv_reg2__0[24]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[24]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[25]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(slv_reg6__0[25]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[25]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_3 
       (.I0(slv_reg3__0[25]),
        .I1(slv_reg2__0[25]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[25]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(slv_reg6__0[26]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[26]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(slv_reg3__0[26]),
        .I1(slv_reg2__0[26]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[26]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[27]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(slv_reg6__0[27]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[27]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_3 
       (.I0(slv_reg3__0[27]),
        .I1(slv_reg2__0[27]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[27]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[28]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg6__0[28]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[28]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_3 
       (.I0(slv_reg3__0[28]),
        .I1(slv_reg2__0[28]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[28]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[29]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg6__0[29]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[29]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_3 
       (.I0(slv_reg3__0[29]),
        .I1(slv_reg2__0[29]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[29]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(slv_reg6__0[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2__0[2]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[2]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[30]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg6__0[30]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[30]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_3 
       (.I0(slv_reg3__0[30]),
        .I1(slv_reg2__0[30]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[30]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg6__0[31]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[31]),
        .I3(sel0[0]),
        .I4(slv_reg4__0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(slv_reg3__0[31]),
        .I1(slv_reg2__0[31]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[31]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(slv_reg6__0[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2__0[3]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[3]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(slv_reg6__0[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2__0[4]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[4]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(slv_reg6__0[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2__0[5]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[5]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[6] ),
        .I1(slv_reg6__0[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2__0[6]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[6]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(slv_reg6__0[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2__0[7]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[7]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[8] ),
        .I1(slv_reg6__0[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_3 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2__0[8]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[8]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(slv_reg6__0[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4__0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_3 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2__0[9]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[9]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_5_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_5_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_5_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_4 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg0[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_5 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_5_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[15]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[23]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[31]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \slv_reg10[31]_i_2 
       (.I0(\slv_reg10[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awaddr[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg10[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5050300000003000)) 
    \slv_reg10[31]_i_3 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg10[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[7]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[15]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[23]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[31]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    \slv_reg11[31]_i_2 
       (.I0(\slv_reg10[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awaddr[1]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg11[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[7]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg1[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(\slv_reg0[31]_i_5_n_0 ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg2[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_5_n_0 ),
        .I4(\slv_reg0[31]_i_3_n_0 ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \slv_reg3[31]_i_2 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awaddr[2]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5050300000003000)) 
    \slv_reg3[31]_i_3 
       (.I0(s00_axi_awaddr[3]),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg3[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1011100000000000)) 
    \slv_reg4[31]_i_2 
       (.I0(\slv_reg0[31]_i_5_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[15]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[23]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[31]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \slv_reg5[31]_i_2 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awaddr[1]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[7]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg6[15]_i_1 
       (.I0(\slv_reg0[31]_i_5_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(\slv_reg0[31]_i_4_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(\slv_reg0[31]_i_5_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(\slv_reg0[31]_i_4_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg6[31]_i_1 
       (.I0(\slv_reg0[31]_i_5_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(\slv_reg0[31]_i_4_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(\slv_reg0[31]_i_5_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(\slv_reg0[31]_i_4_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6__0[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[0]),
        .Q(\slv_reg7_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[10]),
        .Q(\slv_reg7_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[11]),
        .Q(\slv_reg7_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[12]),
        .Q(\slv_reg7_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[13]),
        .Q(\slv_reg7_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[14]),
        .Q(\slv_reg7_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[15]),
        .Q(\slv_reg7_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[1]),
        .Q(\slv_reg7_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[2]),
        .Q(\slv_reg7_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[3]),
        .Q(\slv_reg7_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[4]),
        .Q(\slv_reg7_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[5]),
        .Q(\slv_reg7_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[6]),
        .Q(\slv_reg7_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[7]),
        .Q(\slv_reg7_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[8]),
        .Q(\slv_reg7_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg8_wire[9]),
        .Q(\slv_reg7_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[0]),
        .Q(slv_reg8[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[10]),
        .Q(slv_reg8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[11]),
        .Q(slv_reg8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[12]),
        .Q(slv_reg8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[13]),
        .Q(slv_reg8[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[14]),
        .Q(slv_reg8[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[15]),
        .Q(slv_reg8[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[16]),
        .Q(slv_reg8[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[17]),
        .Q(slv_reg8[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[18]),
        .Q(slv_reg8[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[19]),
        .Q(slv_reg8[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[1]),
        .Q(slv_reg8[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[20]),
        .Q(slv_reg8[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[21]),
        .Q(slv_reg8[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[22]),
        .Q(slv_reg8[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[23]),
        .Q(slv_reg8[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[24]),
        .Q(slv_reg8[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[25]),
        .Q(slv_reg8[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[26]),
        .Q(slv_reg8[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[27]),
        .Q(slv_reg8[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[28]),
        .Q(slv_reg8[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[29]),
        .Q(slv_reg8[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[2]),
        .Q(slv_reg8[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[30]),
        .Q(slv_reg8[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[31]),
        .Q(slv_reg8[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[3]),
        .Q(slv_reg8[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[4]),
        .Q(slv_reg8[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[5]),
        .Q(slv_reg8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[6]),
        .Q(slv_reg8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[7]),
        .Q(slv_reg8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[8]),
        .Q(slv_reg8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flip_counts[9]),
        .Q(slv_reg8[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg9[15]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_5_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg9[23]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_5_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg9[31]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_5_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg9[7]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_5_n_0 ),
        .I2(\slv_reg0[31]_i_4_n_0 ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module whole_system_fowler_nordheim_anne_0_1_log_noise_generator
   (reset_flipping,
    \state_reg[15] ,
    \state_reg[0] ,
    \state_reg[15]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[4] ,
    s00_axi_aclk);
  output reset_flipping;
  output [7:0]\state_reg[15] ;
  input [0:0]\state_reg[0] ;
  input \state_reg[15]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input [4:0]\state_reg[4] ;
  input s00_axi_aclk;

  wire reset_flipping;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire [4:0]\state_reg[4] ;

  whole_system_fowler_nordheim_anne_0_1_LFSR_inout__parameterized0 u_src
       (.SS(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .\state_reg[15]_1 (\state_reg[15]_1 ),
        .\state_reg[15]_2 (\state_reg[15]_2 ),
        .\state_reg[4] (\state_reg[4] ));
endmodule

(* ORIG_REF_NAME = "log_noise_generator" *) 
module whole_system_fowler_nordheim_anne_0_1_log_noise_generator_5
   (reset_flipping,
    \state_reg[15] ,
    \state_reg[0] ,
    \state_reg[15]_0 ,
    \state_reg[15]_1 ,
    \state_reg[15]_2 ,
    \state_reg[4] ,
    s00_axi_aclk);
  output reset_flipping;
  output [7:0]\state_reg[15] ;
  input [0:0]\state_reg[0] ;
  input \state_reg[15]_0 ;
  input \state_reg[15]_1 ;
  input \state_reg[15]_2 ;
  input [4:0]\state_reg[4] ;
  input s00_axi_aclk;

  wire reset_flipping;
  wire s00_axi_aclk;
  wire [0:0]\state_reg[0] ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[15]_0 ;
  wire \state_reg[15]_1 ;
  wire \state_reg[15]_2 ;
  wire [4:0]\state_reg[4] ;

  whole_system_fowler_nordheim_anne_0_1_LFSR_inout__parameterized0_7 u_src
       (.SS(reset_flipping),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[15]_0 (\state_reg[15]_0 ),
        .\state_reg[15]_1 (\state_reg[15]_1 ),
        .\state_reg[15]_2 (\state_reg[15]_2 ),
        .\state_reg[4] (\state_reg[4] ));
endmodule

(* ORIG_REF_NAME = "neuroSA_comm_wrapper_large_problem" *) 
module whole_system_fowler_nordheim_anne_0_1_neuroSA_comm_wrapper_large_problem
   (flipping_CE,
    E,
    \state_reg[0] ,
    flipping_CE_0,
    Q,
    \state_reg[2] ,
    \state_reg[1] ,
    \state_reg[0]_0 ,
    spike_reg_reg,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_1 ,
    spike_reg_reg_0,
    D,
    CO,
    stage1_r_reg,
    \state_reg[0]_2 ,
    \state_reg[1]_1 ,
    \state_reg[2]_1 ,
    \cnt_prop_reg[0] ,
    \cnt_prop_reg[0]_0 ,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    \cuts_best_reg[15] ,
    \x_reg[7] ,
    s00_axi_aclk,
    new_sample_reg,
    \state_reg[1]_4 ,
    \state_reg[0]_3 ,
    spike_reg_reg_1,
    \state_reg[1]_5 ,
    \state_reg[0]_4 ,
    spike_reg_reg_2,
    \state_reg[0]_5 ,
    \state_reg[4] ,
    \state_ram_reg[3][1] ,
    \mem_ram_reg[3][9] ,
    \mem_ram_reg[3][0] ,
    \state_reg[2]_2 ,
    \state_reg[4]_0 ,
    x_reg_rep);
  output flipping_CE;
  output [0:0]E;
  output [0:0]\state_reg[0] ;
  output flipping_CE_0;
  output [1:0]Q;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output \state_reg[0]_0 ;
  output spike_reg_reg;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_1 ;
  output spike_reg_reg_0;
  output [31:0]D;
  output [0:0]CO;
  output [0:0]stage1_r_reg;
  output \state_reg[0]_2 ;
  output \state_reg[1]_1 ;
  output \state_reg[2]_1 ;
  output \cnt_prop_reg[0] ;
  output \cnt_prop_reg[0]_0 ;
  output \state_reg[1]_2 ;
  output \state_reg[1]_3 ;
  output [15:0]\cuts_best_reg[15] ;
  output [0:0]\x_reg[7] ;
  input s00_axi_aclk;
  input new_sample_reg;
  input \state_reg[1]_4 ;
  input \state_reg[0]_3 ;
  input spike_reg_reg_1;
  input \state_reg[1]_5 ;
  input \state_reg[0]_4 ;
  input spike_reg_reg_2;
  input [1:0]\state_reg[0]_5 ;
  input [4:0]\state_reg[4] ;
  input [11:0]\state_ram_reg[3][1] ;
  input [1:0]\mem_ram_reg[3][9] ;
  input [1:0]\mem_ram_reg[3][0] ;
  input [1:0]\state_reg[2]_2 ;
  input [4:0]\state_reg[4]_0 ;
  input x_reg_rep;

  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire NEURO_SA_n_83;
  wire NEURO_SA_n_84;
  wire NEURO_SA_n_85;
  wire NEURO_SA_n_86;
  wire NEURO_SA_n_87;
  wire NEURO_SA_n_88;
  wire NEURO_SA_n_89;
  wire NEURO_SA_n_90;
  wire [1:0]Q;
  wire \cnt_prop_reg[0] ;
  wire \cnt_prop_reg[0]_0 ;
  wire [15:0]\cuts_best_reg[15] ;
  wire flipping_CE;
  wire flipping_CE_0;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [1:0]\mem_ram_reg[3][9] ;
  wire new_sample_reg;
  wire \p_0_out_inferred__0/stage1_r_reg_i_10_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_11_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_12_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_13_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_15_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_16_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_17_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_18_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_19_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_20_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_21_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_22_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_23_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_24_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_25_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_26_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_27_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_28_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_29_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_2_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_30_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_31_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_32_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_33_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_34_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_35_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_36_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_37_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_38_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_39_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_3_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_40_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_41_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_42_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_43_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_44_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_45_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_46_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_47_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_48_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_49_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_4_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_50_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_51_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_52_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_53_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_54_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_55_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_56_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_57_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_5_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_6_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_7_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_8_n_0 ;
  wire \p_0_out_inferred__0/stage1_r_reg_i_9_n_0 ;
  wire s00_axi_aclk;
  wire [7:0]sel;
  wire spike_reg_reg;
  wire spike_reg_reg_0;
  wire spike_reg_reg_1;
  wire spike_reg_reg_2;
  wire [0:0]stage1_r_reg;
  wire stage1_r_reg_i_10_n_0;
  wire stage1_r_reg_i_11_n_0;
  wire stage1_r_reg_i_12_n_0;
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
  wire stage1_r_reg_i_2_n_0;
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
  wire stage1_r_reg_i_3_n_0;
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
  wire stage1_r_reg_i_4_n_0;
  wire stage1_r_reg_i_50_n_0;
  wire stage1_r_reg_i_51_n_0;
  wire stage1_r_reg_i_52_n_0;
  wire stage1_r_reg_i_53_n_0;
  wire stage1_r_reg_i_54_n_0;
  wire stage1_r_reg_i_55_n_0;
  wire stage1_r_reg_i_56_n_0;
  wire stage1_r_reg_i_57_n_0;
  wire stage1_r_reg_i_5_n_0;
  wire stage1_r_reg_i_6_n_0;
  wire stage1_r_reg_i_7_n_0;
  wire stage1_r_reg_i_8_n_0;
  wire stage1_r_reg_i_9_n_0;
  wire [11:0]\state_ram_reg[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire \state_reg[0]_4 ;
  wire [1:0]\state_reg[0]_5 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[1]_4 ;
  wire \state_reg[1]_5 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire [1:0]\state_reg[2]_2 ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
  wire \unit_gen[0].unit_inst/G_memory/Q_out[0]_i_1_n_0 ;
  wire \unit_gen[0].unit_inst/G_memory/Q_out[1]_i_1_n_0 ;
  wire \unit_gen[0].unit_inst/G_memory/Q_out[2]_i_1_n_0 ;
  wire \unit_gen[0].unit_inst/G_memory/Q_out[3]_i_2_n_0 ;
  wire \unit_gen[1].unit_inst/G_memory/Q_out[0]_i_1_n_0 ;
  wire \unit_gen[1].unit_inst/G_memory/Q_out[1]_i_1_n_0 ;
  wire \unit_gen[1].unit_inst/G_memory/Q_out[2]_i_1_n_0 ;
  wire \unit_gen[1].unit_inst/G_memory/Q_out[3]_i_2_n_0 ;
  wire [2:0]\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg ;
  wire [0:0]\x_reg[7] ;
  wire x_reg_rep;

  whole_system_fowler_nordheim_anne_0_1_neuroSA_machine NEURO_SA
       (.A({stage1_r_reg_i_2_n_0,stage1_r_reg_i_3_n_0,stage1_r_reg_i_4_n_0,stage1_r_reg_i_5_n_0,stage1_r_reg_i_6_n_0,stage1_r_reg_i_7_n_0,stage1_r_reg_i_8_n_0,stage1_r_reg_i_9_n_0,stage1_r_reg_i_10_n_0,stage1_r_reg_i_11_n_0,stage1_r_reg_i_12_n_0,stage1_r_reg_i_13_n_0}),
        .CO(CO),
        .D(D),
        .E(E),
        .Q(Q),
        .\Q_out_reg[3] ({\unit_gen[0].unit_inst/G_memory/Q_out[3]_i_2_n_0 ,\unit_gen[0].unit_inst/G_memory/Q_out[2]_i_1_n_0 ,\unit_gen[0].unit_inst/G_memory/Q_out[1]_i_1_n_0 ,\unit_gen[0].unit_inst/G_memory/Q_out[0]_i_1_n_0 }),
        .\Q_out_reg[3]_0 ({\unit_gen[1].unit_inst/G_memory/Q_out[3]_i_2_n_0 ,\unit_gen[1].unit_inst/G_memory/Q_out[2]_i_1_n_0 ,\unit_gen[1].unit_inst/G_memory/Q_out[1]_i_1_n_0 ,\unit_gen[1].unit_inst/G_memory/Q_out[0]_i_1_n_0 }),
        .\cnt_prop_reg[0] (\cnt_prop_reg[0] ),
        .\cnt_prop_reg[0]_0 (\cnt_prop_reg[0]_0 ),
        .\cuts_best_reg[15] (\cuts_best_reg[15] ),
        .flipping_CE(flipping_CE),
        .flipping_CE_0(flipping_CE_0),
        .\index_of_neuron_that_fired_reg_reg[2] (\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg ),
        .\mem_ram_reg[3][0] (\mem_ram_reg[3][0] ),
        .\mem_ram_reg[3][9] (\mem_ram_reg[3][9] ),
        .new_sample_reg(new_sample_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .spike_reg_reg(spike_reg_reg),
        .spike_reg_reg_0(spike_reg_reg_0),
        .spike_reg_reg_1(spike_reg_reg_1),
        .spike_reg_reg_2(spike_reg_reg_2),
        .stage1_r_reg(stage1_r_reg),
        .stage1_r_reg_0({\p_0_out_inferred__0/stage1_r_reg_i_2_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_3_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_4_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_5_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_6_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_7_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_8_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_9_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_10_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_11_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_12_n_0 ,\p_0_out_inferred__0/stage1_r_reg_i_13_n_0 }),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .\state_reg[0]_2 (\state_reg[0]_2 ),
        .\state_reg[0]_3 (\state_reg[0]_3 ),
        .\state_reg[0]_4 (\state_reg[0]_4 ),
        .\state_reg[0]_5 (\state_reg[0]_5 ),
        .\state_reg[15] (sel),
        .\state_reg[15]_0 ({NEURO_SA_n_83,NEURO_SA_n_84,NEURO_SA_n_85,NEURO_SA_n_86,NEURO_SA_n_87,NEURO_SA_n_88,NEURO_SA_n_89,NEURO_SA_n_90}),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_1 ),
        .\state_reg[1]_2 (\state_reg[1]_2 ),
        .\state_reg[1]_3 (\state_reg[1]_3 ),
        .\state_reg[1]_4 (\state_reg[1]_4 ),
        .\state_reg[1]_5 (\state_reg[1]_5 ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .\state_reg[2]_1 (\state_reg[2]_1 ),
        .\state_reg[2]_2 (\state_reg[2]_2 ),
        .\state_reg[4] (\state_reg[4] ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .\x_reg[7] (\x_reg[7] ),
        .x_reg_rep(x_reg_rep));
  MUXF8 \p_0_out_inferred__0/stage1_r_reg_i_10 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_29_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_30_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_10_n_0 ),
        .S(NEURO_SA_n_83));
  MUXF8 \p_0_out_inferred__0/stage1_r_reg_i_11 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_31_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_32_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_11_n_0 ),
        .S(NEURO_SA_n_83));
  MUXF8 \p_0_out_inferred__0/stage1_r_reg_i_12 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_33_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_34_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_12_n_0 ),
        .S(NEURO_SA_n_83));
  MUXF8 \p_0_out_inferred__0/stage1_r_reg_i_13 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_35_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_36_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_13_n_0 ),
        .S(NEURO_SA_n_83));
  LUT6 #(
    .INIT(64'h00001555FFFFFFFF)) 
    \p_0_out_inferred__0/stage1_r_reg_i_14 
       (.I0(NEURO_SA_n_86),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \p_0_out_inferred__0/stage1_r_reg_i_15 
       (.I0(NEURO_SA_n_86),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEB)) 
    \p_0_out_inferred__0/stage1_r_reg_i_16 
       (.I0(NEURO_SA_n_86),
        .I1(NEURO_SA_n_88),
        .I2(NEURO_SA_n_89),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEA0515)) 
    \p_0_out_inferred__0/stage1_r_reg_i_17 
       (.I0(NEURO_SA_n_87),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_86),
        .I5(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \p_0_out_inferred__0/stage1_r_reg_i_18 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_87),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_86),
        .I4(NEURO_SA_n_84),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8989D9D9D8C8C)) 
    \p_0_out_inferred__0/stage1_r_reg_i_19 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \p_0_out_inferred__0/stage1_r_reg_i_2 
       (.I0(NEURO_SA_n_84),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ),
        .I2(NEURO_SA_n_83),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333737FCCCCCCC)) 
    \p_0_out_inferred__0/stage1_r_reg_i_20 
       (.I0(NEURO_SA_n_88),
        .I1(NEURO_SA_n_84),
        .I2(NEURO_SA_n_86),
        .I3(\p_0_out_inferred__0/stage1_r_reg_i_37_n_0 ),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557766666)) 
    \p_0_out_inferred__0/stage1_r_reg_i_21 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_87),
        .I2(NEURO_SA_n_90),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_86),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5237122623262377)) 
    \p_0_out_inferred__0/stage1_r_reg_i_22 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_87),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \p_0_out_inferred__0/stage1_r_reg_i_23 
       (.I0(NEURO_SA_n_86),
        .I1(NEURO_SA_n_87),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_85),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9991999555555555)) 
    \p_0_out_inferred__0/stage1_r_reg_i_24 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_87),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_86),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hCC44C44446336733)) 
    \p_0_out_inferred__0/stage1_r_reg_i_25 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_89),
        .I3(NEURO_SA_n_88),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_87),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8F20EB44CF35E340)) 
    \p_0_out_inferred__0/stage1_r_reg_i_26 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_89),
        .I3(NEURO_SA_n_87),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_90),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_26_n_0 ));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_27 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_38_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_39_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_27_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_28 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_40_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_41_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_28_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_29 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_42_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_43_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_29_n_0 ),
        .S(NEURO_SA_n_84));
  LUT4 #(
    .INIT(16'h00E2)) 
    \p_0_out_inferred__0/stage1_r_reg_i_3 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_15_n_0 ),
        .I1(NEURO_SA_n_84),
        .I2(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ),
        .I3(NEURO_SA_n_83),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_3_n_0 ));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_30 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_44_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_45_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_30_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_31 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_46_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_47_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_31_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_32 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_48_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_49_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_32_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_33 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_50_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_51_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_33_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_34 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_52_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_53_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_34_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_35 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_54_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_55_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_35_n_0 ),
        .S(NEURO_SA_n_84));
  MUXF7 \p_0_out_inferred__0/stage1_r_reg_i_36 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_56_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_57_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_36_n_0 ),
        .S(NEURO_SA_n_84));
  LUT3 #(
    .INIT(8'hFE)) 
    \p_0_out_inferred__0/stage1_r_reg_i_37 
       (.I0(NEURO_SA_n_89),
        .I1(NEURO_SA_n_88),
        .I2(NEURO_SA_n_90),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8CD932E276BF5C15)) 
    \p_0_out_inferred__0/stage1_r_reg_i_38 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_90),
        .I3(NEURO_SA_n_87),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h585A8F8F5A9B8F87)) 
    \p_0_out_inferred__0/stage1_r_reg_i_39 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \p_0_out_inferred__0/stage1_r_reg_i_4 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_16_n_0 ),
        .I1(NEURO_SA_n_84),
        .I2(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ),
        .I3(NEURO_SA_n_83),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FB8F0F0F0F0)) 
    \p_0_out_inferred__0/stage1_r_reg_i_40 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_86),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_87),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3B33330000C0C)) 
    \p_0_out_inferred__0/stage1_r_reg_i_41 
       (.I0(NEURO_SA_n_90),
        .I1(NEURO_SA_n_85),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_86),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h18A3D17B4DB71DF1)) 
    \p_0_out_inferred__0/stage1_r_reg_i_42 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_90),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h282222E3D7D7D4DC)) 
    \p_0_out_inferred__0/stage1_r_reg_i_43 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00B7FAC8)) 
    \p_0_out_inferred__0/stage1_r_reg_i_44 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_86),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h5855A5A575E5AAAA)) 
    \p_0_out_inferred__0/stage1_r_reg_i_45 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_90),
        .I2(NEURO_SA_n_86),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h1A40FB0822D8618F)) 
    \p_0_out_inferred__0/stage1_r_reg_i_46 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h75F51EB40A23CB0B)) 
    \p_0_out_inferred__0/stage1_r_reg_i_47 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_88),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFF667E00019101FF)) 
    \p_0_out_inferred__0/stage1_r_reg_i_48 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h4633CCC43BBC7333)) 
    \p_0_out_inferred__0/stage1_r_reg_i_49 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_90),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \p_0_out_inferred__0/stage1_r_reg_i_5 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_17_n_0 ),
        .I1(NEURO_SA_n_84),
        .I2(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ),
        .I3(NEURO_SA_n_83),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA31D5C845505FAAF)) 
    \p_0_out_inferred__0/stage1_r_reg_i_50 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h946B36C13E61D72A)) 
    \p_0_out_inferred__0/stage1_r_reg_i_51 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h6667810199907EEE)) 
    \p_0_out_inferred__0/stage1_r_reg_i_52 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_88),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h85287B7F787F0680)) 
    \p_0_out_inferred__0/stage1_r_reg_i_53 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_87),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h7D0271E88B37168C)) 
    \p_0_out_inferred__0/stage1_r_reg_i_54 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_88),
        .I5(NEURO_SA_n_89),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h2E48A4E83A93BA01)) 
    \p_0_out_inferred__0/stage1_r_reg_i_55 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_88),
        .I3(NEURO_SA_n_89),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_87),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h1188EE771991676E)) 
    \p_0_out_inferred__0/stage1_r_reg_i_56 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_89),
        .I3(NEURO_SA_n_87),
        .I4(NEURO_SA_n_90),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h1CA0D70823D60977)) 
    \p_0_out_inferred__0/stage1_r_reg_i_57 
       (.I0(NEURO_SA_n_85),
        .I1(NEURO_SA_n_86),
        .I2(NEURO_SA_n_87),
        .I3(NEURO_SA_n_90),
        .I4(NEURO_SA_n_89),
        .I5(NEURO_SA_n_88),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_out_inferred__0/stage1_r_reg_i_6 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_18_n_0 ),
        .I1(NEURO_SA_n_83),
        .I2(\p_0_out_inferred__0/stage1_r_reg_i_14_n_0 ),
        .I3(NEURO_SA_n_84),
        .I4(\p_0_out_inferred__0/stage1_r_reg_i_19_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_out_inferred__0/stage1_r_reg_i_7 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_20_n_0 ),
        .I1(NEURO_SA_n_83),
        .I2(\p_0_out_inferred__0/stage1_r_reg_i_21_n_0 ),
        .I3(NEURO_SA_n_84),
        .I4(\p_0_out_inferred__0/stage1_r_reg_i_22_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_0_out_inferred__0/stage1_r_reg_i_8 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_23_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_24_n_0 ),
        .I2(NEURO_SA_n_83),
        .I3(\p_0_out_inferred__0/stage1_r_reg_i_25_n_0 ),
        .I4(NEURO_SA_n_84),
        .I5(\p_0_out_inferred__0/stage1_r_reg_i_26_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_8_n_0 ));
  MUXF8 \p_0_out_inferred__0/stage1_r_reg_i_9 
       (.I0(\p_0_out_inferred__0/stage1_r_reg_i_27_n_0 ),
        .I1(\p_0_out_inferred__0/stage1_r_reg_i_28_n_0 ),
        .O(\p_0_out_inferred__0/stage1_r_reg_i_9_n_0 ),
        .S(NEURO_SA_n_83));
  MUXF8 stage1_r_reg_i_10
       (.I0(stage1_r_reg_i_29_n_0),
        .I1(stage1_r_reg_i_30_n_0),
        .O(stage1_r_reg_i_10_n_0),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_11
       (.I0(stage1_r_reg_i_31_n_0),
        .I1(stage1_r_reg_i_32_n_0),
        .O(stage1_r_reg_i_11_n_0),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_12
       (.I0(stage1_r_reg_i_33_n_0),
        .I1(stage1_r_reg_i_34_n_0),
        .O(stage1_r_reg_i_12_n_0),
        .S(sel[7]));
  MUXF8 stage1_r_reg_i_13
       (.I0(stage1_r_reg_i_35_n_0),
        .I1(stage1_r_reg_i_36_n_0),
        .O(stage1_r_reg_i_13_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
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
        .O(stage1_r_reg_i_2_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
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
        .O(stage1_r_reg_i_3_n_0));
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
        .O(stage1_r_reg_i_4_n_0));
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
        .O(stage1_r_reg_i_5_n_0));
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
        .O(stage1_r_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    stage1_r_reg_i_7
       (.I0(stage1_r_reg_i_20_n_0),
        .I1(sel[7]),
        .I2(stage1_r_reg_i_21_n_0),
        .I3(sel[6]),
        .I4(stage1_r_reg_i_22_n_0),
        .O(stage1_r_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    stage1_r_reg_i_8
       (.I0(stage1_r_reg_i_23_n_0),
        .I1(stage1_r_reg_i_24_n_0),
        .I2(sel[7]),
        .I3(stage1_r_reg_i_25_n_0),
        .I4(sel[6]),
        .I5(stage1_r_reg_i_26_n_0),
        .O(stage1_r_reg_i_8_n_0));
  MUXF8 stage1_r_reg_i_9
       (.I0(stage1_r_reg_i_27_n_0),
        .I1(stage1_r_reg_i_28_n_0),
        .O(stage1_r_reg_i_9_n_0),
        .S(sel[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \unit_gen[0].unit_inst/G_memory/Q_out[0]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .O(\unit_gen[0].unit_inst/G_memory/Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \unit_gen[0].unit_inst/G_memory/Q_out[1]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .O(\unit_gen[0].unit_inst/G_memory/Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \unit_gen[0].unit_inst/G_memory/Q_out[2]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .O(\unit_gen[0].unit_inst/G_memory/Q_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \unit_gen[0].unit_inst/G_memory/Q_out[3]_i_2 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .O(\unit_gen[0].unit_inst/G_memory/Q_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h63)) 
    \unit_gen[1].unit_inst/G_memory/Q_out[0]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .O(\unit_gen[1].unit_inst/G_memory/Q_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \unit_gen[1].unit_inst/G_memory/Q_out[1]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .O(\unit_gen[1].unit_inst/G_memory/Q_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \unit_gen[1].unit_inst/G_memory/Q_out[2]_i_1 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .O(\unit_gen[1].unit_inst/G_memory/Q_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \unit_gen[1].unit_inst/G_memory/Q_out[3]_i_2 
       (.I0(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [0]),
        .I1(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [2]),
        .I2(\unit_gen[1].unit_inst/index_of_neuron_that_fired_reg [1]),
        .O(\unit_gen[1].unit_inst/G_memory/Q_out[3]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "neuroSA_machine" *) 
module whole_system_fowler_nordheim_anne_0_1_neuroSA_machine
   (flipping_CE,
    E,
    \state_reg[0] ,
    flipping_CE_0,
    Q,
    \state_reg[2] ,
    \state_reg[1] ,
    \state_reg[0]_0 ,
    spike_reg_reg,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_1 ,
    spike_reg_reg_0,
    D,
    CO,
    stage1_r_reg,
    \state_reg[0]_2 ,
    \state_reg[1]_1 ,
    \state_reg[2]_1 ,
    \cnt_prop_reg[0] ,
    \cnt_prop_reg[0]_0 ,
    \state_reg[1]_2 ,
    \index_of_neuron_that_fired_reg_reg[2] ,
    \state_reg[1]_3 ,
    \cuts_best_reg[15] ,
    \x_reg[7] ,
    \state_reg[15] ,
    \state_reg[15]_0 ,
    s00_axi_aclk,
    A,
    stage1_r_reg_0,
    new_sample_reg,
    \state_reg[1]_4 ,
    \state_reg[0]_3 ,
    spike_reg_reg_1,
    \state_reg[1]_5 ,
    \state_reg[0]_4 ,
    spike_reg_reg_2,
    \state_reg[0]_5 ,
    \state_reg[4] ,
    \state_ram_reg[3][1] ,
    \mem_ram_reg[3][9] ,
    \mem_ram_reg[3][0] ,
    \state_reg[2]_2 ,
    \state_reg[4]_0 ,
    \Q_out_reg[3] ,
    x_reg_rep,
    \Q_out_reg[3]_0 );
  output flipping_CE;
  output [0:0]E;
  output [0:0]\state_reg[0] ;
  output flipping_CE_0;
  output [1:0]Q;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output \state_reg[0]_0 ;
  output spike_reg_reg;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_1 ;
  output spike_reg_reg_0;
  output [31:0]D;
  output [0:0]CO;
  output [0:0]stage1_r_reg;
  output \state_reg[0]_2 ;
  output \state_reg[1]_1 ;
  output \state_reg[2]_1 ;
  output \cnt_prop_reg[0] ;
  output \cnt_prop_reg[0]_0 ;
  output \state_reg[1]_2 ;
  output [2:0]\index_of_neuron_that_fired_reg_reg[2] ;
  output \state_reg[1]_3 ;
  output [15:0]\cuts_best_reg[15] ;
  output [0:0]\x_reg[7] ;
  output [7:0]\state_reg[15] ;
  output [7:0]\state_reg[15]_0 ;
  input s00_axi_aclk;
  input [11:0]A;
  input [11:0]stage1_r_reg_0;
  input new_sample_reg;
  input \state_reg[1]_4 ;
  input \state_reg[0]_3 ;
  input spike_reg_reg_1;
  input \state_reg[1]_5 ;
  input \state_reg[0]_4 ;
  input spike_reg_reg_2;
  input [1:0]\state_reg[0]_5 ;
  input [4:0]\state_reg[4] ;
  input [11:0]\state_ram_reg[3][1] ;
  input [1:0]\mem_ram_reg[3][9] ;
  input [1:0]\mem_ram_reg[3][0] ;
  input [1:0]\state_reg[2]_2 ;
  input [4:0]\state_reg[4]_0 ;
  input [3:0]\Q_out_reg[3] ;
  input x_reg_rep;
  input [3:0]\Q_out_reg[3]_0 ;

  wire [11:0]A;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]\Q_out_reg[3] ;
  wire [3:0]\Q_out_reg[3]_0 ;
  wire add_mem;
  wire [1:1]add_mems;
  wire add_r;
  wire \cnt_prop_reg[0] ;
  wire \cnt_prop_reg[0]_0 ;
  wire [15:0]\cuts_best_reg[15] ;
  wire flipping_CE;
  wire flipping_CE_0;
  wire incrementing_reg;
  wire [2:0]index_of_neuron_that_fired;
  wire [2:0]\index_of_neuron_that_fired_reg_reg[2] ;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [1:0]\mem_ram_reg[3][9] ;
  wire [9:0]membrane;
  wire new_sample_reg;
  wire [1:0]offset;
  wire [3:2]offsets;
  wire s00_axi_aclk;
  wire scheduler_instance_n_36;
  wire scheduler_instance_n_55;
  wire \selector/spiked1 ;
  wire spike_reg_reg;
  wire spike_reg_reg_0;
  wire spike_reg_reg_1;
  wire spike_reg_reg_2;
  wire [0:0]stage1_r_reg;
  wire [11:0]stage1_r_reg_0;
  wire [11:0]\state_ram_reg[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire \state_reg[0]_4 ;
  wire [1:0]\state_reg[0]_5 ;
  wire [7:0]\state_reg[15] ;
  wire [7:0]\state_reg[15]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[1]_4 ;
  wire \state_reg[1]_5 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire [1:0]\state_reg[2]_2 ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
  wire storage_CE_advance;
  wire \unit_gen[0].unit_inst_n_14 ;
  wire \unit_gen[0].unit_inst_n_15 ;
  wire \unit_gen[0].unit_inst_n_16 ;
  wire \unit_gen[0].unit_inst_n_17 ;
  wire \unit_gen[0].unit_inst_n_39 ;
  wire \unit_gen[0].unit_inst_n_40 ;
  wire \unit_gen[0].unit_inst_n_41 ;
  wire \unit_gen[0].unit_inst_n_42 ;
  wire \unit_gen[0].unit_inst_n_43 ;
  wire \unit_gen[0].unit_inst_n_44 ;
  wire \unit_gen[0].unit_inst_n_45 ;
  wire \unit_gen[0].unit_inst_n_46 ;
  wire \unit_gen[0].unit_inst_n_47 ;
  wire \unit_gen[0].unit_inst_n_48 ;
  wire \unit_gen[0].unit_inst_n_49 ;
  wire \unit_gen[0].unit_inst_n_50 ;
  wire \unit_gen[0].unit_inst_n_51 ;
  wire \unit_gen[0].unit_inst_n_52 ;
  wire \unit_gen[0].unit_inst_n_53 ;
  wire \unit_gen[0].unit_inst_n_54 ;
  wire \unit_gen[0].unit_inst_n_55 ;
  wire \unit_gen[0].unit_inst_n_56 ;
  wire \unit_gen[1].unit_inst_n_11 ;
  wire \unit_gen[1].unit_inst_n_12 ;
  wire \unit_gen[1].unit_inst_n_13 ;
  wire \unit_gen[1].unit_inst_n_14 ;
  wire \unit_gen[1].unit_inst_n_15 ;
  wire \unit_gen[1].unit_inst_n_16 ;
  wire \unit_gen[1].unit_inst_n_17 ;
  wire \unit_gen[1].unit_inst_n_18 ;
  wire \unit_gen[1].unit_inst_n_19 ;
  wire \unit_gen[1].unit_inst_n_22 ;
  wire \unit_gen[1].unit_inst_n_35 ;
  wire \unit_gen[1].unit_inst_n_36 ;
  wire \unit_gen[1].unit_inst_n_37 ;
  wire \unit_gen[1].unit_inst_n_38 ;
  wire \unit_gen[1].unit_inst_n_39 ;
  wire \unit_gen[1].unit_inst_n_40 ;
  wire \unit_gen[1].unit_inst_n_41 ;
  wire \unit_gen[1].unit_inst_n_42 ;
  wire \unit_gen[1].unit_inst_n_43 ;
  wire \unit_gen[1].unit_inst_n_44 ;
  wire [0:0]\x_reg[7] ;
  wire x_reg_rep;

  whole_system_fowler_nordheim_anne_0_1_scheduler_2 scheduler_instance
       (.D(index_of_neuron_that_fired),
        .Q(Q),
        .SR(scheduler_instance_n_36),
        .add_mem(add_mem),
        .add_r(add_r),
        .\cuts_best_reg[15]_0 (\cuts_best_reg[15] ),
        .\flips_reg[31]_0 (D),
        .\mem_r_reg[9]_0 (membrane),
        .\off_r_reg[1]_0 (spike_reg_reg_0),
        .\off_r_reg[1]_1 (spike_reg_reg),
        .\off_r_reg[1]_2 (offset),
        .s00_axi_aclk(s00_axi_aclk),
        .spiked1(\selector/spiked1 ),
        .\step_cnt_reg[0]_0 (\state_reg[2]_2 [0]),
        .\step_cnt_reg[10]_0 (scheduler_instance_n_55));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_with_memory_with_buff \unit_gen[0].unit_inst 
       (.A(A),
        .ADDRBWRADDR({\unit_gen[1].unit_inst_n_11 ,\unit_gen[1].unit_inst_n_12 ,\unit_gen[1].unit_inst_n_13 ,\unit_gen[1].unit_inst_n_14 ,\unit_gen[1].unit_inst_n_15 ,\unit_gen[1].unit_inst_n_16 ,\unit_gen[1].unit_inst_n_17 ,\unit_gen[1].unit_inst_n_18 ,\unit_gen[1].unit_inst_n_19 }),
        .B({\unit_gen[0].unit_inst_n_39 ,\unit_gen[0].unit_inst_n_40 ,\unit_gen[0].unit_inst_n_41 ,\unit_gen[0].unit_inst_n_42 ,\unit_gen[0].unit_inst_n_43 ,\unit_gen[0].unit_inst_n_44 ,\unit_gen[0].unit_inst_n_45 ,\unit_gen[0].unit_inst_n_46 ,\unit_gen[0].unit_inst_n_47 ,\unit_gen[0].unit_inst_n_48 ,\unit_gen[0].unit_inst_n_49 ,\unit_gen[0].unit_inst_n_50 ,\unit_gen[0].unit_inst_n_51 ,\unit_gen[0].unit_inst_n_52 ,\unit_gen[0].unit_inst_n_53 ,\unit_gen[0].unit_inst_n_54 ,\unit_gen[0].unit_inst_n_55 ,\unit_gen[0].unit_inst_n_56 }),
        .CO(CO),
        .D(index_of_neuron_that_fired),
        .E(E),
        .Q(Q),
        .\Q_out_reg[3] (\Q_out_reg[3] ),
        .SR(scheduler_instance_n_36),
        .add_mem(add_mem),
        .add_r(add_r),
        .add_r_reg(add_mems),
        .add_r_reg_0(spike_reg_reg_0),
        .\cnt_prop_reg[0] (\cnt_prop_reg[0] ),
        .flipping_CE(flipping_CE),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[2]_0 (\index_of_neuron_that_fired_reg_reg[2] ),
        .\mem_r_reg[9] ({\unit_gen[1].unit_inst_n_35 ,\unit_gen[1].unit_inst_n_36 ,\unit_gen[1].unit_inst_n_37 ,\unit_gen[1].unit_inst_n_38 ,\unit_gen[1].unit_inst_n_39 ,\unit_gen[1].unit_inst_n_40 ,\unit_gen[1].unit_inst_n_41 ,\unit_gen[1].unit_inst_n_42 ,\unit_gen[1].unit_inst_n_43 ,\unit_gen[1].unit_inst_n_44 }),
        .\mem_ram_reg[3][0] (\mem_ram_reg[3][0] ),
        .\membrane_reg_reg[9] (membrane),
        .new_sample_reg(new_sample_reg),
        .\off_r_reg[1] (offsets),
        .\offset_reg_reg[1] (offset),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg6_reg[0] (\unit_gen[0].unit_inst_n_16 ),
        .\slv_reg6_reg[1] (\unit_gen[0].unit_inst_n_14 ),
        .\slv_reg6_reg[1]_0 (\unit_gen[0].unit_inst_n_15 ),
        .\slv_reg6_reg[1]_1 (\unit_gen[0].unit_inst_n_17 ),
        .spike_reg_reg(spike_reg_reg),
        .spike_reg_reg_0(spike_reg_reg_1),
        .\state_ram_reg[0][0] (\mem_ram_reg[3][9] ),
        .\state_ram_reg[0][0]_0 (\unit_gen[1].unit_inst_n_22 ),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_3 ),
        .\state_reg[0]_2 (\state_reg[0]_5 [0]),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[1]_1 (\state_reg[1]_2 ),
        .\state_reg[1]_2 (\state_reg[1]_4 ),
        .\state_reg[2]_0 (\state_reg[2] ),
        .\state_reg[2]_1 (\state_reg[2]_2 [1]),
        .\state_reg[4] (\state_reg[4] ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .storage_CE_advance(storage_CE_advance),
        .\x_reg[0] (scheduler_instance_n_55),
        .x_reg_rep(x_reg_rep));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_with_memory_with_buff__parameterized0 \unit_gen[1].unit_inst 
       (.ADDRBWRADDR({\unit_gen[1].unit_inst_n_11 ,\unit_gen[1].unit_inst_n_12 ,\unit_gen[1].unit_inst_n_13 ,\unit_gen[1].unit_inst_n_14 ,\unit_gen[1].unit_inst_n_15 ,\unit_gen[1].unit_inst_n_16 ,\unit_gen[1].unit_inst_n_17 ,\unit_gen[1].unit_inst_n_18 ,\unit_gen[1].unit_inst_n_19 }),
        .B({\unit_gen[0].unit_inst_n_39 ,\unit_gen[0].unit_inst_n_40 ,\unit_gen[0].unit_inst_n_41 ,\unit_gen[0].unit_inst_n_42 ,\unit_gen[0].unit_inst_n_43 ,\unit_gen[0].unit_inst_n_44 ,\unit_gen[0].unit_inst_n_45 ,\unit_gen[0].unit_inst_n_46 ,\unit_gen[0].unit_inst_n_47 ,\unit_gen[0].unit_inst_n_48 ,\unit_gen[0].unit_inst_n_49 ,\unit_gen[0].unit_inst_n_50 ,\unit_gen[0].unit_inst_n_51 ,\unit_gen[0].unit_inst_n_52 ,\unit_gen[0].unit_inst_n_53 ,\unit_gen[0].unit_inst_n_54 ,\unit_gen[0].unit_inst_n_55 ,\unit_gen[0].unit_inst_n_56 }),
        .E(\state_reg[0] ),
        .Q(Q),
        .\Q_out_reg[3] (\Q_out_reg[3]_0 ),
        .SR(scheduler_instance_n_36),
        .add_mem_reg_reg(add_mems),
        .\cnt_prop_reg[0] (\cnt_prop_reg[0]_0 ),
        .flipping_CE_0(flipping_CE_0),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[2] (\unit_gen[1].unit_inst_n_22 ),
        .\mem_ram_reg[3][0] (\mem_ram_reg[3][0] ),
        .\mem_ram_reg[3][9] (\mem_ram_reg[3][9] [1]),
        .\membrane_reg_reg[9] ({\unit_gen[1].unit_inst_n_35 ,\unit_gen[1].unit_inst_n_36 ,\unit_gen[1].unit_inst_n_37 ,\unit_gen[1].unit_inst_n_38 ,\unit_gen[1].unit_inst_n_39 ,\unit_gen[1].unit_inst_n_40 ,\unit_gen[1].unit_inst_n_41 ,\unit_gen[1].unit_inst_n_42 ,\unit_gen[1].unit_inst_n_43 ,\unit_gen[1].unit_inst_n_44 }),
        .\offset_reg_reg[1] (offsets),
        .s00_axi_aclk(s00_axi_aclk),
        .spike_reg_reg(spike_reg_reg_0),
        .spike_reg_reg_0(spike_reg_reg_2),
        .spiked1(\selector/spiked1 ),
        .stage1_r_reg(stage1_r_reg),
        .stage1_r_reg_0(stage1_r_reg_0),
        .\state_ram[3][1]_i_2__0 (\index_of_neuron_that_fired_reg_reg[2] ),
        .\state_ram_reg[0][0] (\unit_gen[0].unit_inst_n_14 ),
        .\state_ram_reg[1][0] (\unit_gen[0].unit_inst_n_15 ),
        .\state_ram_reg[2][0] (\unit_gen[0].unit_inst_n_16 ),
        .\state_ram_reg[3][0] (\unit_gen[0].unit_inst_n_17 ),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0]_0 (\state_reg[0]_1 ),
        .\state_reg[0]_1 (\state_reg[0]_2 ),
        .\state_reg[0]_2 (\state_reg[0]_4 ),
        .\state_reg[0]_3 (\state_reg[0]_5 [1]),
        .\state_reg[15] (\state_reg[15]_0 ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_1 ),
        .\state_reg[1]_2 (\state_reg[1]_3 ),
        .\state_reg[1]_3 (\state_reg[1]_5 ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .\state_reg[2]_1 (\state_reg[2]_1 ),
        .\state_reg[2]_2 (\state_reg[2]_2 [1]),
        .\state_reg[4] (\state_reg[4] ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .storage_CE_advance(storage_CE_advance),
        .\unit_r_reg[0] (spike_reg_reg),
        .\x_reg[7] (\x_reg[7] ),
        .\x_reg[8] (scheduler_instance_n_55));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble
   (flipping_CE,
    CO,
    Q,
    \mem_p_reg[9]_0 ,
    \state_reg[1] ,
    \state_reg[2] ,
    \slv_reg6_reg[1] ,
    \slv_reg6_reg[1]_0 ,
    \slv_reg6_reg[0] ,
    \slv_reg6_reg[1]_1 ,
    \state_reg[15] ,
    B,
    \idx_p_reg[1]_0 ,
    s00_axi_aclk,
    A,
    \state_reg[0] ,
    \state_reg[4] ,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    \_inferred__2/i__carry ,
    \state_ram_reg[3][1] ,
    \state_ram_reg[0][0] ,
    \state_ram_reg[0][1] ,
    \state_ram[0][1]_i_2 ,
    \state_ram_reg[0][0]_0 ,
    \x_reg[0] ,
    \state_reg[4]_0 ,
    \state_reg[0]_0 ,
    storage_CE_advance,
    E,
    \mem_ram_reg[2][0] ,
    \mem_ram_reg[1][0] ,
    \mem_ram_reg[0][0] ,
    x_reg_rep_2,
    ADDRBWRADDR);
  output flipping_CE;
  output [0:0]CO;
  output [0:0]Q;
  output [9:0]\mem_p_reg[9]_0 ;
  output \state_reg[1] ;
  output \state_reg[2] ;
  output \slv_reg6_reg[1] ;
  output \slv_reg6_reg[1]_0 ;
  output \slv_reg6_reg[0] ;
  output \slv_reg6_reg[1]_1 ;
  output [7:0]\state_reg[15] ;
  output [17:0]B;
  output [1:0]\idx_p_reg[1]_0 ;
  input s00_axi_aclk;
  input [11:0]A;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input \_inferred__2/i__carry ;
  input [11:0]\state_ram_reg[3][1] ;
  input [1:0]\state_ram_reg[0][0] ;
  input [1:0]\state_ram_reg[0][1] ;
  input [2:0]\state_ram[0][1]_i_2 ;
  input \state_ram_reg[0][0]_0 ;
  input \x_reg[0] ;
  input [4:0]\state_reg[4]_0 ;
  input [0:0]\state_reg[0]_0 ;
  input storage_CE_advance;
  input [0:0]E;
  input [0:0]\mem_ram_reg[2][0] ;
  input [0:0]\mem_ram_reg[1][0] ;
  input [0:0]\mem_ram_reg[0][0] ;
  input x_reg_rep_2;
  input [8:0]ADDRBWRADDR;

  wire [11:0]A;
  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire \_inferred__2/i__carry ;
  wire flipping_CE;
  wire [1:0]\idx_p_reg[1]_0 ;
  wire [9:9]mem_cmp;
  wire [9:0]\mem_p_reg[9]_0 ;
  wire [0:0]\mem_ram_reg[0][0] ;
  wire [0:0]\mem_ram_reg[1][0] ;
  wire [0:0]\mem_ram_reg[2][0] ;
  wire [1:0]neuron_state;
  wire s00_axi_aclk;
  wire [1:0]selected_idx_offset;
  wire [9:0]selected_membrane;
  wire \slv_reg6_reg[0] ;
  wire \slv_reg6_reg[1] ;
  wire \slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire spike0_carry__0_i_10_n_0;
  wire spike0_carry__0_i_11_n_0;
  wire spike0_carry__0_i_12_n_0;
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
  wire [2:0]\state_ram[0][1]_i_2 ;
  wire [1:0]\state_ram_reg[0][0] ;
  wire \state_ram_reg[0][0]_0 ;
  wire [1:0]\state_ram_reg[0][1] ;
  wire [11:0]\state_ram_reg[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
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
  wire \x_reg[0] ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire [3:0]NLW_spike0_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike0_carry__0_O_UNCONNECTED;

  FDRE \idx_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_idx_offset[0]),
        .Q(\idx_p_reg[1]_0 [0]),
        .R(\state_reg[0]_0 ));
  FDRE \idx_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_idx_offset[1]),
        .Q(\idx_p_reg[1]_0 [1]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[0]),
        .Q(\mem_p_reg[9]_0 [0]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[1]),
        .Q(\mem_p_reg[9]_0 [1]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[2] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[2]),
        .Q(\mem_p_reg[9]_0 [2]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[3] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[3]),
        .Q(\mem_p_reg[9]_0 [3]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[4] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[4]),
        .Q(\mem_p_reg[9]_0 [4]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[5] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[5]),
        .Q(\mem_p_reg[9]_0 [5]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[6] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[6]),
        .Q(\mem_p_reg[9]_0 [6]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[7] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[7]),
        .Q(\mem_p_reg[9]_0 [7]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[8] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[8]),
        .Q(\mem_p_reg[9]_0 [8]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[9] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(selected_membrane[9]),
        .Q(\mem_p_reg[9]_0 [9]),
        .R(\state_reg[0]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry
       (.CI(1'b0),
        .CO({spike0_carry_n_0,spike0_carry_n_1,spike0_carry_n_2,spike0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}),
        .O(NLW_spike0_carry_O_UNCONNECTED[3:0]),
        .S({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry__0
       (.CI(spike0_carry_n_0),
        .CO({CO,spike0_carry__0_n_1,spike0_carry__0_n_2,spike0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}),
        .O(NLW_spike0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}));
  LUT6 #(
    .INIT(64'h6666666666666665)) 
    spike0_carry__0_i_10
       (.I0(\mem_p_reg[9]_0 [9]),
        .I1(st_p),
        .I2(\mem_p_reg[9]_0 [7]),
        .I3(spike0_carry_i_9_n_0),
        .I4(\mem_p_reg[9]_0 [6]),
        .I5(\mem_p_reg[9]_0 [8]),
        .O(spike0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    spike0_carry__0_i_11
       (.I0(\mem_p_reg[9]_0 [7]),
        .I1(spike0_carry_i_9_n_0),
        .I2(\mem_p_reg[9]_0 [6]),
        .O(spike0_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    spike0_carry__0_i_12
       (.I0(st_p),
        .I1(\mem_p_reg[9]_0 [7]),
        .I2(spike0_carry_i_9_n_0),
        .I3(\mem_p_reg[9]_0 [6]),
        .I4(\mem_p_reg[9]_0 [8]),
        .O(spike0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA55555556)) 
    spike0_carry__0_i_9
       (.I0(\mem_p_reg[9]_0 [9]),
        .I1(\mem_p_reg[9]_0 [8]),
        .I2(\mem_p_reg[9]_0 [6]),
        .I3(spike0_carry_i_9_n_0),
        .I4(\mem_p_reg[9]_0 [7]),
        .I5(st_p),
        .O(mem_cmp));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike0_carry_i_10
       (.I0(\mem_p_reg[9]_0 [3]),
        .I1(\mem_p_reg[9]_0 [0]),
        .I2(\mem_p_reg[9]_0 [1]),
        .I3(\mem_p_reg[9]_0 [2]),
        .O(spike0_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spike0_carry_i_11
       (.I0(\mem_p_reg[9]_0 [0]),
        .I1(\mem_p_reg[9]_0 [1]),
        .O(spike0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    spike0_carry_i_9
       (.I0(\mem_p_reg[9]_0 [5]),
        .I1(\mem_p_reg[9]_0 [3]),
        .I2(\mem_p_reg[9]_0 [0]),
        .I3(\mem_p_reg[9]_0 [1]),
        .I4(\mem_p_reg[9]_0 [2]),
        .I5(\mem_p_reg[9]_0 [4]),
        .O(spike0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    \st_p[1]_i_1 
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .O(storage_CE));
  FDRE \st_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(neuron_state[0]),
        .Q(Q),
        .R(\state_reg[0]_0 ));
  FDRE \st_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(neuron_state[1]),
        .Q(st_p),
        .R(\state_reg[0]_0 ));
  whole_system_fowler_nordheim_anne_0_1_flipping_unit_1 u_flip
       (.A(A),
        .ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(CO),
        .DI({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}),
        .Q(\mem_p_reg[9]_0 ),
        .S({u_flip_n_5,u_flip_n_6,u_flip_n_7,u_flip_n_8}),
        .flipping_CE(flipping_CE),
        .mem_cmp(mem_cmp),
        .\mem_p_reg[7] ({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .s00_axi_aclk(s00_axi_aclk),
        .spike0_carry(st_p),
        .spike0_carry_0(spike0_carry_i_11_n_0),
        .spike0_carry_1(spike0_carry_i_10_n_0),
        .spike0_carry_2(spike0_carry_i_9_n_0),
        .spike0_carry__0(spike0_carry__0_i_10_n_0),
        .spike0_carry__0_0(spike0_carry__0_i_12_n_0),
        .spike0_carry__0_1(spike0_carry__0_i_11_n_0),
        .stage1_r_reg_0({u_flip_n_10,u_flip_n_11,u_flip_n_12,u_flip_n_13}),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[4] (\state_reg[4]_0 ),
        .\x_reg[0] (\x_reg[0] ),
        .x_reg_rep(x_reg_rep_0),
        .x_reg_rep_0(x_reg_rep_1),
        .x_reg_rep_1(x_reg_rep),
        .x_reg_rep_2(x_reg_rep_2));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_storage_2 u_store
       (.E(E),
        .Q(neuron_state),
        .\_inferred__2/i__carry_0 (\_inferred__2/i__carry ),
        .\mem_ram_reg[0][0]_0 (x_reg_rep),
        .\mem_ram_reg[0][0]_1 (x_reg_rep_0),
        .\mem_ram_reg[0][0]_2 (x_reg_rep_1),
        .\mem_ram_reg[0][0]_3 (\mem_ram_reg[0][0] ),
        .\mem_ram_reg[1][0]_0 (\mem_ram_reg[1][0] ),
        .\mem_ram_reg[2][0]_0 (\mem_ram_reg[2][0] ),
        .s00_axi_aclk(s00_axi_aclk),
        .\selected_idx_offset_reg[1]_0 (selected_idx_offset),
        .\selected_membrane_reg[9]_0 (selected_membrane),
        .\slv_reg6_reg[0] (\slv_reg6_reg[0] ),
        .\slv_reg6_reg[1] (\slv_reg6_reg[1] ),
        .\slv_reg6_reg[1]_0 (\slv_reg6_reg[1]_0 ),
        .\slv_reg6_reg[1]_1 (\slv_reg6_reg[1]_1 ),
        .\state_ram[0][1]_i_2_0 (\state_ram[0][1]_i_2 ),
        .\state_ram_reg[0][0]_0 (\state_ram_reg[0][0] ),
        .\state_ram_reg[0][0]_1 (\state_ram_reg[0][0]_0 ),
        .\state_ram_reg[0][1]_0 (\state_ram_reg[0][1] ),
        .\state_ram_reg[3][1]_0 (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble__parameterized0
   (flipping_CE_0,
    stage1_r_reg,
    Q,
    ADDRBWRADDR,
    \state_reg[1] ,
    \index_of_neuron_that_fired_reg_reg[2] ,
    \state_reg[2] ,
    E,
    \state_reg[15] ,
    \idx_p_reg[1]_0 ,
    \st_p_reg[0]_0 ,
    s00_axi_aclk,
    B,
    stage1_r_reg_0,
    \state_reg[0] ,
    \state_reg[4] ,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    incrementing_reg,
    \state_ram_reg[3][1] ,
    \mem_ram_reg[3][9] ,
    \state_ram_reg[3][0] ,
    \state_ram_reg[0][0] ,
    \state_ram_reg[1][0] ,
    \state_ram_reg[2][0] ,
    \state_ram[3][1]_i_2__0 ,
    \x_reg[8] ,
    \state_reg[4]_0 ,
    \state_reg[0]_0 ,
    storage_CE_advance,
    \mem_ram_reg[3][0] ,
    \mem_ram_reg[2][0] ,
    \mem_ram_reg[1][0] ,
    \mem_ram_reg[0][0] );
  output flipping_CE_0;
  output [0:0]stage1_r_reg;
  output [9:0]Q;
  output [8:0]ADDRBWRADDR;
  output \state_reg[1] ;
  output \index_of_neuron_that_fired_reg_reg[2] ;
  output \state_reg[2] ;
  output [0:0]E;
  output [7:0]\state_reg[15] ;
  output [1:0]\idx_p_reg[1]_0 ;
  output [0:0]\st_p_reg[0]_0 ;
  input s00_axi_aclk;
  input [17:0]B;
  input [11:0]stage1_r_reg_0;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input incrementing_reg;
  input [11:0]\state_ram_reg[3][1] ;
  input [0:0]\mem_ram_reg[3][9] ;
  input \state_ram_reg[3][0] ;
  input \state_ram_reg[0][0] ;
  input \state_ram_reg[1][0] ;
  input \state_ram_reg[2][0] ;
  input [2:0]\state_ram[3][1]_i_2__0 ;
  input \x_reg[8] ;
  input [4:0]\state_reg[4]_0 ;
  input [0:0]\state_reg[0]_0 ;
  input storage_CE_advance;
  input [0:0]\mem_ram_reg[3][0] ;
  input [0:0]\mem_ram_reg[2][0] ;
  input [0:0]\mem_ram_reg[1][0] ;
  input [0:0]\mem_ram_reg[0][0] ;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]E;
  wire [9:0]Q;
  wire flipping_CE_0;
  wire [1:0]\idx_p_reg[1]_0 ;
  wire incrementing_reg;
  wire \index_of_neuron_that_fired_reg_reg[2] ;
  wire [0:0]\mem_ram_reg[0][0] ;
  wire [0:0]\mem_ram_reg[1][0] ;
  wire [0:0]\mem_ram_reg[2][0] ;
  wire [0:0]\mem_ram_reg[3][0] ;
  wire [0:0]\mem_ram_reg[3][9] ;
  wire s00_axi_aclk;
  wire spike0_carry__0_i_10__0_n_0;
  wire spike0_carry__0_i_11__0_n_0;
  wire spike0_carry__0_i_12__0_n_0;
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
  wire [0:0]stage1_r_reg;
  wire [11:0]stage1_r_reg_0;
  wire [2:0]\state_ram[3][1]_i_2__0 ;
  wire \state_ram_reg[0][0] ;
  wire \state_ram_reg[1][0] ;
  wire \state_ram_reg[2][0] ;
  wire \state_ram_reg[3][0] ;
  wire [11:0]\state_ram_reg[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
  wire storage_CE;
  wire storage_CE_advance;
  wire u_flip_n_1;
  wire u_flip_n_14;
  wire u_flip_n_15;
  wire u_flip_n_16;
  wire u_flip_n_17;
  wire u_flip_n_19;
  wire u_flip_n_2;
  wire u_flip_n_20;
  wire u_flip_n_21;
  wire u_flip_n_22;
  wire u_flip_n_23;
  wire u_flip_n_24;
  wire u_flip_n_25;
  wire u_flip_n_26;
  wire u_flip_n_3;
  wire u_flip_n_4;
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
  wire \x_reg[8] ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire [3:0]NLW_spike0_carry_O_UNCONNECTED;
  wire [3:0]NLW_spike0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h35)) 
    \idx_p[1]_i_1 
       (.I0(x_reg_rep_1),
        .I1(x_reg_rep_0),
        .I2(x_reg_rep),
        .O(storage_CE));
  FDRE \idx_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_3),
        .Q(\idx_p_reg[1]_0 [0]),
        .R(\state_reg[0]_0 ));
  FDRE \idx_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_2),
        .Q(\idx_p_reg[1]_0 [1]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_15),
        .Q(Q[0]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_14),
        .Q(Q[1]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[2] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_13),
        .Q(Q[2]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[3] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_12),
        .Q(Q[3]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[4] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_11),
        .Q(Q[4]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[5] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_10),
        .Q(Q[5]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[6] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_9),
        .Q(Q[6]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[7] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_8),
        .Q(Q[7]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[8] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_7),
        .Q(Q[8]),
        .R(\state_reg[0]_0 ));
  FDRE \mem_p_reg[9] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_6),
        .Q(Q[9]),
        .R(\state_reg[0]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry
       (.CI(1'b0),
        .CO({spike0_carry_n_0,spike0_carry_n_1,spike0_carry_n_2,spike0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_19,u_flip_n_20,u_flip_n_21,u_flip_n_22}),
        .O(NLW_spike0_carry_O_UNCONNECTED[3:0]),
        .S({u_flip_n_23,u_flip_n_24,u_flip_n_25,u_flip_n_26}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 spike0_carry__0
       (.CI(spike0_carry_n_0),
        .CO({stage1_r_reg,spike0_carry__0_n_1,spike0_carry__0_n_2,spike0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}),
        .O(NLW_spike0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}));
  LUT6 #(
    .INIT(64'h6666666666666665)) 
    spike0_carry__0_i_10__0
       (.I0(Q[9]),
        .I1(\st_p_reg_n_0_[1] ),
        .I2(Q[7]),
        .I3(spike0_carry_i_9__0_n_0),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(spike0_carry__0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    spike0_carry__0_i_11__0
       (.I0(Q[7]),
        .I1(spike0_carry_i_9__0_n_0),
        .I2(Q[6]),
        .O(spike0_carry__0_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    spike0_carry__0_i_12__0
       (.I0(\st_p_reg_n_0_[1] ),
        .I1(Q[7]),
        .I2(spike0_carry_i_9__0_n_0),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(spike0_carry__0_i_12__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA55555556)) 
    spike0_carry__0_i_9__0
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(spike0_carry_i_9__0_n_0),
        .I4(Q[7]),
        .I5(\st_p_reg_n_0_[1] ),
        .O(spike0_carry__0_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spike0_carry_i_10__0
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(spike0_carry_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spike0_carry_i_11__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(spike0_carry_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    spike0_carry_i_9__0
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(spike0_carry_i_9__0_n_0));
  FDRE \st_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_5),
        .Q(\st_p_reg[0]_0 ),
        .R(\state_reg[0]_0 ));
  FDRE \st_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(storage_CE),
        .D(u_store_n_4),
        .Q(\st_p_reg_n_0_[1] ),
        .R(\state_reg[0]_0 ));
  whole_system_fowler_nordheim_anne_0_1_flipping_unit u_flip
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .DI({u_flip_n_1,u_flip_n_2,u_flip_n_3,u_flip_n_4}),
        .E(E),
        .Q(Q),
        .S({u_flip_n_14,u_flip_n_15,u_flip_n_16,u_flip_n_17}),
        .flipping_CE_0(flipping_CE_0),
        .\mem_p_reg[7] ({u_flip_n_23,u_flip_n_24,u_flip_n_25,u_flip_n_26}),
        .s00_axi_aclk(s00_axi_aclk),
        .spike0_carry(\st_p_reg_n_0_[1] ),
        .spike0_carry_0(spike0_carry_i_11__0_n_0),
        .spike0_carry_1(spike0_carry_i_10__0_n_0),
        .spike0_carry_2(spike0_carry_i_9__0_n_0),
        .spike0_carry__0(spike0_carry__0_i_10__0_n_0),
        .spike0_carry__0_0(spike0_carry__0_i_12__0_n_0),
        .spike0_carry__0_1(spike0_carry__0_i_11__0_n_0),
        .spike0_carry__0_2(spike0_carry__0_i_9__0_n_0),
        .stage1_r_reg_0({u_flip_n_19,u_flip_n_20,u_flip_n_21,u_flip_n_22}),
        .stage1_r_reg_1(stage1_r_reg_0),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (stage1_r_reg),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[4] (\state_reg[4]_0 ),
        .\x_reg[8] (\x_reg[8] ),
        .x_reg_rep(x_reg_rep_0),
        .x_reg_rep_0(x_reg_rep_1),
        .x_reg_rep_1(x_reg_rep));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_storage u_store
       (.Q({u_store_n_2,u_store_n_3}),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[2] (\index_of_neuron_that_fired_reg_reg[2] ),
        .\mem_ram_reg[0][0]_0 (x_reg_rep),
        .\mem_ram_reg[0][0]_1 (x_reg_rep_0),
        .\mem_ram_reg[0][0]_2 (x_reg_rep_1),
        .\mem_ram_reg[0][0]_3 (\mem_ram_reg[0][0] ),
        .\mem_ram_reg[1][0]_0 (\mem_ram_reg[1][0] ),
        .\mem_ram_reg[2][0]_0 (\mem_ram_reg[2][0] ),
        .\mem_ram_reg[3][0]_0 (\mem_ram_reg[3][0] ),
        .\mem_ram_reg[3][9]_0 (\mem_ram_reg[3][9] ),
        .\neuron_state_reg[1]_0 ({u_store_n_4,u_store_n_5}),
        .s00_axi_aclk(s00_axi_aclk),
        .\selected_membrane_reg[9]_0 ({u_store_n_6,u_store_n_7,u_store_n_8,u_store_n_9,u_store_n_10,u_store_n_11,u_store_n_12,u_store_n_13,u_store_n_14,u_store_n_15}),
        .\state_ram[3][1]_i_2__0 (\state_ram[3][1]_i_2__0 ),
        .\state_ram_reg[0][0]_0 (\state_ram_reg[0][0] ),
        .\state_ram_reg[1][0]_0 (\state_ram_reg[1][0] ),
        .\state_ram_reg[2][0]_0 (\state_ram_reg[2][0] ),
        .\state_ram_reg[3][0]_0 (\state_ram_reg[3][0] ),
        .\state_ram_reg[3][1]_0 (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_storage
   (\index_of_neuron_that_fired_reg_reg[2] ,
    \state_reg[2] ,
    Q,
    \neuron_state_reg[1]_0 ,
    \selected_membrane_reg[9]_0 ,
    \state_reg[0] ,
    \state_reg[4] ,
    \mem_ram_reg[0][0]_0 ,
    \mem_ram_reg[0][0]_1 ,
    \mem_ram_reg[0][0]_2 ,
    incrementing_reg,
    \state_ram_reg[3][1]_0 ,
    \mem_ram_reg[3][9]_0 ,
    \state_ram_reg[3][0]_0 ,
    \state_ram_reg[0][0]_0 ,
    \state_ram_reg[1][0]_0 ,
    \state_ram_reg[2][0]_0 ,
    \state_ram[3][1]_i_2__0 ,
    \state_reg[0]_0 ,
    s00_axi_aclk,
    storage_CE_advance,
    \mem_ram_reg[3][0]_0 ,
    \mem_ram_reg[2][0]_0 ,
    \mem_ram_reg[1][0]_0 ,
    \mem_ram_reg[0][0]_3 );
  output \index_of_neuron_that_fired_reg_reg[2] ;
  output \state_reg[2] ;
  output [1:0]Q;
  output [1:0]\neuron_state_reg[1]_0 ;
  output [9:0]\selected_membrane_reg[9]_0 ;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input \mem_ram_reg[0][0]_0 ;
  input \mem_ram_reg[0][0]_1 ;
  input \mem_ram_reg[0][0]_2 ;
  input incrementing_reg;
  input [11:0]\state_ram_reg[3][1]_0 ;
  input [0:0]\mem_ram_reg[3][9]_0 ;
  input \state_ram_reg[3][0]_0 ;
  input \state_ram_reg[0][0]_0 ;
  input \state_ram_reg[1][0]_0 ;
  input \state_ram_reg[2][0]_0 ;
  input [2:0]\state_ram[3][1]_i_2__0 ;
  input [0:0]\state_reg[0]_0 ;
  input s00_axi_aclk;
  input storage_CE_advance;
  input [0:0]\mem_ram_reg[3][0]_0 ;
  input [0:0]\mem_ram_reg[2][0]_0 ;
  input [0:0]\mem_ram_reg[1][0]_0 ;
  input [0:0]\mem_ram_reg[0][0]_3 ;

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
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire [1:0]idx_r;
  wire incrementing_reg;
  wire \index_of_neuron_that_fired_reg_reg[2] ;
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
  wire [0:0]\mem_ram_reg[3][0]_0 ;
  wire [0:0]\mem_ram_reg[3][9]_0 ;
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
  wire \neuron_state[0]_i_1__0_n_0 ;
  wire \neuron_state[1]_i_1__0_n_0 ;
  wire [1:0]\neuron_state_reg[1]_0 ;
  wire s00_axi_aclk;
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
  wire \state_ram[0][0]_i_1_n_0 ;
  wire \state_ram[0][1]_i_1_n_0 ;
  wire \state_ram[1][0]_i_1_n_0 ;
  wire \state_ram[1][1]_i_1_n_0 ;
  wire \state_ram[2][0]_i_1_n_0 ;
  wire \state_ram[2][0]_i_2_n_0 ;
  wire \state_ram[2][1]_i_1_n_0 ;
  wire \state_ram[2][1]_i_2_n_0 ;
  wire \state_ram[3][0]_i_1_n_0 ;
  wire \state_ram[3][1]_i_1_n_0 ;
  wire [2:0]\state_ram[3][1]_i_2__0 ;
  wire \state_ram_reg[0][0]_0 ;
  wire \state_ram_reg[1][0]_0 ;
  wire \state_ram_reg[2][0]_0 ;
  wire \state_ram_reg[3][0]_0 ;
  wire [11:0]\state_ram_reg[3][1]_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[2] ;
  wire [4:0]\state_reg[4] ;
  wire storage_CE_advance;
  wire u_lfsr_n_0;
  wire u_lfsr_n_1;
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
        .DI({i__carry_i_1__5_n_0,\mem_ram_reg_n_0_[3][2] ,\mem_ram_reg_n_0_[3][1] ,1'b0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__3_n_0,\mem_ram_reg_n_0_[3][0] }));
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
        .DI({i__carry_i_1__6_n_0,\mem_ram_reg_n_0_[2][2] ,\mem_ram_reg_n_0_[2][1] ,1'b0}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__4_n_0,\mem_ram_reg_n_0_[2][0] }));
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
        .DI({i__carry_i_1__7_n_0,\mem_ram_reg_n_0_[1][2] ,\mem_ram_reg_n_0_[1][1] ,1'b0}),
        .O({\_inferred__2/i__carry_n_4 ,\_inferred__2/i__carry_n_5 ,\_inferred__2/i__carry_n_6 ,\_inferred__2/i__carry_n_7 }),
        .S({i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__5_n_0,\mem_ram_reg_n_0_[1][0] }));
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
        .DI({i__carry_i_1__1_n_0,\mem_ram_reg_n_0_[0][2] ,\mem_ram_reg_n_0_[0][1] ,1'b0}),
        .O({\_inferred__3/i__carry_n_4 ,\_inferred__3/i__carry_n_5 ,\_inferred__3/i__carry_n_6 ,\_inferred__3/i__carry_n_7 }),
        .S({i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__6_n_0,\mem_ram_reg_n_0_[0][0] }));
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
    .INIT(16'h3B3C)) 
    i__carry_i_1__1
       (.I0(incrementing_reg),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__5
       (.I0(incrementing_reg),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__6
       (.I0(incrementing_reg),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__7
       (.I0(incrementing_reg),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__7_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__4
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[3][3] ),
        .O(i__carry_i_2__4_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__5
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[2][3] ),
        .O(i__carry_i_2__5_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__6
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[1][3] ),
        .O(i__carry_i_2__6_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__7
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[0][3] ),
        .O(i__carry_i_2__7_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__4
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[3][2] ),
        .O(i__carry_i_3__4_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__5
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[2][2] ),
        .O(i__carry_i_3__5_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__6
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[1][2] ),
        .O(i__carry_i_3__6_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__7
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(incrementing_reg),
        .I4(\mem_ram_reg_n_0_[0][2] ),
        .O(i__carry_i_3__7_n_0));
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
  FDRE \idx_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u_lfsr_n_1),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE \idx_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u_lfsr_n_0),
        .Q(idx_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry_n_7 ),
        .O(\mem_ram[0][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry_n_6 ),
        .O(\mem_ram[0][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][2]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry_n_5 ),
        .O(\mem_ram[0][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][3]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry_n_4 ),
        .O(\mem_ram[0][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][4]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__0_n_7 ),
        .O(\mem_ram[0][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][5]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__0_n_6 ),
        .O(\mem_ram[0][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][6]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__0_n_5 ),
        .O(\mem_ram[0][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][7]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__0_n_4 ),
        .O(\mem_ram[0][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][8]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__1_n_7 ),
        .O(\mem_ram[0][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][9]_i_2__0 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__3/i__carry__1_n_6 ),
        .O(\mem_ram[0][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry_n_7 ),
        .O(\mem_ram[1][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry_n_6 ),
        .O(\mem_ram[1][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][2]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry_n_5 ),
        .O(\mem_ram[1][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][3]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry_n_4 ),
        .O(\mem_ram[1][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][4]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__0_n_7 ),
        .O(\mem_ram[1][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][5]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__0_n_6 ),
        .O(\mem_ram[1][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][6]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__0_n_5 ),
        .O(\mem_ram[1][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][7]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__0_n_4 ),
        .O(\mem_ram[1][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][8]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__1_n_7 ),
        .O(\mem_ram[1][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][9]_i_2__0 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__2/i__carry__1_n_6 ),
        .O(\mem_ram[1][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry_n_7 ),
        .O(\mem_ram[2][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry_n_6 ),
        .O(\mem_ram[2][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][2]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry_n_5 ),
        .O(\mem_ram[2][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][3]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry_n_4 ),
        .O(\mem_ram[2][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][4]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__0_n_7 ),
        .O(\mem_ram[2][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][5]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__0_n_6 ),
        .O(\mem_ram[2][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][6]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__0_n_5 ),
        .O(\mem_ram[2][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][7]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__0_n_4 ),
        .O(\mem_ram[2][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][8]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__1_n_7 ),
        .O(\mem_ram[2][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][9]_i_2__0 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__1/i__carry__1_n_6 ),
        .O(\mem_ram[2][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry_n_7 ),
        .O(\mem_ram[3][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry_n_6 ),
        .O(\mem_ram[3][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][2]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry_n_5 ),
        .O(\mem_ram[3][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][3]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry_n_4 ),
        .O(\mem_ram[3][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][4]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__0_n_7 ),
        .O(\mem_ram[3][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][5]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__0_n_6 ),
        .O(\mem_ram[3][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][6]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__0_n_5 ),
        .O(\mem_ram[3][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][7]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__0_n_4 ),
        .O(\mem_ram[3][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][8]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__1_n_7 ),
        .O(\mem_ram[3][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][9]_i_2__0 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\_inferred__0/i__carry__1_n_6 ),
        .O(\mem_ram[3][9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \mem_ram[3][9]_i_3__0 
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .O(\state_reg[2] ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][2] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][3] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][4] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][5] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][6] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][7] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][8] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[0][9] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][2] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][3] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][4] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][5] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][6] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][7] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][8] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[1][9] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][2] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][3] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][4] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][5] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][6] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][7] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][8] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[2][9] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][0]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][1]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][2]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][2] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][3]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][3] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][4]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][4] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][5]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][5] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][6]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][6] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][7]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][7] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][8]_i_1__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][8] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[3][0]_0 ),
        .D(\mem_ram[3][9]_i_2__0_n_0 ),
        .Q(\mem_ram_reg_n_0_[3][9] ),
        .R(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \neuron_state[0]_i_1__0 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram_reg_n_0_[1][0] ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\state_ram_reg_n_0_[3][0] ),
        .O(\neuron_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \neuron_state[1]_i_1__0 
       (.I0(\state_ram_reg_n_0_[1][1] ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(\neuron_state[1]_i_1__0_n_0 ));
  FDRE \neuron_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1__0_n_0 ),
        .Q(\neuron_state_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \neuron_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1__0_n_0 ),
        .Q(\neuron_state_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \selected_idx_offset_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \selected_idx_offset_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(Q[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[0]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[1][0] ),
        .I1(\mem_ram_reg_n_0_[3][0] ),
        .I2(\mem_ram_reg_n_0_[0][0] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[2][0] ),
        .O(\selected_membrane[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[1]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][1] ),
        .I1(\mem_ram_reg_n_0_[1][1] ),
        .I2(\mem_ram_reg_n_0_[2][1] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg_n_0_[3][1] ),
        .O(\selected_membrane[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \selected_membrane[2]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[1][2] ),
        .I1(\mem_ram_reg_n_0_[2][2] ),
        .I2(\mem_ram_reg_n_0_[0][2] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[3][2] ),
        .O(\selected_membrane[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[3]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[1][3] ),
        .I1(\mem_ram_reg_n_0_[3][3] ),
        .I2(\mem_ram_reg_n_0_[0][3] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[2][3] ),
        .O(\selected_membrane[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \selected_membrane[4]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[1][4] ),
        .I1(\mem_ram_reg_n_0_[2][4] ),
        .I2(\mem_ram_reg_n_0_[0][4] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[3][4] ),
        .O(\selected_membrane[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \selected_membrane[5]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][5] ),
        .I1(\mem_ram_reg_n_0_[1][5] ),
        .I2(\mem_ram_reg_n_0_[3][5] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[2][5] ),
        .O(\selected_membrane[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[6]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][6] ),
        .I1(\mem_ram_reg_n_0_[1][6] ),
        .I2(\mem_ram_reg_n_0_[2][6] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg_n_0_[3][6] ),
        .O(\selected_membrane[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \selected_membrane[7]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][7] ),
        .I1(\mem_ram_reg_n_0_[1][7] ),
        .I2(\mem_ram_reg_n_0_[3][7] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[2][7] ),
        .O(\selected_membrane[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \selected_membrane[8]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[1][8] ),
        .I1(\mem_ram_reg_n_0_[2][8] ),
        .I2(\mem_ram_reg_n_0_[0][8] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg_n_0_[3][8] ),
        .O(\selected_membrane[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[9]_i_1__0 
       (.I0(\mem_ram_reg_n_0_[0][9] ),
        .I1(\mem_ram_reg_n_0_[1][9] ),
        .I2(\mem_ram_reg_n_0_[2][9] ),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg_n_0_[3][9] ),
        .O(\selected_membrane[9]_i_1__0_n_0 ));
  FDRE \selected_membrane_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [0]),
        .R(1'b0));
  FDRE \selected_membrane_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [1]),
        .R(1'b0));
  FDRE \selected_membrane_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [2]),
        .R(1'b0));
  FDRE \selected_membrane_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [3]),
        .R(1'b0));
  FDRE \selected_membrane_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [4]),
        .R(1'b0));
  FDRE \selected_membrane_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [5]),
        .R(1'b0));
  FDRE \selected_membrane_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [6]),
        .R(1'b0));
  FDRE \selected_membrane_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [7]),
        .R(1'b0));
  FDRE \selected_membrane_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [8]),
        .R(1'b0));
  FDRE \selected_membrane_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1__0_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[0][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][0]_i_2_n_0 ),
        .I3(\state_ram_reg[0][0]_0 ),
        .I4(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[0][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][1]_i_2_n_0 ),
        .I3(\state_ram_reg[0][0]_0 ),
        .I4(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[1][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][0]_i_2_n_0 ),
        .I3(\state_ram_reg[1][0]_0 ),
        .I4(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[1][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][1]_i_2_n_0 ),
        .I3(\state_ram_reg[1][0]_0 ),
        .I4(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[2][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][0]_i_2_n_0 ),
        .I3(\state_ram_reg[2][0]_0 ),
        .I4(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    \state_ram[2][0]_i_2 
       (.I0(\state_ram_reg_n_0_[2][0] ),
        .I1(\state_ram_reg_n_0_[3][0] ),
        .I2(\state_ram_reg_n_0_[1][0] ),
        .I3(\state_ram[3][1]_i_2__0 [0]),
        .I4(\state_ram[3][1]_i_2__0 [1]),
        .I5(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[2][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[2][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][1]_i_2_n_0 ),
        .I3(\state_ram_reg[2][0]_0 ),
        .I4(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \state_ram[2][1]_i_2 
       (.I0(\state_ram_reg_n_0_[0][1] ),
        .I1(\state_ram_reg_n_0_[1][1] ),
        .I2(\state_ram_reg_n_0_[2][1] ),
        .I3(\state_ram[3][1]_i_2__0 [1]),
        .I4(\state_ram[3][1]_i_2__0 [0]),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[2][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \state_ram[2][1]_i_4__0 
       (.I0(\state_ram[3][1]_i_2__0 [2]),
        .I1(\mem_ram_reg[0][0]_0 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_2 ),
        .O(\index_of_neuron_that_fired_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[3][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][0]_i_2_n_0 ),
        .I3(\state_ram_reg[3][0]_0 ),
        .I4(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[3][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\mem_ram_reg[3][9]_0 ),
        .I2(\state_ram[2][1]_i_2_n_0 ),
        .I3(\state_ram_reg[3][0]_0 ),
        .I4(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[3][1]_i_1_n_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(\state_reg[0]_0 ));
  whole_system_fowler_nordheim_anne_0_1_LFSR_inout u_lfsr
       (.Q({u_lfsr_n_0,u_lfsr_n_1}),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_storage" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_storage_2
   (\state_reg[2] ,
    \slv_reg6_reg[1] ,
    \slv_reg6_reg[1]_0 ,
    \slv_reg6_reg[0] ,
    \slv_reg6_reg[1]_1 ,
    Q,
    \selected_membrane_reg[9]_0 ,
    \selected_idx_offset_reg[1]_0 ,
    \state_reg[0] ,
    \state_reg[4] ,
    \mem_ram_reg[0][0]_0 ,
    \mem_ram_reg[0][0]_1 ,
    \mem_ram_reg[0][0]_2 ,
    \_inferred__2/i__carry_0 ,
    \state_ram_reg[3][1]_0 ,
    \state_ram_reg[0][0]_0 ,
    \state_ram_reg[0][1]_0 ,
    \state_ram[0][1]_i_2_0 ,
    \state_ram_reg[0][0]_1 ,
    \state_reg[0]_0 ,
    s00_axi_aclk,
    storage_CE_advance,
    E,
    \mem_ram_reg[2][0]_0 ,
    \mem_ram_reg[1][0]_0 ,
    \mem_ram_reg[0][0]_3 );
  output \state_reg[2] ;
  output \slv_reg6_reg[1] ;
  output \slv_reg6_reg[1]_0 ;
  output \slv_reg6_reg[0] ;
  output \slv_reg6_reg[1]_1 ;
  output [1:0]Q;
  output [9:0]\selected_membrane_reg[9]_0 ;
  output [1:0]\selected_idx_offset_reg[1]_0 ;
  input [0:0]\state_reg[0] ;
  input [4:0]\state_reg[4] ;
  input \mem_ram_reg[0][0]_0 ;
  input \mem_ram_reg[0][0]_1 ;
  input \mem_ram_reg[0][0]_2 ;
  input \_inferred__2/i__carry_0 ;
  input [11:0]\state_ram_reg[3][1]_0 ;
  input [1:0]\state_ram_reg[0][0]_0 ;
  input [1:0]\state_ram_reg[0][1]_0 ;
  input [2:0]\state_ram[0][1]_i_2_0 ;
  input \state_ram_reg[0][0]_1 ;
  input [0:0]\state_reg[0]_0 ;
  input s00_axi_aclk;
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
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire [1:0]idx_offset;
  wire [1:0]idx_r;
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
  wire \mem_ram_reg[0][0]_0 ;
  wire \mem_ram_reg[0][0]_1 ;
  wire \mem_ram_reg[0][0]_2 ;
  wire [0:0]\mem_ram_reg[0][0]_3 ;
  wire [9:0]\mem_ram_reg[0]_3 ;
  wire [0:0]\mem_ram_reg[1][0]_0 ;
  wire [9:0]\mem_ram_reg[1]_2 ;
  wire [0:0]\mem_ram_reg[2][0]_0 ;
  wire [9:0]\mem_ram_reg[2]_1 ;
  wire [9:0]\mem_ram_reg[3]_0 ;
  wire \neuron_state[0]_i_1_n_0 ;
  wire \neuron_state[1]_i_1_n_0 ;
  wire s00_axi_aclk;
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
  wire \slv_reg6_reg[0] ;
  wire \slv_reg6_reg[1] ;
  wire \slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire \state_ram[0][0]_i_1__0_n_0 ;
  wire \state_ram[0][1]_i_1__0_n_0 ;
  wire [2:0]\state_ram[0][1]_i_2_0 ;
  wire \state_ram[0][1]_i_2_n_0 ;
  wire \state_ram[1][0]_i_1__0_n_0 ;
  wire \state_ram[1][1]_i_1__0_n_0 ;
  wire \state_ram[1][1]_i_2_n_0 ;
  wire \state_ram[2][0]_i_1__0_n_0 ;
  wire \state_ram[2][0]_i_2__0_n_0 ;
  wire \state_ram[2][1]_i_1__0_n_0 ;
  wire \state_ram[2][1]_i_2__0_n_0 ;
  wire \state_ram[2][1]_i_3_n_0 ;
  wire \state_ram[2][1]_i_4_n_0 ;
  wire \state_ram[3][0]_i_1__0_n_0 ;
  wire \state_ram[3][1]_i_1__0_n_0 ;
  wire \state_ram[3][1]_i_2_n_0 ;
  wire [1:0]\state_ram_reg[0][0]_0 ;
  wire \state_ram_reg[0][0]_1 ;
  wire [1:0]\state_ram_reg[0][1]_0 ;
  wire [11:0]\state_ram_reg[3][1]_0 ;
  wire \state_ram_reg_n_0_[0][0] ;
  wire \state_ram_reg_n_0_[0][1] ;
  wire \state_ram_reg_n_0_[1][0] ;
  wire \state_ram_reg_n_0_[1][1] ;
  wire \state_ram_reg_n_0_[2][0] ;
  wire \state_ram_reg_n_0_[2][1] ;
  wire \state_ram_reg_n_0_[3][0] ;
  wire \state_ram_reg_n_0_[3][1] ;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[2] ;
  wire [4:0]\state_reg[4] ;
  wire storage_CE_advance;
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
        .DI({i__carry_i_1__2_n_0,\mem_ram_reg[3]_0 [2:1],1'b0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0,\mem_ram_reg[3]_0 [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[3]_0 [6:3]),
        .O({\_inferred__0/i__carry__0_n_4 ,\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[3]_0 [7]}),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3:2],\_inferred__0/i__carry__1_n_6 ,\_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,\mem_ram_reg[2]_1 [2:1],1'b0}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__0_n_0,\mem_ram_reg[2]_1 [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[2]_1 [6:3]),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW__inferred__1/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[2]_1 [7]}),
        .O({\NLW__inferred__1/i__carry__1_O_UNCONNECTED [3:2],\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__4_n_0,\mem_ram_reg[1]_2 [2:1],1'b0}),
        .O({\_inferred__2/i__carry_n_4 ,\_inferred__2/i__carry_n_5 ,\_inferred__2/i__carry_n_6 ,\_inferred__2/i__carry_n_7 }),
        .S({i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__1_n_0,\mem_ram_reg[1]_2 [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[1]_2 [6:3]),
        .O({\_inferred__2/i__carry__0_n_4 ,\_inferred__2/i__carry__0_n_5 ,\_inferred__2/i__carry__0_n_6 ,\_inferred__2/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO({\NLW__inferred__2/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[1]_2 [7]}),
        .O({\NLW__inferred__2/i__carry__1_O_UNCONNECTED [3:2],\_inferred__2/i__carry__1_n_6 ,\_inferred__2/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,\mem_ram_reg[0]_3 [2:1],1'b0}),
        .O({\_inferred__3/i__carry_n_4 ,\_inferred__3/i__carry_n_5 ,\_inferred__3/i__carry_n_6 ,\_inferred__3/i__carry_n_7 }),
        .S({i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__2_n_0,\mem_ram_reg[0]_3 [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\mem_ram_reg[0]_3 [6:3]),
        .O({\_inferred__3/i__carry__0_n_4 ,\_inferred__3/i__carry__0_n_5 ,\_inferred__3/i__carry__0_n_6 ,\_inferred__3/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\mem_ram_reg[0]_3 [7]}),
        .O({\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3:2],\_inferred__3/i__carry__1_n_6 ,\_inferred__3/i__carry__1_n_7 }),
        .S({1'b0,1'b0,i__carry__1_i_1__3_n_0,i__carry__1_i_2__3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(\mem_ram_reg[3]_0 [6]),
        .I1(\mem_ram_reg[3]_0 [7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(\mem_ram_reg[2]_1 [6]),
        .I1(\mem_ram_reg[2]_1 [7]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(\mem_ram_reg[1]_2 [6]),
        .I1(\mem_ram_reg[1]_2 [7]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(\mem_ram_reg[0]_3 [6]),
        .I1(\mem_ram_reg[0]_3 [7]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(\mem_ram_reg[3]_0 [5]),
        .I1(\mem_ram_reg[3]_0 [6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(\mem_ram_reg[2]_1 [5]),
        .I1(\mem_ram_reg[2]_1 [6]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(\mem_ram_reg[1]_2 [5]),
        .I1(\mem_ram_reg[1]_2 [6]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(\mem_ram_reg[0]_3 [5]),
        .I1(\mem_ram_reg[0]_3 [6]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(\mem_ram_reg[3]_0 [4]),
        .I1(\mem_ram_reg[3]_0 [5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(\mem_ram_reg[2]_1 [4]),
        .I1(\mem_ram_reg[2]_1 [5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__2
       (.I0(\mem_ram_reg[1]_2 [4]),
        .I1(\mem_ram_reg[1]_2 [5]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__3
       (.I0(\mem_ram_reg[0]_3 [4]),
        .I1(\mem_ram_reg[0]_3 [5]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(\mem_ram_reg[3]_0 [3]),
        .I1(\mem_ram_reg[3]_0 [4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(\mem_ram_reg[2]_1 [3]),
        .I1(\mem_ram_reg[2]_1 [4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__2
       (.I0(\mem_ram_reg[1]_2 [3]),
        .I1(\mem_ram_reg[1]_2 [4]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__3
       (.I0(\mem_ram_reg[0]_3 [3]),
        .I1(\mem_ram_reg[0]_3 [4]),
        .O(i__carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(\mem_ram_reg[3]_0 [8]),
        .I1(\mem_ram_reg[3]_0 [9]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__1
       (.I0(\mem_ram_reg[2]_1 [8]),
        .I1(\mem_ram_reg[2]_1 [9]),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__2
       (.I0(\mem_ram_reg[1]_2 [8]),
        .I1(\mem_ram_reg[1]_2 [9]),
        .O(i__carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__3
       (.I0(\mem_ram_reg[0]_3 [8]),
        .I1(\mem_ram_reg[0]_3 [9]),
        .O(i__carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(\mem_ram_reg[3]_0 [7]),
        .I1(\mem_ram_reg[3]_0 [8]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__1
       (.I0(\mem_ram_reg[2]_1 [7]),
        .I1(\mem_ram_reg[2]_1 [8]),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__2
       (.I0(\mem_ram_reg[1]_2 [7]),
        .I1(\mem_ram_reg[1]_2 [8]),
        .O(i__carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__3
       (.I0(\mem_ram_reg[0]_3 [7]),
        .I1(\mem_ram_reg[0]_3 [8]),
        .O(i__carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__0
       (.I0(\_inferred__2/i__carry_0 ),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__2
       (.I0(\_inferred__2/i__carry_0 ),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__3
       (.I0(\_inferred__2/i__carry_0 ),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h3B3C)) 
    i__carry_i_1__4
       (.I0(\_inferred__2/i__carry_0 ),
        .I1(\mem_ram_reg[0][0]_2 ),
        .I2(\mem_ram_reg[0][0]_1 ),
        .I3(\mem_ram_reg[0][0]_0 ),
        .O(i__carry_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__0
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[3]_0 [3]),
        .O(i__carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__1
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[2]_1 [3]),
        .O(i__carry_i_2__1_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__2
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[1]_2 [3]),
        .O(i__carry_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_2__3
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[0]_3 [3]),
        .O(i__carry_i_2__3_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__0
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[3]_0 [2]),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__1
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[2]_1 [2]),
        .O(i__carry_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__2
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[1]_2 [2]),
        .O(i__carry_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h3E1EC1E1)) 
    i__carry_i_3__3
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\_inferred__2/i__carry_0 ),
        .I4(\mem_ram_reg[0]_3 [2]),
        .O(i__carry_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\mem_ram_reg[3]_0 [1]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(\mem_ram_reg[2]_1 [1]),
        .O(i__carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__1
       (.I0(\mem_ram_reg[1]_2 [1]),
        .O(i__carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__2
       (.I0(\mem_ram_reg[0]_3 [1]),
        .O(i__carry_i_4__2_n_0));
  FDRE \idx_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_offset[0]),
        .Q(idx_r[0]),
        .R(1'b0));
  FDRE \idx_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_offset[1]),
        .Q(idx_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry_n_7 ),
        .O(\mem_ram[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry_n_6 ),
        .O(\mem_ram[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][2]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry_n_5 ),
        .O(\mem_ram[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][3]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry_n_4 ),
        .O(\mem_ram[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][4]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__0_n_7 ),
        .O(\mem_ram[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][5]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__0_n_6 ),
        .O(\mem_ram[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][6]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__0_n_5 ),
        .O(\mem_ram[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][7]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__0_n_4 ),
        .O(\mem_ram[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][8]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__1_n_7 ),
        .O(\mem_ram[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[0][9]_i_2 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__3/i__carry__1_n_6 ),
        .O(\mem_ram[0][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry_n_7 ),
        .O(\mem_ram[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry_n_6 ),
        .O(\mem_ram[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][2]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry_n_5 ),
        .O(\mem_ram[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][3]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry_n_4 ),
        .O(\mem_ram[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][4]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__0_n_7 ),
        .O(\mem_ram[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][5]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__0_n_6 ),
        .O(\mem_ram[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][6]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__0_n_5 ),
        .O(\mem_ram[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][7]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__0_n_4 ),
        .O(\mem_ram[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][8]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__1_n_7 ),
        .O(\mem_ram[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[1][9]_i_2 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__2/i__carry__1_n_6 ),
        .O(\mem_ram[1][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry_n_7 ),
        .O(\mem_ram[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry_n_6 ),
        .O(\mem_ram[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][2]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry_n_5 ),
        .O(\mem_ram[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][3]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry_n_4 ),
        .O(\mem_ram[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][4]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__0_n_7 ),
        .O(\mem_ram[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][5]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__0_n_6 ),
        .O(\mem_ram[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][6]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__0_n_5 ),
        .O(\mem_ram[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][7]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__0_n_4 ),
        .O(\mem_ram[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][8]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__1_n_7 ),
        .O(\mem_ram[2][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[2][9]_i_2 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__1/i__carry__1_n_6 ),
        .O(\mem_ram[2][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][0]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [0]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry_n_7 ),
        .O(\mem_ram[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][1]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [1]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry_n_6 ),
        .O(\mem_ram[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][2]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [2]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry_n_5 ),
        .O(\mem_ram[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][3]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [3]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry_n_4 ),
        .O(\mem_ram[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][4]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [4]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__0_n_7 ),
        .O(\mem_ram[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][5]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [5]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__0_n_6 ),
        .O(\mem_ram[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][6]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [6]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__0_n_5 ),
        .O(\mem_ram[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][7]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [7]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__0_n_4 ),
        .O(\mem_ram[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][8]_i_1 
       (.I0(\state_ram_reg[3][1]_0 [8]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__1_n_7 ),
        .O(\mem_ram[3][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_ram[3][9]_i_2 
       (.I0(\state_ram_reg[3][1]_0 [9]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\_inferred__0/i__carry__1_n_6 ),
        .O(\mem_ram[3][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \mem_ram[3][9]_i_3 
       (.I0(\mem_ram_reg[0][0]_2 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_0 ),
        .O(\state_reg[2] ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [0]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [1]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [2]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [3]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [4]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [5]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [6]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [7]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[0]_3 [8]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[0][0]_3 ),
        .D(\mem_ram[0][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[0]_3 [9]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [0]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [1]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [2]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [3]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [4]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [5]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [6]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [7]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[1]_2 [8]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[1][0]_0 ),
        .D(\mem_ram[1][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[1]_2 [9]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [0]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [1]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [2]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [3]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [4]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [5]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [6]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [7]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[2]_1 [8]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(\mem_ram_reg[2][0]_0 ),
        .D(\mem_ram[2][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[2]_1 [9]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][0]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [0]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][1]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [1]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][2]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [2]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][3]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [3]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][4]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [4]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][5]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [5]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][6]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [6]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][7]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [7]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][8]_i_1_n_0 ),
        .Q(\mem_ram_reg[3]_0 [8]),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \mem_ram_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\mem_ram[3][9]_i_2_n_0 ),
        .Q(\mem_ram_reg[3]_0 [9]),
        .R(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \neuron_state[0]_i_1 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram_reg_n_0_[1][0] ),
        .I2(\state_ram_reg_n_0_[3][0] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\state_ram_reg_n_0_[2][0] ),
        .O(\neuron_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \neuron_state[1]_i_1 
       (.I0(\state_ram_reg_n_0_[1][1] ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\state_ram_reg_n_0_[3][1] ),
        .O(\neuron_state[1]_i_1_n_0 ));
  FDRE \neuron_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\neuron_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \neuron_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\neuron_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \selected_idx_offset_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_r[0]),
        .Q(\selected_idx_offset_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \selected_idx_offset_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(idx_r[1]),
        .Q(\selected_idx_offset_reg[1]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[0]_i_1 
       (.I0(\mem_ram_reg[0]_3 [0]),
        .I1(\mem_ram_reg[1]_2 [0]),
        .I2(\mem_ram_reg[2]_1 [0]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[3]_0 [0]),
        .O(\selected_membrane[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[1]_i_1 
       (.I0(\mem_ram_reg[0]_3 [1]),
        .I1(\mem_ram_reg[1]_2 [1]),
        .I2(\mem_ram_reg[2]_1 [1]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[3]_0 [1]),
        .O(\selected_membrane[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[2]_i_1 
       (.I0(\mem_ram_reg[1]_2 [2]),
        .I1(\mem_ram_reg[3]_0 [2]),
        .I2(\mem_ram_reg[0]_3 [2]),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg[2]_1 [2]),
        .O(\selected_membrane[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[3]_i_1 
       (.I0(\mem_ram_reg[0]_3 [3]),
        .I1(\mem_ram_reg[1]_2 [3]),
        .I2(\mem_ram_reg[2]_1 [3]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[3]_0 [3]),
        .O(\selected_membrane[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[4]_i_1 
       (.I0(\mem_ram_reg[1]_2 [4]),
        .I1(\mem_ram_reg[3]_0 [4]),
        .I2(\mem_ram_reg[0]_3 [4]),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg[2]_1 [4]),
        .O(\selected_membrane[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[5]_i_1 
       (.I0(\mem_ram_reg[1]_2 [5]),
        .I1(\mem_ram_reg[3]_0 [5]),
        .I2(\mem_ram_reg[0]_3 [5]),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg[2]_1 [5]),
        .O(\selected_membrane[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[6]_i_1 
       (.I0(\mem_ram_reg[0]_3 [6]),
        .I1(\mem_ram_reg[1]_2 [6]),
        .I2(\mem_ram_reg[2]_1 [6]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[3]_0 [6]),
        .O(\selected_membrane[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \selected_membrane[7]_i_1 
       (.I0(\mem_ram_reg[0]_3 [7]),
        .I1(\mem_ram_reg[1]_2 [7]),
        .I2(\mem_ram_reg[2]_1 [7]),
        .I3(idx_r[1]),
        .I4(idx_r[0]),
        .I5(\mem_ram_reg[3]_0 [7]),
        .O(\selected_membrane[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[8]_i_1 
       (.I0(\mem_ram_reg[1]_2 [8]),
        .I1(\mem_ram_reg[3]_0 [8]),
        .I2(\mem_ram_reg[0]_3 [8]),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg[2]_1 [8]),
        .O(\selected_membrane[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \selected_membrane[9]_i_1 
       (.I0(\mem_ram_reg[1]_2 [9]),
        .I1(\mem_ram_reg[3]_0 [9]),
        .I2(\mem_ram_reg[0]_3 [9]),
        .I3(idx_r[0]),
        .I4(idx_r[1]),
        .I5(\mem_ram_reg[2]_1 [9]),
        .O(\selected_membrane[9]_i_1_n_0 ));
  FDRE \selected_membrane_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[0]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [0]),
        .R(1'b0));
  FDRE \selected_membrane_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[1]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [1]),
        .R(1'b0));
  FDRE \selected_membrane_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[2]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [2]),
        .R(1'b0));
  FDRE \selected_membrane_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[3]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [3]),
        .R(1'b0));
  FDRE \selected_membrane_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[4]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [4]),
        .R(1'b0));
  FDRE \selected_membrane_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[5]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [5]),
        .R(1'b0));
  FDRE \selected_membrane_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[6]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [6]),
        .R(1'b0));
  FDRE \selected_membrane_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[7]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [7]),
        .R(1'b0));
  FDRE \selected_membrane_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[8]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [8]),
        .R(1'b0));
  FDRE \selected_membrane_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\selected_membrane[9]_i_1_n_0 ),
        .Q(\selected_membrane_reg[9]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[0][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][0]_i_2__0_n_0 ),
        .I3(\state_ram[0][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[0][0] ),
        .O(\state_ram[0][0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[0][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][1]_i_2__0_n_0 ),
        .I3(\state_ram[0][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[0][1] ),
        .O(\state_ram[0][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1010101F10101010)) 
    \state_ram[0][1]_i_2 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_4_n_0 ),
        .O(\state_ram[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010101F10101010)) 
    \state_ram[0][1]_i_2__0 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [1]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][0]_1 ),
        .O(\slv_reg6_reg[1] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[1][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][0]_i_2__0_n_0 ),
        .I3(\state_ram[1][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[1][0] ),
        .O(\state_ram[1][0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[1][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][1]_i_2__0_n_0 ),
        .I3(\state_ram[1][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[1][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40404F4040404040)) 
    \state_ram[1][1]_i_2 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_4_n_0 ),
        .O(\state_ram[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40404F4040404040)) 
    \state_ram[1][1]_i_2__0 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [1]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][0]_1 ),
        .O(\slv_reg6_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[2][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][0]_i_2__0_n_0 ),
        .I3(\state_ram[2][1]_i_3_n_0 ),
        .I4(\state_ram_reg_n_0_[2][0] ),
        .O(\state_ram[2][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \state_ram[2][0]_i_2__0 
       (.I0(\state_ram_reg_n_0_[0][0] ),
        .I1(\state_ram_reg_n_0_[1][0] ),
        .I2(\state_ram_reg_n_0_[2][0] ),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(\state_ram[0][1]_i_2_0 [0]),
        .I5(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[2][0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[2][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][1]_i_2__0_n_0 ),
        .I3(\state_ram[2][1]_i_3_n_0 ),
        .I4(\state_ram_reg_n_0_[2][1] ),
        .O(\state_ram[2][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \state_ram[2][1]_i_2__0 
       (.I0(\state_ram_reg_n_0_[3][1] ),
        .I1(\state_ram_reg_n_0_[2][1] ),
        .I2(\state_ram_reg_n_0_[0][1] ),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg_n_0_[1][1] ),
        .O(\state_ram[2][1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h40404F4040404040)) 
    \state_ram[2][1]_i_3 
       (.I0(\state_ram_reg[0][1]_0 [0]),
        .I1(\state_ram_reg[0][1]_0 [1]),
        .I2(\state_ram_reg[0][0]_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(\state_ram[0][1]_i_2_0 [0]),
        .I5(\state_ram[2][1]_i_4_n_0 ),
        .O(\state_ram[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40404F4040404040)) 
    \state_ram[2][1]_i_3__0 
       (.I0(\state_ram_reg[0][1]_0 [0]),
        .I1(\state_ram_reg[0][1]_0 [1]),
        .I2(\state_ram_reg[0][0]_0 [1]),
        .I3(\state_ram[0][1]_i_2_0 [1]),
        .I4(\state_ram[0][1]_i_2_0 [0]),
        .I5(\state_ram_reg[0][0]_1 ),
        .O(\slv_reg6_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \state_ram[2][1]_i_4 
       (.I0(\mem_ram_reg[0][0]_0 ),
        .I1(\mem_ram_reg[0][0]_1 ),
        .I2(\mem_ram_reg[0][0]_2 ),
        .I3(\state_ram[0][1]_i_2_0 [2]),
        .O(\state_ram[2][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[3][0]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [10]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][0]_i_2__0_n_0 ),
        .I3(\state_ram[3][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[3][0] ),
        .O(\state_ram[3][0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \state_ram[3][1]_i_1__0 
       (.I0(\state_ram_reg[3][1]_0 [11]),
        .I1(\state_ram_reg[0][0]_0 [0]),
        .I2(\state_ram[2][1]_i_2__0_n_0 ),
        .I3(\state_ram[3][1]_i_2_n_0 ),
        .I4(\state_ram_reg_n_0_[3][1] ),
        .O(\state_ram[3][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \state_ram[3][1]_i_2 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [0]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram[2][1]_i_4_n_0 ),
        .O(\state_ram[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \state_ram[3][1]_i_2__0 
       (.I0(\state_ram_reg[0][1]_0 [1]),
        .I1(\state_ram_reg[0][1]_0 [0]),
        .I2(\state_ram_reg[0][0]_0 [1]),
        .I3(\state_ram[0][1]_i_2_0 [0]),
        .I4(\state_ram[0][1]_i_2_0 [1]),
        .I5(\state_ram_reg[0][0]_1 ),
        .O(\slv_reg6_reg[1]_1 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[0][0]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[0][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[0][1]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[0][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[1][0]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[1][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[1][1]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[1][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[2][0]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[2][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[2][1]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[2][1] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[3][0]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[3][0] ),
        .R(\state_reg[0]_0 ));
  (* RAM_STYLE = "block" *) 
  FDRE \state_ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_ram[3][1]_i_1__0_n_0 ),
        .Q(\state_ram_reg_n_0_[3][1] ),
        .R(\state_reg[0]_0 ));
  whole_system_fowler_nordheim_anne_0_1_LFSR_inout_3 u_lfsr
       (.Q(idx_offset),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[4] (\state_reg[4] ),
        .storage_CE_advance(storage_CE_advance));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory_with_buff" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_with_memory_with_buff
   (flipping_CE,
    E,
    incrementing_reg,
    storage_CE_advance,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    spike_reg_reg,
    CO,
    \cnt_prop_reg[0] ,
    \state_reg[1]_1 ,
    \index_of_neuron_that_fired_reg_reg[2]_0 ,
    \slv_reg6_reg[1] ,
    \slv_reg6_reg[1]_0 ,
    \slv_reg6_reg[0] ,
    \slv_reg6_reg[1]_1 ,
    add_mem,
    \offset_reg_reg[1] ,
    \membrane_reg_reg[9] ,
    \state_reg[15] ,
    B,
    s00_axi_aclk,
    A,
    add_r_reg,
    SR,
    Q,
    add_r,
    new_sample_reg,
    \state_reg[1]_2 ,
    \state_reg[0]_1 ,
    spike_reg_reg_0,
    \state_reg[0]_2 ,
    \state_reg[4] ,
    \state_ram_reg[3][1] ,
    \state_ram_reg[0][0] ,
    \mem_ram_reg[3][0] ,
    \state_ram_reg[0][0]_0 ,
    add_r_reg_0,
    \off_r_reg[1] ,
    \mem_r_reg[9] ,
    \x_reg[0] ,
    \state_reg[4]_0 ,
    \Q_out_reg[3] ,
    x_reg_rep,
    ADDRBWRADDR,
    D,
    \state_reg[2]_1 );
  output flipping_CE;
  output [0:0]E;
  output incrementing_reg;
  output storage_CE_advance;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output spike_reg_reg;
  output [0:0]CO;
  output \cnt_prop_reg[0] ;
  output \state_reg[1]_1 ;
  output [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  output \slv_reg6_reg[1] ;
  output \slv_reg6_reg[1]_0 ;
  output \slv_reg6_reg[0] ;
  output \slv_reg6_reg[1]_1 ;
  output add_mem;
  output [1:0]\offset_reg_reg[1] ;
  output [9:0]\membrane_reg_reg[9] ;
  output [7:0]\state_reg[15] ;
  output [17:0]B;
  input s00_axi_aclk;
  input [11:0]A;
  input [0:0]add_r_reg;
  input [0:0]SR;
  input [1:0]Q;
  input add_r;
  input new_sample_reg;
  input \state_reg[1]_2 ;
  input \state_reg[0]_1 ;
  input spike_reg_reg_0;
  input [0:0]\state_reg[0]_2 ;
  input [4:0]\state_reg[4] ;
  input [11:0]\state_ram_reg[3][1] ;
  input [1:0]\state_ram_reg[0][0] ;
  input [1:0]\mem_ram_reg[3][0] ;
  input \state_ram_reg[0][0]_0 ;
  input add_r_reg_0;
  input [1:0]\off_r_reg[1] ;
  input [9:0]\mem_r_reg[9] ;
  input \x_reg[0] ;
  input [4:0]\state_reg[4]_0 ;
  input [3:0]\Q_out_reg[3] ;
  input x_reg_rep;
  input [8:0]ADDRBWRADDR;
  input [2:0]D;
  input [0:0]\state_reg[2]_1 ;

  wire [11:0]A;
  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire G_memory_n_1;
  wire G_memory_n_2;
  wire G_memory_n_3;
  wire [1:0]Q;
  wire [3:0]\Q_out_reg[3] ;
  wire [0:0]SR;
  wire add_mem;
  wire add_r;
  wire [0:0]add_r_reg;
  wire add_r_reg_0;
  wire \cnt_prop_reg[0] ;
  wire flipping_CE;
  wire [1:0]idx_p;
  wire incrementing_reg;
  wire [2:0]\index_of_neuron_that_fired_reg_reg[2]_0 ;
  wire [9:0]mem_p;
  wire [9:0]\mem_r_reg[9] ;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [9:0]\membrane_reg_reg[9] ;
  wire neuron_ensemble_inst_n_14;
  wire new_sample_reg;
  wire [1:0]\off_r_reg[1] ;
  wire [1:0]\offset_reg_reg[1] ;
  wire s00_axi_aclk;
  wire \slv_reg6_reg[0] ;
  wire \slv_reg6_reg[1] ;
  wire \slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire spike_reg_reg;
  wire spike_reg_reg_0;
  wire [0:0]st_p;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire [1:0]\state_ram_reg[0][0] ;
  wire \state_ram_reg[0][0]_0 ;
  wire [11:0]\state_ram_reg[3][1] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]\state_reg[0]_2 ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[2]_0 ;
  wire [0:0]\state_reg[2]_1 ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire storage_CE_advance;
  wire \u_store/mem_ram ;
  wire \x_reg[0] ;
  wire x_reg_rep;

  whole_system_fowler_nordheim_anne_0_1_distributed_graph_memory G_memory
       (.E(\u_store/mem_ram ),
        .Q(Q[0]),
        .\Q_out_reg[0]_0 (\state_reg_n_0_[2] ),
        .\Q_out_reg[0]_1 (\state_reg_n_0_[1] ),
        .\Q_out_reg[3]_0 (\Q_out_reg[3] ),
        .\mem_ram_reg[0][0] (neuron_ensemble_inst_n_14),
        .\mem_ram_reg[3][0] (\mem_ram_reg[3][0] ),
        .\mem_ram_reg[3][0]_0 (\state_ram_reg[0][0] [0]),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg6_reg[0] (G_memory_n_2),
        .\slv_reg6_reg[1] (G_memory_n_1),
        .\slv_reg6_reg[1]_0 (G_memory_n_3));
  whole_system_fowler_nordheim_anne_0_1_transmit_buffer_0 buffer
       (.E(E),
        .Q(st_p),
        .SR(SR),
        .add_mem(add_mem),
        .add_r_reg(add_r_reg_0),
        .add_r_reg_0(add_r_reg),
        .\cnt_prop_reg[0]_0 (\cnt_prop_reg[0] ),
        .\mem_r_reg[9] (\mem_r_reg[9] ),
        .\membrane_reg_reg[9]_0 (\membrane_reg_reg[9] ),
        .\membrane_reg_reg[9]_1 (mem_p),
        .new_sample_reg_0(new_sample_reg),
        .\off_r_reg[1] (\off_r_reg[1] ),
        .\offset_reg_reg[1]_0 (\offset_reg_reg[1] ),
        .\offset_reg_reg[1]_1 (idx_p),
        .s00_axi_aclk(s00_axi_aclk),
        .spike_reg_reg_0(spike_reg_reg),
        .spike_reg_reg_1(spike_reg_reg_0),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_2 ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .\state_reg[2]_1 (Q),
        .storage_CE_advance(storage_CE_advance));
  FDRE incrementing_reg_reg
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(add_r),
        .Q(incrementing_reg),
        .R(Q[0]));
  FDRE \index_of_neuron_that_fired_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(D[0]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [0]),
        .R(Q[0]));
  FDRE \index_of_neuron_that_fired_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(D[1]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [1]),
        .R(Q[0]));
  FDRE \index_of_neuron_that_fired_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(D[2]),
        .Q(\index_of_neuron_that_fired_reg_reg[2]_0 [2]),
        .R(Q[0]));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble neuron_ensemble_inst
       (.A(A),
        .ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .CO(CO),
        .E(G_memory_n_3),
        .Q(st_p),
        .\_inferred__2/i__carry (incrementing_reg),
        .flipping_CE(flipping_CE),
        .\idx_p_reg[1]_0 (idx_p),
        .\mem_p_reg[9]_0 (mem_p),
        .\mem_ram_reg[0][0] (\u_store/mem_ram ),
        .\mem_ram_reg[1][0] (G_memory_n_1),
        .\mem_ram_reg[2][0] (G_memory_n_2),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg6_reg[0] (\slv_reg6_reg[0] ),
        .\slv_reg6_reg[1] (\slv_reg6_reg[1] ),
        .\slv_reg6_reg[1]_0 (\slv_reg6_reg[1]_0 ),
        .\slv_reg6_reg[1]_1 (\slv_reg6_reg[1]_1 ),
        .\state_ram[0][1]_i_2 (\index_of_neuron_that_fired_reg_reg[2]_0 ),
        .\state_ram_reg[0][0] (\state_ram_reg[0][0] ),
        .\state_ram_reg[0][0]_0 (\state_ram_reg[0][0]_0 ),
        .\state_ram_reg[0][1] (\mem_ram_reg[3][0] ),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0]_2 ),
        .\state_reg[0]_0 (Q[0]),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[1] (\state_reg[1]_1 ),
        .\state_reg[2] (neuron_ensemble_inst_n_14),
        .\state_reg[4] (\state_reg[4] ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .storage_CE_advance(storage_CE_advance),
        .\x_reg[0] (\x_reg[0] ),
        .x_reg_rep(\state_reg_n_0_[0] ),
        .x_reg_rep_0(\state_reg_n_0_[1] ),
        .x_reg_rep_1(\state_reg_n_0_[2] ),
        .x_reg_rep_2(x_reg_rep));
  LUT6 #(
    .INIT(64'h000000FF0000CBFF)) 
    \state[0]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg[2]_1 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF0000B4FF)) 
    \state[1]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg[2]_1 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF000000A200)) 
    \state[2]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg[2]_1 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\state[2]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neuron_ensemble_with_memory_with_buff" *) 
module whole_system_fowler_nordheim_anne_0_1_neuron_ensemble_with_memory_with_buff__parameterized0
   (add_mem_reg_reg,
    E,
    flipping_CE_0,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    spike_reg_reg,
    stage1_r_reg,
    \state_reg[0]_1 ,
    \state_reg[1]_1 ,
    \state_reg[2]_1 ,
    ADDRBWRADDR,
    \cnt_prop_reg[0] ,
    \state_reg[1]_2 ,
    \index_of_neuron_that_fired_reg_reg[2] ,
    spiked1,
    \x_reg[7] ,
    \state_reg[15] ,
    \offset_reg_reg[1] ,
    \membrane_reg_reg[9] ,
    SR,
    s00_axi_aclk,
    B,
    stage1_r_reg_0,
    Q,
    \state_reg[1]_3 ,
    \state_reg[0]_2 ,
    spike_reg_reg_0,
    \state_reg[0]_3 ,
    \state_reg[4] ,
    incrementing_reg,
    \state_ram_reg[3][1] ,
    \mem_ram_reg[3][9] ,
    \state_ram_reg[3][0] ,
    \state_ram_reg[0][0] ,
    \state_ram_reg[1][0] ,
    \state_ram_reg[2][0] ,
    \state_ram[3][1]_i_2__0 ,
    \mem_ram_reg[3][0] ,
    \unit_r_reg[0] ,
    \x_reg[8] ,
    \state_reg[4]_0 ,
    storage_CE_advance,
    \Q_out_reg[3] ,
    \state_reg[2]_2 );
  output [0:0]add_mem_reg_reg;
  output [0:0]E;
  output flipping_CE_0;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output spike_reg_reg;
  output [0:0]stage1_r_reg;
  output \state_reg[0]_1 ;
  output \state_reg[1]_1 ;
  output \state_reg[2]_1 ;
  output [8:0]ADDRBWRADDR;
  output \cnt_prop_reg[0] ;
  output \state_reg[1]_2 ;
  output \index_of_neuron_that_fired_reg_reg[2] ;
  output spiked1;
  output [0:0]\x_reg[7] ;
  output [7:0]\state_reg[15] ;
  output [1:0]\offset_reg_reg[1] ;
  output [9:0]\membrane_reg_reg[9] ;
  input [0:0]SR;
  input s00_axi_aclk;
  input [17:0]B;
  input [11:0]stage1_r_reg_0;
  input [1:0]Q;
  input \state_reg[1]_3 ;
  input \state_reg[0]_2 ;
  input spike_reg_reg_0;
  input [0:0]\state_reg[0]_3 ;
  input [4:0]\state_reg[4] ;
  input incrementing_reg;
  input [11:0]\state_ram_reg[3][1] ;
  input [0:0]\mem_ram_reg[3][9] ;
  input \state_ram_reg[3][0] ;
  input \state_ram_reg[0][0] ;
  input \state_ram_reg[1][0] ;
  input \state_ram_reg[2][0] ;
  input [2:0]\state_ram[3][1]_i_2__0 ;
  input [1:0]\mem_ram_reg[3][0] ;
  input \unit_r_reg[0] ;
  input \x_reg[8] ;
  input [4:0]\state_reg[4]_0 ;
  input storage_CE_advance;
  input [3:0]\Q_out_reg[3] ;
  input [0:0]\state_reg[2]_2 ;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [0:0]E;
  wire G_memory_n_1;
  wire G_memory_n_2;
  wire G_memory_n_3;
  wire [1:0]Q;
  wire [3:0]\Q_out_reg[3] ;
  wire [0:0]SR;
  wire [0:0]add_mem_reg_reg;
  wire \cnt_prop_reg[0] ;
  wire flipping_CE_0;
  wire incrementing_reg;
  wire \index_of_neuron_that_fired_reg_reg[2] ;
  wire [1:0]\mem_ram_reg[3][0] ;
  wire [0:0]\mem_ram_reg[3][9] ;
  wire [9:0]\membrane_reg_reg[9] ;
  wire neuron_ensemble_inst_n_10;
  wire neuron_ensemble_inst_n_11;
  wire neuron_ensemble_inst_n_2;
  wire neuron_ensemble_inst_n_23;
  wire neuron_ensemble_inst_n_3;
  wire neuron_ensemble_inst_n_33;
  wire neuron_ensemble_inst_n_34;
  wire neuron_ensemble_inst_n_35;
  wire neuron_ensemble_inst_n_4;
  wire neuron_ensemble_inst_n_5;
  wire neuron_ensemble_inst_n_6;
  wire neuron_ensemble_inst_n_7;
  wire neuron_ensemble_inst_n_8;
  wire neuron_ensemble_inst_n_9;
  wire [1:0]\offset_reg_reg[1] ;
  wire s00_axi_aclk;
  wire spike_reg_reg;
  wire spike_reg_reg_0;
  wire spiked1;
  wire [0:0]stage1_r_reg;
  wire [11:0]stage1_r_reg_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [2:0]\state_ram[3][1]_i_2__0 ;
  wire \state_ram_reg[0][0] ;
  wire \state_ram_reg[1][0] ;
  wire \state_ram_reg[2][0] ;
  wire \state_ram_reg[3][0] ;
  wire [11:0]\state_ram_reg[3][1] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [0:0]\state_reg[0]_3 ;
  wire [7:0]\state_reg[15] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire [0:0]\state_reg[2]_2 ;
  wire [4:0]\state_reg[4] ;
  wire [4:0]\state_reg[4]_0 ;
  wire storage_CE_advance;
  wire \u_store/mem_ram ;
  wire \unit_r_reg[0] ;
  wire [0:0]\x_reg[7] ;
  wire \x_reg[8] ;

  whole_system_fowler_nordheim_anne_0_1_distributed_graph_memory__parameterized0 G_memory
       (.E(\u_store/mem_ram ),
        .Q(Q[0]),
        .\Q_out_reg[0]_0 (\state_reg[2]_1 ),
        .\Q_out_reg[0]_1 (\state_reg[1]_1 ),
        .\Q_out_reg[3]_0 (\Q_out_reg[3] ),
        .\mem_ram_reg[0][0] (neuron_ensemble_inst_n_23),
        .\mem_ram_reg[3][0] (\mem_ram_reg[3][0] ),
        .\mem_ram_reg[3][0]_0 (\mem_ram_reg[3][9] ),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg6_reg[0] (G_memory_n_2),
        .\slv_reg6_reg[1] (G_memory_n_1),
        .\slv_reg6_reg[1]_0 (G_memory_n_3));
  whole_system_fowler_nordheim_anne_0_1_transmit_buffer buffer
       (.E(E),
        .Q(neuron_ensemble_inst_n_35),
        .SR(SR),
        .add_mem_reg_reg_0(add_mem_reg_reg),
        .\cnt_prop_reg[0]_0 (\cnt_prop_reg[0] ),
        .\membrane_reg_reg[9]_0 (\membrane_reg_reg[9] ),
        .\membrane_reg_reg[9]_1 ({neuron_ensemble_inst_n_2,neuron_ensemble_inst_n_3,neuron_ensemble_inst_n_4,neuron_ensemble_inst_n_5,neuron_ensemble_inst_n_6,neuron_ensemble_inst_n_7,neuron_ensemble_inst_n_8,neuron_ensemble_inst_n_9,neuron_ensemble_inst_n_10,neuron_ensemble_inst_n_11}),
        .\offset_reg_reg[1]_0 (\offset_reg_reg[1] ),
        .\offset_reg_reg[1]_1 ({neuron_ensemble_inst_n_33,neuron_ensemble_inst_n_34}),
        .s00_axi_aclk(s00_axi_aclk),
        .spike_reg_reg_0(spike_reg_reg),
        .spike_reg_reg_1(spike_reg_reg_0),
        .spiked1(spiked1),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_2 ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_3 ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .\state_reg[2]_1 (Q),
        .\unit_r_reg[0] (\unit_r_reg[0] ));
  whole_system_fowler_nordheim_anne_0_1_neuron_ensemble__parameterized0 neuron_ensemble_inst
       (.ADDRBWRADDR(ADDRBWRADDR),
        .B(B),
        .E(\x_reg[7] ),
        .Q({neuron_ensemble_inst_n_2,neuron_ensemble_inst_n_3,neuron_ensemble_inst_n_4,neuron_ensemble_inst_n_5,neuron_ensemble_inst_n_6,neuron_ensemble_inst_n_7,neuron_ensemble_inst_n_8,neuron_ensemble_inst_n_9,neuron_ensemble_inst_n_10,neuron_ensemble_inst_n_11}),
        .flipping_CE_0(flipping_CE_0),
        .\idx_p_reg[1]_0 ({neuron_ensemble_inst_n_33,neuron_ensemble_inst_n_34}),
        .incrementing_reg(incrementing_reg),
        .\index_of_neuron_that_fired_reg_reg[2] (\index_of_neuron_that_fired_reg_reg[2] ),
        .\mem_ram_reg[0][0] (\u_store/mem_ram ),
        .\mem_ram_reg[1][0] (G_memory_n_1),
        .\mem_ram_reg[2][0] (G_memory_n_2),
        .\mem_ram_reg[3][0] (G_memory_n_3),
        .\mem_ram_reg[3][9] (\mem_ram_reg[3][9] ),
        .s00_axi_aclk(s00_axi_aclk),
        .\st_p_reg[0]_0 (neuron_ensemble_inst_n_35),
        .stage1_r_reg(stage1_r_reg),
        .stage1_r_reg_0(stage1_r_reg_0),
        .\state_ram[3][1]_i_2__0 (\state_ram[3][1]_i_2__0 ),
        .\state_ram_reg[0][0] (\state_ram_reg[0][0] ),
        .\state_ram_reg[1][0] (\state_ram_reg[1][0] ),
        .\state_ram_reg[2][0] (\state_ram_reg[2][0] ),
        .\state_ram_reg[3][0] (\state_ram_reg[3][0] ),
        .\state_ram_reg[3][1] (\state_ram_reg[3][1] ),
        .\state_reg[0] (\state_reg[0]_3 ),
        .\state_reg[0]_0 (Q[0]),
        .\state_reg[15] (\state_reg[15] ),
        .\state_reg[1] (\state_reg[1]_2 ),
        .\state_reg[2] (neuron_ensemble_inst_n_23),
        .\state_reg[4] (\state_reg[4] ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .storage_CE_advance(storage_CE_advance),
        .\x_reg[8] (\x_reg[8] ),
        .x_reg_rep(\state_reg[0]_1 ),
        .x_reg_rep_0(\state_reg[1]_1 ),
        .x_reg_rep_1(\state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h1100555510115555)) 
    \state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg[2]_1 ),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[2]_2 ),
        .I5(\state_reg[1]_1 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1011555501005555)) 
    \state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg[2]_1 ),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[2]_2 ),
        .I5(\state_reg[1]_1 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454000044540000)) 
    \state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg[2]_1 ),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[2]_2 ),
        .I5(\state_reg[1]_1 ),
        .O(\state[2]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[0]_1 ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_1 ),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_1 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "scheduler_2" *) 
module whole_system_fowler_nordheim_anne_0_1_scheduler_2
   (add_r,
    D,
    \flips_reg[31]_0 ,
    SR,
    Q,
    \cuts_best_reg[15]_0 ,
    \step_cnt_reg[10]_0 ,
    add_mem,
    s00_axi_aclk,
    spiked1,
    \step_cnt_reg[0]_0 ,
    \off_r_reg[1]_0 ,
    \off_r_reg[1]_1 ,
    \mem_r_reg[9]_0 ,
    \off_r_reg[1]_2 );
  output add_r;
  output [2:0]D;
  output [31:0]\flips_reg[31]_0 ;
  output [0:0]SR;
  output [1:0]Q;
  output [15:0]\cuts_best_reg[15]_0 ;
  output \step_cnt_reg[10]_0 ;
  input add_mem;
  input s00_axi_aclk;
  input spiked1;
  input [0:0]\step_cnt_reg[0]_0 ;
  input \off_r_reg[1]_0 ;
  input \off_r_reg[1]_1 ;
  input [9:0]\mem_r_reg[9]_0 ;
  input [1:0]\off_r_reg[1]_2 ;

  wire [2:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [1:0]Q;
  wire [0:0]SR;
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
  wire flips;
  wire \flips[0]_i_2_n_0 ;
  wire \flips_reg[0]_i_1_n_0 ;
  wire \flips_reg[0]_i_1_n_1 ;
  wire \flips_reg[0]_i_1_n_2 ;
  wire \flips_reg[0]_i_1_n_3 ;
  wire \flips_reg[0]_i_1_n_4 ;
  wire \flips_reg[0]_i_1_n_5 ;
  wire \flips_reg[0]_i_1_n_6 ;
  wire \flips_reg[0]_i_1_n_7 ;
  wire \flips_reg[12]_i_1_n_0 ;
  wire \flips_reg[12]_i_1_n_1 ;
  wire \flips_reg[12]_i_1_n_2 ;
  wire \flips_reg[12]_i_1_n_3 ;
  wire \flips_reg[12]_i_1_n_4 ;
  wire \flips_reg[12]_i_1_n_5 ;
  wire \flips_reg[12]_i_1_n_6 ;
  wire \flips_reg[12]_i_1_n_7 ;
  wire \flips_reg[16]_i_1_n_0 ;
  wire \flips_reg[16]_i_1_n_1 ;
  wire \flips_reg[16]_i_1_n_2 ;
  wire \flips_reg[16]_i_1_n_3 ;
  wire \flips_reg[16]_i_1_n_4 ;
  wire \flips_reg[16]_i_1_n_5 ;
  wire \flips_reg[16]_i_1_n_6 ;
  wire \flips_reg[16]_i_1_n_7 ;
  wire \flips_reg[20]_i_1_n_0 ;
  wire \flips_reg[20]_i_1_n_1 ;
  wire \flips_reg[20]_i_1_n_2 ;
  wire \flips_reg[20]_i_1_n_3 ;
  wire \flips_reg[20]_i_1_n_4 ;
  wire \flips_reg[20]_i_1_n_5 ;
  wire \flips_reg[20]_i_1_n_6 ;
  wire \flips_reg[20]_i_1_n_7 ;
  wire \flips_reg[24]_i_1_n_0 ;
  wire \flips_reg[24]_i_1_n_1 ;
  wire \flips_reg[24]_i_1_n_2 ;
  wire \flips_reg[24]_i_1_n_3 ;
  wire \flips_reg[24]_i_1_n_4 ;
  wire \flips_reg[24]_i_1_n_5 ;
  wire \flips_reg[24]_i_1_n_6 ;
  wire \flips_reg[24]_i_1_n_7 ;
  wire \flips_reg[28]_i_1_n_1 ;
  wire \flips_reg[28]_i_1_n_2 ;
  wire \flips_reg[28]_i_1_n_3 ;
  wire \flips_reg[28]_i_1_n_4 ;
  wire \flips_reg[28]_i_1_n_5 ;
  wire \flips_reg[28]_i_1_n_6 ;
  wire \flips_reg[28]_i_1_n_7 ;
  wire [31:0]\flips_reg[31]_0 ;
  wire \flips_reg[4]_i_1_n_0 ;
  wire \flips_reg[4]_i_1_n_1 ;
  wire \flips_reg[4]_i_1_n_2 ;
  wire \flips_reg[4]_i_1_n_3 ;
  wire \flips_reg[4]_i_1_n_4 ;
  wire \flips_reg[4]_i_1_n_5 ;
  wire \flips_reg[4]_i_1_n_6 ;
  wire \flips_reg[4]_i_1_n_7 ;
  wire \flips_reg[8]_i_1_n_0 ;
  wire \flips_reg[8]_i_1_n_1 ;
  wire \flips_reg[8]_i_1_n_2 ;
  wire \flips_reg[8]_i_1_n_3 ;
  wire \flips_reg[8]_i_1_n_4 ;
  wire \flips_reg[8]_i_1_n_5 ;
  wire \flips_reg[8]_i_1_n_6 ;
  wire \flips_reg[8]_i_1_n_7 ;
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
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__7_n_0;
  wire [9:0]mem_r;
  wire mem_r_0;
  wire [9:0]\mem_r_reg[9]_0 ;
  wire \off_r_reg[1]_0 ;
  wire \off_r_reg[1]_1 ;
  wire [1:0]\off_r_reg[1]_2 ;
  wire reset;
  wire s00_axi_aclk;
  wire spiked1;
  wire \step_cnt[0]_i_2_n_0 ;
  wire [11:0]step_cnt_reg;
  wire [0:0]\step_cnt_reg[0]_0 ;
  wire \step_cnt_reg[0]_i_1_n_0 ;
  wire \step_cnt_reg[0]_i_1_n_1 ;
  wire \step_cnt_reg[0]_i_1_n_2 ;
  wire \step_cnt_reg[0]_i_1_n_3 ;
  wire \step_cnt_reg[0]_i_1_n_4 ;
  wire \step_cnt_reg[0]_i_1_n_5 ;
  wire \step_cnt_reg[0]_i_1_n_6 ;
  wire \step_cnt_reg[0]_i_1_n_7 ;
  wire \step_cnt_reg[10]_0 ;
  wire \step_cnt_reg[4]_i_1_n_0 ;
  wire \step_cnt_reg[4]_i_1_n_1 ;
  wire \step_cnt_reg[4]_i_1_n_2 ;
  wire \step_cnt_reg[4]_i_1_n_3 ;
  wire \step_cnt_reg[4]_i_1_n_4 ;
  wire \step_cnt_reg[4]_i_1_n_5 ;
  wire \step_cnt_reg[4]_i_1_n_6 ;
  wire \step_cnt_reg[4]_i_1_n_7 ;
  wire \step_cnt_reg[8]_i_1_n_1 ;
  wire \step_cnt_reg[8]_i_1_n_2 ;
  wire \step_cnt_reg[8]_i_1_n_3 ;
  wire \step_cnt_reg[8]_i_1_n_4 ;
  wire \step_cnt_reg[8]_i_1_n_5 ;
  wire \step_cnt_reg[8]_i_1_n_6 ;
  wire \step_cnt_reg[8]_i_1_n_7 ;
  wire \x[8]_i_4_n_0 ;
  wire \x[8]_i_5_n_0 ;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_cuts_best0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cuts_best0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_flips_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\step_cnt_reg[0]_0 ),
        .O(reset));
  LUT6 #(
    .INIT(64'hBBBFBBBBBBBBBBBB)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(mem_r_0),
        .I1(\FSM_onehot_state[3]_i_3_n_0 ),
        .I2(\halt_cnt_reg_n_0_[1] ),
        .I3(\halt_cnt_reg_n_0_[0] ),
        .I4(\halt_cnt_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_2_n_0 ),
        .D(1'b0),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_2_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(flips),
        .R(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_2_n_0 ),
        .D(flips),
        .Q(Q[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_2_n_0 ),
        .D(Q[1]),
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
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4__7_n_0}));
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
  LUT3 #(
    .INIT(8'hA8)) 
    add_r_i_1
       (.I0(flips),
        .I1(\off_r_reg[1]_0 ),
        .I2(\off_r_reg[1]_1 ),
        .O(mem_r_0));
  FDRE add_r_reg
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
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
       (.I0(cuts_next[15]),
        .I1(\cuts_best_reg[15]_0 [15]),
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
       (.I0(Q[1]),
        .I1(cuts_best0_carry__0_n_0),
        .O(cuts_best));
  FDRE \cuts_best_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[0]),
        .Q(\cuts_best_reg[15]_0 [0]),
        .R(reset));
  FDRE \cuts_best_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[10]),
        .Q(\cuts_best_reg[15]_0 [10]),
        .R(reset));
  FDRE \cuts_best_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[11]),
        .Q(\cuts_best_reg[15]_0 [11]),
        .R(reset));
  FDRE \cuts_best_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[12]),
        .Q(\cuts_best_reg[15]_0 [12]),
        .R(reset));
  FDRE \cuts_best_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[13]),
        .Q(\cuts_best_reg[15]_0 [13]),
        .R(reset));
  FDRE \cuts_best_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[14]),
        .Q(\cuts_best_reg[15]_0 [14]),
        .R(reset));
  FDRE \cuts_best_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[15]),
        .Q(\cuts_best_reg[15]_0 [15]),
        .R(reset));
  FDRE \cuts_best_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[1]),
        .Q(\cuts_best_reg[15]_0 [1]),
        .R(reset));
  FDRE \cuts_best_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[2]),
        .Q(\cuts_best_reg[15]_0 [2]),
        .R(reset));
  FDRE \cuts_best_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[3]),
        .Q(\cuts_best_reg[15]_0 [3]),
        .R(reset));
  FDRE \cuts_best_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[4]),
        .Q(\cuts_best_reg[15]_0 [4]),
        .R(reset));
  FDRE \cuts_best_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[5]),
        .Q(\cuts_best_reg[15]_0 [5]),
        .R(reset));
  FDRE \cuts_best_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[6]),
        .Q(\cuts_best_reg[15]_0 [6]),
        .R(reset));
  FDRE \cuts_best_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[7]),
        .Q(\cuts_best_reg[15]_0 [7]),
        .R(reset));
  FDRE \cuts_best_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[8]),
        .Q(\cuts_best_reg[15]_0 [8]),
        .R(reset));
  FDRE \cuts_best_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cuts_best),
        .D(cuts_next[9]),
        .Q(\cuts_best_reg[15]_0 [9]),
        .R(reset));
  FDRE \cuts_cur_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[0]),
        .Q(cuts_cur[0]),
        .R(reset));
  FDRE \cuts_cur_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[10]),
        .Q(cuts_cur[10]),
        .R(reset));
  FDRE \cuts_cur_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[11]),
        .Q(cuts_cur[11]),
        .R(reset));
  FDRE \cuts_cur_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[12]),
        .Q(cuts_cur[12]),
        .R(reset));
  FDRE \cuts_cur_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[13]),
        .Q(cuts_cur[13]),
        .R(reset));
  FDRE \cuts_cur_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[14]),
        .Q(cuts_cur[14]),
        .R(reset));
  FDRE \cuts_cur_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[15]),
        .Q(cuts_cur[15]),
        .R(reset));
  FDRE \cuts_cur_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[1]),
        .Q(cuts_cur[1]),
        .R(reset));
  FDRE \cuts_cur_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[2]),
        .Q(cuts_cur[2]),
        .R(reset));
  FDRE \cuts_cur_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[3]),
        .Q(cuts_cur[3]),
        .R(reset));
  FDRE \cuts_cur_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[4]),
        .Q(cuts_cur[4]),
        .R(reset));
  FDRE \cuts_cur_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[5]),
        .Q(cuts_cur[5]),
        .R(reset));
  FDRE \cuts_cur_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[6]),
        .Q(cuts_cur[6]),
        .R(reset));
  FDRE \cuts_cur_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[7]),
        .Q(cuts_cur[7]),
        .R(reset));
  FDRE \cuts_cur_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[8]),
        .Q(cuts_cur[8]),
        .R(reset));
  FDRE \cuts_cur_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .D(cuts_next[9]),
        .Q(cuts_cur[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \flips[0]_i_2 
       (.I0(\flips_reg[31]_0 [0]),
        .O(\flips[0]_i_2_n_0 ));
  FDRE \flips_reg[0] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[0]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [0]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\flips_reg[0]_i_1_n_0 ,\flips_reg[0]_i_1_n_1 ,\flips_reg[0]_i_1_n_2 ,\flips_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\flips_reg[0]_i_1_n_4 ,\flips_reg[0]_i_1_n_5 ,\flips_reg[0]_i_1_n_6 ,\flips_reg[0]_i_1_n_7 }),
        .S({\flips_reg[31]_0 [3:1],\flips[0]_i_2_n_0 }));
  FDRE \flips_reg[10] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[8]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [10]),
        .R(reset));
  FDRE \flips_reg[11] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[8]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [11]),
        .R(reset));
  FDRE \flips_reg[12] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[12]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [12]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[12]_i_1 
       (.CI(\flips_reg[8]_i_1_n_0 ),
        .CO({\flips_reg[12]_i_1_n_0 ,\flips_reg[12]_i_1_n_1 ,\flips_reg[12]_i_1_n_2 ,\flips_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[12]_i_1_n_4 ,\flips_reg[12]_i_1_n_5 ,\flips_reg[12]_i_1_n_6 ,\flips_reg[12]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [15:12]));
  FDRE \flips_reg[13] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[12]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [13]),
        .R(reset));
  FDRE \flips_reg[14] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[12]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [14]),
        .R(reset));
  FDRE \flips_reg[15] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[12]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [15]),
        .R(reset));
  FDRE \flips_reg[16] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[16]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [16]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[16]_i_1 
       (.CI(\flips_reg[12]_i_1_n_0 ),
        .CO({\flips_reg[16]_i_1_n_0 ,\flips_reg[16]_i_1_n_1 ,\flips_reg[16]_i_1_n_2 ,\flips_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[16]_i_1_n_4 ,\flips_reg[16]_i_1_n_5 ,\flips_reg[16]_i_1_n_6 ,\flips_reg[16]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [19:16]));
  FDRE \flips_reg[17] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[16]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [17]),
        .R(reset));
  FDRE \flips_reg[18] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[16]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [18]),
        .R(reset));
  FDRE \flips_reg[19] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[16]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [19]),
        .R(reset));
  FDRE \flips_reg[1] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[0]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [1]),
        .R(reset));
  FDRE \flips_reg[20] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[20]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [20]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[20]_i_1 
       (.CI(\flips_reg[16]_i_1_n_0 ),
        .CO({\flips_reg[20]_i_1_n_0 ,\flips_reg[20]_i_1_n_1 ,\flips_reg[20]_i_1_n_2 ,\flips_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[20]_i_1_n_4 ,\flips_reg[20]_i_1_n_5 ,\flips_reg[20]_i_1_n_6 ,\flips_reg[20]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [23:20]));
  FDRE \flips_reg[21] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[20]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [21]),
        .R(reset));
  FDRE \flips_reg[22] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[20]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [22]),
        .R(reset));
  FDRE \flips_reg[23] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[20]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [23]),
        .R(reset));
  FDRE \flips_reg[24] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[24]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [24]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[24]_i_1 
       (.CI(\flips_reg[20]_i_1_n_0 ),
        .CO({\flips_reg[24]_i_1_n_0 ,\flips_reg[24]_i_1_n_1 ,\flips_reg[24]_i_1_n_2 ,\flips_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[24]_i_1_n_4 ,\flips_reg[24]_i_1_n_5 ,\flips_reg[24]_i_1_n_6 ,\flips_reg[24]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [27:24]));
  FDRE \flips_reg[25] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[24]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [25]),
        .R(reset));
  FDRE \flips_reg[26] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[24]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [26]),
        .R(reset));
  FDRE \flips_reg[27] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[24]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [27]),
        .R(reset));
  FDRE \flips_reg[28] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[28]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [28]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[28]_i_1 
       (.CI(\flips_reg[24]_i_1_n_0 ),
        .CO({\NLW_flips_reg[28]_i_1_CO_UNCONNECTED [3],\flips_reg[28]_i_1_n_1 ,\flips_reg[28]_i_1_n_2 ,\flips_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[28]_i_1_n_4 ,\flips_reg[28]_i_1_n_5 ,\flips_reg[28]_i_1_n_6 ,\flips_reg[28]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [31:28]));
  FDRE \flips_reg[29] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[28]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [29]),
        .R(reset));
  FDRE \flips_reg[2] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[0]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [2]),
        .R(reset));
  FDRE \flips_reg[30] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[28]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [30]),
        .R(reset));
  FDRE \flips_reg[31] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[28]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [31]),
        .R(reset));
  FDRE \flips_reg[3] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[0]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [3]),
        .R(reset));
  FDRE \flips_reg[4] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[4]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [4]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[4]_i_1 
       (.CI(\flips_reg[0]_i_1_n_0 ),
        .CO({\flips_reg[4]_i_1_n_0 ,\flips_reg[4]_i_1_n_1 ,\flips_reg[4]_i_1_n_2 ,\flips_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[4]_i_1_n_4 ,\flips_reg[4]_i_1_n_5 ,\flips_reg[4]_i_1_n_6 ,\flips_reg[4]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [7:4]));
  FDRE \flips_reg[5] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[4]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [5]),
        .R(reset));
  FDRE \flips_reg[6] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[4]_i_1_n_5 ),
        .Q(\flips_reg[31]_0 [6]),
        .R(reset));
  FDRE \flips_reg[7] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[4]_i_1_n_4 ),
        .Q(\flips_reg[31]_0 [7]),
        .R(reset));
  FDRE \flips_reg[8] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[8]_i_1_n_7 ),
        .Q(\flips_reg[31]_0 [8]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \flips_reg[8]_i_1 
       (.CI(\flips_reg[4]_i_1_n_0 ),
        .CO({\flips_reg[8]_i_1_n_0 ,\flips_reg[8]_i_1_n_1 ,\flips_reg[8]_i_1_n_2 ,\flips_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\flips_reg[8]_i_1_n_4 ,\flips_reg[8]_i_1_n_5 ,\flips_reg[8]_i_1_n_6 ,\flips_reg[8]_i_1_n_7 }),
        .S(\flips_reg[31]_0 [11:8]));
  FDRE \flips_reg[9] 
       (.C(s00_axi_aclk),
        .CE(flips),
        .D(\flips_reg[8]_i_1_n_6 ),
        .Q(\flips_reg[31]_0 [9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \halt_cnt[0]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\halt_cnt_reg_n_0_[0] ),
        .O(\halt_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h53A0)) 
    \halt_cnt[1]_i_1 
       (.I0(\halt_cnt_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\halt_cnt_reg_n_0_[1] ),
        .O(\halt_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h770F8800)) 
    \halt_cnt[2]_i_1 
       (.I0(\halt_cnt_reg_n_0_[0] ),
        .I1(\halt_cnt_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\halt_cnt_reg_n_0_[2] ),
        .O(\halt_cnt[2]_i_1_n_0 ));
  FDRE \halt_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\halt_cnt[0]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE \halt_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\halt_cnt[1]_i_1_n_0 ),
        .Q(\halt_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE \halt_cnt_reg[2] 
       (.C(s00_axi_aclk),
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
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_2
       (.I0(cuts_cur[10]),
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_3
       (.I0(cuts_cur[9]),
        .I1(mem_r[9]),
        .I2(add_r),
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
       (.I0(cuts_cur[15]),
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_2
       (.I0(cuts_cur[14]),
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_3
       (.I0(cuts_cur[13]),
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_4
       (.I0(cuts_cur[12]),
        .I1(mem_r[9]),
        .I2(add_r),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(cuts_cur[3]),
        .I1(mem_r[3]),
        .I2(add_r),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(cuts_cur[2]),
        .I1(mem_r[2]),
        .I2(add_r),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(cuts_cur[1]),
        .I1(mem_r[1]),
        .I2(add_r),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_4__7
       (.I0(cuts_cur[0]),
        .I1(mem_r[0]),
        .I2(add_r),
        .O(i__carry_i_4__7_n_0));
  FDRE \mem_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [0]),
        .Q(mem_r[0]),
        .R(reset));
  FDRE \mem_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [1]),
        .Q(mem_r[1]),
        .R(reset));
  FDRE \mem_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [2]),
        .Q(mem_r[2]),
        .R(reset));
  FDRE \mem_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [3]),
        .Q(mem_r[3]),
        .R(reset));
  FDRE \mem_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [4]),
        .Q(mem_r[4]),
        .R(reset));
  FDRE \mem_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [5]),
        .Q(mem_r[5]),
        .R(reset));
  FDRE \mem_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [6]),
        .Q(mem_r[6]),
        .R(reset));
  FDRE \mem_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [7]),
        .Q(mem_r[7]),
        .R(reset));
  FDRE \mem_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [8]),
        .Q(mem_r[8]),
        .R(reset));
  FDRE \mem_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\mem_r_reg[9]_0 [9]),
        .Q(mem_r[9]),
        .R(reset));
  FDRE \off_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\off_r_reg[1]_2 [0]),
        .Q(D[0]),
        .R(reset));
  FDRE \off_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(\off_r_reg[1]_2 [1]),
        .Q(D[1]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \offset_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \step_cnt[0]_i_2 
       (.I0(step_cnt_reg[0]),
        .O(\step_cnt[0]_i_2_n_0 ));
  FDRE \step_cnt_reg[0] 
       (.C(s00_axi_aclk),
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
  FDRE \step_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_5 ),
        .Q(step_cnt_reg[10]),
        .R(reset));
  FDRE \step_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_4 ),
        .Q(step_cnt_reg[11]),
        .R(reset));
  FDRE \step_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_6 ),
        .Q(step_cnt_reg[1]),
        .R(reset));
  FDRE \step_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_5 ),
        .Q(step_cnt_reg[2]),
        .R(reset));
  FDRE \step_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[0]_i_1_n_4 ),
        .Q(step_cnt_reg[3]),
        .R(reset));
  FDRE \step_cnt_reg[4] 
       (.C(s00_axi_aclk),
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
  FDRE \step_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_6 ),
        .Q(step_cnt_reg[5]),
        .R(reset));
  FDRE \step_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_5 ),
        .Q(step_cnt_reg[6]),
        .R(reset));
  FDRE \step_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[4]_i_1_n_4 ),
        .Q(step_cnt_reg[7]),
        .R(reset));
  FDRE \step_cnt_reg[8] 
       (.C(s00_axi_aclk),
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
  FDRE \step_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\step_cnt_reg[8]_i_1_n_6 ),
        .Q(step_cnt_reg[9]),
        .R(reset));
  FDRE \unit_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mem_r_0),
        .D(spiked1),
        .Q(D[2]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \x[8]_i_3 
       (.I0(step_cnt_reg[10]),
        .I1(step_cnt_reg[7]),
        .I2(step_cnt_reg[9]),
        .I3(step_cnt_reg[1]),
        .I4(\x[8]_i_4_n_0 ),
        .I5(\x[8]_i_5_n_0 ),
        .O(\step_cnt_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \x[8]_i_4 
       (.I0(step_cnt_reg[4]),
        .I1(step_cnt_reg[0]),
        .I2(step_cnt_reg[2]),
        .I3(step_cnt_reg[5]),
        .O(\x[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \x[8]_i_5 
       (.I0(step_cnt_reg[3]),
        .I1(step_cnt_reg[11]),
        .I2(step_cnt_reg[6]),
        .I3(step_cnt_reg[8]),
        .O(\x[8]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module whole_system_fowler_nordheim_anne_0_1_temperature_module
   (ADDRBWRADDR,
    E,
    x_reg_rep,
    x_reg_rep_0,
    x_reg_rep_1,
    reset_flipping,
    \x_reg[8]_0 ,
    s00_axi_aclk);
  output [8:0]ADDRBWRADDR;
  output [0:0]E;
  input x_reg_rep;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input reset_flipping;
  input \x_reg[8]_0 ;
  input s00_axi_aclk;

  wire [8:0]ADDRBWRADDR;
  wire [0:0]E;
  wire reset_flipping;
  wire s00_axi_aclk;
  wire \x[0]_i_1__0_n_0 ;
  wire \x[1]_i_1__0_n_0 ;
  wire \x[2]_i_1__0_n_0 ;
  wire \x[3]_i_1__0_n_0 ;
  wire \x[4]_i_1__0_n_0 ;
  wire \x[5]_i_1__0_n_0 ;
  wire \x[6]_i_1__0_n_0 ;
  wire \x[7]_i_1__0_n_0 ;
  wire \x[8]_i_2__0_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[8]_0 ;
  wire x_reg_rep;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_i_23_n_0;
  wire x_reg_rep_i_24_n_0;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__0 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1__0 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .O(\x[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x[2]_i_1__0 
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .O(\x[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[3]_i_1__0 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(\x[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x[4]_i_1__0 
       (.I0(x_reg[4]),
        .I1(x_reg[3]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[2]),
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
  LUT2 #(
    .INIT(4'h9)) 
    \x[6]_i_1__0 
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_23_n_0),
        .O(\x[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \x[7]_i_1__0 
       (.I0(x_reg_rep_i_23_n_0),
        .I1(x_reg[6]),
        .I2(x_reg[7]),
        .O(\x[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \x[8]_i_1__0 
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_23_n_0),
        .I3(x_reg[8]),
        .I4(\x_reg[8]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \x[8]_i_2__0 
       (.I0(x_reg[8]),
        .I1(x_reg_rep_i_23_n_0),
        .I2(x_reg[6]),
        .I3(x_reg[7]),
        .O(\x[8]_i_2__0_n_0 ));
  FDRE \x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[0]_i_1__0_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE \x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[1]_i_1__0_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE \x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[2]_i_1__0_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE \x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[3]_i_1__0_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE \x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[4]_i_1__0_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE \x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[5]_i_1__0_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE \x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[6]_i_1__0_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE \x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[7]_i_1__0_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE \x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\x[8]_i_2__0_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  LUT5 #(
    .INIT(32'h0000F708)) 
    x_reg_rep_i_12
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_23_n_0),
        .I3(x_reg[8]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[8]));
  LUT6 #(
    .INIT(64'hA6A6A6A6A6A6A600)) 
    x_reg_rep_i_13
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_23_n_0),
        .I3(x_reg_rep),
        .I4(x_reg_rep_0),
        .I5(x_reg_rep_1),
        .O(ADDRBWRADDR[7]));
  LUT5 #(
    .INIT(32'h99999990)) 
    x_reg_rep_i_14
       (.I0(x_reg_rep_i_23_n_0),
        .I1(x_reg[6]),
        .I2(x_reg_rep),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hD2D2D2D2D2D2D200)) 
    x_reg_rep_i_15
       (.I0(x_reg[4]),
        .I1(x_reg_rep_i_24_n_0),
        .I2(x_reg[5]),
        .I3(x_reg_rep),
        .I4(x_reg_rep_0),
        .I5(x_reg_rep_1),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    x_reg_rep_i_16
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(x_reg[4]),
        .I5(reset_flipping),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_17
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(reset_flipping),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    x_reg_rep_i_18
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg[2]),
        .I3(x_reg_rep),
        .I4(x_reg_rep_0),
        .I5(x_reg_rep_1),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'h66666660)) 
    x_reg_rep_i_19
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg_rep),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .O(ADDRBWRADDR[1]));
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
    x_reg_rep_i_23
       (.I0(x_reg[4]),
        .I1(x_reg[2]),
        .I2(x_reg[1]),
        .I3(x_reg[0]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(x_reg_rep_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    x_reg_rep_i_24
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .O(x_reg_rep_i_24_n_0));
endmodule

(* ORIG_REF_NAME = "temperature_module" *) 
module whole_system_fowler_nordheim_anne_0_1_temperature_module_6
   (out,
    B,
    x_reg_rep_0,
    x_reg_rep_1,
    x_reg_rep_2,
    reset_flipping,
    \x_reg[0]_0 ,
    s00_axi_aclk,
    x_reg_rep_3,
    ADDRBWRADDR);
  output [17:0]out;
  output [17:0]B;
  input x_reg_rep_0;
  input x_reg_rep_1;
  input x_reg_rep_2;
  input reset_flipping;
  input \x_reg[0]_0 ;
  input s00_axi_aclk;
  input x_reg_rep_3;
  input [8:0]ADDRBWRADDR;

  wire [8:0]ADDRBWRADDR;
  wire [17:0]B;
  wire [17:0]out;
  wire reset_flipping;
  wire s00_axi_aclk;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[6]_i_1_n_0 ;
  wire \x[7]_i_1_n_0 ;
  wire \x[8]_i_1_n_0 ;
  wire \x[8]_i_2_n_0 ;
  wire [8:0]x_reg;
  wire \x_reg[0]_0 ;
  wire x_reg_rep_0;
  wire x_reg_rep_1;
  wire x_reg_rep_2;
  wire x_reg_rep_3;
  wire x_reg_rep_i_10_n_0;
  wire x_reg_rep_i_11_n_0;
  wire x_reg_rep_i_1_n_0;
  wire x_reg_rep_i_21_n_0;
  wire x_reg_rep_i_22_n_0;
  wire x_reg_rep_i_3_n_0;
  wire x_reg_rep_i_4_n_0;
  wire x_reg_rep_i_5_n_0;
  wire x_reg_rep_i_6_n_0;
  wire x_reg_rep_i_7_n_0;
  wire x_reg_rep_i_8_n_0;
  wire x_reg_rep_i_9_n_0;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x_reg[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x_reg[1]),
        .I1(x_reg[0]),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x[2]_i_1 
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .O(\x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x[3]_i_1 
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x[4]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[3]),
        .I2(x_reg[0]),
        .I3(x_reg[1]),
        .I4(x_reg[2]),
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
    .INIT(4'h9)) 
    \x[6]_i_1 
       (.I0(x_reg[6]),
        .I1(x_reg_rep_i_21_n_0),
        .O(\x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \x[7]_i_1 
       (.I0(x_reg_rep_i_21_n_0),
        .I1(x_reg[6]),
        .I2(x_reg[7]),
        .O(\x[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \x[8]_i_1 
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_21_n_0),
        .I3(x_reg[8]),
        .I4(\x_reg[0]_0 ),
        .O(\x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \x[8]_i_2 
       (.I0(x_reg[8]),
        .I1(x_reg_rep_i_21_n_0),
        .I2(x_reg[6]),
        .I3(x_reg[7]),
        .O(\x[8]_i_2_n_0 ));
  FDRE \x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[0]_i_1_n_0 ),
        .Q(x_reg[0]),
        .R(reset_flipping));
  FDRE \x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[1]_i_1_n_0 ),
        .Q(x_reg[1]),
        .R(reset_flipping));
  FDRE \x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[2]_i_1_n_0 ),
        .Q(x_reg[2]),
        .R(reset_flipping));
  FDRE \x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[3]_i_1_n_0 ),
        .Q(x_reg[3]),
        .R(reset_flipping));
  FDRE \x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[4]_i_1_n_0 ),
        .Q(x_reg[4]),
        .R(reset_flipping));
  FDRE \x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[5]_i_1_n_0 ),
        .Q(x_reg[5]),
        .R(reset_flipping));
  FDRE \x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[6]_i_1_n_0 ),
        .Q(x_reg[6]),
        .R(reset_flipping));
  FDRE \x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[7]_i_1_n_0 ),
        .Q(x_reg[7]),
        .R(reset_flipping));
  FDRE \x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\x[8]_i_1_n_0 ),
        .D(\x[8]_i_2_n_0 ),
        .Q(x_reg[8]),
        .R(reset_flipping));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "neuroSA_comm_wrapper_large_problem/NEURO_SA/unit_gen[0].unit_inst/neuron_ensemble_inst/u_flip/u_temp/x_reg_rep" *) 
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
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
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
        .I3(\x[8]_i_1_n_0 ),
        .O(x_reg_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'h66666660)) 
    x_reg_rep_i_10
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
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
        .I2(x_reg[1]),
        .I3(x_reg[0]),
        .I4(x_reg[3]),
        .I5(x_reg[5]),
        .O(x_reg_rep_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    x_reg_rep_i_22
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .O(x_reg_rep_i_22_n_0));
  LUT5 #(
    .INIT(32'h0000F708)) 
    x_reg_rep_i_3
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_21_n_0),
        .I3(x_reg[8]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_3_n_0));
  LUT6 #(
    .INIT(64'hA6A6A6A6A6A6A600)) 
    x_reg_rep_i_4
       (.I0(x_reg[7]),
        .I1(x_reg[6]),
        .I2(x_reg_rep_i_21_n_0),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .I5(x_reg_rep_2),
        .O(x_reg_rep_i_4_n_0));
  LUT5 #(
    .INIT(32'h99999990)) 
    x_reg_rep_i_5
       (.I0(x_reg_rep_i_21_n_0),
        .I1(x_reg[6]),
        .I2(x_reg_rep_0),
        .I3(x_reg_rep_1),
        .I4(x_reg_rep_2),
        .O(x_reg_rep_i_5_n_0));
  LUT6 #(
    .INIT(64'hD2D2D2D2D2D2D200)) 
    x_reg_rep_i_6
       (.I0(x_reg[4]),
        .I1(x_reg_rep_i_22_n_0),
        .I2(x_reg[5]),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .I5(x_reg_rep_2),
        .O(x_reg_rep_i_6_n_0));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    x_reg_rep_i_7
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(x_reg[4]),
        .I5(reset_flipping),
        .O(x_reg_rep_i_7_n_0));
  LUT5 #(
    .INIT(32'h00007F80)) 
    x_reg_rep_i_8
       (.I0(x_reg[2]),
        .I1(x_reg[1]),
        .I2(x_reg[0]),
        .I3(x_reg[3]),
        .I4(reset_flipping),
        .O(x_reg_rep_i_8_n_0));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    x_reg_rep_i_9
       (.I0(x_reg[0]),
        .I1(x_reg[1]),
        .I2(x_reg[2]),
        .I3(x_reg_rep_0),
        .I4(x_reg_rep_1),
        .I5(x_reg_rep_2),
        .O(x_reg_rep_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "transmit_buffer" *) 
module whole_system_fowler_nordheim_anne_0_1_transmit_buffer
   (add_mem_reg_reg_0,
    E,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    spike_reg_reg_0,
    \cnt_prop_reg[0]_0 ,
    spiked1,
    \offset_reg_reg[1]_0 ,
    \membrane_reg_reg[9]_0 ,
    SR,
    Q,
    s00_axi_aclk,
    \state_reg[2]_1 ,
    \state_reg[1]_1 ,
    \state_reg[0]_1 ,
    spike_reg_reg_1,
    \unit_r_reg[0] ,
    \offset_reg_reg[1]_1 ,
    \membrane_reg_reg[9]_1 );
  output [0:0]add_mem_reg_reg_0;
  output [0:0]E;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output spike_reg_reg_0;
  output \cnt_prop_reg[0]_0 ;
  output spiked1;
  output [1:0]\offset_reg_reg[1]_0 ;
  output [9:0]\membrane_reg_reg[9]_0 ;
  input [0:0]SR;
  input [0:0]Q;
  input s00_axi_aclk;
  input [1:0]\state_reg[2]_1 ;
  input \state_reg[1]_1 ;
  input \state_reg[0]_1 ;
  input spike_reg_reg_1;
  input \unit_r_reg[0] ;
  input [1:0]\offset_reg_reg[1]_1 ;
  input [9:0]\membrane_reg_reg[9]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]add_mem_reg_reg_0;
  wire \cnt_prop[0]_i_1__0_n_0 ;
  wire \cnt_prop_reg[0]_0 ;
  wire \cnt_prop_reg_n_0_[0] ;
  wire \cnt_upd[0]_i_1_n_0 ;
  wire \cnt_upd[1]_i_1_n_0 ;
  wire \cnt_upd_reg_n_0_[0] ;
  wire \cnt_upd_reg_n_0_[1] ;
  wire [9:0]\membrane_reg_reg[9]_0 ;
  wire [9:0]\membrane_reg_reg[9]_1 ;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire [1:0]\offset_reg_reg[1]_1 ;
  wire s00_axi_aclk;
  wire spike_reg_reg_0;
  wire spike_reg_reg_1;
  wire spiked1;
  wire \state[2]_i_1__0_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[2]_0 ;
  wire [1:0]\state_reg[2]_1 ;
  wire \unit_r_reg[0] ;

  FDRE add_mem_reg_reg
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q),
        .Q(add_mem_reg_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_prop[0]_i_1__0 
       (.I0(\state_reg[2]_1 [0]),
        .I1(\cnt_prop_reg_n_0_[0] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[1]_0 ),
        .O(\cnt_prop[0]_i_1__0_n_0 ));
  FDRE \cnt_prop_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_prop[0]_i_1__0_n_0 ),
        .Q(\cnt_prop_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \cnt_upd[0]_i_1 
       (.I0(\cnt_upd_reg_n_0_[0] ),
        .I1(\state_reg[2]_0 ),
        .I2(\state_reg[2]_1 [0]),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[1]_0 ),
        .O(\cnt_upd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \cnt_upd[1]_i_1 
       (.I0(\cnt_upd_reg_n_0_[1] ),
        .I1(\cnt_upd_reg_n_0_[0] ),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[2]_1 [0]),
        .I4(\state_reg[0]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\cnt_upd[1]_i_1_n_0 ));
  FDRE \cnt_upd_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_upd[0]_i_1_n_0 ),
        .Q(\cnt_upd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_upd_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_upd[1]_i_1_n_0 ),
        .Q(\cnt_upd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \membrane_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [0]),
        .Q(\membrane_reg_reg[9]_0 [0]),
        .R(SR));
  FDRE \membrane_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [1]),
        .Q(\membrane_reg_reg[9]_0 [1]),
        .R(SR));
  FDRE \membrane_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [2]),
        .Q(\membrane_reg_reg[9]_0 [2]),
        .R(SR));
  FDRE \membrane_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [3]),
        .Q(\membrane_reg_reg[9]_0 [3]),
        .R(SR));
  FDRE \membrane_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [4]),
        .Q(\membrane_reg_reg[9]_0 [4]),
        .R(SR));
  FDRE \membrane_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [5]),
        .Q(\membrane_reg_reg[9]_0 [5]),
        .R(SR));
  FDRE \membrane_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [6]),
        .Q(\membrane_reg_reg[9]_0 [6]),
        .R(SR));
  FDRE \membrane_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [7]),
        .Q(\membrane_reg_reg[9]_0 [7]),
        .R(SR));
  FDRE \membrane_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [8]),
        .Q(\membrane_reg_reg[9]_0 [8]),
        .R(SR));
  FDRE \membrane_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [9]),
        .Q(\membrane_reg_reg[9]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h02)) 
    \offset_reg[1]_i_1__0 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[2]_0 ),
        .O(E));
  FDRE \offset_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\offset_reg_reg[1]_1 [0]),
        .Q(\offset_reg_reg[1]_0 [0]),
        .R(SR));
  FDRE \offset_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\offset_reg_reg[1]_1 [1]),
        .Q(\offset_reg_reg[1]_0 [1]),
        .R(SR));
  FDRE spike_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spike_reg_reg_1),
        .Q(spike_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000006222)) 
    \state[2]_i_1__0 
       (.I0(\state_reg[2]_0 ),
        .I1(\cnt_prop_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[2]_1 [0]),
        .I5(\state_reg[2]_1 [1]),
        .O(\state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE222)) 
    \state[2]_i_2__0 
       (.I0(\cnt_prop_reg_n_0_[0] ),
        .I1(\state_reg[2]_0 ),
        .I2(\cnt_upd_reg_n_0_[1] ),
        .I3(\cnt_upd_reg_n_0_[0] ),
        .I4(\state_reg[1]_0 ),
        .I5(\state_reg[0]_0 ),
        .O(\cnt_prop_reg[0]_0 ));
  FDRE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_reg[0]_1 ),
        .Q(\state_reg[0]_0 ),
        .R(\state_reg[2]_1 [0]));
  FDRE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_reg[1]_1 ),
        .Q(\state_reg[1]_0 ),
        .R(\state_reg[2]_1 [0]));
  FDRE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg[2]_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \unit_r[0]_i_1 
       (.I0(spike_reg_reg_0),
        .I1(\unit_r_reg[0] ),
        .O(spiked1));
endmodule

(* ORIG_REF_NAME = "transmit_buffer" *) 
module whole_system_fowler_nordheim_anne_0_1_transmit_buffer_0
   (E,
    storage_CE_advance,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    spike_reg_reg_0,
    \cnt_prop_reg[0]_0 ,
    add_mem,
    \offset_reg_reg[1]_0 ,
    \membrane_reg_reg[9]_0 ,
    SR,
    Q,
    s00_axi_aclk,
    new_sample_reg_0,
    \state_reg[2]_1 ,
    \state_reg[1]_1 ,
    \state_reg[0]_1 ,
    spike_reg_reg_1,
    add_r_reg,
    add_r_reg_0,
    \off_r_reg[1] ,
    \mem_r_reg[9] ,
    \offset_reg_reg[1]_1 ,
    \membrane_reg_reg[9]_1 );
  output [0:0]E;
  output storage_CE_advance;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output spike_reg_reg_0;
  output \cnt_prop_reg[0]_0 ;
  output add_mem;
  output [1:0]\offset_reg_reg[1]_0 ;
  output [9:0]\membrane_reg_reg[9]_0 ;
  input [0:0]SR;
  input [0:0]Q;
  input s00_axi_aclk;
  input new_sample_reg_0;
  input [1:0]\state_reg[2]_1 ;
  input \state_reg[1]_1 ;
  input \state_reg[0]_1 ;
  input spike_reg_reg_1;
  input add_r_reg;
  input [0:0]add_r_reg_0;
  input [1:0]\off_r_reg[1] ;
  input [9:0]\mem_r_reg[9] ;
  input [1:0]\offset_reg_reg[1]_1 ;
  input [9:0]\membrane_reg_reg[9]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire add_mem;
  wire [0:0]add_mems;
  wire add_r_reg;
  wire [0:0]add_r_reg_0;
  wire \cnt_prop[0]_i_1_n_0 ;
  wire \cnt_prop_reg[0]_0 ;
  wire \cnt_prop_reg_n_0_[0] ;
  wire [1:0]cnt_upd;
  wire \cnt_upd[0]_i_1_n_0 ;
  wire \cnt_upd[1]_i_1_n_0 ;
  wire [9:0]\mem_r_reg[9] ;
  wire [9:0]membrane_reg;
  wire [9:0]\membrane_reg_reg[9]_0 ;
  wire [9:0]\membrane_reg_reg[9]_1 ;
  wire new_sample_reg_0;
  wire [1:0]\off_r_reg[1] ;
  wire [1:0]\offset_reg_reg[1]_0 ;
  wire [1:0]\offset_reg_reg[1]_1 ;
  wire [1:0]offsets;
  wire s00_axi_aclk;
  wire spike_reg_reg_0;
  wire spike_reg_reg_1;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[2]_0 ;
  wire [1:0]\state_reg[2]_1 ;
  wire storage_CE_advance;

  FDRE add_mem_reg_reg
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q),
        .Q(add_mems),
        .R(SR));
  LUT4 #(
    .INIT(16'hACA0)) 
    add_r_i_2
       (.I0(add_mems),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(add_r_reg_0),
        .O(add_mem));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_prop[0]_i_1 
       (.I0(\state_reg[2]_1 [0]),
        .I1(\cnt_prop_reg_n_0_[0] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[1]_0 ),
        .O(\cnt_prop[0]_i_1_n_0 ));
  FDRE \cnt_prop_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_prop[0]_i_1_n_0 ),
        .Q(\cnt_prop_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \cnt_upd[0]_i_1 
       (.I0(cnt_upd[0]),
        .I1(\state_reg[2]_0 ),
        .I2(\state_reg[2]_1 [0]),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[1]_0 ),
        .O(\cnt_upd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \cnt_upd[1]_i_1 
       (.I0(cnt_upd[1]),
        .I1(cnt_upd[0]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[2]_1 [0]),
        .I4(\state_reg[0]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\cnt_upd[1]_i_1_n_0 ));
  FDRE \cnt_upd_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_upd[0]_i_1_n_0 ),
        .Q(cnt_upd[0]),
        .R(1'b0));
  FDRE \cnt_upd_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_upd[1]_i_1_n_0 ),
        .Q(cnt_upd[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[0]_i_1 
       (.I0(membrane_reg[0]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [0]),
        .O(\membrane_reg_reg[9]_0 [0]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[1]_i_1 
       (.I0(membrane_reg[1]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [1]),
        .O(\membrane_reg_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[2]_i_1 
       (.I0(membrane_reg[2]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [2]),
        .O(\membrane_reg_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[3]_i_1 
       (.I0(membrane_reg[3]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [3]),
        .O(\membrane_reg_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[4]_i_1 
       (.I0(membrane_reg[4]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [4]),
        .O(\membrane_reg_reg[9]_0 [4]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[5]_i_1 
       (.I0(membrane_reg[5]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [5]),
        .O(\membrane_reg_reg[9]_0 [5]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[6]_i_1 
       (.I0(membrane_reg[6]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [6]),
        .O(\membrane_reg_reg[9]_0 [6]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[7]_i_1 
       (.I0(membrane_reg[7]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [7]),
        .O(\membrane_reg_reg[9]_0 [7]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[8]_i_1 
       (.I0(membrane_reg[8]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [8]),
        .O(\membrane_reg_reg[9]_0 [8]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \mem_r[9]_i_1 
       (.I0(membrane_reg[9]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\mem_r_reg[9] [9]),
        .O(\membrane_reg_reg[9]_0 [9]));
  FDRE \membrane_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [0]),
        .Q(membrane_reg[0]),
        .R(SR));
  FDRE \membrane_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [1]),
        .Q(membrane_reg[1]),
        .R(SR));
  FDRE \membrane_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [2]),
        .Q(membrane_reg[2]),
        .R(SR));
  FDRE \membrane_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [3]),
        .Q(membrane_reg[3]),
        .R(SR));
  FDRE \membrane_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [4]),
        .Q(membrane_reg[4]),
        .R(SR));
  FDRE \membrane_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [5]),
        .Q(membrane_reg[5]),
        .R(SR));
  FDRE \membrane_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [6]),
        .Q(membrane_reg[6]),
        .R(SR));
  FDRE \membrane_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [7]),
        .Q(membrane_reg[7]),
        .R(SR));
  FDRE \membrane_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [8]),
        .Q(membrane_reg[8]),
        .R(SR));
  FDRE \membrane_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\membrane_reg_reg[9]_1 [9]),
        .Q(membrane_reg[9]),
        .R(SR));
  FDRE new_sample_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(new_sample_reg_0),
        .Q(storage_CE_advance),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACA0)) 
    \off_r[0]_i_1 
       (.I0(offsets[0]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\off_r_reg[1] [0]),
        .O(\offset_reg_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hACA0)) 
    \off_r[1]_i_1 
       (.I0(offsets[1]),
        .I1(add_r_reg),
        .I2(spike_reg_reg_0),
        .I3(\off_r_reg[1] [1]),
        .O(\offset_reg_reg[1]_0 [1]));
  LUT3 #(
    .INIT(8'h02)) 
    \offset_reg[1]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[2]_0 ),
        .O(E));
  FDRE \offset_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\offset_reg_reg[1]_1 [0]),
        .Q(offsets[0]),
        .R(SR));
  FDRE \offset_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\offset_reg_reg[1]_1 [1]),
        .Q(offsets[1]),
        .R(SR));
  FDRE spike_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spike_reg_reg_1),
        .Q(spike_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000006222)) 
    \state[2]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(\cnt_prop_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[2]_1 [0]),
        .I5(\state_reg[2]_1 [1]),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE222)) 
    \state[2]_i_2 
       (.I0(\cnt_prop_reg_n_0_[0] ),
        .I1(\state_reg[2]_0 ),
        .I2(cnt_upd[1]),
        .I3(cnt_upd[0]),
        .I4(\state_reg[1]_0 ),
        .I5(\state_reg[0]_0 ),
        .O(\cnt_prop_reg[0]_0 ));
  FDRE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_reg[0]_1 ),
        .Q(\state_reg[0]_0 ),
        .R(\state_reg[2]_1 [0]));
  FDRE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state_reg[1]_1 ),
        .Q(\state_reg[1]_0 ),
        .R(\state_reg[2]_1 [0]));
  FDRE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_0 ),
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
