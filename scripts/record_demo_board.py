#!/usr/bin/env python3
"""Capture independently checked best assignments. Paused readout is not a benchmark."""
import argparse, hashlib, json, time
from pathlib import Path
import numpy as np
from sudoku_model import inspect

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--bitfile',type=Path,required=True)
    p.add_argument('--manifest',type=Path,required=True)
    p.add_argument('--graph',type=Path)
    p.add_argument('--clock-mhz',type=float,default=100)
    p.add_argument('--seed',type=int,default=1)
    p.add_argument('--cycles',type=int,default=10000000)
    p.add_argument('--chunk',type=int,default=10000)
    p.add_argument('--cooling-period',type=int,default=65536)
    p.add_argument('--out',type=Path,required=True)
    a=p.parse_args();m=json.loads(a.manifest.read_text());sudoku=m.get('variant')=='sudoku'
    assert 0<a.clock_mhz<=m['requested_clock_mhz'] and 0<a.cycles<2**31 and a.chunk>0
    assert 1<=a.seed<=1000 and 1<=a.cooling_period<2**32
    for name in ('qubo.bit','qubo.hwh'):
        assert hashlib.sha256(a.bitfile.with_name(name).read_bytes()).hexdigest()==m['artifacts'][name]
    if sudoku:problem=m['problem'];states=problem['initial_states'];fields=problem['initial_fields']
    else:
        q=np.load(a.graph,allow_pickle=False);assert q.shape==(800,800) and np.array_equal(q,q.T)
        assert hashlib.sha256(a.graph.read_bytes()).hexdigest()=='dce8ea06fac816a4726ee70be45955cbcb22212673904affd86b850720c9c9e2'
        problem={'problem':'maxcut','name':'G15 · 800 vertices','encoding_variables':800,'physical_slots':800,'active_variables':800,'edges':4661,'graph_sha256':hashlib.sha256(a.graph.read_bytes()).hexdigest()}
        states=[2]*800;fields=q.sum(axis=1).astype(int).tolist()
    from pynq import Overlay,Clocks
    ov=Overlay(str(a.bitfile.resolve()));ip=ov.qubo_accelerator
    assert ip.read(0x20)==(0x53554431 if sudoku else 0x51554231)
    Clocks.fclk0_mhz=a.clock_mhz;clock=float(Clocks.fclk0_mhz)
    assert clock<=m['requested_clock_mhz']+.001
    ip.write(0,0);ip.write(4,0);ip.write(8,0);ip.write(0x30,a.cooling_period);ip.write(0,1)
    for u in range(25):
        ip.write(4,0);ip.write(12,(a.seed+u)%511);ip.write(16,a.seed+u);ip.write(4,1<<u)
    ip.write(4,0)
    for u in range(25):
        for i in range(32):
            k=u*32+i
            ip.write(8,0);ip.write(24,i);ip.write(20,(states[k]<<10)|(fields[k]&1023));ip.write(8,1<<u)
    ip.write(8,0)
    frames=[]
    def snapshot():
        assert ip.read(0x2c)==1
        cycles=int(ip.read(0x24));score=int(ip.read(28))
        words=[int(ip.read(0x40+4*w)) for w in range(25)]
        bits=[(words[k//32]>>(k%32))&1 for k in range(800)]
        f={'cycle':cycles,'bits':''.join(map(str,bits[:729 if sudoku else 800])),'score':score}
        if sudoku:
            check=inspect(bits,problem['puzzle'])
            assert score%2==0 and check['energy']==-problem['clues']-score//2
            assert check['clues_preserved'] and all(bits[k]==problem['initial_bits'][k] for k in range(800) if problem['clamped'][k])
            f.update(check)
        else:
            x=np.array(bits);cut=int(np.sum(np.triu(q,1)*(x[:,None]!=x[None,:])))
            assert cut==score;f['cut']=cut
        assert ip.read(0x24)==cycles
        if not frames or score>frames[-1]['score']:frames.append(f)
        return cycles,bool(f.get('solved'))
    count,solved=snapshot()
    try:
        while count<a.cycles and not solved:
            target=min(a.cycles,count+a.chunk);ip.write(0,3)
            while int(ip.read(0x24))<target:pass
            ip.write(0,1);deadline=time.monotonic()+1
            while ip.read(0x2c)!=1:
                if time.monotonic()>deadline:raise RuntimeError('Pause timeout')
            count,solved=snapshot()
    finally:ip.write(0,1)
    result={'mode':'fpga','problem':problem,'clock_mhz':clock,'seed':a.seed,'cooling_period':a.cooling_period,
        'capture':'Pause between chunks for coherent best-assignment readout; not a throughput benchmark.',
        'requested_cycle_budget':a.cycles,'final_cycle':count,'accepted_flips':int(ip.read(0x28)),
        'artifacts':m['artifacts'],'sources':m['sources'],'frames':frames,'solved':solved}
    if not sudoku:result['edges']=np.argwhere(np.triu(q,1)).tolist()
    a.out.write_text(json.dumps(result,separators=(',',':'))+'\n')
    print(json.dumps({'frames':len(frames),'cycles':count,'solved':solved,'final':{k:v for k,v in frames[-1].items() if k not in ('bits','grid')}}))
if __name__=='__main__':main()
