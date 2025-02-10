// FSM for control

module  neuron_ensemble_storage #(parameter LFSR_WIDTH=3,
                                  parameter NEURON_WIDTH=2,
                                  parameter MEMBRANE_WIDTH=16
                                  )
                                 (input wire clk,
                                  input wire advance_index,
                                  input wire write_seed, 
                                  input wire [LFSR_WIDTH-1:0] seed,
                                  input wire write,                           // write the data to the storage
                                  input wire [NEURON_WIDTH-1:0] idx_to_write,
                                  
                                  input wire [MEMBRANE_WIDTH-1:0] membrane_data_in,
                                  input wire [3:0] neuron_state_in,

                                  input wire [1:0] control, // 0: GENERATE_STATE, 1: INC_STATE, 2: SUB_STATE, 3: RESET_STATE
                                  input wire [(1 << NEURON_WIDTH)-1:0] Q_inp,

                                  input wire update_ds,
                                  input wire [NEURON_WIDTH-1:0] idx_offset_to_update,
                                 
                                 output reg [NEURON_WIDTH-1:0]              selected_idx_offset,
                                 output reg signed [MEMBRANE_WIDTH-1:0]     selected_membrane,
                                 output reg [3:0]                           neuron_state                                 
                                 );


    localparam ENSEMBLE_GENERATE_STATE  =  2'b00;
    localparam ENSEMBLE_RESET_STATE     =  2'b01;
    localparam ENSEMBLE_INC_STATE       =  2'b10;
    localparam ENSEMBLE_SUB_STATE       =  2'b11;


    reg [1:0]                       Q_control_reg;
    reg                             update_ds_reg;   

    //(* ram_style = "block" *) 
    reg signed [MEMBRANE_WIDTH-1:0] membrane_storage [0:(1 << NEURON_WIDTH)-1];
    
    //(* ram_style = "block" *) 
    reg [3:0] neuron_states_storage [0:(1 << NEURON_WIDTH)-1];

    wire [NEURON_WIDTH-1:0] idx_offset;

    LFSR_inout #(
        .LFSR_BITS(LFSR_WIDTH),
        .OUT_BITS(NEURON_WIDTH)
    ) index_selection (
        .clk(clk), 
        .chip_enable(advance_index), 
        .write_seed(write_seed), 
        .seed(seed), 
        .out_trunc(idx_offset)
    );
    integer i;

    // Sequential logic for state updates
    always @(posedge clk)
    begin
        // Register control signals
        Q_control_reg   <= control;
        update_ds_reg   <= update_ds;

        if (write)
        begin
            membrane_storage[idx_to_write] <= membrane_data_in;
            neuron_states_storage[idx_to_write] <= neuron_state_in;
        end
        else
        begin
            case (Q_control_reg)
                ENSEMBLE_RESET_STATE: 
                begin  
                end
                ENSEMBLE_INC_STATE:
                begin
                    for (i = 0; i < (1 << NEURON_WIDTH); i = i + 1)
                    begin
                        if (Q_inp[i])  // If corresponding bit in Q_inp_reg is 1
                        begin
                            membrane_storage[i] <= membrane_storage[i] + 2; 
                        end
                    end 

                    if (update_ds_reg)
                    begin
                        neuron_states_storage[idx_offset_to_update][3] <= neuron_states_storage[idx_offset_to_update][0];
                        neuron_states_storage[idx_offset_to_update][2] <= neuron_states_storage[idx_offset_to_update][1];
                        neuron_states_storage[idx_offset_to_update][1] <= ~neuron_states_storage[idx_offset_to_update][1];
                        neuron_states_storage[idx_offset_to_update][0] <= ~neuron_states_storage[idx_offset_to_update][0];
                    end
                end
                ENSEMBLE_SUB_STATE:
                begin
                    for (i = 0; i < (1 << NEURON_WIDTH); i = i + 1)
                    begin
                        if (Q_inp[i])  // If corresponding bit in Q_inp_reg is 1
                        begin
                            membrane_storage[i] <= membrane_storage[i] - 2;
                        end
                    end

                    if (update_ds_reg)
                    begin
                        neuron_states_storage[idx_offset_to_update][3] <= neuron_states_storage[idx_offset_to_update][0];
                        neuron_states_storage[idx_offset_to_update][2] <= neuron_states_storage[idx_offset_to_update][1];
                        neuron_states_storage[idx_offset_to_update][1] <= ~neuron_states_storage[idx_offset_to_update][1];
                        neuron_states_storage[idx_offset_to_update][0] <= ~neuron_states_storage[idx_offset_to_update][0];
                    end
                end
                default:
                begin
                    // No action needed
                end 
            endcase

            
            selected_idx_offset <= idx_offset;
            selected_membrane   <= membrane_storage[idx_offset];
            neuron_state        <= neuron_states_storage[idx_offset];
        end
    end

endmodule