`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 05:36:44 PM
// Design Name: 
// Module Name: tb_neuroSA_comm_wrapper_large_problem
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


module tb_neuroSA_comm_wrapper_large_problem();


`define CTR_REG_ADDR                        reg1
`define UNIT_TO_WRITE_SEED_ADDR             reg2
`define UNIT_TO_WRITE_NEURON_ADDR           reg3
`define ENSEMBLE_SEED_ADDR                  reg4
`define FLIPPING_SEED_ADDR                  reg5
`define MEMBRANE_STATE_WRITE_IN_ADDR        reg6
`define IDX_TO_WRITE_ADDR                   reg7
`define SOLUTION_VAL_ADDR                   reg8



localparam USE_ROUND_ROBIN=0;
localparam NEURON_SEL_LFSR_WIDTH=9;
localparam MEMBRANE_WIDTH=10;
localparam LOG_NOISE_SOURCE_WIDTH = 16;
localparam LOG_LUT_BIT_SIZE = 8;
localparam COUNTER_WIDTH=40;
localparam TEMP_INC_WIDTH=12;
localparam NO_CLK_CYCLES_AFTER_UPDATE=4;
localparam SOLUTION_WIDTH=16;
localparam USE_FLOAT_POINT=0;
localparam REAL_WIDTH=18;
localparam FLIPPING_OUTPUT_WIDTH=16;
localparam FRACTIONAL_PART=9;
localparam LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
localparam TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif";
localparam GRAPH_WIDTH = 800;
localparam UNITS = 25;
localparam UNIT_WIDTH = $clog2(UNITS);
localparam NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS; // Example value
localparam NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT);
localparam TEMPERATURE_LUT_WIDTH=9;
localparam PIPELINED_ROMs=1;
localparam PIPELINED_ENSEMBLE_STORAGE=1;
localparam IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH);
localparam USE_TRANSMIT_WITH_BUFF=1;
localparam NO_OF_CLK_CYCLES_TO_PROPAGATE=1;
localparam NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=3;
localparam CLK_T = 10;

reg clk = 0;

reg [31:0] reg1 = 0;
reg [31:0] reg2 = 0;
reg [31:0] reg3 = 0;
reg [31:0] reg4 = 0;
reg [31:0] reg5 = 0;
reg [31:0] reg6 = 0;
reg [31:0] reg7 = 0;
wire [31:0] reg8, reg9;

assign reg8[31:SOLUTION_WIDTH] = 0;


neuroSA_comm_wrapper_large_problem #(.USE_ROUND_ROBIN(USE_ROUND_ROBIN),
                                       .NEURON_SEL_LFSR_WIDTH(NEURON_SEL_LFSR_WIDTH),
                                       .MEMBRANE_WIDTH(MEMBRANE_WIDTH),
                                       .LOG_NOISE_SOURCE_WIDTH(LOG_NOISE_SOURCE_WIDTH),
                                       .LOG_LUT_BIT_SIZE(LOG_LUT_BIT_SIZE), 
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
                                       .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH),
                                       .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
                                       .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
                                       .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE))
                                       UUT
                                            (.clk(clk),
                                             .reg1(reg1[1:0]),
                                             .reg2(reg2[UNITS-1:0]),
                                             .reg3(reg3[UNITS-1:0]),
                                             .reg4(reg4[LOG_NOISE_SOURCE_WIDTH-1:0]),
                                             .reg5(reg5[NEURON_SEL_LFSR_WIDTH-1:0]),
                                             .reg6(reg6[(MEMBRANE_WIDTH+3):0]),
                                             .reg7(reg7[NEURON_NUM_WIDTH-1:0]),
                                             .reg8(reg8[(SOLUTION_WIDTH-1):0]),
                                             .reg9(reg9));

                                             

    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seeds [0 : UNITS-1];
    reg [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seeds [0 : UNITS-1];

    integer fd;

    // Initialize ata arrays (membrane voltages)
    reg [MEMBRANE_WIDTH-1:0] membranes[0:GRAPH_WIDTH-1];       

    initial 
    begin
        $readmemh("membrane_data_N800.mif", membranes);
        $readmemb("ensemble_seeds_N800.mif", ensemble_seeds);        
        $readmemb("noise_seeds_N800.mif", flipping_seeds);
        fd = $fopen("verilog_simulation_results", "w");
    end
                                             

    always 
    begin
        #(CLK_T / 2) clk = ~clk;
    end

    integer i = 0, j= 0;
    initial 
    begin
        // wait 150ns for global reset 
        #150;

        // "write" using AXI to register 1, value of 32'b01, which halts the machine, but removes the reset
        `CTR_REG_ADDR <= 32'b01;

        // some delays happens
        repeat (20) @(posedge clk); 



        // write the seed 
        for (i = 0; i < UNITS; i = i + 1)
        begin
            // simulate kindof like AXI writing to register 2 and seeds, to configure the starting points
            // write to the first membrane
            `UNIT_TO_WRITE_SEED_ADDR <=  (1 << i);
        
            // some delays happens
            repeat (5) @(posedge clk); 
    
            `ENSEMBLE_SEED_ADDR <= ensemble_seeds[i];
    
            // some delays happens
            repeat (5) @(posedge clk); 
    
            `FLIPPING_SEED_ADDR <= flipping_seeds[i];
    
            // some delays happens
            repeat (5) @(posedge clk); 
    
            `UNIT_TO_WRITE_SEED_ADDR <= 2'b00;
            // some delays happens
            repeat (5) @(posedge clk); 
        end
        
        // program the membrane data 
        for (i = 0; i < UNITS; i = i + 1)
        begin
            for (j = 0; j < NEURONS_PER_UNIT; j = j + 1)
            begin
                // simulate kindof like AXI procedure for writing the membranes, which firstly write the neuron state nad membrane, then index (these can be done interchangeably)
                // and after the data is valid, asserts the UNIT strobe (data valid signal pretty much)
                // write to the first membrane
    
                `MEMBRANE_STATE_WRITE_IN_ADDR <= {4'b0010, membranes[i * NEURONS_PER_UNIT + j]};
                // some delays happens
                repeat (5) @(posedge clk); 
    
                `IDX_TO_WRITE_ADDR <= j;
                // some delays happens
                repeat (5) @(posedge clk); 

                `UNIT_TO_WRITE_NEURON_ADDR <= (1 << i);
                // some delays happens
                repeat (5) @(posedge clk); 

                `UNIT_TO_WRITE_NEURON_ADDR <= 0;
                // some delays happens
                repeat (5) @(posedge clk); 
            end
        end

        // unhalt the machine 
        `CTR_REG_ADDR <= 32'b11;

        repeat (100000) @(posedge clk);
        $fclose(fd);
        $finish;
    end



endmodule
