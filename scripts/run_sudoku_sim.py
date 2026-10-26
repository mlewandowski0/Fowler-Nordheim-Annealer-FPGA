#!/usr/bin/env python3
"""Scoreboard the specialized Sudoku RTL and export a verified replay."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
from prepare_inputs import ROOT
from sudoku_model import prepare,PRESETS,inspect
from prepare_sudoku_rtl import generate

p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--preset',choices=PRESETS,default='classic')
p.add_argument('--cycles',type=int,default=1000000)
p.add_argument('--seed',type=int,default=1)
p.add_argument('--cooling-period',type=int,default=65536)
p.add_argument('--out',type=Path,default=ROOT/'build/sudoku_sim')
p.add_argument('--require-solved',action='store_true')
a=p.parse_args();out=a.out.resolve();problem=prepare(out,a.preset);files=generate(out)
files=[f for f in files if f.name!='qubo_axi.v']+[ROOT/'sim/sudoku_tb.sv']
digest=hashlib.sha256(''.join(f.read_text() for f in files).encode()).hexdigest()
stamp=out/'compile.sha256';binary=out/'obj/Vsudoku_tb'
if not binary.exists() or not stamp.exists() or stamp.read_text()!=digest:
    with (out/'compile.log').open('w') as log:
        subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4','--top-module','sudoku_tb','--Mdir',str(out/'obj'),*map(str,files)],cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
    stamp.write_text(digest)
with (out/'simulation.log').open('w') as log:
    subprocess.run([str(binary),f'+cycles={a.cycles}',f'+seed={a.seed}',f'+cooling_period={a.cooling_period}',f'+goal={problem["goal_gain"]}'],cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
frames=[]
for line in (out/'trace.jsonl').read_text().splitlines():
    frame=json.loads(line);bits=[(int(frame['bits_hex'],16)>>k)&1 for k in range(800)]
    check=inspect(bits,problem['puzzle'])
    assert check['energy']==-problem['clues']-frame['gain']//2 and check['clues_preserved']
    frames.append({'cycle':frame['cycle'],'bits':''.join(map(str,bits[:729])),**check})
result={'mode':'rtl_simulation','problem':problem,'seed':a.seed,'cooling_period':a.cooling_period,
    'source_sha256':digest,'clock_mhz':None,'frames':frames,'solved':frames[-1]['solved']}
(out/'recording.json').write_text(json.dumps(result,separators=(',',':'))+'\n')
print((out/'simulation.log').read_text());print('Final independent validation:',frames[-1]['energy'],result['solved'])
if a.require_solved and not result['solved']:raise SystemExit('Valid Sudoku not reached within this run budget')
