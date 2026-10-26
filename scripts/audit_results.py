#!/usr/bin/env python3
"""Summarize all archived runs without selecting runs by solution quality."""
import argparse
import csv
import hashlib
import json
from pathlib import Path
import statistics

ROOT=Path(__file__).resolve().parents[1]


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--out',type=Path,default=ROOT/'build/audit')
    a=p.parse_args(); a.out.mkdir(parents=True,exist_ok=True)
    groups=[]; runs=[]
    for parent in ['paper_writing/simulation_results','python_code/runs/iter=1e8_PC']:
        for folder in sorted((ROOT/parent).iterdir()):
            if not folder.is_dir(): continue
            files=sorted(folder.glob('logs/*.txt'))
            values=[]; last_iters=[]
            for f in files:
                with f.open() as src:
                    reader=csv.DictReader(src)
                    if not reader.fieldnames or 'best_maxcuts' not in reader.fieldnames: continue
                    rows=list(reader)
                if not rows: continue
                best=max(float(r['best_maxcuts']) for r in rows)
                last_iter=max(int(float(r['iter'])) for r in rows)
                values.append(best);last_iters.append(last_iter)
                runs.append({'file':str(f.relative_to(ROOT)),'best_cut':best,'last_logged_iteration':last_iter,
                             'sha256':hashlib.sha256(f.read_bytes()).hexdigest()})
            if values:
                groups.append({'folder':str(folder.relative_to(ROOT)), 'runs':len(values),
                               'mean_gap_to_paper_reference_3050':statistics.mean(3050-v for v in values),
                               'best_cut':max(values),'runs_at_best':sum(v==max(values) for v in values),
                               'min_last_logged_iteration':min(last_iters),'max_last_logged_iteration':max(last_iters)})
    curve=ROOT/'paper_writing/current_best.txt'
    points=[tuple(map(int,l.split(','))) for l in curve.read_text().splitlines() if l.strip()]
    assert all(b[0]>a[0] and b[1]>a[1] for a,b in zip(points,points[1:]))
    result={'reference_cut_from_paper':3050,'groups':groups,'runs':runs,
            'historical_curve':{'file':str(curve.relative_to(ROOT)),'sha256':hashlib.sha256(curve.read_bytes()).hexdigest(),
                'points':len(points),'best_cut':max(v for _,v in points),
                'first_cycle_at_3049':next(c for c,v in points if v==3049)},
            'limitations':['Logs do not contain completion markers or saved assignments.',
                'The exact 20-run population for Table I is not identified; all available logs are included.',
                'A last logged iteration is not proof of successful run completion.']}
    (a.out/'archive_audit.json').write_text(json.dumps(result,indent=2)+'\n')
    with (a.out/'archive_groups.csv').open('w') as f:
        writer=csv.DictWriter(f,fieldnames=list(groups[0]));writer.writeheader();writer.writerows(groups)
    print(json.dumps({'groups':groups,'historical_curve':result['historical_curve'],'limitations':result['limitations']},indent=2))


if __name__=='__main__': main()
