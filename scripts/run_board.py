#!/usr/bin/env python3
"""Run G15 on a PYNQ overlay, save the assignment and independently score it."""
import argparse
import hashlib
import json
import platform
from pathlib import Path
import time

import numpy as np


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--bitfile", type=Path, required=True)
    p.add_argument("--graph", type=Path, required=True)
    p.add_argument("--seconds", type=float, default=5)
    p.add_argument("--out", type=Path, default=Path("board_result.json"))
    p.add_argument("--legacy",action="store_true",help="archived score-only overlay; cannot verify its assignment")
    p.add_argument("--seed",type=int,default=1)
    p.add_argument("--clock-mhz",type=float,default=50)
    p.add_argument("--cooling-period",type=int,default=65536)
    p.add_argument("--manifest",type=Path,help="timing-checked build manifest; required above 50 MHz")
    p.add_argument("--target-flips",type=int,help="stop after at least this many accepted flips, within --seconds timeout")
    a = p.parse_args()
    if not 0 < a.seconds < 60 or not 1 <= a.seed <= 1000 or not 0 < a.clock_mhz or not 1 <= a.cooling_period <= 2**32-1:
        p.error("use seconds in (0,60), seed in [1,1000], a positive clock, and a positive 32-bit cooling period")
    if a.target_flips is not None and (a.legacy or not 0<a.target_flips<2**32):
        p.error("target-flips requires the maintained overlay and a positive 32-bit count")
    ceiling=50.0
    build_manifest=None
    if a.manifest:
        build_manifest=json.loads(a.manifest.read_text())
        assert hashlib.sha256(a.bitfile.read_bytes()).hexdigest()==build_manifest['artifacts']['qubo.bit']
        assert hashlib.sha256(a.bitfile.with_suffix('.hwh').read_bytes()).hexdigest()==build_manifest['artifacts']['qubo.hwh']
        ceiling=float(build_manifest.get('requested_clock_mhz',50))
    if a.clock_mhz>ceiling:
        p.error(f"clock exceeds the verified build ceiling ({ceiling} MHz); supply its matching --manifest")
    if a.seconds*a.clock_mhz*1e6>=0.99*(2**32):
        p.error("run timeout can wrap the 32-bit hardware cycle counter; select a shorter --seconds interval")
    from pynq import Overlay, Clocks
    import pynq
    q = np.load(a.graph, allow_pickle=False)
    assert q.shape == (800,800) and np.array_equal(q,q.T)
    assert int(q.sum())==9322 and not np.diag(q).any()
    assert hashlib.sha256(a.graph.read_bytes()).hexdigest()=="dce8ea06fac816a4726ee70be45955cbcb22212673904affd86b850720c9c9e2"
    overlay = Overlay(str(a.bitfile.resolve()))
    ip = overlay.fowler_nordheim_anne_0 if a.legacy else overlay.qubo_accelerator
    if not a.legacy:
        assert ip.read(0x20)==0x51554231, "Unexpected overlay ABI"
        # PYNQ's inherited PLL divisors may differ from the build-time PS model.
        Clocks.fclk0_mhz=a.clock_mhz
        if Clocks.fclk0_mhz>ceiling+0.001:
            Clocks.fclk0_mhz=50
            raise RuntimeError("PYNQ rounded the clock above the build ceiling; select a lower requested clock")
    ip.write(0,0)  # active-low reset/run controls
    if not a.legacy:
        ip.write(0x30,a.cooling_period)
        assert ip.read(0x30)==a.cooling_period, "Cooling register readback failed"
    ip.write(4,0); ip.write(8,0)
    ip.write(0,1)  # release reset, request halt
    for u in range(25):
        ip.write(4,0)
        ip.write(12,(a.seed+u)%511); ip.write(16,a.seed+u)
        ip.write(4,1<<u)
    ip.write(4,0)
    degree = q.sum(axis=1)
    for u in range(25):
        for i in range(32):
            ip.write(8,0)
            ip.write(24,i)
            ip.write(20,(2<<10)|int(degree[u*32+i]))
            ip.write(8,1<<u)
    ip.write(8,0)
    before = int(ip.read(28))
    if not a.legacy:
        assert before==0 and ip.read(0x2c)==1, "Initialization must remain halted"
    start = time.monotonic()
    ip.write(0,3)
    samples=[]
    progress=[]
    try:
        while time.monotonic()-start < a.seconds:
            samples.append([round(time.monotonic()-start,6),int(ip.read(28))])
            if a.target_flips is not None:
                count=int(ip.read(0x28))
                progress.append([round(time.monotonic()-start,6),count])
                if count>=a.target_flips: break
            time.sleep(0.01)
    finally:
        ip.write(0,1)
    host_run_interval=time.monotonic()-start
    result={"kind":"legacy_overlay_score_only" if a.legacy else "verified_assignment", "bitfile_sha256":hashlib.sha256(a.bitfile.read_bytes()).hexdigest(),
            "pynq_version":pynq.__version__,"machine":platform.machine(),"kernel":platform.release(),
            "hwh_sha256":hashlib.sha256(a.bitfile.with_suffix('.hwh').read_bytes()).hexdigest(),
            "graph_sha256":hashlib.sha256(a.graph.read_bytes()).hexdigest(),
            "fclk0_mhz":Clocks.fclk0_mhz, "host_run_interval_seconds":host_run_interval,"host_interval_definition":"enable request through pause request; excludes initialization and post-run hashing/readout","seed":a.seed,
            "cooling_period":None if a.legacy else a.cooling_period,
            "target_flips":a.target_flips,"flip_progress":progress,
            "score_before_run":before,"final_score":int(ip.read(28)),"samples":samples,
            "assignment_verified":False,
            "limitation":"Legacy ABI exposes only a scalar score; no assignment or cycle counter is readable." if a.legacy else None}
    if not a.legacy:
        deadline=time.monotonic()+1
        while ip.read(0x2c)!=1:
            if time.monotonic()>deadline: raise RuntimeError("Accelerator did not halt")
        count=int(ip.read(0x24)); flips=int(ip.read(0x28)); score=int(ip.read(28))
        words=[int(ip.read(0x40+4*w)) for w in range(25)]
        assignment=np.array([(words[i//32]>>(i%32))&1 for i in range(800)],dtype=np.int32)
        cut=int(np.sum(np.triu(q,1)*(assignment[:,None]!=assignment[None,:])))
        assert int(ip.read(0x24))==count, "Counter moved during paused readout"
        assert cut==score, f"Reported score {score} does not match assignment cut {cut}"
        result.update({"final_score":score,"assignment_verified":True,"independent_cut":cut,
                       "cycles":count,"accepted_flips":flips,"assignment":assignment.tolist()})
        result['hardware_seconds']=count/(float(Clocks.fclk0_mhz)*1e6)
        result['accepted_flips_per_second']=flips/result['hardware_seconds']
        result['normalized_seconds_per_100m_flips']=1e8/result['accepted_flips_per_second']
        if a.target_flips is not None:
            assert flips>=a.target_flips,"Target not reached before the host timeout"
            result['flip_overshoot']=flips-a.target_flips
        if build_manifest is not None:
            result['build_requested_clock_mhz']=ceiling
    a.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ('samples','assignment','flip_progress')},indent=2))


if __name__ == '__main__':
    main()
