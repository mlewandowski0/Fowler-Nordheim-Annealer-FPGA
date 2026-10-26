#!/usr/bin/env python3
"""Summarize verified on-board flip throughput and historical reported references."""
import hashlib
import json
from pathlib import Path
import statistics
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
folder=ROOT/'results/performance'
manifest=json.loads((ROOT/'results/implementation/manifest.json').read_text())
q=np.load(ROOT/'python_code/G15.npy',allow_pickle=False)
runs=[]
for p in sorted((folder/'board').glob('bench_*.json')):
    d=json.loads(p.read_text())
    assert d['assignment_verified']
    assert d['bitfile_sha256']==manifest['artifacts']['qubo.bit']
    assert d['hwh_sha256']==manifest['artifacts']['qubo.hwh']
    x=np.array(d['assignment'],dtype=np.int32)
    cut=int(np.sum(np.triu(q,1)*(x[:,None]!=x[None,:])))
    assert cut==d['final_score']
    assert d['accepted_flips']>=100000000
    seconds=d['cycles']/(d['fclk0_mhz']*1e6)
    normalized=seconds*1e8/d['accepted_flips']
    assert abs(normalized-d['normalized_seconds_per_100m_flips'])<1e-8
    runs.append({'file':str(p.relative_to(ROOT)),'seed':d['seed'],
        'clock_mhz':d['fclk0_mhz'],'cycles':d['cycles'],'accepted_flips':d['accepted_flips'],
        'flip_overshoot':d['flip_overshoot'],'hardware_seconds':seconds,
        'normalized_seconds_per_100m_flips':normalized,'best_cut':cut,
        'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
fast=[r for r in runs if r['clock_mhz']>100]
slow=[r for r in runs if r['clock_mhz']<100]
assert fast and slow,'Retrieve both restored-clock and 50 MHz benchmark runs first'
median=statistics.median(r['normalized_seconds_per_100m_flips'] for r in fast)
reference=ROOT/'paper_writing/comparison.ipynb'
result={'workload':'G15, N=800, 25 units, 32 variables/unit, at least 100 million accepted flips',
    'cooling_period':65536,'runs':runs,
    'median_fast_seconds_per_100m_flips':median,
    'median_fast_accepted_flips_per_second':1e8/median,
    'matched_seed1_gain_over_50mhz':next(r['normalized_seconds_per_100m_flips'] for r in slow if r['seed']==1)/next(r['normalized_seconds_per_100m_flips'] for r in fast if r['seed']==1),
    'historical_reference_source':str(reference.relative_to(ROOT)),
    'historical_reference_sha256':hashlib.sha256(reference.read_bytes()).hexdigest(),
    'historical_reported_references':[
        {'platform':'Intel Core Ultra 9 185H','reported_seconds':504},
        {'platform':'SpiNNaker2','reported_seconds':2460},
        {'platform':'Original FPGA website value','reported_seconds':20}],
    'comparison_status':'Cross-platform comparison withdrawn: historical event budgets are incompatible. Only the matched FPGA clock-scaling comparison is validated.',
    'limitations':['Host polling stops slightly above 100 million accepted flips; exact counts and overshoot are recorded. The normalized duration scales the measured cycles by 100M/actual flips.',
        'Hardware durations exclude host initialization and bitstream loading.',
        'The original CPU/SpiNNaker2 raw timing traces and exact meaning of flips were not found in the supplied archive.',
        'Different arithmetic, candidate-selection and cooling implementations can change solution quality and workload cost.',
        'Vivado power reports are estimates; no measured board energy comparison is made.']}
(folder/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
