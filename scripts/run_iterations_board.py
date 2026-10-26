#!/usr/bin/env python3
"""Fixed native arbitration-iteration batch with exact hardware stopping and verified cuts."""
import argparse,hashlib,json,math,platform,time
from pathlib import Path
import numpy as np
from gset_model import load,cut

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--bitfile',type=Path,required=True);p.add_argument('--manifest',type=Path,required=True);p.add_argument('--graphs',type=Path,required=True);p.add_argument('--names',nargs='+',required=True);p.add_argument('--seeds',nargs='+',type=int,default=[1,2,3]);p.add_argument('--iterations',type=int,default=100000000);p.add_argument('--clock-mhz',type=float,default=100);p.add_argument('--cooling-period',type=int,default=65536);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
 runner_hash=hashlib.sha256(Path(__file__).read_bytes()).hexdigest();model_hash=hashlib.sha256(Path(__file__).with_name('gset_model.py').read_bytes()).hexdigest()
 m=json.loads(a.manifest.read_text());assert m['abi']=='0x49545231';physical=m['vertices'];units=m.get('units',physical//32);per_unit=physical//units;halves=per_unit//32;assignment_base=m.get('assignment_base',0x40)
 assert 0<a.clock_mhz<=m['requested_clock_mhz'] and 0<a.iterations and 7*a.iterations<1000000000 and 0<a.cooling_period<2**32 and all(1<=s<=1000 for s in a.seeds)
 for name in ('qubo.bit','qubo.hwh'):assert hashlib.sha256(a.bitfile.with_name(name).read_bytes()).hexdigest()==m['artifacts'][name]
 a.out.mkdir(parents=True,exist_ok=False)
 data=[load(a.graphs/name)for name in a.names]
 assert all(q.shape[0]<=physical and (m['weight_values']==[-1,0,1] or not (q<0).any()) for q,_ in data)
 plan={'runner_sha256':runner_hash,'model_sha256':model_hash,'names':a.names,'seeds':a.seeds,'iteration_budget':a.iterations,'iteration_definition':m['iteration_definition'],'max_active_cycles':1000000000,'clock_request_mhz':a.clock_mhz,'cooling_period':a.cooling_period,'build':m,'graphs':[meta for _,meta in data]}
 (a.out/'plan.json').write_text(json.dumps(plan,indent=2)+'\n')
 from pynq import Overlay,Clocks
 import pynq
 started=time.monotonic();ov=Overlay(str(a.bitfile.resolve()));load_seconds=time.monotonic()-started;ip=ov.qubo_accelerator
 assert ip.read(0x20)==int(m['abi'],16);Clocks.fclk0_mhz=a.clock_mhz;clock=float(Clocks.fclk0_mhz);assert clock<=m['requested_clock_mhz']+.001
 for q,meta in data:
  n=q.shape[0];matrix=np.zeros((physical,physical),dtype=np.int16);matrix[:n,:n]=q
  positive=np.packbits(matrix>0,axis=1,bitorder='little').copy().view('<u4');negative=np.packbits(matrix<0,axis=1,bitorder='little').copy().view('<u4')
  ip.write(0,0);ip.write(4,0);ip.write(8,0);ip.write(0,1);assert ip.read(0x2c)==1
  start=time.monotonic()
  for u in range(units):
   ip.write(0xb0,1<<u)
   for row in range(physical):
    for half in range(halves):
     ip.write(0xb4,row|(half<<11));ip.write(0xb8,int(positive[row,u*halves+half]));ip.write(0xbc,int(negative[row,u*halves+half]))
  upload=time.monotonic()-start
  ref=meta['paper_reference_cut'];worst=meta['paper_neurosa_worst_cut']
  thresholds=[math.ceil(.99*ref)if ref else 0,worst or 0,ref or 0]
  for seed in a.seeds:
   start=time.monotonic();ip.write(0,0);ip.write(4,0);ip.write(8,0);ip.write(0x30,a.cooling_period);ip.write(0,1)
   ip.write(0xc0,0);ip.write(0xc4,a.iterations);assert ip.read(0xc4)==a.iterations
   for addr,t in zip([0xd0,0xd4,0xd8],thresholds):ip.write(addr,t)
   for u in range(units):
    ip.write(4,0);ip.write(12,(seed+u)%511);ip.write(16,seed+u);ip.write(4,1<<u)
   ip.write(4,0);degree=matrix.sum(axis=1)
   for u in range(units):
    for k in range(per_unit):
     i=u*per_unit+k;state=2|(8 if i>=n else 0)
     ip.write(8,0);ip.write(24,k);ip.write(20,(state<<10)|(int(degree[i])&1023));ip.write(8,1<<u)
   ip.write(8,0);assert ip.read(0x24)==0 and ip.read(0x28)==0 and ip.read(0xc8)==0 and ip.read(0xcc)==0
   init_seconds=time.monotonic()-start;start=time.monotonic();ip.write(0,3)
   try:
    while True:
     flips=int(ip.read(0x28));iterations=int(ip.read(0xc8));cycles=int(ip.read(0x24))
     if iterations==a.iterations and ip.read(0x2c)==1:break
     if cycles>=1000000000 or time.monotonic()-start>20:break
     time.sleep(.002)
   finally:ip.write(0,1)
   host_run=time.monotonic()-start;deadline=time.monotonic()+1
   while ip.read(0x2c)!=1:
    if time.monotonic()>deadline:raise RuntimeError('Halt timeout')
   cycles=int(ip.read(0x24));flips=int(ip.read(0x28));score=int(ip.read(0x1c));iterations=int(ip.read(0xc8));rejected=int(ip.read(0xcc));assert iterations==a.iterations and iterations==flips+rejected
   assert cycles==iterations+6*flips,'Unexpected active cycle accounting'
   words=[int(ip.read(assignment_base+4*u))for u in range(physical//32)];bits=[(words[i//32]>>(i%32))&1 for i in range(physical)]
   measured=cut(q,bits[:n]);assert measured==score and int(ip.read(0x24))==cycles
   hits=[int(ip.read(addr))for addr in [0xe0,0xe4,0xe8]]
   for target,hit in zip(thresholds,hits):
    assert (hit>0)==(target>0 and measured>=target) and hit<=cycles
   r={'runner_sha256':runner_hash,'model_sha256':model_hash,'kind':'gset_board_native_iteration_budget','iterations':iterations,'rejected_iterations':rejected,'iteration_definition':m['iteration_definition'],'graph':meta,'seed':seed,'cooling_period':a.cooling_period,'physical_slots':physical,'clock_mhz':clock,'cycles':cycles,'accepted_flips':flips,'requested_iterations':a.iterations,'budget_reached':iterations==a.iterations,'hardware_seconds':cycles/(clock*1e6),'host_run_interval_seconds':host_run,'host_initialization_seconds':init_seconds,'graph_upload_seconds_shared_across_seeds':upload,'bitstream_load_seconds_shared_across_batch':load_seconds,'best_cut':score,'assignment':bits[:n],'assignment_verified':True,'targets':[{'label':label,'cut':t,'reached':bool(c),'first_hit_cycle':c or None,'hardware_seconds':c/(clock*1e6)if c else None}for label,t,c in zip(['99_percent_paper_reference','paper_neurosa_worst','paper_reference'],thresholds,hits)],'artifacts':m['artifacts'],'pynq_version':pynq.__version__,'machine':platform.machine(),'kernel':platform.release(),'timing_boundary':'Active FPGA cycles = native arbitration iterations + six capture/drain cycles per accepted flip; excludes upload/initialization. First-hit cycle latched in RTL at accepted update; no intermediate host pauses.'}
   dest=a.out/f'{meta["name"]}_seed{seed}.json';dest.write_text(json.dumps(r,indent=2)+'\n');print(meta['name'],seed,score,iterations,flips,round(r['hardware_seconds'],6),flush=True)
 print('Completed',len(data)*len(a.seeds),'runs',flush=True)
if __name__=='__main__':main()
