module distributed_graph_memory #(parameter NEURON_WIDTH = 2, 
                                  parameter GRAPH_WIDTH = 12,
                                  parameter MEM_FILE = "distributed_graph_memory.mif") 
                                  (
                                    input wire [$clog2(GRAPH_WIDTH)-1:0] index_of_neuron_that_fired,
                                    input wire enable,
                                    output wire [(1<<NEURON_WIDTH)-1:0] Q_out

                                  );

    localparam MEM_WIDTH = (1 << NEURON_WIDTH) - 1;

    reg [MEM_WIDTH:0] memory[0: GRAPH_WIDTH-1];

    initial 
    begin
        $readmemb(MEM_FILE, memory);
    end

    assign Q_out = enable == 1 ? memory[index_of_neuron_that_fired] : {MEM_WIDTH{1'bX}};


endmodule