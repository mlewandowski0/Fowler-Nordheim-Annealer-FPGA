#!/usr/bin/env python3
"""Build a separate signed 800-vertex overlay with native iteration-budget stopping."""
import argparse,hashlib,json,os,subprocess,shutil
from pathlib import Path
from prepare_inputs import ROOT,MIFS
from prepare_iteration_rtl import generate
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--clock-mhz',type=float,default=100);p.add_argument('--out',type=Path,default=ROOT/'build/iterations');a=p.parse_args();out=a.out.resolve();out.mkdir(parents=True,exist_ok=True)
files=generate(out)
for name in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif']:shutil.copyfile(MIFS/name,out/name)
template=ROOT/'scripts/build_overlay.tcl';s=template.read_text().replace('set root [file normalize [file join [file dirname [info script]] ..]]',f'set root {{{ROOT}}}').replace('read_verilog -sv [file join $root $line]','read_verilog -sv [file join $out generated $line]').replace('read_verilog [file join $root rtl qubo_axi.v]','read_verilog [file join $out generated rtl qubo_axi.v]');tcl=out/'build_gset.tcl';tcl.write_text(s)
tracked=[ROOT/'scripts/build_iterations.py',ROOT/'scripts/prepare_iteration_rtl.py',ROOT/'scripts/prepare_gset_rtl.py',ROOT/'scripts/prepare_sudoku_rtl.py',template,ROOT/'rtl/files.f']+[ROOT/n for n in (ROOT/'rtl/files.f').read_text().splitlines()]+[ROOT/'rtl/qubo_axi.v']
hashes={str(f.relative_to(ROOT)):hashlib.sha256(f.read_bytes()).hexdigest() for f in tracked}
env=os.environ.copy();env.update(QUBO_TARGET_MHZ=str(a.clock_mhz),QUBO_BUILD_DIR=str(out))
with (out/'build.log').open('w') as log:subprocess.run(['vivado','-mode','batch','-source',str(tcl),'-log',str(out/'vivado.log'),'-journal',str(out/'vivado.jou')],cwd=ROOT,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
assert hashes=={str(f.relative_to(ROOT)):hashlib.sha256(f.read_bytes()).hexdigest() for f in tracked}
m={'variant':'gset_native_iteration_budget','abi':'0x49545231','iteration_definition':'One active scheduler S_WAIT arbitration decision, including no-flip/pipeline-empty decisions. Excludes capture, update and drain cycles. Up to 25 units propose in parallel.', 'vertices':800,'weight_values':[-1,0,1],'requested_clock_mhz':a.clock_mhz,'sources':hashes,'generated_sources':{str(f.relative_to(out)):hashlib.sha256(f.read_bytes()).hexdigest() for f in files},'artifacts':{n:hashlib.sha256((out/n).read_bytes()).hexdigest() for n in ['qubo.bit','qubo.hwh']}}
(out/'manifest.json').write_text(json.dumps(m,indent=2)+'\n');print('Built',out)
