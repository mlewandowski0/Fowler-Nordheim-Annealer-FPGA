#!/usr/bin/env python3
"""Exercise dynamic signed graph loading and every accepted flip through AXI."""
import argparse,subprocess,shutil,hashlib
from pathlib import Path
from prepare_inputs import ROOT,MIFS
from prepare_gset_rtl import generate
from gset_model import prepare_sim
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--graphs',nargs='+');p.add_argument('--variant',type=int,choices=[800,1024,2048],default=800);a=p.parse_args();a.graphs=a.graphs or ({800:['G6','G15'],1024:['G43'],2048:['G22']}[a.variant]);out=ROOT/('build/gset_test'if a.variant==800 else f'build/gset{a.variant}_test');out.mkdir(exist_ok=True)
if a.variant==1024:from prepare_gset1024_rtl import generate
if a.variant==2048:from prepare_gset2048_rtl import generate
top='gset_tb'if a.variant==800 else f'gset{a.variant}_tb'
files=generate(out)+[ROOT/f'sim/{top}.sv']
for name in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif']:shutil.copyfile(MIFS/name,out/name)
digest=hashlib.sha256(''.join(f.read_text() for f in files).encode()).hexdigest();stamp=out/'compile.sha256'
if not stamp.exists() or stamp.read_text()!=digest:
 with (out/'compile.log').open('w')as log:subprocess.run(['verilator','--binary','--timing','--assert','-Wno-fatal','-j','4','--top-module',top,'--Mdir',str(out/'obj'),*map(str,files)],cwd=out,stdout=log,stderr=subprocess.STDOUT,check=True)
 stamp.write_text(digest)
for name in a.graphs:
 prepare_sim(ROOT/'python_code/problems'/name,out,a.variant)
 with (out/f'{name}.log').open('w')as log:r=subprocess.run([str(out/f'obj/V{top}')],cwd=out,stdout=log,stderr=subprocess.STDOUT)
 print(name,(out/f'{name}.log').read_text());r.check_returncode()
