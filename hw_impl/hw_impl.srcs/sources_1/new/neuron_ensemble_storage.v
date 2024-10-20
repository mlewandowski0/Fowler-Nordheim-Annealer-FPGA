// FSM for control

module  neuron_ensemble_storage #(parameter LFSR_WIDTH=3,
                                  parameter NEURON_WIDTH=2,
                                  parameter MEMBRANE_WIDTH=16
                                  )
                                 (input wire clk,
                                  input wire CE,
                                  input wire write_seed, 
                                  input wire [LFSR_WIDTH-1:0] seed,
                                  input wire write,                           // write the data to the storage
                                  
                                  input wire [MEMBRANE_WIDTH-1:0] membrane_data_in,
                                  input wire [3:0] neuron_state_in,

                                  input wire [1:0] control, // 0: GENERATE_STATE, 1: INC_STATE, 2: SUB_STATE, 3: RESET_STATE
                                  input wire [(1 << NEURON_WIDTH)-1:0] Q_inp,

                                  input wire update_ds,
                                  input wire [NEURON_WIDTH-1:0] idx_offset_to_update,
                                 
                                 output wire [NEURON_WIDTH-1:0]             selected_idx_offset,
                                 output wire signed [MEMBRANE_WIDTH-1:0]    selected_membrane,
                                 output wire [3:0]                          neuron_state                                 
                                 );


        (* ram_style = "block" *) reg signed [MEMBRANE_WIDTH-1:0] membrane_storage [0:(1 << NEURON_WIDTH)-1];
        
        
        localparam ENSEMBLE_GENERATE_STATE  =  2'b00;
        localparam ENSEMBLE_RESET_STATE     =  2'b01;
        localparam ENSEMBLE_INC_STATE       =  2'b10;
        localparam ENSEMBLE_SUB_STATE       =  2'b11;



        /* storing the following neuron data
            neuron_state[3] = ds_p
            neuron_state[2] = ds_n
            neuron_state[1] = s_p
            neuron_state[0] = s_n
 
        */
        (* ram_style = "block" *) reg [3:0] neuron_states_storage [0:(1 << NEURON_WIDTH)-1];


        LFSR_inout #(.LFSR_BITS(LFSR_WIDTH), .OUT_BITS(NEURON_WIDTH)) index_selection(.clk(clk), 
                                                                                      .chip_enable(CE), 
                                                                                      .write_seed(write_seed), 
                                                                                      .seed(seed), 
                                                                                      .out_trunc(selected_idx_offset));
        

        reg [NEURON_WIDTH-1:0] idx;
        integer i;


        assign selected_membrane = CE ? membrane_storage[selected_idx_offset] : {MEMBRANE_WIDTH{1'bX}};
        assign neuron_state = CE ? neuron_states_storage[selected_idx_offset] : 4'bXXXX; 


        always @(posedge clk)
        begin
            if (write)
            begin
                membrane_storage[idx] <= membrane_data_in;
                neuron_states_storage[idx] <= neuron_state_in;
                idx <= idx + 1;
            end
            else
            begin
                case (control)
                    ENSEMBLE_RESET_STATE: 
                    begin
                        idx <= 0;
                    end
                    ENSEMBLE_INC_STATE:
                    begin
                        for (i = 0; i < (1 << NEURON_WIDTH); i = i + 1)
                        begin
                            if (Q_inp[i])  // If corresponding bit in Q_inp is 1
                            begin
                                membrane_storage[i] <= membrane_storage[i] + 2;
                            end
                        end 


                        /*
                            neuron_state[3] = ds_p
                            neuron_state[2] = ds_n
                            neuron_state[1] = s_p
                            neuron_state[0] = s_n
                        
                            the state is also asserted in the FETCH phase, 
                        */
                         if (update_ds)
                         begin
                            // ds_p[p] = s_n[p] > 0
                            neuron_states_storage[idx_offset_to_update][3] <= neuron_states_storage[idx_offset_to_update][0];

                            // ds_n[p] = s_p[p] > 0
                            neuron_states_storage[idx_offset_to_update][2] <= neuron_states_storage[idx_offset_to_update][1];

                            // s_p[p] = np.logical_not(s_p[p])
                            neuron_states_storage[idx_offset_to_update][1] <= ~neuron_states_storage[idx_offset_to_update][1];

                            // s_n[p] = np.logical_not(s_n[p])
                            neuron_states_storage[idx_offset_to_update][0] <= ~neuron_states_storage[idx_offset_to_update][0];
                         end


                    end
                    ENSEMBLE_SUB_STATE:
                    begin
                        for (i = 0; i < (1 << NEURON_WIDTH); i = i + 1)
                        begin
                            if (Q_inp[i])  // If corresponding bit in Q_inp is 1
                            begin
                                membrane_storage[i] <= membrane_storage[i] - 2;
                            end
                        end

                        /*
                            neuron_state[3] = ds_p
                            neuron_state[2] = ds_n
                            neuron_state[1] = s_p
                            neuron_state[0] = s_n
                        
                            
                            the state is also asserted in the FETCH phase, 
                        */
                         if (update_ds)
                         begin
                            // ds_p[p] = s_n[p] > 0
                            neuron_states_storage[idx_offset_to_update][3] <= neuron_states_storage[idx_offset_to_update][0];

                            // ds_n[p] = s_p[p] > 0
                            neuron_states_storage[idx_offset_to_update][2] <= neuron_states_storage[idx_offset_to_update][1];

                            // s_p[p] = np.logical_not(s_p[p])
                            neuron_states_storage[idx_offset_to_update][1] <= ~neuron_states_storage[idx_offset_to_update][1];

                            // s_n[p] = np.logical_not(s_n[p])
                            neuron_states_storage[idx_offset_to_update][0] <= ~neuron_states_storage[idx_offset_to_update][0];
                         end


                    end
                    ENSEMBLE_GENERATE_STATE:
                    begin
                    end
                    default:
                    begin  
                        
                    end 
                endcase
            end
        end


    endmodule