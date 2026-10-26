#!/usr/bin/env python3
"""Independently score a saved board JSON or simulation assignment."""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('result',type=Path)
a=p.parse_args()
result=json.loads(a.result.read_text())
graph=ROOT/'python_code/G15.npy'
expected_hash=result.get('graph_sha256',result.get('inputs',{}).get('graph_sha256'))
assert expected_hash==hashlib.sha256(graph.read_bytes()).hexdigest()
assignment=result.get('assignment')
if assignment is None:
    assignment=list(map(int,(a.result.parent/'best_assignment.txt').read_text().strip()))
x=np.asarray(assignment,dtype=np.int32)
assert x.shape==(800,) and set(np.unique(x)).issubset({0,1})
q=np.load(graph,allow_pickle=False)
cut=int(np.sum(np.triu(q,1)*(x[:,None]!=x[None,:])))
reported=result.get('final_score',result.get('best_cut'))
assert cut==reported,(cut,reported)
print(f'PASS saved assignment: {cut} cut edges, 800 vertices')
