#include "xparameters.h"
#include "xil_types.h"
#include "xstatus.h"
#include <xil_io.h>
#include "xiltimer.h"
#include <stdio.h>


#define BASE_ADRESS                         XPAR_FOWLER_NORDHEIM_ANNEALER_NEQ800_0_BASEADDR
#define CTR_REG_ADDR                        BASE_ADRESS
#define UNIT_TO_WRITE_SEED_ADDR             (BASE_ADRESS + 4)
#define UNIT_TO_WRITE_NEURON_ADDR           (BASE_ADRESS + 8)
#define ENSEMBLE_SEED_ADDR                  (BASE_ADRESS + 12)
#define FLIPPING_SEED_ADDR                  (BASE_ADRESS + 16)
#define MEMBRANE_STATE_WRITE_IN_ADDR        (BASE_ADRESS + 20)
#define IDX_TO_WRITE_ADDR                   (BASE_ADRESS + 24)
#define SOLUTION_VAL_ADDR                   (BASE_ADRESS + 28)
#define SOLUTION_READ_SIZE                  4000

XTime start, end;


// PARAMETERS TAKEN FROM SYNTHESIS 
const int GRAPH_WIDTH = 800;
const int MEMBRANE_WIDTH=10;
const int UNITS = 25;
const int NEURONS_PER_UNIT = GRAPH_WIDTH / UNITS;

u32 membranes[] = {78, 86, 89, 121, 120, 153, 43, 83, 57, 51, 44, 15, 18, 73, 59, 55, 56, 61, 60, 20, 25, 53, 44, 35, 38, 32, 19, 25, 19, 20, 21, 30, 33, 17, 40, 33, 14, 36, 28, 25, 22, 14, 24, 32, 25, 43, 29, 31, 34, 17, 26, 19, 21, 16, 20, 27, 21, 35, 42, 28, 12, 15, 17, 33, 17, 10, 21, 22, 28, 16, 32, 28, 20, 18, 7, 10, 15, 33, 27, 19, 16, 20, 20, 26, 25, 16, 26, 26, 11, 17, 16, 20, 17, 31, 18, 24, 18, 10, 25, 23, 13, 12, 12, 13, 14, 21, 14, 15, 19, 9, 13, 12, 19, 11, 11, 8, 17, 17, 26, 21, 11, 14, 10, 20, 9, 11, 23, 16, 9, 11, 17, 9, 16, 13, 14, 14, 12, 8, 23, 16, 21, 11, 14, 18, 17, 14, 17, 10, 18, 11, 19, 16, 9, 9, 13, 8, 9, 18, 19, 8, 8, 7, 10, 9, 10, 10, 11, 13, 12, 10, 12, 22, 10, 8, 16, 20, 13, 15, 7, 20, 12, 27, 13, 10, 12, 13, 13, 10, 12, 7, 17, 10, 15, 12, 9, 11, 8, 7, 9, 14, 11, 13, 15, 13, 8, 11, 11, 12, 10, 10, 13, 10, 12, 12, 9, 10, 13, 5, 11, 11, 20, 11, 14, 10, 11, 13, 13, 13, 7, 13, 13, 13, 6, 12, 9, 9, 11, 7, 9, 11, 14, 11, 11, 7, 15, 11, 16, 10, 13, 8, 11, 10, 9, 12, 6, 8, 9, 11, 9, 9, 8, 7, 12, 9, 15, 12, 8, 16, 9, 11, 15, 7, 10, 10, 14, 8, 10, 10, 10, 8, 7, 8, 10, 9, 8, 10, 12, 14, 14, 10, 10, 9, 6, 9, 13, 9, 9, 10, 6, 9, 10, 11, 12, 12, 17, 11, 8, 14, 10, 12, 8, 11, 8, 8, 15, 6, 8, 11, 9, 12, 8, 11, 9, 11, 7, 14, 12, 11, 10, 11, 8, 10, 7, 8, 7, 7, 9, 7, 7, 8, 12, 7, 7, 8, 7, 10, 6, 6, 10, 8, 7, 9, 10, 7, 9, 10, 7, 8, 9, 11, 10, 7, 6, 11, 6, 9, 6, 6, 7, 8, 7, 7, 7, 8, 10, 12, 12, 7, 7, 15, 8, 8, 6, 12, 13, 8, 7, 9, 10, 9, 9, 7, 9, 8, 7, 7, 6, 8, 6, 12, 10, 6, 8, 11, 12, 9, 6, 6, 10, 7, 11, 8, 7, 6, 6, 7, 12, 13, 6, 8, 8, 11, 9, 8, 13, 9, 10, 9, 8, 8, 7, 8, 10, 8, 10, 9, 7, 7, 6, 8, 7, 7, 7, 7, 10, 7, 10, 8, 6, 6, 7, 7, 6, 9, 7, 6, 9, 7, 8, 9, 6, 10, 6, 7, 6, 5, 10, 7, 6, 9, 8, 6, 8, 7, 13, 6, 7, 10, 8, 7, 9, 9, 6, 6, 8, 7, 9, 8, 13, 5, 7, 7, 6, 7, 9, 6, 9, 6, 10, 6, 9, 8, 9, 6, 6, 7, 8, 7, 8, 8, 7, 6, 6, 6, 6, 9, 7, 6, 6, 8, 7, 7, 9, 8, 8, 6, 6, 7, 6, 8, 8, 6, 8, 6, 7, 9, 7, 8, 6, 8, 7, 6, 6, 9, 7, 7, 6, 7, 9, 5, 6, 6, 9, 7, 6, 7, 7, 7, 8, 8, 6, 7, 7, 6, 9, 8, 7, 7, 7, 6, 7, 5, 6, 9, 6, 6, 7, 6, 6, 8, 6, 10, 5, 7, 7, 7, 6, 7, 7, 6, 6, 8, 7, 7, 8, 8, 6, 6, 5, 6, 7, 6, 7, 6, 7, 8, 6, 5, 9, 9, 7, 7, 6, 7, 6, 11, 6, 6, 6, 7, 6, 6, 7, 8, 6, 8, 5, 6, 6, 6, 6, 7, 4, 6, 7, 6, 7, 8, 7, 6, 6, 6, 6, 10, 10, 6, 7, 6, 7, 6, 5, 6, 7, 8, 6, 6, 6, 5, 8, 6, 7, 6, 6, 6, 6, 6, 7, 8, 6, 6, 6, 7, 7, 8, 6, 7, 6, 6, 8, 7, 7, 5, 6, 6, 7, 6, 7, 6, 6, 6, 6, 7, 6, 6, 5, 7, 6, 7, 6, 6, 8, 7, 6, 5, 6, 8, 6, 7, 6, 7, 6, 6, 6, 6, 6, 9, 6, 6, 6, 6, 8, 6, 7, 6, 6, 6, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 5, 6, 6, 6, 7, 6, 6, 6, 6, 6, 6, 6, 7, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 7, 6, 6, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 7, 6, 6, 6, 6, 6, 6, 6};

u32 flipping_seeds[]       =   {0b1101,
                                0b10011111,
                                0b11101111,
                                0b110110,
                                0b11011000,
                                0b1001000,
                                0b1111110,
                                0b110010,
                                0b11011101,
                                0b110,
                                0b11101011,
                                0b10100110,
                                0b1100110,
                                0b11110100,
                                0b110,
                                0b111010,
                                0b1101,
                                0b11100011,
                                0b10101010,
                                0b1000100,
                                0b1001001,
                                0b11010111,
                                0b1100001,
                                0b110110,
                                0b1011111};

u32 ensemble_seeds[]       =   {0b1000110,
                                0b111001110,
                                0b11110011,
                                0b1111101111,
                                0b110000110,
                                0b1110001100,
                                0b1101100010,
                                0b1111010101,
                                0b11111010,
                                0b1011001000,
                                0b10100100,
                                0b11100110,
                                0b11111010,
                                0b1100000010,
                                0b111001000,
                                0b1110100110,
                                0b1000100011,
                                0b10110111,
                                0b101111111,
                                0b101000000,
                                0b1000110010,
                                0b1111100010,
                                0b111001001,
                                0b10010110,
                                0b110110111};                                

#define RESET_BIT (1 << 0)
#define HALT_BIT  (1 << 1)
#define MEMBRANE_POS 0b0010

u32         solution_reads[SOLUTION_READ_SIZE] = {-1};
XTime       time_reads[SOLUTION_READ_SIZE];
char        buffer[100];

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

    xil_printf("Hello from annealer, GRAPH_WIDTH=%d, UNITS=%d, NEURONS_PER_UNIT=%d, MEMBRANE_WIDTH=%d \n", GRAPH_WIDTH, UNITS, NEURONS_PER_UNIT, MEMBRANE_WIDTH);

    XTime_GetTime(&start);
    xil_printf("start time = %d\n", start);

    // initially, the machine will be put into reset
    // i have not a clue what will happen, so lets wait a bit
    delay(1000);

    // sanity check : The solution value should be 0 ! 
    solution_value = read_reg(SOLUTION_VAL_ADDR);
    time_reads[0] = start;

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

    solution_value = read_reg(SOLUTION_VAL_ADDR);
    solution_reads[0] = solution_value;
    prev_solution_idx = 1;
    for (u32 i = 1; i < 100000000; ++i) {
        solution_value = read_reg(SOLUTION_VAL_ADDR);
        if (solution_value != solution_reads[prev_solution_idx - 1] &&
            prev_solution_idx < SOLUTION_READ_SIZE) 
            {
                solution_reads[prev_solution_idx] = solution_value;
                XTime_GetTime(&time_reads[prev_solution_idx]);
                prev_solution_idx++;
        }
    }
    XTime_GetTime(&end);    



    int el = 0;
    for (int i = 0 ; i < prev_solution_idx; ++i)
    {
        el = solution_reads[i];
        snprintf(buffer, sizeof(buffer), "[t=%.9f s] -> sol_val=%d\n",  (double)(time_reads[i] - start) / (double)COUNTS_PER_SECOND, solution_reads[i]);
        xil_printf("%s", buffer);
    }
    
    snprintf(buffer, sizeof(buffer), "The machine was halted at t=%.9f s\n", (double)(end - start) / (double)COUNTS_PER_SECOND  );
    xil_printf("%s", buffer);

    xil_printf("END OF EXPERIMENT\n");


    return 0;
}