#!/usr/bin/env python3
"""Audit every predeclared result and export coverage and named-baseline tables."""
import collections,hashlib,json,statistics
from pathlib import Path
import numpy as np
from gset_model import ROOT,REFERENCES,load,cut
out=ROOT/'results/gset';records=[]
for directory in ['results800','results1000','results2000','comparison800']:
 folder=out/'board'/directory;plan=json.loads((folder/'plan.json').read_text())
 expected={f'{name}_seed{seed}.json'for name in plan['names']for seed in plan['seeds']}
 actual={p.name for p in folder.glob('G*_seed*.json')};assert actual==expected,(directory,expected-actual,actual-expected)
 manifest=plan['build'];assert all(hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==h for n,h in manifest['sources'].items())
 for p in sorted(folder.glob('G*_seed*.json')):
  d=json.loads(p.read_text());q,meta=load(ROOT/'python_code/problems'/d['graph']['name']);assert meta==d['graph']
  assert d['assignment_verified'] and cut(q,d['assignment'])==d['best_cut']
  # Independent sparse edge-list rescoring avoids reusing the RTL/field representation.
  rows=(ROOT/'python_code/problems'/meta['name']).read_text().splitlines()[1:]
  sparse=sum(int(w)for line in rows if line.strip()for a,b,w in [line.split()]if d['assignment'][int(a)-1]!=d['assignment'][int(b)-1]);assert sparse==d['best_cut']
  assert d['accepted_flips']==plan['accepted_flip_budget']==d['requested_flips'] and d['budget_reached']
  assert d['artifacts']==manifest['artifacts'] and abs(d['hardware_seconds']-d['cycles']/(d['clock_mhz']*1e6))<1e-10
  for t in d['targets']:
   assert t['reached']==(d['best_cut']>=t['cut']) if t['cut']>0 else not t['reached']
   if t['reached']:assert 0<t['first_hit_cycle']<=d['cycles'] and abs(t['hardware_seconds']-t['first_hit_cycle']/(d['clock_mhz']*1e6))<1e-10
  if 'runner_sha256'in d:
   allowed_drivers={hashlib.sha256(f.read_bytes()).hexdigest()for f in [ROOT/'scripts/run_gset_board.py',out/'provenance/run_gset_board_800.py',out/'provenance/run_gset_board_expanded.py',out/'provenance/run_gset_board_targets.py']}
   allowed_models={hashlib.sha256(f.read_bytes()).hexdigest()for f in [ROOT/'scripts/gset_model.py',out/'provenance/gset_model_800.py',out/'provenance/gset_model_expanded.py']}
   assert d['runner_sha256']in allowed_drivers and d['model_sha256']in allowed_models
  d['file']=str(p.relative_to(ROOT));d['file_sha256']=hashlib.sha256(p.read_bytes()).hexdigest();records.append((directory,d))
board=[d for directory,d in records if directory!='comparison800'];group=collections.defaultdict(list)
for d in board:group[d['graph']['name']].append(d)
graphs=[]
for name,runs in sorted(group.items(),key=lambda x:int(x[0][1:])):
 meta=runs[0]['graph'];scores=[r['best_cut']for r in runs]
 graphs.append({'name':name,'vertices':meta['vertices'],'negative_edges':meta['negative_edges'],'in_tables':meta['in_supplement_tables'],'reference':meta['paper_reference_cut'],'paper_neurosa_worst':meta['paper_neurosa_worst_cut'],'runs':len(runs),'seeds':[r['seed']for r in runs],'cut_range':[min(scores),max(scores)],'median_cut':statistics.median(scores),'best_cut':max(scores),'median_seconds':statistics.median(r['hardware_seconds']for r in runs),'target99_hits':sum(r['targets'][0]['reached']for r in runs),'target99_seconds':[r['targets'][0]['hardware_seconds']for r in runs],'raw_files':[r['file']for r in runs]})
comparison=[]
for name in ['G4','G11','G15']:
 fpga=[d for directory,d in records if directory=='comparison800'and d['graph']['name']==name]
 cpu=[json.loads(p.read_text())for p in (ROOT/'results/comparison_cpu').glob(f'{name}_seed*.json')]
 tts=[json.loads(p.read_text())for p in (ROOT/'results/comparison_cpu_tts30').glob(f'{name}_seed*.json')]
 assert len(fpga)==len(cpu)==len(tts)==3
 q,_=load(ROOT/'python_code/problems'/name)
 assert {d['seed']for d in cpu}=={1,2,3} and {d['seed']for d in tts}=={1,2,3}
 allowed_wrappers={hashlib.sha256(p.read_bytes()).hexdigest()for p in [ROOT/'scripts/run_cpu_reference.py',out/'provenance/run_cpu_reference_fixed.py']}
 reference_hash=hashlib.sha256((ROOT/'third_party/neurosa_reference/neurosa.py').read_bytes()).hexdigest()
 for d in cpu+tts:
  assert d['assignment_verified']and cut(q,d['assignment'])==d['best_cut']
  assert d['metadata']['source_sha256']==reference_hash and d['metadata']['wrapper_sha256']in allowed_wrappers
  for t in d['targets']:
   assert t['reached']==(d['best_cut']>=t['cut'])
   if t['reached']:assert 0<t['compute_seconds']<=d['compute_seconds']
 for d in tts:
  assert d['stop_at_99_percent'] and (d['targets'][0]['reached'] or d['timed_out'])
 for d in cpu:assert d['accepted_flips']==1000000 and d['budget_reached']
 row={'name':name,'accepted_flips':1000000,'fpga_median_seconds':statistics.median(d['hardware_seconds']for d in fpga),'cpu_median_seconds':statistics.median(d['compute_seconds']for d in cpu),'fpga_cut_range':[min(d['best_cut']for d in fpga),max(d['best_cut']for d in fpga)],'cpu_cut_range':[min(d['best_cut']for d in cpu),max(d['best_cut']for d in cpu)],'target99':fpga[0]['targets'][0]['cut'],'fpga_target_hits':sum(d['targets'][0]['reached']for d in fpga),'fpga_target_seconds':[d['targets'][0]['hardware_seconds']for d in fpga],'cpu_target_hits':sum(d['targets'][0]['reached']for d in tts),'cpu_target_seconds':[d['targets'][0]['compute_seconds']for d in tts],'cpu_tts_timeout_seconds':30}
 comparison.append(row)
inventory=json.loads((out/'inventory.json').read_text());covered=sum(g['in_tables']for g in graphs)
summary={'scope':'All predeclared runs. Fixed 10M accepted flips, seeds 1/2/3, cooling period 65536, configured 100 MHz. G8/G9 extra; no graph-specific tuning. Compute timings exclude host setup.','board_runs':len(board),'additional_comparison_board_runs':9,'covered_table_entries':covered,'table_entries':len(REFERENCES),'graphs':graphs,'cpu_comparison':comparison,'spinnaker_comparison_status':'Published fixed-iteration runtimes only; no verified common accepted-flip budget or common target/hit-time data. No validated FPGA/SpiNNaker2 speedup ratio.','limitations':['Three seeds are demonstrations, not a confidence-qualified time-to-solution distribution.','Paper reference values are historical best-known values, not optimality certificates.','NumPy baseline and FPGA have different candidate policies, noise arithmetic and cooling. This is not a hardware-only speedup comparison.','CPU is a Core Ultra 9 275HX here, distinct from the paper\'s 185H.','No board energy measurement or clock-normalized extrapolated speedup is claimed.']}
(out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');(ROOT/'demo/benchmarks.js').write_text('/* Generated from independently rescored raw records by scripts/summarize_gset.py. */\nwindow.QUBO_BENCHMARKS='+json.dumps(summary,separators=(',',':'))+';\n')
print('PASS',len(board),'board runs;',covered,'/',len(REFERENCES),'table entries;',len(graphs),'graphs')
print('Best-of-three/reference minimum',min(g['best_cut']/g['reference']for g in graphs if g['reference']))
for r in comparison:print(json.dumps(r))
