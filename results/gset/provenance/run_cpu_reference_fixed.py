#!/usr/bin/env python3
"""Measure the named upstream NumPy NeuroSA implementation, not an abstract CPU."""
import os
for name in ['OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS']:os.environ[name]='1'
import argparse,hashlib,importlib.util,json,math,platform,random,time
from pathlib import Path
import numpy as np
from gset_model import load,cut,ROOT

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--names',nargs='+',default=['G4','G11','G15']);p.add_argument('--seeds',nargs='+',type=int,default=[1,2,3]);p.add_argument('--flips',type=int,default=1000000);p.add_argument('--seconds',type=float,default=120);p.add_argument('--out',type=Path,required=True);a=p.parse_args();assert a.flips>0 and a.seconds>0
 a.out.mkdir(parents=True,exist_ok=False)
 if hasattr(os,'sched_setaffinity'):os.sched_setaffinity(0,{min(os.sched_getaffinity(0))})
 source=ROOT/'third_party/neurosa_reference/neurosa.py';spec=importlib.util.spec_from_file_location('upstream_neurosa',source);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
 cpu=next((l.split(':',1)[1].strip()for l in Path('/proc/cpuinfo').read_text().splitlines()if l.startswith('model name')),platform.processor())
 info={'implementation':'Unmodified upstream NumPy NeuroSA update_neuron; instrumented budget/first-hit loop','upstream_commit':'989b9697b3fb64142eaf859bc6c443e75d328302','source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'wrapper_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'cpu':cpu,'python':platform.python_version(),'numpy':np.__version__,'affinity':sorted(os.sched_getaffinity(0)),'threads':1,'arithmetic':'float32 fields, upstream Python scalar threshold','rng':'NumPy legacy MT19937 for candidate; Python random MT19937 for threshold','threshold_max':80000,'threshold_delta':.002,'timing_boundary':'Host compute wall time; excludes initialization, file writing and final independent scoring; includes RNG, updates, loop, target monitoring and best-assignment copies','algorithm_difference':'One uniform candidate per iteration versus 25 parallel candidates and fixed-priority arbitration on FPGA; cooling and noise arithmetic differ.'}
 (a.out/'plan.json').write_text(json.dumps({'names':a.names,'seeds':a.seeds,'accepted_flip_budget':a.flips,'timeout_seconds':a.seconds,'metadata':info},indent=2)+'\n')
 for name in a.names:
  q,meta=load(ROOT/'python_code/problems'/name);ref=meta['paper_reference_cut'];thresholds=[math.ceil(.99*ref),meta['paper_neurosa_worst_cut'],ref]
  for seed in a.seeds:
   np.random.seed(seed);random.seed(seed);init=time.perf_counter();solver=module.Neurosa(q.astype(np.float32));init=time.perf_counter()-init
   assignment=np.ones(len(q),dtype=int);best=0;hits=[None]*3;start=time.perf_counter();timeout=False
   while solver.num_spikes<a.flips:
    k=np.random.randint(0,solver.N);solver.update_neuron(k);solver.iter+=1;solver.thld+=solver.thld_delta
    if solver.best_maxcuts>best:
     best=int(solver.best_maxcuts);assignment=solver.s_p.astype(int).copy();now=time.perf_counter()-start
     for j,target in enumerate(thresholds):
      if hits[j]is None and best>=target:hits[j]=now
    if solver.iter%10000==0 and time.perf_counter()-start>a.seconds:timeout=True;break
   elapsed=time.perf_counter()-start
   assert cut(q,assignment)==best
   result={'kind':'upstream_numpy_reference','graph':meta,'seed':seed,'requested_flips':a.flips,'accepted_flips':solver.num_spikes,'candidate_proposals':solver.iter,'budget_reached':solver.num_spikes==a.flips,'timed_out':timeout,'compute_seconds':elapsed,'initialization_seconds':init,'best_cut':best,'assignment':assignment.tolist(),'assignment_verified':True,'targets':[{'label':label,'cut':t,'reached':s is not None,'compute_seconds':s}for label,t,s in zip(['99_percent_paper_reference','paper_neurosa_worst','paper_reference'],thresholds,hits)],'metadata':info}
   (a.out/f'{name}_seed{seed}.json').write_text(json.dumps(result,indent=2)+'\n');print(name,seed,best,solver.num_spikes,round(elapsed,6),flush=True)
if __name__=='__main__':main()
