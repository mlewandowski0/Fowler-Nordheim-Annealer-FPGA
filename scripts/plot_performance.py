#!/usr/bin/env python3
"""Plot measured FPGA throughput separately from historical reported references."""
import json
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

ROOT=Path(__file__).resolve().parents[1]
data=json.loads((ROOT/'results/performance/summary.json').read_text())
slow=next(r for r in data['runs'] if r['clock_mhz']<100 and r['seed']==1)
fast=next(r for r in data['runs'] if r['clock_mhz']>100 and r['seed']==1)
plt.rcParams.update({'font.size':11,'axes.spines.top':False,'axes.spines.right':False})
fig,(a,b)=plt.subplots(1,2,figsize=(13.6,5.8),gridspec_kw={'width_ratios':[1,1.4]})
fig.subplots_adjust(left=.07,right=.98,bottom=.23,top=.77,wspace=.58)
values=[slow['normalized_seconds_per_100m_flips'],fast['normalized_seconds_per_100m_flips']]
bars=a.bar(['50 MHz','142.857 MHz'],values,color=['#c69145','#007f83'],width=.55)
for bar,value in zip(bars,values):a.text(bar.get_x()+bar.get_width()/2,value+.45,f'{value:.2f} s',ha='center',fontweight='bold')
a.set_ylim(0,27);a.set_ylabel('Seconds / 100 million accepted flips')
a.set_title(f"Matched FPGA seed 1: {data['matched_seed1_gain_over_50mhz']:.3f}x throughput",fontsize=12,fontweight='bold')
a.grid(axis='y',alpha=.18);a.set_axisbelow(True)
fast_runs=[r for r in data['runs'] if r['clock_mhz']>100]
b.bar([f"Seed {r['seed']}" for r in fast_runs], [r['best_cut'] for r in fast_runs],color='#007f83',width=.55)
b.set_ylim(0,3400);b.set_ylabel('Independently verified best cut')
b.set_title('Solution quality at 100M accepted flips',fontsize=12,fontweight='bold')
for i,r in enumerate(fast_runs):b.text(i,r['best_cut']+45,str(r['best_cut']),ha='center',fontweight='bold')
b.grid(axis='y',alpha=.18);b.set_axisbelow(True)
fig.suptitle('G15 near-memory QUBO accelerator: restored clock performance',fontsize=17,fontweight='bold',y=.96)
fast_count=sum(r['clock_mhz']>100 for r in data['runs'])
fig.text(.5,.86,f"FPGA median: {data['median_fast_accepted_flips_per_second']/1e6:.2f} million accepted flips/s; {fast_count} seeds; independently verified assignments",ha='center',fontsize=11)
fig.text(.07,.10,'FPGA timings use hardware cycles and configured clocks, normalized for polling overshoot; host setup is excluded.',fontsize=10)
fig.text(.07,.055,'CPU/SpiNNaker2 speedup claims withdrawn: historical work counters are incompatible. See docs/comparison_audit.md.',fontsize=10)
out=ROOT/'results/performance/comparison.png';fig.savefig(out,dpi=180)
print(out)
