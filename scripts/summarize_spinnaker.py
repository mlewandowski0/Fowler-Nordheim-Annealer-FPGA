#!/usr/bin/env python3
"""Source-audited literature comparison; never equate fixed-budget and first-hit times."""
import hashlib,json,statistics
from pathlib import Path
from gset_model import ROOT,load,cut
OUT=ROOT/'results/spinnaker_comparison'
protocol=json.loads((OUT/'protocol.json').read_text());plan=json.loads((OUT/'board/plan.json').read_text())
assert plan['names']==protocol['graphs'] and plan['seeds']==protocol['seeds']
expected={f'{g}_seed{s}.json'for g in protocol['graphs']for s in protocol['seeds']}
assert {p.name for p in (OUT/'board').glob('G*_seed*.json')}==expected
m=plan['build'];assert all(hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==h for n,h in m['sources'].items())
sources=json.loads((OUT/'sources.json').read_text());rows=[]
for name in protocol['graphs']:
 q,meta=load(ROOT/'python_code/problems'/name);runs=[]
 for seed in protocol['seeds']:
  p=OUT/'board'/f'{name}_seed{seed}.json';d=json.loads(p.read_text())
  assert d['seed']==seed and d['graph']==meta and d['artifacts']==m['artifacts']
  assert cut(q,d['assignment'])==d['best_cut'] and d['assignment_verified']
  assert d['budget_reached']and d['accepted_flips']==protocol['accepted_flip_budget']==d['requested_flips']
  assert d['clock_mhz']==protocol['clock_mhz']and d['cooling_period']==protocol['cooling_period']
  assert abs(d['hardware_seconds']-d['cycles']/(d['clock_mhz']*1e6))<1e-10
  for t in d['targets']:
   assert t['reached']==(d['best_cut']>=t['cut'])
   if t['reached']:assert 0<t['first_hit_cycle']<=d['cycles']and abs(t['hardware_seconds']-t['first_hit_cycle']/(d['clock_mhz']*1e6))<1e-10
  runs.append(d)
 def target_stats(index):
  targets=[r['targets'][index]for r in runs];target=targets[0]['cut'];hits=[t['hardware_seconds']for t in targets if t['reached']]
  return {'target_cut':target,'successes':len(hits),'attempts':len(runs),'observed_hit_fraction':len(hits)/len(runs),'conditional_median_first_hit_seconds':statistics.median(hits)if hits else None,'first_hit_seconds_including_failures':[t['hardware_seconds']for t in targets],'interpretation':'Median is conditional on success. Failed seed settings remain in denominator and are not assigned successful times.'}
 primary=target_stats(2);secondary=target_stats(1)
 assert primary['target_cut']==protocol['targets'][name]and secondary['target_cut']==protocol['secondary_targets'][name]
 literature=next(r for r in sources['reported_runtime_digitization']['rows']if r['graph']==name)
 rows.append({'graph':name,'vertices':len(q),'graph_sha256':meta['sha256'],'best_cut_range':[min(r['best_cut']for r in runs),max(r['best_cut']for r in runs)],'fpga_primary':primary,'fpga_secondary_generic_neurosa_target':secondary,'fpga_complete_trial_median_seconds':statistics.median(r['hardware_seconds']for r in runs),'fpga_complete_trial_seconds':[r['hardware_seconds']for r in runs],'fpga_initialization_median_seconds':statistics.median(r['host_initialization_seconds']for r in runs),'shared_graph_upload_seconds':runs[0]['graph_upload_seconds_shared_across_seeds'],'spinnaker_reported_runtime_approx_seconds':literature['rounded_seconds'],'spinnaker_value_type':'Approximate reading of a published fixed-iteration runtime bar, not raw timing logs','spinnaker_first_hit_at_primary_target_seconds':None,'spinnaker_success_count_at_primary_target':None,'matched_speedup_ratio':None})
summary={'comparison_type':'Source-audited descriptive literature comparison','status':'Published SpiNNaker2 runtimes found and included. A matched time-to-target or accepted-flip speedup remains unestablished.','fpga_trials':len(expected),'clock_mhz':protocol['clock_mhz'],'accepted_flips_per_trial':protocol['accepted_flip_budget'],'rows':rows,'source_registry':'results/spinnaker_comparison/sources.json','missing_spinnaker_fields':['candidate or accepted-flip count corresponding to timing bars','paired target score and first-hit time per run','successes and failures for that same target and cutoff','compute-only versus setup-inclusive timing boundary'],'limitations':['30 deterministic LFSR seed settings; observed frequencies are not proven independent restart probabilities.','The 2026 generic NeuroSA table does not label its numeric column as SpiNNaker2; its 540/525/480 s values are not used as SpiNNaker2 times.','Approximate published runtimes and measured FPGA first-hit times have different stopping rules and must not be divided as a solver speedup.','FPGA times exclude graph loading and state initialization. No measured energy comparison.']}
(OUT/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');(ROOT/'demo/spinnaker.js').write_text('/* Generated from source-audited literature and independently rescored FPGA runs. */\nwindow.QUBO_SPINNAKER='+json.dumps(summary,separators=(',',':'))+';\n')
print('PASS:',len(expected),'FPGA attempts independently checked')
for r in rows:print(r['graph'],'primary',r['fpga_primary']['successes'],'/30','median hit',r['fpga_primary']['conditional_median_first_hit_seconds'],'secondary',r['fpga_secondary_generic_neurosa_target']['successes'],'/30')
