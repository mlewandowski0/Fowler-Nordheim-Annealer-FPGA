#!/usr/bin/env python3
"""Exercise dynamic signed graph loading and every accepted flip through AXI."""
import argparse,subprocess,shutil,hashlib
from pathlib import Path
from prepare_inputs import ROOT,MIFS
from prepare_iteration_rtl import generate
from gset_model import prepare_sim
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--graphs',nargs='+',default=['G6','G15']);a=p.parse_args();out=ROOT/'build/iteration_test';out.mkdir(exist_ok=True);top='iteration_tb'
files=generate(out)+[ROOT/f'sim/{top}.sv']
for name in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif']:shutil.copyfile(MIFS/name,out/name)
digest=hashlib.sha256(''.join(f.read_text() for f in files).encode()).hexdigest();stamp=out/'compile.sha256'
if not stamp.exists() or stamp.read_text()!=digest:
 with (out/'compile.log').open('w')as log:subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4','--top-module',top,'--Mdir',str(out/'obj'),*map(str,files)],cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
 stamp.write_text(digest)
for name in a.graphs:
 prepare_sim(ROOT/'python_code/problems'/name,out)
 with (out/f'{name}.log').open('w')as log:r=subprocess.run([str(out/f'obj/V{top}')],cwd=out,stdout=log,stderr=subprocess.STDOUT)
 print(name,(out/f'{name}.log').read_text());r.check_returncode()

with (out/'counter_compile.log').open('w')as log:
 subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4','--top-module','iteration_counter_tb','--Mdir',str(out/'counter_obj'),str(out/'generated/rtl/scheduler_2.v'),str(ROOT/'sim/iteration_counter_tb.sv')],cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
with (out/'counter.log').open('w')as log:
 result=subprocess.run([str(out/'counter_obj/Viteration_counter_tb')],cwd=out,stdout=log,stderr=subprocess.STDOUT)
print((out/'counter.log').read_text());result.check_returncode()
