"""Sudoku conflict QUBO, following Muecke (2024), arXiv:2403.04816.

Upper-triangular convention: E(x)=-sum(x)+3*sum_conflicting_pairs(x_i*x_j).
One bit per (row,column,digit); overlapping conflict rules count once.
Clues and candidates incompatible with clues are clamped, not guessed.
"""
from pathlib import Path
import json
import hashlib
import shutil
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
PRESETS={
    'classic':{'name':'The classic grid','puzzle':'530070000600195000098000060800060003400803001700020006060000280000419005000080079',
        'source':'Classic illustrative Sudoku; solution is independently checked.'},
    'paper':{'name':'The paper challenge','puzzle':'000000020000090040000302007605100008000705100030200005090070003080000090004006500',
        'source':'Muecke (2024), Section 3 / Fig. 1: NYT hard puzzle, 8 January 2024.',
        'url':'https://arxiv.org/abs/2403.04816'}
}


def parse_puzzle(text):
    text=''.join(c for c in text if c not in ' \n\t\r|')
    if len(text)!=81 or any(c not in '0123456789.' for c in text):
        raise ValueError('Enter exactly 81 digits; use 0 or . for an empty cell.')
    grid=np.array([0 if c=='.' else int(c) for c in text],dtype=np.int32).reshape(9,9)
    groups=[grid[i,:] for i in range(9)]+[grid[:,i] for i in range(9)]+[grid[r:r+3,c:c+3].ravel() for r in (0,3,6) for c in (0,3,6)]
    if any(len(g[g>0])!=len(set(g[g>0])) for g in groups):
        raise ValueError('The given clues conflict in a row, column, or box.')
    return grid


def conflicts():
    v=np.arange(729)
    r=v//81;c=(v//9)%9;d=v%9
    same_cell=(r[:,None]==r)&(c[:,None]==c)
    peer=(r[:,None]==r)|(c[:,None]==c)|((r[:,None]//3==r//3)&(c[:,None]//3==c//3))
    matrix=same_cell|((d[:,None]==d)&peer)
    np.fill_diagonal(matrix,False)
    return matrix


CONFLICT=conflicts()


def model(puzzle):
    grid=parse_puzzle(puzzle)
    fixed=np.zeros(800,dtype=bool);fixed[729:]=True
    initial=np.zeros(800,dtype=np.int32)
    for r,c in zip(*np.nonzero(grid)):
        k=r*81+c*9+int(grid[r,c])-1
        initial[k]=1;fixed[k]=True;fixed[:729]|=CONFLICT[k]
    free=np.flatnonzero(~fixed)
    if any(not np.any(~fixed[i*9:i*9+9]) and grid.ravel()[i]==0 for i in range(81)):
        raise ValueError('A cell has no remaining candidate after applying the clues.')
    graph=np.zeros((800,800),dtype=np.int32)
    graph[np.ix_(free,free)]=CONFLICT[np.ix_(free,free)]
    fields=np.zeros(800,dtype=np.int32);fields[free]=-2
    states=(np.where(initial,2,1)|(fixed.astype(np.int32)<<3))
    return {'grid':grid,'fixed':fixed,'initial':initial,'free':free,'graph':graph,'fields':fields,'states':states,
        'clues':int(np.count_nonzero(grid)),'goal_gain':2*(81-int(np.count_nonzero(grid)))}


def energy(bits):
    x=np.asarray(bits,dtype=np.int32)[:729]
    return int(-x.sum()+3*np.sum(np.triu(CONFLICT,1)*(x[:,None]*x[None,:])))


def inspect(bits,puzzle):
    x=np.asarray(bits,dtype=np.int32)[:729].reshape(81,9)
    givens=parse_puzzle(puzzle).ravel()
    counts=x.sum(axis=1);grid=np.where(counts==1,np.argmax(x,axis=1)+1,0).reshape(9,9)
    clue_ok=all(x[i,d-1]==1 and counts[i]==1 for i,d in enumerate(givens) if d)
    groups=[grid[i,:] for i in range(9)]+[grid[:,i] for i in range(9)]+[grid[r:r+3,c:c+3].ravel() for r in (0,3,6) for c in (0,3,6)]
    solved=bool(clue_ok and np.all(counts==1) and all(set(g)==set(range(1,10)) for g in groups))
    return {'energy':energy(x.ravel()),'selected':int(x.sum()),'filled_cells':int(np.count_nonzero(counts==1)),
        'conflict_pairs':int(np.sum(np.triu(CONFLICT,1)*(x.ravel()[:,None]*x.ravel()[None,:]))),
        'clues_preserved':bool(clue_ok),'solved':solved,'grid':grid.tolist()}


def prepare(out,preset='classic'):
    out=Path(out);out.mkdir(parents=True,exist_ok=True)
    data=model(PRESETS[preset]['puzzle'])
    q=data['graph']
    for u in range(25):
        (out/f'adj_matrix_N800_A25_distributed{u}.mif').write_text('\n'.join(''.join(map(str,row[::-1])) for row in q[:,u*32:(u+1)*32])+'\n')
    (out/'graph_rows.mem').write_text('\n'.join(''.join(map(str,row[::-1])) for row in q)+'\n')
    for key,name in [('fields','fields.mem'),('states','states.mem')]:
        (out/name).write_text('\n'.join(f'{int(v)&1023:03x}' for v in data[key])+'\n')
    source=ROOT/'zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/imports/mif_files'
    for name in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif']:
        shutil.copyfile(source/name,out/name)
    manifest={'problem':'sudoku','preset':preset,**PRESETS[preset],'encoding_variables':729,'physical_slots':800,
        'active_variables':len(data['free']),'clues':data['clues'],'goal_gain':data['goal_gain'],
        'energy_formula':'-sum(x) + 3*sum_{i<j,conflict} x_i*x_j','score_formula':'gain = -2*(energy + clue_count)',
        'initial_fields':data['fields'].tolist(),'initial_states':data['states'].tolist(),
        'graph_sha256':hashlib.sha256(q.tobytes()).hexdigest(),
        'initial_bits':data['initial'].tolist(),'clamped':data['fixed'].astype(int).tolist(),
        'source_paper':'https://arxiv.org/abs/2403.04816'}
    (out/'sudoku_problem.json').write_text(json.dumps(manifest,indent=2)+'\n')
    return manifest
