#!/usr/bin/env python3
"""Generate a checked 12-variable RTL trace for the architecture explainer."""
import csv
import hashlib
import itertools
import json
from pathlib import Path
import shutil
import subprocess

from prepare_inputs import ROOT, MIFS


def main():
    out = ROOT / 'build/readme_tiny'
    out.mkdir(parents=True, exist_ok=True)
    # A 3-regular bipartite graph: the alternating partition cuts all 18 edges.
    edges = sorted({tuple(sorted((i, (i+1) % 12))) for i in range(12)} |
                   {tuple(sorted((i, (i+5) % 12))) for i in range(0, 12, 2)})
    assert len(edges) == 18
    graph = [[int(tuple(sorted((i,j))) in edges) for j in range(12)] for i in range(12)]
    def cut(bits):
        return sum(bits[a] != bits[b] for a,b in edges)
    optimum = max(cut(bits) for bits in itertools.product((0,1), repeat=12))
    for unit in range(3):
        (out / f'adj_matrix_N12_A3_distributed{unit}.mif').write_text(
            '\n'.join(''.join(map(str,row[unit*4:unit*4+4][::-1])) for row in graph)+'\n')
    (out/'graph_rows.mem').write_text('\n'.join(''.join(map(str,row[::-1])) for row in graph)+'\n')
    (out/'degrees.mem').write_text('\n'.join(f'{sum(row):04x}' for row in graph)+'\n')
    for name in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif']:
        shutil.copyfile(MIFS/name,out/name)
    sources = [ROOT/n for n in (ROOT/'rtl/files.f').read_text().splitlines() if n]
    sources.append(ROOT/'sim/readme_tiny_tb.sv')
    version = subprocess.check_output(['verilator','--version'],text=True).strip()
    with (out/'compile.log').open('w') as f:
        subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4',
            '--top-module','readme_tiny_tb','--Mdir',str(out/'obj'),*map(str,sources)],
            cwd=out,stdout=f,stderr=subprocess.STDOUT,check=True)
    with (out/'simulation.log').open('w') as f:
        subprocess.run([str(out/'obj/Vreadme_tiny_tb')],cwd=out,stdout=f,stderr=subprocess.STDOUT,check=True)
    bits = [1]*12
    frames = [{'cycle':0,'bits':bits.copy(),'cut':0,'best':0,'fields':[sum(row) for row in graph]}]
    for row in csv.DictReader((out/'trace.csv').open()):
        k=int(row['index']); mask=int(row['candidate_mask'])
        candidates=[u*4+int(row[f'offset{u}']) for u in range(3) if mask & (1<<u)]
        assert candidates and k==candidates[0], 'fixed-priority arbiter disagrees'
        previous=bits.copy(); bits[k]^=1
        assert ''.join(map(str,bits[::-1]))==row['bits_msb_first']
        score=cut(bits);best=max(frames[-1]['best'],score)
        assert score==int(row['cut']) and best==int(row['best'])
        fields=[sum(w*(1 if b else -1) for w,b in zip(r,bits)) for r in graph]
        before=frames[-1]['fields'];sign=1 if previous[k] else -1
        assert fields==[before[j]-2*sign*graph[k][j] for j in range(12)]
        assert score-frames[-1]['cut']==sign*before[k]
        frames.append({'cycle':int(row['cycle']),'index':k,'candidates':candidates,
                       'proposals':[u*4+int(row[f'offset{u}']) for u in range(3)],'candidate_mask':mask,
                       'bits':bits.copy(),'cut':score,'best':best,'fields':fields})
        if best==optimum:break
    assert frames[-1]['best']==optimum
    recording={'kind':'RTL simulation — not a board measurement','variables':12,'units':3,
        'variables_per_unit':4,'edges':edges,'optimum':optimum,'optimality_check':'Exhaustive 4096 assignments',
        'seed':1,'cooling_period':65536,'verilator':version,'frames':frames,
        'sources':{str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},
        'lut_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(out.glob('*.mif')) if not p.name.startswith('adj_')},
        'trace_sha256':hashlib.sha256((out/'trace.csv').read_bytes()).hexdigest(),
        'note':'Visual phases stretch real RTL events for explanation, not individual clock-cycle waveforms.'}
    dest=ROOT/'results/readme/tiny12';dest.mkdir(parents=True,exist_ok=True)
    (dest/'recording.json').write_text(json.dumps(recording,indent=2)+'\n')
    shutil.copyfile(out/'trace.csv',dest/'trace.csv')
    # Keep the log free of machine-specific absolute paths.
    (dest/'simulation.log').write_text((out/'simulation.log').read_text().replace(f'{ROOT}/',''))
    print(f'PASS tiny RTL: {len(frames)-1} accepted flips, optimum {optimum}, first hit cycle {frames[-1]["cycle"]}')

if __name__=='__main__':main()
