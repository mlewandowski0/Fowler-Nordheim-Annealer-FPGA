`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 06:42:42 PM
// Design Name: 
// Module Name: fowler_nordheim_annealer_Neq800
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fowler_nordheim_annealer_Neq800 #(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5,

		parameter USE_ROUND_ROBIN=0,
		parameter NEURON_SEL_LFSR_WIDTH=9,
		parameter MEMBRANE_WIDTH=10,
		parameter LOG_NOISE_SOURCE_WIDTH = 16,
		parameter LOG_LUT_BIT_SIZE = 8, 
		parameter COUNTER_WIDTH=40,
		parameter TEMP_INC_WIDTH=12,
		parameter NO_CLK_CYCLES_AFTER_UPDATE=4,
		parameter SOLUTION_WIDTH=16,
		parameter USE_FLOAT_POINT=0,
		parameter REAL_WIDTH=18,
		parameter FLIPPING_OUTPUT_WIDTH=16,
		parameter FRACTIONAL_PART=9,
		parameter LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif",
		parameter TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif",
		parameter GRAPH_WIDTH = 800,
		parameter UNITS = 25,
		parameter UNIT_WIDTH = $clog2(UNITS),
		parameter NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS, // Example value
		parameter NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT),
		parameter TEMPERATURE_LUT_WIDTH=9,
		parameter PIPELINED_ROMs=1,
		parameter PIPELINED_ENSEMBLE_STORAGE=1,
		parameter IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH),
		parameter USE_TRANSMIT_WITH_BUFF=1,
		parameter NO_OF_CLK_CYCLES_TO_PROPAGATE=1,
		parameter NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=3
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
	    .USE_ROUND_ROBIN(USE_ROUND_ROBIN),
        .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
        .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
        .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
        .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE ), 
        .COUNTER_WIDTH(COUNTER_WIDTH),
        .TEMP_INC_WIDTH(TEMP_INC_WIDTH),
        .NO_CLK_CYCLES_AFTER_UPDATE(NO_CLK_CYCLES_AFTER_UPDATE),
        .SOLUTION_WIDTH(SOLUTION_WIDTH),
        .USE_FLOAT_POINT(USE_FLOAT_POINT),
        .REAL_WIDTH(REAL_WIDTH),
        .FLIPPING_OUTPUT_WIDTH(FLIPPING_OUTPUT_WIDTH),
        .FRACTIONAL_PART(FRACTIONAL_PART),
        .LOG_NOISE_LUT_FILENAME(LOG_NOISE_LUT_FILENAME),
        .TEMPERATURE_LUT_FILENAME(TEMPERATURE_LUT_FILENAME),
        .GRAPH_WIDTH(GRAPH_WIDTH),
        .UNITS(UNITS),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURONS_PER_UNIT(NEURONS_PER_UNIT), // Example value
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
        .PIPELINED_ROMs(PIPELINED_ROMs),
        .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
        .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH ),
        .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
        .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
        .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)
	) fowler_nordheim_annealer_Neq800_slave_lite_v1_0_S00_AXI (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule