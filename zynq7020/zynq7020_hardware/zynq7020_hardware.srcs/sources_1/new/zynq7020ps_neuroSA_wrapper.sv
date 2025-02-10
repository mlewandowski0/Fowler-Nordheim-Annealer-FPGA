`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 01:23:23 AM
// Design Name: 
// Module Name: zynq7020ps_neuroSA_wrapper
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


module zynq7020ps_neuroSA_wrapper
#(
    // Parameters for the problem
    parameter int GRAPH_WIDTH                       = 800,
    parameter int UNITS                             = 50,
    parameter int PIPELINED_ROMs                    = 1,
    parameter int PIPELINED_ENSEMBLE_STORAGE        = 1,
    parameter int USE_ROUND_ROBIN                   = 0,

    // Parameters (adjust these as needed for your tests)
    parameter int TEMP_INC_WIDTH                    = 12,
    parameter int MEMBRANE_WIDTH                    = 12,
    parameter int COUNTER_WIDTH                     = 40,
    parameter int NO_CLK_CYCLES_AFTER_UPDATE        = 4,
    parameter int SOLUTION_WIDTH                    = 16,

    parameter int NEURON_SEL_LFSR_WIDTH             = 10,
    parameter int LOG_NOISE_SOURCE_WIDTH            = 10,

    parameter int USE_FLOAT_POINT                   = 0,
    parameter int REAL_WIDTH                        = 18,
    parameter int FRACTIONAL_PART                   = 8,
        
    parameter int LOG_LUT_BIT_SIZE                  = 7,
    parameter string LOG_NOISE_LUT_FILENAME         = "log_noise_fixed_width=18_frac_bits=8_nbits_of_lut=7.mif",
    
    
    parameter int TEMPERATURE_LUT_WIDTH             = 7,
    parameter string TEMPERATURE_LUT_FILENAME       = "temperature_fixed_width=18_frac_bits=8_nbits_of_lut=7.mif",

    parameter int FLIPPING_OUTPUT_WIDTH             = 16,

    // buffer parameters
    parameter int USE_TRANSMIT_WITH_BUFF                = 1,
    parameter int NO_OF_CLK_CYCLES_TO_PROPAGATE         = 1,
    parameter int NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE   = 3
)
                                 (input          clk,
                                  input   [31:0] pl_config, 
                                  input   [31:0] data,
                                  output  [31:0] output_data,
                                  output         interrupt);

    /*
        config 
        pl_config[31]        - reset
        pl_config[30]        - halt   
        pl_config[29]        - put the data into the ensemble seed
        pl_config[28]        - put the data into the flipping seed
        pl_config[27]        - put the data into the membrane data
        pl_config[26-22]     - to which unit we will be writing 
        pl_config[21-17]     - to which neuron we will be writing [idx_to_write]

    */                 
    
    parameter int NEURONS_PER_UNIT                  = GRAPH_WIDTH / UNITS;
    parameter int UNIT_WIDTH                        = $clog2(UNITS);
    parameter int NEURON_NUM_WIDTH                  = $clog2(NEURONS_PER_UNIT);
    parameter int IDX_THAT_FIRED_WIDTH              = $clog2(GRAPH_WIDTH);


    // Synchronize pl_config into a local register
    logic [31:0] pl_config_reg;
    always_ff @(posedge clk) begin
       pl_config_reg <= pl_config;
    end

    logic reset;
    assign reset = pl_config[31];

    logic halt;
    assign halt = pl_config[30];


    logic [UNITS-1:0] write_ensemble_seed;
    logic [UNITS-1:0] write_flipping_seed;
    logic [UNITS-1:0] write_neuron_states;

    logic put_data_into_ensemble_seed_reg;
    logic put_data_into_flipping_seed_reg;
    logic put_data_into_membrane_data_reg;



    always_ff @(posedge clk) begin
        if (pl_config[29]) begin
            if ( pl_config[26:22] == 5'b00000)
                write_ensemble_seed <= '0;
            else 
                write_ensemble_seed <= 25'b1 << (pl_config[26:22] - 1);
        end else begin
            write_ensemble_seed <= '0;
        end
    end

    always_ff @(posedge clk) begin
        if (pl_config[28]) begin
            if ( pl_config[26:22] == 5'b00000)
                write_flipping_seed <= '0;
            else 
                write_flipping_seed <= 25'b1 << (pl_config[26:22] - 1);
        end else begin
            write_flipping_seed <= '0;
        end
    end

    always_ff @(posedge clk) begin
        if (pl_config[27]) begin
            if ( pl_config[26:22] == 5'b00000)
                write_neuron_states <= '0;
            else 
                write_neuron_states <= 25'b1 << (pl_config[26:22] - 1);
        end else begin
            write_neuron_states <= '0;
        end
    end


    logic [NEURON_SEL_LFSR_WIDTH-1:0]   ensemble_seed;
    logic [LOG_NOISE_SOURCE_WIDTH-1:0]  flipping_seed;
    logic [SOLUTION_WIDTH-1:0]          found_solution_value;
    logic [MEMBRANE_WIDTH-1:0]          membrane_data_in;
    logic [3:0]                         neuron_state_in;


    always_ff @(posedge clk)
    begin
        if (pl_config[29])
            ensemble_seed <= data[NEURON_SEL_LFSR_WIDTH-1:0];
        else 
            ensemble_seed <= 0;
        
        if (pl_config[28])
            flipping_seed <= data[LOG_NOISE_SOURCE_WIDTH-1:0];
        else 
            flipping_seed <= 0;

        if (pl_config[27])
        begin
             membrane_data_in <= data[MEMBRANE_WIDTH-1:0];
             neuron_state_in <= data[MEMBRANE_WIDTH+3:MEMBRANE_WIDTH];
        end
        else 
        begin
            membrane_data_in <= 0;
            neuron_state_in <= 0;
        end;
    end

    logic [NEURON_NUM_WIDTH-1:0] idx_to_write;
    assign idx_to_write = pl_config[21:17];


    // Instantiate the module under test (MUT)
    neuroSA_machine #(
        .USE_ROUND_ROBIN(USE_ROUND_ROBIN),
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
        .NEURONS_PER_UNIT(NEURONS_PER_UNIT),
        .UNIT_WIDTH(UNIT_WIDTH),
        .NEURON_NUM_WIDTH(NEURON_NUM_WIDTH),
        .TEMPERATURE_LUT_WIDTH(TEMPERATURE_LUT_WIDTH),
        .PIPELINED_ROMs(PIPELINED_ROMs),
        .PIPELINED_ENSEMBLE_STORAGE(PIPELINED_ENSEMBLE_STORAGE),
        .IDX_THAT_FIRED_WIDTH(IDX_THAT_FIRED_WIDTH),
        .USE_TRANSMIT_WITH_BUFF(USE_TRANSMIT_WITH_BUFF),
        .NO_OF_CLK_CYCLES_TO_PROPAGATE(NO_OF_CLK_CYCLES_TO_PROPAGATE),
        .NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE(NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE)
    ) neuroSA_machine_inst (
        .clk(clk),

         // comes from config
        .reset(reset),
        .halt(halt),
        .idx_to_write(idx_to_write), 
        .write_ensemble_seed(write_ensemble_seed),
        .write_flipping_seed(write_flipping_seed),
        .write_neuron_states(write_neuron_states),

        // data in
        .ensemble_seed(ensemble_seed),
        .flipping_seed(flipping_seed),
        .membrane_data_in(membrane_data_in),
        .neuron_state_in(neuron_state_in),

        .found_solution_value(found_solution_value)
    );

    logic [SOLUTION_WIDTH-1:0] best_solution_value_prev;
    logic interrupt_ff;

    always_ff @(posedge clk)
    begin
        best_solution_value_prev <= found_solution_value;
        
        if (found_solution_value > best_solution_value_prev)
            interrupt_ff <= 1'b1;
        else 
            interrupt_ff <= 1'b0;
    end

    // Output data
    assign output_data[SOLUTION_WIDTH-1:0]   = best_solution_value_prev;
    assign output_data[31:SOLUTION_WIDTH]    = 0;
    assign interrupt = interrupt_ff;                        
                                  
endmodule
