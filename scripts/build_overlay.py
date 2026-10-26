#!/usr/bin/env python3
"""Rebuild a Zynq-7020 PYNQ overlay and record source/artifact hashes."""
import hashlib
import json
import subprocess
import argparse
import os

from prepare_inputs import ROOT, prepare

p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--clock-mhz',type=float,default=144)
p.add_argument('--out',type=__import__('pathlib').Path,default=ROOT/'build/overlay')
a=p.parse_args()
out=a.out.resolve()
inputs=prepare(out)
cmd=['vivado','-mode','batch','-source','scripts/build_overlay.tcl',
     '-log',str(out/'vivado.log'),'-journal',str(out/'vivado.jou')]
paths=list((ROOT/'rtl').glob('*.v'))+list((ROOT/'rtl').glob('*.sv'))
paths += [ROOT/'rtl/files.f', ROOT/'scripts/build_overlay.tcl', ROOT/'scripts/build_overlay.py', ROOT/'scripts/prepare_inputs.py']
sources={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}
env=os.environ.copy()
env.update({'QUBO_TARGET_MHZ':str(a.clock_mhz),'QUBO_BUILD_DIR':str(out)})
subprocess.run(cmd,cwd=ROOT,env=env,check=True)
assert sources=={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)},'Sources changed during the build; rebuild before publishing'
manifest={'inputs':inputs,'sources':sources,'requested_clock_mhz':a.clock_mhz,
          'tool_version':subprocess.check_output(['vivado','-version'],text=True).splitlines()[0],
          'artifacts':{n:hashlib.sha256((out/n).read_bytes()).hexdigest() for n in ['qubo.bit','qubo.hwh']}}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
