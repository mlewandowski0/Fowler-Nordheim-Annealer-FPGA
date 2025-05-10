#include "xparameters.h"
#include "xil_types.h"
#include "xstatus.h"
#include <stdio.h>
#include <xil_io.h>


#define BASE_ADRESS                         XPAR_FOWLER_NORDHEIM_ANNEALER_0_BASEADDR
#define CTR_REG_ADDR                        BASE_ADRESS
#define UNIT_TO_WRITE_SEED_ADDR             (BASE_ADRESS + 4)
#define UNIT_TO_WRITE_NEURON_ADDR           (BASE_ADRESS + 8)
#define ENSEMBLE_SEED_ADDR                  (BASE_ADRESS + 12)
#define FLIPPING_SEED_ADDR                  (BASE_ADRESS + 16)
#define MEMBRANE_STATE_WRITE_IN_ADDR        (BASE_ADRESS + 20)
#define IDX_TO_WRITE_ADDR                   (BASE_ADRESS + 24)
#define SOLUTION_VAL_ADDR                   (BASE_ADRESS + 28)
#define SOLTUION_READ_SIZE                  4000


// PARAMETERS TAKEN FROM SYNTHESIS 
const int GRAPH_WIDTH = 8;
const int MEMBRANE_WIDTH = 10;
const int UNITS = 2;
const int NEURONS_PER_UNIT = GRAPH_WIDTH / 2;

u32 membranes[]            =   {3, 5, 4, 4, 4, 5, 4, 3};
u32 flipping_seeds[]       =   {0b0100111001111010,
                                     0b0100010111100011};
u32 ensemble_seeds[]       =  {0b11111, 
                                    0b01011};                                

#define RESET_BIT (1 << 0)
#define HALT_BIT  (1 << 1)
#define MEMBRANE_POS 0b0010

u32 solution_reads[SOLTUION_READ_SIZE] = {-1};
u32 prev_solution_idx = 0;

/*
[Reg 1]
{reset}{halt}  				:  2 bits 

[Reg 2]
{write_neuron_states}			: 25 bits
{write_ensemble_seed} 			: 25 bits 
{write_flipping_seed} 			: 25 bits

[Reg 3]
{ensemble_seed}				: 16 bits 

[Reg 4]
{flipping_seed}				: 16 bits

[Reg 5]
{neuron_state_in}{membrane_data_in}	: 14 bits

[Reg 6]
{idx_to_write}				:  5 bits

[Reg 7]
found_solution_value			: 16 bits
*/



/* This whole code simulates pretty much the same testbench 


`define CTR_REG_ADDR                        reg1
`define UNIT_TO_WRITE_SEED_ADDR             reg2
`define UNIT_TO_WRITE_NEURON_ADDR           reg3
`define ENSEMBLE_SEED_ADDR                  reg4
`define FLIPPING_SEED_ADDR                  reg5
`define MEMBRANE_STATE_WRITE_IN_ADDR        reg6
`define IDX_TO_WRITE_ADDR                   reg7
`define SOLUTION_VAL_ADDR                   reg8

module tb_neuroSA_comm_wrapper( );

localparam  USE_ROUND_ROBIN=0;
localparam  NEURON_SEL_LFSR_WIDTH=5;
localparam  MEMBRANE_WIDTH=10;
localparam  LOG_NOISE_SOURCE_WIDTH = 16;
localparam  LOG_LUT_BIT_SIZE = 8;
localparam  COUNTER_WIDTH=40;
localparam  TEMP_INC_WIDTH=12;
localparam  NO_CLK_CYCLES_AFTER_UPDATE=4;
localparam  SOLUTION_WIDTH=16;
localparam  USE_FLOAT_POINT=0;
localparam  REAL_WIDTH=18;
localparam  FLIPPING_OUTPUT_WIDTH=16;
localparam  FRACTIONAL_PART=9;
localparam  LOG_NOISE_LUT_FILENAME="log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif";
localparam  TEMPERATURE_LUT_FILENAME="temperature_LUT_fixed_N9.mif";
localparam  GRAPH_WIDTH = 8;
localparam  UNITS = 2;
localparam  UNIT_WIDTH = $clog2(UNITS);
localparam  NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS; // Example value
localparam  NEURON_NUM_WIDTH = $clog2(NEURONS_PER_UNIT);
localparam  TEMPERATURE_LUT_WIDTH=9;
localparam  PIPELINED_ROMs=1;
localparam  PIPELINED_ENSEMBLE_STORAGE=1;
localparam  IDX_THAT_FIRED_WIDTH = $clog2(GRAPH_WIDTH);
localparam  USE_TRANSMIT_WITH_BUFF=1;
localparam  NO_OF_CLK_CYCLES_TO_PROPAGATE=1;
localparam  NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE=3;

localparam CLK_T = 10;

reg clk = 0;

reg [31:0] reg1 = 0;
reg [31:0] reg2 = 0;
reg [31:0] reg3 = 0;
reg [31:0] reg4 = 0;
reg [31:0] reg5 = 0;
reg [31:0] reg6 = 0;
reg [31:0] reg7 = 0;
wire [31:0] reg8;

assign reg8[31:SOLUTION_WIDTH] = 0;


neuroSA_comm_wrapper #(.USE_ROUND_ROBIN(USE_ROUND_ROBIN),
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
                                             .reg8(reg8[(SOLUTION_WIDTH-1):0]));

                                             

    reg [NEURON_SEL_LFSR_WIDTH-1:0] ensemble_seeds [0 : UNITS-1];
    reg [LOG_NOISE_SOURCE_WIDTH-1:0] flipping_seeds [0 : UNITS-1];

    integer fd;

    // Initialize ata arrays (membrane voltages)
    reg [MEMBRANE_WIDTH-1:0] membranes[0:GRAPH_WIDTH-1];       

    initial 
    begin
        $readmemh("membrane_data_N8.mif", membranes);
        $readmemb("ensemble_seeds.mif", ensemble_seeds);        
        $readmemb("noise_seeds.mif", flipping_seeds);
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

        repeat (1000) @(posedge clk);
        $fclose(fd);
        $finish;
    end



endmodule

*/

int sol = 0;

void delay(int n)
{   
    while(--n)
    {}
}

void write_to_reg(u32 address, u32 value)
{
    Xil_Out32(address, value);
}

u32 read_reg(u32 address)
{
    return Xil_In32(address);
}


void put_machine_into_loading_mode()
{
    //turn off the reset bit
    write_to_reg(CTR_REG_ADDR,  RESET_BIT);
}


void start_machine()
{
    // turn off the reset and halt bits
    write_to_reg(CTR_REG_ADDR, RESET_BIT | HALT_BIT);
}


void set_the_membrane_value(int unit, int neuron_index_offset, int membrane_value, int membrane_state)
{
    // put the membrane value into register
    int membrane_msg = (membrane_state << MEMBRANE_WIDTH) + membrane_value;
    write_to_reg(MEMBRANE_STATE_WRITE_IN_ADDR, membrane_msg);

    // put the index of writingh
    write_to_reg(IDX_TO_WRITE_ADDR, neuron_index_offset);

    // strobe values
    write_to_reg(UNIT_TO_WRITE_NEURON_ADDR, 1 << unit);

    delay(50);

    // clear the strobe values
    write_to_reg(UNIT_TO_WRITE_NEURON_ADDR, 0);
}

void set_the_seed_value_for_unit(int unit, int flipping_seed, int ensemble_seed)
{
    // set the seed value of the ensemble
    write_to_reg(ENSEMBLE_SEED_ADDR, ensemble_seed);

    // set the seed value of the flipping seed
    write_to_reg(FLIPPING_SEED_ADDR, flipping_seed);

    // strobe values
    write_to_reg(UNIT_TO_WRITE_SEED_ADDR, 1 << unit);

    delay(50);

    // clear the strobe values
    write_to_reg(UNIT_TO_WRITE_SEED_ADDR, 0);
}


int main()
{
    int memebrane_idx = 0;
    int solution_value = -1;
    printf("Hello from Annealer \n");


    // initially, the machine will be put into reset
    // i have not a clue what will happen, so lets wait a bit
    delay(1000);

    // sanity check : The solution value should be 0 ! 
    solution_value = read_reg(SOLUTION_VAL_ADDR);

    delay(1000);

    // put the machine into loading
    put_machine_into_loading_mode();

    // set the seeds
    for (int i = 0; i < UNITS; ++i)
    {
        set_the_seed_value_for_unit(i, flipping_seeds[i], ensemble_seeds[i]);
    }

    // program the membranes
    for (int unit = 0; unit < UNITS; ++unit)
    {
        for (int neuron = 0; neuron < NEURONS_PER_UNIT; ++neuron)
        {
            set_the_membrane_value(unit, neuron, membranes[unit * NEURONS_PER_UNIT + neuron], MEMBRANE_POS);
        }
    }

    delay(100);
    // sanity check : The solution value should be 0 ! 
    solution_value = read_reg(SOLUTION_VAL_ADDR);
    delay(100);
    start_machine();

    while(1)
    {
        solution_value = read_reg(SOLUTION_VAL_ADDR);
        if (solution_reads[prev_solution_idx] && prev_solution_idx < SOLTUION_READ_SIZE)
        {
            prev_solution_idx++;
            solution_reads[prev_solution_idx] = solution_value;
        }
    }


    return 0;
}