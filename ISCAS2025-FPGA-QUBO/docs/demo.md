# Interactive demo

Serve the repository from its root, then visit the demo:

```bash
python3 -m http.server 8000
# http://localhost:8000/demo/
```

No JavaScript build system or board connection is required. The viewer is
also exported to `ISCAS2025-FPGA-QUBO/demo/` for the existing project website.
It loads local assets only, without remote scripts, analytics, or puzzle APIs.
Use HTTP: browser workers may be blocked when opening `index.html` as a file.

## What to try

- Play, pause, restart or scrub the sequence of best assignments. Replay is
  deliberately slowed; actual active-cycle/time labels remain visible.
- Select a cell to inspect candidates allowed by the clues. Given digits are
  shaded, newly changed cells are highlighted, and conflicts appear in amber.
- Inspect energy, filled cells, conflicting pairs and the 25-unit mapping.
  Unit highlights mean state changes between captured best assignments, not
  measured utilization or a waveform of all internal activity.
- Switch to MAX-CUT to see the G15 partition evolve. Colors are the two sets;
  node positions are illustrative, and cut values are independently rescored.
- Run the browser QUBO solver or edit the clues. This uses a real Metropolis
  search in a worker, initialized only from clues. It has a finite budget and
  may fail to find a valid grid. It is explicitly labeled software, and does
  not claim the same schedule or performance as the FPGA.
- Import a recording from `scripts/record_demo_board.py` or
  `scripts/run_sudoku_sim.py`. Sudoku objectives, givens, clamps and monotonic
  best energies are rechecked in JavaScript; MAX-CUT assignments are rescored
  against the imported edge list. Hardware provenance in an imported file is
  supplied by that file, not cryptographically authenticated.

The badge distinguishes recorded FPGA, recorded RTL simulation and browser
software. Best-state recordings omit accepted moves that do not improve the
best objective. The plotted lines connect discrete samples; they are not a
record of every clock or every accepted change.

## Evidence and exporting

Raw results live under `results/demo/`; matching manifests and timing reports
identify the Sudoku builds. The classic FPGA recording contains a verified
solution. The paper preset includes a solved seed-2 board replay and an unsolved seed-1
board attempt, switchable in Run details. The seed-2 cooling period is four
times longer. The unsolved RTL attempt is retained too. All captured attempts should be retained, rather
than deleting unsuccessful runs to imply a success rate.

```bash
python3 scripts/export_demo_recordings.py
```

This independently validates the raw assignments again, writes
`demo/recordings.js` with file hashes, and copies assets to the existing
website. Edit source assets in `demo/`, then re-export.

Read [Sudoku implementation and reproduction](sudoku.md) and
[the comparison audit](comparison_audit.md) before interpreting timings.
The restored G15 clock-scaling result does not transfer to Sudoku, and the
demo is not evidence of a CPU or SpiNNaker2 speedup.

The G15 replay is seed 10 of a ten-seed paused capture sweep and reaches the
best-known cut 3050 at active cycle 7,796,923 (54.6 ms); all ten attempts are in
`results/demo/g15/sweep/`. The older 10M-cycle capture (`g15/fpga_seed1.json`,
cut 3045) is retained. Neither is the continuous 100M-accepted-flip
performance measurement. Pausing drains and refills the
selection pipeline and can change the subsequent trajectory.

For browser regression checks, install optional Playwright and NumPy, install
Chromium (`python -m playwright install chromium`), then with the server running:

```bash
python scripts/test_demo.py --url http://127.0.0.1:8000/demo/
```

This tests JavaScript objectives against independent Python fixtures, replay
controls, imports, MAX-CUT, the software worker, and phone/tablet layouts.

## Multi-problem results

The viewer now includes the verified Gset benchmark gallery: 39 graphs, 117
board runs, size filters, full cut ranges, and named CPU comparisons. See
[the benchmark protocol](benchmarks.md). These are final-assignment batch
results; the G15 animation remains a separately captured trajectory.
