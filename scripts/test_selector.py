#!/usr/bin/env python3
"""Check fixed-priority selection against an independent first-valid model."""
import subprocess
from prepare_inputs import ROOT

out=ROOT/'build/selector'
out.mkdir(parents=True,exist_ok=True)
with (out/'compile.log').open('w') as log:
    subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4',
        '--top-module','selector_tb','--Mdir',str(out/'obj'),str(ROOT/'rtl/simple_priority_selector.v'),str(ROOT/'sim/selector_tb.sv')],
        cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
result=subprocess.run([str(out/'obj/Vselector_tb')],cwd=out,capture_output=True,text=True)
(out/'simulation.log').write_text(result.stdout+result.stderr)
print(result.stdout+result.stderr)
result.check_returncode()
