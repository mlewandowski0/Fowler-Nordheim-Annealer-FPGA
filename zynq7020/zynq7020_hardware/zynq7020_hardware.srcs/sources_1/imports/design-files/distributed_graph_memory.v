module distributed_graph_memory #(parameter NEURON_WIDTH=2,
                                  parameter GRAPH_WIDTH=8,
                                  parameter MEM_FILE= "adj_matrix_N8_A2_distributed0.mif")
                                  ( input wire        clk,
                                    input wire        reset, 
                                    input wire        enable,
                                    input  wire [$clog2(GRAPH_WIDTH)-1:0]          index_of_neuron_that_fired,
                                    output reg  [(1<<NEURON_WIDTH)-1:0]            Q_out);
                                    
    // memory declaration                                     
    localparam MEM_WIDTH = (1 << NEURON_WIDTH);
    
    reg [MEM_WIDTH-1:0] memory[0:GRAPH_WIDTH-1];
    
    
   initial 
        $readmemb(MEM_FILE, memory);
   
   
   // registered read
   
   always @(posedge clk)
   begin
        if (reset) 
            Q_out <= {MEM_WIDTH{1'b0}};
        else if (enable)
            Q_out <= memory[index_of_neuron_that_fired];     
   end
    


endmodule