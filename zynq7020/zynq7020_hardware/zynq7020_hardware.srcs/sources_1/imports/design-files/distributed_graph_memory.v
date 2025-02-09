module distributed_graph_memory #(parameter NEURON_WIDTH = 2, 
                                  parameter GRAPH_WIDTH = 12,
                                  parameter MEM_FILE = "distributed_graph_memory.mif") 
                                  (
                                    input wire clk,
                                    input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,
                                    input wire enable,
                                    output reg [(1<<NEURON_WIDTH)-1:0] Q_out

                                  );

    localparam MEM_WIDTH = (1 << NEURON_WIDTH);

    (* ram_style = "block" *) reg [MEM_WIDTH-1:0] memory[0: GRAPH_WIDTH-1];

    initial 
    begin
        $readmemb(MEM_FILE, memory);
    end


    always @(posedge clk)
    begin

        if (enable == 1)
        begin
            Q_out <= memory[index_of_neuron_that_fired];
        end
        else 
        begin        
            Q_out <= {MEM_WIDTH{1'bX}};
        end
    end



endmodule