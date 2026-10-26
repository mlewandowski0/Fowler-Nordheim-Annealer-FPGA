#!/usr/bin/env python3
"""Exercise AXI channel ordering, backpressure, host loading and result readback."""
import subprocess
from prepare_inputs import ROOT, prepare

out=ROOT/'build/axi'
prepare(out)
sources=[ROOT/s for s in (ROOT/'rtl/files.f').read_text().splitlines() if s]
sources += [ROOT/'rtl/qubo_axi.v',ROOT/'sim/axi_tb.sv']
with (out/'compile.log').open('w') as log:
    subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4',
                    '--top-module','axi_tb','--Mdir',str(out/'obj'),*map(str,sources)],
                   cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
with (out/'simulation.log').open('w') as log:
    result=subprocess.run([str(out/'obj/Vaxi_tb')],cwd=out,stdout=log,stderr=subprocess.STDOUT)
print((out/'simulation.log').read_text())
result.check_returncode()
