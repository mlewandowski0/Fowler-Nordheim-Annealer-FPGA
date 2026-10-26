#!/usr/bin/env python3
"""Create a small source release without Vivado caches or generated executables."""
from pathlib import Path
import hashlib
import json
import tarfile
from prepare_inputs import ROOT, MIFS

out=ROOT/'build/near-memory-qubo-source.tar.gz'
files=set()
for folder in ['rtl','sim','scripts','docs','results','demo','third_party','.github','diagrams']:
    files.update(p for p in (ROOT/folder).rglob('*') if p.is_file() and '__pycache__' not in p.parts)
files.update(p for p in (ROOT/'ISCAS2025-FPGA-QUBO').rglob('*') if p.is_file() and '.git' not in p.relative_to(ROOT).parts)
files.update(ROOT/n for n in ['README.md','LICENSE','Makefile','requirements.txt','requirements-analysis.txt','requirements-visuals.txt','.gitignore','python_code/G15.npy','paper_writing/current_best.txt'])
files.update(ROOT/n for n in ['paper_writing/comparison.ipynb','paper_writing/s.ipynb','python_code/NeuroSA_runner.py','zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/new/scheduler_2.v','vitis_software/fw_ann_Neq800_flips_and_uart_app/src/main.c'])
files.update((ROOT/'python_code/problems').glob('G*'))
files.update(MIFS.glob('adj_matrix_N800_A25_distributed*.mif'))
files.update(MIFS/n for n in ['log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif','temperature_LUT_fixed_N9.mif'])
for folder in ['paper_writing/simulation_results','python_code/runs/iter=1e8_PC']:
    files.update((ROOT/folder).glob('*/logs/*.txt'))
out.parent.mkdir(parents=True,exist_ok=True)
with tarfile.open(out,'w:gz') as archive:
    for p in sorted(files): archive.add(p,arcname=str(Path('near-memory-qubo')/p.relative_to(ROOT)))
print(f'{out}: {len(files)} files, {out.stat().st_size/1024/1024:.2f} MiB')
overlay=ROOT/'build/overlay'
if (overlay/'manifest.json').is_file():
    manifest=json.loads((overlay/'manifest.json').read_text())
    assert all(hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==digest
               for name,digest in manifest['sources'].items()),'Overlay sources changed; rebuild before packaging'
    assert all(hashlib.sha256((overlay/name).read_bytes()).hexdigest()==digest
               for name,digest in manifest['artifacts'].items()),'Overlay artifact hash mismatch'
    bundle=ROOT/'build/near-memory-qubo-overlay.tar.gz'
    with tarfile.open(bundle,'w:gz') as archive:
        for name in ['qubo.bit','qubo.hwh','manifest.json','timing.rpt','utilization.rpt','power.rpt','critical_paths.rpt','fanout.rpt']:
            archive.add(overlay/name,arcname=name)
        archive.add(ROOT/'scripts/run_board.py',arcname='run_board.py')
        archive.add(ROOT/'python_code/G15.npy',arcname='G15.npy')
    print(f'{bundle}: {bundle.stat().st_size/1024/1024:.2f} MiB')

for preset,dirname in [('classic','sudoku'),('paper','sudoku_paper')]:
    folder=ROOT/'build'/dirname
    if not (folder/'manifest.json').exists():continue
    m=json.loads((folder/'manifest.json').read_text())
    assert all(hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==h for n,h in m['sources'].items())
    assert all(hashlib.sha256((folder/n).read_bytes()).hexdigest()==h for n,h in m['artifacts'].items())
    bundle=ROOT/f'build/sudoku-{preset}-overlay.tar.gz'
    with tarfile.open(bundle,'w:gz') as archive:
        for name in ['qubo.bit','qubo.hwh','manifest.json','timing.rpt','utilization.rpt','power.rpt']:
            archive.add(folder/name,arcname=name)
        for name in ['record_demo_board.py','sudoku_model.py']:
            archive.add(ROOT/'scripts'/name,arcname=name)
    print(f'{bundle}: {bundle.stat().st_size/1024/1024:.2f} MiB')

for variant in ['gset','gset1024','gset2048','iterations']:
    folder=ROOT/'build'/variant
    if not (folder/'manifest.json').exists():continue
    m=json.loads((folder/'manifest.json').read_text())
    assert all(hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==h for n,h in m['sources'].items())
    assert all(hashlib.sha256((folder/n).read_bytes()).hexdigest()==h for n,h in m['artifacts'].items())
    bundle=ROOT/f'build/{variant}-overlay.tar.gz'
    with tarfile.open(bundle,'w:gz')as archive:
        for n in ['qubo.bit','qubo.hwh','manifest.json','timing.rpt','utilization.rpt','power.rpt']:archive.add(folder/n,arcname=n)
        for n in [('run_iterations_board.py' if variant=='iterations' else 'run_gset_board.py'),'gset_model.py']:archive.add(ROOT/'scripts'/n,arcname=n)
        for p in (ROOT/'python_code/problems').glob('G*'):archive.add(p,arcname='problems/'+p.name)
    print(f'{bundle}: {bundle.stat().st_size/1024/1024:.2f} MiB')
