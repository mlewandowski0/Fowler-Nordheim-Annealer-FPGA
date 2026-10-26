"""Generate a separate Sudoku overlay variant; canonical G15 RTL is unchanged.

The specialization adds clamped bits, a biased initial field, +/-6 field
updates for lambda=3, initial-assignment loading and 18-bit gain tracking.
"""
from pathlib import Path
from prepare_inputs import ROOT


def replace_once(text,old,new):
    if text.count(old)!=1:raise ValueError(f'RTL anchor changed: {old[:80]}')
    return text.replace(old,new,1)


def generate(out):
    out=Path(out)/'generated'
    names=[s for s in (ROOT/'rtl/files.f').read_text().splitlines() if s]+['rtl/qubo_axi.v']
    for name in names:
        text=(ROOT/name).read_text()
        if name.endswith('neuron_ensemble_storage.v'):
            text=replace_once(text,'parameter  DELTA = 2','parameter  DELTA = 6')
            text=replace_once(text,'state_ram[idx_offset_to_update][3] <= state_ram[idx_offset_to_update][0];',
                '// Bit 3 is an immutable clamp flag in the Sudoku variant.')
        elif name.endswith('neuron_ensemble.v'):
            text=replace_once(text,'(flip_val < mem_cmp) & flipping_CE','(flip_val < mem_cmp) & flipping_CE & !st_p[3]')
        elif name.endswith('scheduler_2.v'):
            text=replace_once(text,'input wire [31:0]                          cooling_period,',
                'input wire [31:0]                          cooling_period,\n    input wire [GRAPH_WIDTH/(1<<NEURON_NUM_WIDTH)-1:0] init_write_mask,\n    input wire [NEURON_NUM_WIDTH-1:0] init_index,\n    input wire init_state,')
            text=replace_once(text,'            state <= next_state;',
                '''            state <= next_state;
            if (halt_modules) begin
                for (integer u=0;u<GRAPH_WIDTH/(1<<NEURON_NUM_WIDTH);u=u+1)
                    if (init_write_mask[u]) begin
                        assignment[u*(1<<NEURON_NUM_WIDTH)+init_index] <= init_state;
                        best_assignment[u*(1<<NEURON_NUM_WIDTH)+init_index] <= init_state;
                    end
            end''')
        elif name.endswith('neuroSA_machine.sv'):
            text=replace_once(text,'.cooling_period(cooling_period),',
                '.cooling_period(cooling_period),\n    .init_write_mask(write_neuron_states), .init_index(idx_to_write), .init_state(neuron_state_in[1]),')
        elif name.endswith('qubo_axi.v'):
            text=replace_once(text,'wire [15:0] best_cut;','wire [17:0] best_cut;')
            text=replace_once(text,"{16'b0,best_cut}","{14'b0,best_cut}")
            text=replace_once(text,"32'h51554231","32'h53554431")
            text=replace_once(text,'.MEMBRANE_WIDTH(10), .FLIPPING_OUTPUT_WIDTH(16),',
                '.MEMBRANE_WIDTH(10), .FLIPPING_OUTPUT_WIDTH(16), .SOLUTION_WIDTH(18),')
        target=out/name;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(text)
    return [out/name for name in names]
