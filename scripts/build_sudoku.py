#!/usr/bin/env python3
"""Build the separately identified Sudoku variant without modifying G15 RTL."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
from prepare_inputs import ROOT
from sudoku_model import prepare,PRESETS
from prepare_sudoku_rtl import generate

p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--preset',choices=PRESETS,default='classic')
p.add_argument('--out',type=Path,default=ROOT/'build/sudoku')
p.add_argument('--clock-mhz',type=float,default=100)
a=p.parse_args();out=a.out.resolve();problem=prepare(out,a.preset);sources=generate(out)
template=ROOT/'scripts/build_overlay.tcl'
text=template.read_text().replace('read_verilog -sv [file join $root $line]','read_verilog -sv [file join $out generated $line]')
text=text.replace('set root [file normalize [file join [file dirname [info script]] ..]]',f'set root {{{ROOT}}}')
text=text.replace('read_verilog [file join $root rtl qubo_axi.v]','read_verilog [file join $out generated rtl qubo_axi.v]')
script=out/'build_sudoku.tcl';script.write_text(text)
tracked=[ROOT/'scripts/sudoku_model.py',ROOT/'scripts/prepare_sudoku_rtl.py',ROOT/'scripts/build_sudoku.py',template]
tracked += [ROOT/s for s in (ROOT/'rtl/files.f').read_text().splitlines() if s]+[ROOT/'rtl/qubo_axi.v']
hashes={str(s.relative_to(ROOT)):hashlib.sha256(s.read_bytes()).hexdigest() for s in tracked}
env=os.environ.copy();env.update(QUBO_TARGET_MHZ=str(a.clock_mhz),QUBO_BUILD_DIR=str(out))
with (out/'build.log').open('w') as log:
    subprocess.run(['vivado','-mode','batch','-source',str(script),'-log',str(out/'vivado.log'),'-journal',str(out/'vivado.jou')],cwd=ROOT,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
assert hashes=={str(s.relative_to(ROOT)):hashlib.sha256(s.read_bytes()).hexdigest() for s in tracked}
manifest={'variant':'sudoku','abi':'0x53554431','requested_clock_mhz':a.clock_mhz,'problem':problem,'sources':hashes,
    'generated_sources':{str(s.relative_to(out)):hashlib.sha256(s.read_bytes()).hexdigest() for s in sources},
    'artifacts':{n:hashlib.sha256((out/n).read_bytes()).hexdigest() for n in ['qubo.bit','qubo.hwh']}}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Built Sudoku overlay:',out)
