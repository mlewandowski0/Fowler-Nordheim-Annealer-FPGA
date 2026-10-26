#!/usr/bin/env python3
"""Render the README figures from checked FPGA recordings and the tiny RTL trace.

The architecture walkthrough draws on top of the unmodified paper figure
diagrams/final_diagram_simplified.svg. Pages in scripts/visuals/ are filled with
checked data, opened in headless Chromium (Playwright), and captured frame by
frame; Pillow assembles the GIFs. No board or network access is needed.
"""
from pathlib import Path
import argparse
import hashlib
import itertools
import json
import math

from PIL import Image
import numpy as np
from prepare_inputs import ROOT
from sudoku_model import inspect

ASSETS = ROOT/'docs/assets'
TEMPLATES = ROOT/'scripts/visuals'
BUILD = ROOT/'build/visuals'
TINY_CLOCK_MHZ = 100.0     # clock of the loadable overlays built from the same core
G15_BEST_KNOWN = 3050      # best-known G15 cut (paper Table I; independently reached on the board)
ARCH_STEP_MS, ARCH_FAST_MS, ARCH_END_MS = 2300, 150, 4500
SEARCH_FRAMES, SEARCH_FRAME_MS, SEARCH_END_MS = 72, 90, 4500


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def read_recordings():
    paths = {'sudoku': ROOT/'results/demo/classic/fpga_seed1.json', 'maxcut': ROOT/'results/demo/g15/fpga_seed1.json',
             'architecture': ROOT/'results/readme/tiny12/recording.json'}
    data = {k: json.loads(p.read_text()) for k, p in paths.items()}
    d = data['sudoku']; assert d['mode'] == 'fpga'
    for f in d['frames']:
        check = inspect(np.array(list(f['bits']), dtype=int), d['problem']['puzzle'])
        assert all(check[k] == f[k] for k in check)
    d = data['maxcut']; assert d['mode'] == 'fpga'
    for f in d['frames']:
        assert sum(f['bits'][a] != f['bits'][b] for a, b in d['edges']) == f['cut']
    d = data['architecture']
    assert all(sha(ROOT/n) == h for n, h in d['sources'].items())
    assert sha(paths['architecture'].parent/'trace.csv') == d['trace_sha256']
    edges, A = d['edges'], d['variables_per_unit']
    def cut(bits): return sum(bits[a] != bits[b] for a, b in edges)
    assert max(cut(bits) for bits in itertools.product((0, 1), repeat=12)) == d['optimum']
    for i, f in enumerate(d['frames']):
        assert cut(f['bits']) == f['cut'] and f['best'] == max(x['cut'] for x in d['frames'][:i+1])
        expected = [sum((1 if f['bits'][b] else -1) if a == j else (1 if f['bits'][a] else -1) if b == j else 0 for a, b in edges) for j in range(12)]
        assert f['fields'] == expected
        if i:
            prev = d['frames'][i-1]
            assert [j for j in range(12) if prev['bits'][j] != f['bits'][j]] == [f['index']]
            assert f['cycle'] > prev['cycle']
            # Fixed-priority arbitration: the lowest firing unit's proposal is accepted.
            fired = [u for u in range(d['units']) if f['candidate_mask'] >> u & 1]
            assert all(f['proposals'][u]//A == u for u in range(d['units']))
            assert f['candidates'] == [f['proposals'][u] for u in fired] and f['index'] == f['candidates'][0]
    assert d['frames'][-1]['best'] == d['optimum']
    return paths, data


def conflicts(grid):
    """Mark cells whose digit repeats in a row, column or box."""
    bad = [0]*81
    groups = [[(r, c) for c in range(9)] for r in range(9)] + [[(r, c) for r in range(9)] for c in range(9)]
    groups += [[(r, c) for r in range(br, br+3) for c in range(bc, bc+3)] for br in (0, 3, 6) for bc in (0, 3, 6)]
    for g in groups:
        for r, c in g:
            if grid[r][c] and sum(grid[rr][cc] == grid[r][c] for rr, cc in g) > 1:
                bad[r*9+c] = 1
    return bad


def architecture_data(d):
    neighbors = [sorted(b if a == j else a for a, b in d['edges'] if j in (a, b)) for j in range(d['variables'])]
    out = {k: d[k] for k in ['variables', 'units', 'variables_per_unit', 'edges', 'optimum', 'seed']}
    out.update(clock_mhz=TINY_CLOCK_MHZ, neighbors=neighbors,
               frames=[{k: v for k, v in f.items() if k != 'candidates'} for f in d['frames']])
    return out


def search_data(s, g):
    sudoku = {'clock_mhz': s['clock_mhz'], 'puzzle': s['problem']['puzzle'], 'target': -81,
              'end_ms': s['final_cycle']/(s['clock_mhz']*1e3),
              'frames': [{k: f[k] for k in ['cycle', 'grid', 'energy', 'filled_cells', 'conflict_pairs', 'solved']} | {'bad': conflicts(f['grid'])}
                         for f in s['frames']]}
    maxcut = {'clock_mhz': g['clock_mhz'], 'best_known': G15_BEST_KNOWN, 'end_ms': g['final_cycle']/(g['clock_mhz']*1e3),
              'frames': [{k: f[k] for k in ['cycle', 'bits', 'cut']} for f in g['frames']]}
    assert s['frames'][-1]['solved'] and s['frames'][-1]['energy'] == -81
    # Log-spaced device times from 50 µs to just past the last G15 improvement, starting at t = 0.
    last = max(f['cycle']/(g['clock_mhz']*1e3) for f in g['frames'])
    times = [0.0] + [0.05*math.exp(math.log(last*1.08/0.05)*i/(SEARCH_FRAMES-1)) for i in range(SEARCH_FRAMES)]
    return {'sudoku': sudoku, 'maxcut': maxcut, 'times': times}


def fill(template, data):
    return (TEMPLATES/template).read_text().replace('__DATA__', json.dumps(data, separators=(',', ':')))


def capture(page_path, count, call, size, element='#frame'):
    """Open a page in headless Chromium and screenshot `element` after each `call(i)`."""
    from playwright.sync_api import sync_playwright
    shots = []
    with sync_playwright() as p:
        browser = p.chromium.launch(args=['--disable-gpu', '--font-render-hinting=none'])
        page = browser.new_page(viewport={'width': size[0], 'height': size[1]}, device_scale_factor=1)
        page.goto(page_path.as_uri() + '?capture')
        page.wait_for_load_state('networkidle')
        page.evaluate('document.fonts.ready')
        for i in range(count):
            page.evaluate(call % i)
            png = BUILD/f'{page_path.stem}-{i:03d}.png'
            page.locator(element).screenshot(path=png, timeout=120000)
            shots.append(png)
        browser.close()
    return [Image.open(s).convert('RGB') for s in shots]


def save_gif(path, frames, durations):
    """One shared palette (libimagequant when available) keeps text and diagram colours stable."""
    sample = Image.new('RGB', (frames[0].width, frames[0].height*min(len(frames), 6)))
    for j, f in enumerate(frames[::max(1, len(frames)//6)][:6]):
        sample.paste(f, (0, j*frames[0].height))
    try:
        palette = sample.quantize(256, method=Image.Quantize.LIBIMAGEQUANT)
    except (ValueError, OSError):
        palette = sample.quantize(256, method=Image.Quantize.MEDIANCUT)
    quantized = [f.quantize(palette=palette, dither=Image.Dither.NONE) for f in frames]
    quantized[0].save(path, save_all=True, append_images=quantized[1:], duration=durations, loop=0, optimize=True, disposal=1)


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--html-only', action='store_true', help='write the HTML pages without capturing images')
    a = ap.parse_args()
    paths, data = read_recordings()
    ASSETS.mkdir(parents=True, exist_ok=True); BUILD.mkdir(parents=True, exist_ok=True)

    arch = ASSETS/'architecture.html'
    arch.write_text(fill('architecture.html', architecture_data(data['architecture'])))
    search = BUILD/'fpga-search.html'
    sdata = search_data(data['sudoku'], data['maxcut'])
    search.write_text(fill('fpga-search.html', sdata))
    zynq = ASSETS/'zynq-system.svg'
    outputs = ['architecture.html', 'zynq-system.svg']
    if not a.html_only:
        # The tour length is defined once, in the page script.
        from playwright.sync_api import sync_playwright
        with sync_playwright() as p:
            b = p.chromium.launch(args=['--disable-gpu']); pg = b.new_page()
            pg.goto(arch.as_uri() + '?capture'); tour = pg.evaluate('TOUR'); b.close()
        frames = capture(arch, len(tour), 'renderView(%d)', (1262, 1100))
        durations = [ARCH_STEP_MS if step else ARCH_FAST_MS for _, step in tour]
        durations[-1] = ARCH_END_MS
        save_gif(ASSETS/'architecture.gif', frames, durations)
        frames[-1].save(ASSETS/'architecture-still.png', optimize=True)

        frames = capture(search, len(sdata['times']), 'render(TIMES[%d])', (1000, 600))
        durations = [1200] + [SEARCH_FRAME_MS]*(len(frames)-2) + [SEARCH_END_MS]
        save_gif(ASSETS/'fpga-search.gif', frames, durations)
        frames[-1].save(ASSETS/'fpga-search-still.png', optimize=True)

        [img] = capture(zynq, 1, 'void %d', (1200, 700), element='svg')
        img.save(ASSETS/'zynq-system.png', optimize=True)
        outputs += ['architecture.gif', 'architecture-still.png', 'fpga-search.gif', 'fpga-search-still.png', 'zynq-system.png']

    record = {
        'generator': 'scripts/render_readme_visuals.py',
        'templates': {str(p.relative_to(ROOT)): sha(p) for p in sorted(TEMPLATES.glob('*.html'))},
        'generator_sha256': sha(__file__),
        'base_figure': {'diagrams/final_diagram_simplified.svg': sha(ROOT/'diagrams/final_diagram_simplified.svg')},
        'inputs': {str(p.relative_to(ROOT)): sha(p) for p in paths.values()},
        'architecture': 'Accepted flips 1-2 and 900 in five explanatory steps each; flips 3-899 fast-forwarded. '
                        f'Times assume {TINY_CLOCK_MHZ:g} MHz.',
        'fpga_replay': 'Recorded best states on one device-time axis (active cycles / clock); log-scaled replay.',
        'outputs': {n: sha(ASSETS/n) for n in sorted(outputs)},
    }
    (ROOT/'results/readme/visuals.json').write_text(json.dumps(record, indent=2)+'\n')
    print('PASS visuals: ' + ', '.join(sorted(outputs)))


if __name__ == '__main__':
    main()
