#!/usr/bin/env python3
"""Draw the README comparison charts from the saved, audited summaries.

docs/assets/speed.png: FPGA against the NumPy NeuroSA reference and the published
SpiNNaker2 runtimes. docs/assets/gset.png: gap to the best-known cut on every
Gset graph in the original NeuroSA tables, with the FPGA compute time.
"""
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
from matplotlib.patches import Patch

ROOT = Path(__file__).resolve().parents[1]
ASSETS = ROOT/'docs/assets'
FPGA, CPU, SPI = '#0072b2', '#e69f00', '#8a9099'
INK, MUTED, GRID = '#1b1d20', '#5d636b', '#e3e5e8'
plt.rcParams.update({
    'font.family': ['Helvetica', 'Nimbus Sans', 'Liberation Sans', 'DejaVu Sans'], 'font.size': 10,
    'text.color': INK, 'axes.labelcolor': INK, 'xtick.color': MUTED, 'ytick.color': INK,
    'axes.edgecolor': '#9aa0a6', 'axes.spines.top': False, 'axes.spines.right': False,
    'svg.fonttype': 'none',
})


def fmt(s):
    return f'{s*1e3:.0f} ms' if s < 1 else f'{s:.1f} s' if s < 10 else f'{s:,.0f} s'


def median(xs):
    xs = sorted(xs); n = len(xs)
    return xs[n//2] if n % 2 else (xs[n//2-1]+xs[n//2])/2


def speed_chart():
    gset = json.loads((ROOT/'results/gset/summary.json').read_text())
    spin = {r['graph']: r for r in json.loads((ROOT/'results/spinnaker_comparison/summary.json').read_text())['rows']}
    cpu = {c['name']: c for c in gset['cpu_comparison']}
    graphs = ['G4', 'G11', 'G15']
    panels = [
        ('Same work: 1M accepted flips', 'CPU, NumPy NeuroSA',
         [(cpu[g]['fpga_median_seconds'], cpu[g]['cpu_median_seconds'], None) for g in graphs]),
        ('Time to 99% of the best-known cut', 'CPU, NumPy NeuroSA',
         [(median(cpu[g]['fpga_target_seconds']),
           median(cpu[g]['cpu_target_seconds']) if cpu[g]['cpu_target_hits'] == 3 else cpu[g]['cpu_tts_timeout_seconds'],
           None if cpu[g]['cpu_target_hits'] == 3 else 'not reached in 30 s') for g in graphs]),
        ('Full run vs published SpiNNaker2 runtime*', 'SpiNNaker2, published',
         [(spin[g]['fpga_complete_trial_median_seconds'], spin[g]['spinnaker_reported_runtime_approx_seconds'], None) for g in graphs]),
    ]
    fig, axes = plt.subplots(1, 3, figsize=(12, 3.9), sharey=True)
    fig.subplots_adjust(left=.05, right=.985, top=.78, bottom=.24, wspace=.12)
    for ax, (title, other, rows) in zip(axes, panels):
        color = SPI if 'SpiNNaker' in other else CPU
        for i, (f, o, note) in enumerate(rows):
            y = len(rows)-1-i
            ax.barh(y+.19, f, height=.34, left=1e-3, color=FPGA)
            ax.barh(y-.19, o, height=.34, left=1e-3, color='white' if note else color,
                    edgecolor=color, hatch='////' if note else None, linewidth=1 if note else 0)
            ax.text(f*1.25, y+.19, fmt(f), va='center', fontsize=9, color=INK)
            ax.text(o*1.25, y-.19, note or fmt(o), va='center', fontsize=9, color=INK if not note else MUTED)
            if 'SpiNNaker' not in other and not note:
                ax.text(9e3, y, f'{o/f:,.0f}× faster', ha='right', va='center', fontsize=10.5, fontweight='bold', color=FPGA)
        ax.set_xscale('log'); ax.set_xlim(1e-3, 1e4)
        ax.set_xticks([1e-3, 1e-2, 1e-1, 1, 10, 100, 1e3, 1e4], ['1 ms', '10 ms', '0.1 s', '1 s', '10 s', '100 s', '1,000 s', ''])
        ax.tick_params(axis='x', labelsize=8.5, length=0)
        ax.grid(axis='x', color=GRID, linewidth=.8); ax.set_axisbelow(True)
        ax.set_title(title, loc='left', fontsize=11.5, fontweight='bold', pad=8)
        ax.spines['left'].set_visible(False); ax.tick_params(axis='y', length=0)
    axes[0].set_yticks([2, 1, 0], graphs, fontsize=11, fontweight='bold')
    fig.legend(handles=[Patch(color=FPGA, label='FPGA, Zynq-7020 at 100 MHz'), Patch(color=CPU, label='CPU, NumPy NeuroSA (1 core)'),
                        Patch(color=SPI, label='SpiNNaker2, published')],
               loc='upper left', bbox_to_anchor=(.045, .99), ncol=3, frameon=False, fontsize=10, handlelength=1.2)
    fig.text(.05, .05, 'Medians over seeds (3 for CPU panels, 30 for the FPGA full runs). CPU: upstream NumPy NeuroSA on one Intel Core Ultra 9 275HX core.\n'
             '*SpiNNaker2 times are approximate readings of Fig. S3a in Chen et al., Nat. Commun. 2025 (fixed iteration count; cuts per run not reported), '
             'so this panel is not a matched-work comparison.\nFPGA full run = 10M accepted flips; it reaches the best-known cut on G11 and G15 in some seeds.',
             fontsize=8.3, color=MUTED, va='bottom', linespacing=1.5)
    fig.savefig(ASSETS/'speed.png', dpi=180); plt.close(fig)


def gset_chart():
    gs = [g for g in json.loads((ROOT/'results/gset/summary.json').read_text())['graphs'] if g['in_tables']]
    gap = lambda cut, g: 100*(g['reference']-cut)/g['reference']
    fig, (a, b) = plt.subplots(2, 1, figsize=(12, 5.6), sharex=True, gridspec_kw={'height_ratios': [1.35, 1]})
    fig.subplots_adjust(left=.075, right=.985, top=.86, bottom=.15, hspace=.12)
    x = range(len(gs))
    for i, g in enumerate(gs):
        lo, hi = g['cut_range']
        a.plot([i, i], [gap(hi, g), gap(lo, g)], color=FPGA, alpha=.35, linewidth=2.2, solid_capstyle='round')
    a.scatter(x, [gap(g['paper_neurosa_worst'], g) for g in gs], s=46, facecolor='white', edgecolor=CPU, linewidth=1.8, zorder=3)
    a.scatter(x, [gap(g['best_cut'], g) for g in gs], s=30, color=FPGA, zorder=4)
    a.set_ylim(2.05, -.12); a.set_yticks([0, .5, 1, 1.5, 2], ['0%', '0.5%', '1.0%', '1.5%', '2.0%'])
    a.set_ylabel('Gap to best-known cut', fontsize=10)
    a.axhline(0, color=INK, linewidth=.9)
    a.grid(axis='y', color=GRID); a.set_axisbelow(True)
    exact = sum(g['best_cut'] >= g['reference'] for g in gs)
    within = sum(gap(g['best_cut'], g) <= .5 for g in gs)
    a.legend(handles=[Line2D([], [], color=FPGA, marker='o', linestyle='None', label='FPGA, best of 3 seeds'),
                      Line2D([], [], color=FPGA, alpha=.35, linewidth=2.2, label='FPGA, range over 3 seeds'),
                      Line2D([], [], marker='o', markerfacecolor='white', markeredgecolor=CPU, markeredgewidth=1.8, linestyle='None', label='NeuroSA, published')],
             loc='lower right', ncol=3, frameon=False, fontsize=9.5)
    b.bar(x, [g['median_seconds'] for g in gs], color=FPGA, width=.62)
    b.set_ylabel('FPGA compute time', fontsize=10); b.set_ylim(0, 5)
    b.set_yticks([0, 1, 2, 3, 4, 5], ['0', '1 s', '2 s', '3 s', '4 s', '5 s'])
    b.grid(axis='y', color=GRID); b.set_axisbelow(True)
    b.set_xticks(list(x), [g['name'] for g in gs], rotation=60, fontsize=8.5, color=INK)
    b.tick_params(axis='x', length=0)
    # Group brackets by graph size.
    for n in (800, 2000, 1000):
        idx = [i for i, g in enumerate(gs) if g['vertices'] == n]
        b.annotate('', xy=(idx[0]-.3, -1.55), xytext=(idx[-1]+.3, -1.55), xycoords=('data', 'data'),
                   arrowprops=dict(arrowstyle='-', color='#9aa0a6'), annotation_clip=False)
        b.text((idx[0]+idx[-1])/2, -1.95, f'{n:,} vertices', ha='center', va='top', fontsize=9, color=MUTED)
    fig.text(.075, .955, 'Gset: distance to the best-known cut', fontsize=13, fontweight='bold', va='top')
    fig.text(.075, .905, f'37 graphs from the NeuroSA tables · 3 seeds × 10M accepted flips each at 100 MHz · '
             f'best-known cut reached on {exact}, within 0.5% on {within}', fontsize=10, color=MUTED, va='top')
    fig.savefig(ASSETS/'gset.png', dpi=180); plt.close(fig)


if __name__ == '__main__':
    speed_chart(); gset_chart()
    print('docs/assets/speed.png, docs/assets/gset.png')
