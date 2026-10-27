#!/usr/bin/env python3
"""Audit the 100M-accepted-flip Gset batch and write results/gset100m/summary.json.

Every assignment is rescored from the sparse Gset edge list; budgets, artifacts,
driver/model hashes and first-hit latches are checked against the saved protocol.
"""
import collections, hashlib, json, statistics
from gset_model import ROOT, load, cut

OUT = ROOT/'results/gset100m'


def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


def main():
    protocol = json.loads((OUT/'protocol.json').read_text())
    drivers = {sha(ROOT/'scripts/run_gset_board.py')}
    runs = []
    for folder in sorted((OUT/'board').iterdir()):
        plan = json.loads((folder/'plan.json').read_text())
        assert plan['accepted_flip_budget'] == protocol['accepted_flips'] and plan['cooling_period'] == protocol['cooling_period']
        assert plan['seeds'] == protocol['seeds'] and plan['runner_sha256'] in drivers
        expected = {f'{n}_seed{s}.json' for n in plan['names'] for s in plan['seeds']}
        assert {p.name for p in folder.glob('G*_seed*.json')} == expected, folder
        for p in sorted(folder.glob('G*_seed*.json')):
            d = json.loads(p.read_text())
            q, meta = load(ROOT/'python_code/problems'/d['graph']['name']); assert meta == d['graph']
            rows = (ROOT/'python_code/problems'/meta['name']).read_text().splitlines()[1:]
            sparse = sum(int(w) for line in rows if line.strip() for a, b, w in [line.split()]
                         if d['assignment'][int(a)-1] != d['assignment'][int(b)-1])
            assert d['assignment_verified'] and cut(q, d['assignment']) == sparse == d['best_cut']
            assert d['accepted_flips'] == d['requested_flips'] == protocol['accepted_flips'] and d['budget_reached']
            assert d['artifacts'] == plan['build']['artifacts'] and d['runner_sha256'] == plan['runner_sha256']
            assert abs(d['hardware_seconds'] - d['cycles']/(d['clock_mhz']*1e6)) < 1e-9
            assert abs(d['hardware_seconds'] - d['host_run_interval_seconds']) < 1
            for t in d['targets']:
                assert t['reached'] == (d['best_cut'] >= t['cut']) if t['cut'] > 0 else not t['reached']
                if t['reached']:
                    assert 0 < t['first_hit_cycle'] <= d['cycles']
            runs.append({'file': str(p.relative_to(ROOT)), 'file_sha256': sha(p), **{k: d[k] for k in
                         ['seed', 'best_cut', 'cycles', 'hardware_seconds', 'clock_mhz', 'cooling_period']},
                         'graph': meta['name'], 'vertices': meta['vertices'], 'reference': meta['paper_reference_cut'],
                         'neurosa_worst': meta['paper_neurosa_worst_cut'],
                         'first_hit_reference_seconds': d['targets'][2]['hardware_seconds']})
    by = collections.defaultdict(list)
    for r in runs:
        by[r['graph']].append(r)
    graphs = []
    for name, rs in sorted(by.items(), key=lambda x: int(x[0][1:])):
        cuts = [r['best_cut'] for r in rs]
        graphs.append({'name': name, 'vertices': rs[0]['vertices'], 'reference': rs[0]['reference'],
                       'neurosa_worst': rs[0]['neurosa_worst'], 'cuts': cuts, 'best_cut': max(cuts), 'worst_cut': min(cuts),
                       'median_seconds': statistics.median(r['hardware_seconds'] for r in rs),
                       'seeds_at_reference': sum(c >= (rs[0]['reference'] or 10**9) for c in cuts)})
    tab = [g for g in graphs if g['reference']]
    summary = {'protocol': protocol, 'runs': len(runs), 'graphs': graphs,
               'table_graphs': len(tab),
               'best_of_3_at_reference': sum(g['best_cut'] >= g['reference'] for g in tab),
               'worst_seed_at_or_above_neurosa_worst': sum(g['worst_cut'] >= g['neurosa_worst'] for g in tab),
               'run_files': runs}
    (OUT/'summary.json').write_text(json.dumps(summary, indent=2)+'\n')
    print(f"PASS gset100m: {len(runs)} runs; best-of-3 reaches best-known on {summary['best_of_3_at_reference']}/{len(tab)}; "
          f"worst seed >= NeuroSA worst case on {summary['worst_seed_at_or_above_neurosa_worst']}/{len(tab)}")


if __name__ == '__main__':
    main()
