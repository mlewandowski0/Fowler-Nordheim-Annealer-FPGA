#!/usr/bin/env python3
"""Plot verified quality and compute runtime; avoid mixed-budget platform ratios."""
import json
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
ROOT=Path(__file__).resolve().parents[1];d=json.loads((ROOT/'results/gset/summary.json').read_text());gs=[g for g in d['graphs']if g['in_tables']]
plt.rcParams.update({'font.size':10,'axes.spines.top':False,'axes.spines.right':False})
fig,(a,b)=plt.subplots(2,1,figsize=(16,7),sharex=True,gridspec_kw={'height_ratios':[1.2,1]});fig.subplots_adjust(left=.07,right=.98,bottom=.15,top=.87,hspace=.18)
colors={800:'#007f79',1000:'#46799b',2000:'#c57f4f'}
for i,g in enumerate(gs):
 ref=g['reference'];lo,hi=g['cut_range'];c=colors[g['vertices']]
 a.plot([i,i],[100*lo/ref,100*hi/ref],color=c,linewidth=2);a.scatter(i,100*g['median_cut']/ref,color=c,s=21,zorder=3)
 b.bar(i,g['median_seconds'],color=c,width=.65)
a.axhline(100,color='#60756c',linestyle='--',linewidth=1,label='Paper reference');a.axhline(99,color='#aaa',linestyle=':',linewidth=1,label='99% of paper reference');a.set_ylim(97.8,100.2);a.set_ylabel('Verified cut / historical reference (%)');handles,labels=a.get_legend_handles_labels();handles += [Line2D([],[],color=c,marker='o',linestyle='None',label=f'{n:,} vertices')for n,c in colors.items()];a.legend(handles=handles,loc='lower right',ncol=5,frameon=False,fontsize=9)
b.set_xticks(range(len(gs)),[g['name']for g in gs],rotation=55,ha='right');b.set_ylabel('Median active compute time (s)');b.set_ylim(0,5)
for ax in [a,b]:ax.grid(axis='y',alpha=.15);ax.set_axisbelow(True)
fig.suptitle('Gset: verified board evaluation across 37 original benchmark instances',fontsize=16,fontweight='bold',y=.97)
fig.text(.07,.91,'3 seeds per graph · exactly 10M accepted flips · 100 MHz · fixed cooling period 65,536 · no per-graph tuning',fontsize=11)
fig.text(.07,.035,'Dots: median quality; lines: full three-seed range. Bars: median compute time, excluding setup. Colors: 800 / 1,000 / 2,000 vertices.',fontsize=10)
fig.savefig(ROOT/'results/gset/quality.png',dpi=160);print('results/gset/quality.png')
