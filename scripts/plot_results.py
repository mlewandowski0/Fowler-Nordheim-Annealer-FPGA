#!/usr/bin/env python3
"""Plot saved historical and independently verified RTL traces (requires Matplotlib)."""
import argparse
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--sim',type=Path,default=ROOT/'results/rtl/convergence.csv')
p.add_argument('--out',type=Path,default=ROOT/'results/convergence.png')
a=p.parse_args()
old=np.loadtxt(ROOT/'paper_writing/current_best.txt',delimiter=',',dtype=int)
new=np.loadtxt(a.sim,delimiter=',',skiprows=1,dtype=int)
plt.rcParams.update({'font.size':11,'axes.spines.top':False,'axes.spines.right':False})
fig,axes=plt.subplots(1,2,figsize=(12,4.6),layout='constrained')
for data,label,color in [(old,'Historical saved trace (paper)','#728096'),(new,'Maintained RTL (verified)','#007f83')]:
    axes[0].step(data[:,0],data[:,1],where='post',label=label,color=color,lw=2)
    gap=3050-data[:,1]
    axes[1].step(data[:,0],gap,where='post',label=label,color=color,lw=2)
axes[0].axhline(3050,ls='--',color='#ad5534',lw=1,label='Paper reference: 3050')
axes[0].set_ylabel('Best cut (crossing edges)')
axes[1].set_ylabel('Gap to paper reference (3050 - best cut)')
axes[1].set_yscale('symlog',linthresh=1)
axes[1].set_ylim(0,4000)
axes[1].set_yticks([0,1,10,100,1000,3000],labels=['0','1','10','100','1000','3000'])
for ax in axes:
    ax.set_xscale('log');ax.set_xlabel('Active / recorded clock cycles')
    ax.grid(True,which='major',alpha=.2)
axes[0].legend(loc='lower right',frameon=False,fontsize=9)
fig.suptitle('G15 MAX-CUT: historical trace and maintained implementation',fontsize=14,fontweight='bold')
axes[1].set_title('Configurations differ; this is not a speedup comparison',fontsize=10)
a.out.parent.mkdir(parents=True,exist_ok=True)
fig.savefig(a.out,dpi=180)
print(a.out)
