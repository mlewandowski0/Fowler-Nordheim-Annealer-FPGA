# Sudoku on the near-memory QUBO accelerator

This demonstration adapts the conflict-graph formulation in Sascha Mücke,
[A Simple QUBO Formulation of Sudoku](https://arxiv.org/abs/2403.04816) (2024).
It is a separate specialization of the maintained accelerator. G15 benchmark
results do not measure Sudoku throughput or Sudoku time to solution.

## Model and physical mapping

A binary variable `x[r,c,d]` selects digit `d` for cell `(r,c)`: 9×9×9 = 729
variables. Conflicts connect different digits in one cell, or the same digit
in cells sharing a row, column or box. Overlapping rules create a single edge.
The full conflict graph has 10,206 undirected edges and degree 28.

Using the upper-triangular convention, the minimized objective is:

```text
E(x) = -sum(x) + 3 * sum_{i<j, conflicting} x[i]*x[j].
```

Every cell contributes at least −1 when its within-cell penalty is included;
all between-cell penalties are nonnegative. Therefore `E >= -81`. Equality
requires exactly one digit per cell and zero conflicts, so it is a complete
Sudoku. The implementation also independently checks every row, column, box
and given before labeling a result solved.

Clues fix their selected bits to one. Their conflicting candidates are fixed
to zero. No solved grid or exact-solver output initializes the annealer. Free
bits start at zero. Clamping reduces the 30-clue classic preset to 153 free
bits, and the paper's 24-clue example to 211. All 729 logical indices retain
their position in 800 physical slots (25 units × 32); the final 71 slots are
disabled. The graph is compiled into distributed ROM, so changing a puzzle
requires a new overlay. Editing the public demo instead runs browser software.

## RTL specialization

`scripts/prepare_sudoku_rtl.py` generates a separate source tree from `rtl/`.
It fails if an expected source anchor changes. Canonical G15 RTL is untouched.
The specialization adds immutable clamp bits, host initialization of the
assignment tracker, ±6 field updates, and an 18-bit best-gain tracker. Its
AXI identifier is `SUD1` (`0x53554431`), distinct from G15's `QUB1`.

For free bits with active-neighbor count `n`, the stored field is `h=-2+6n`.
An accepted flip changes the maximized score by `(2x-1)*h`. The tracked gain
is `-2*(E + clue_count)`, relative to the clue-only initialization. Thus the
classic goal is 102, and the paper-preset goal is 114. Fields fit in signed
10 bits: their maximum is 166 for the full degree-28 graph.

This supports this biased, constant-penalty Sudoku QUBO. It is not a general
arbitrary-weight QUBO loader. The paper's D-Wave experiments are not reproduced
by this FPGA demo.

## Reproduce

From the repository root, with Python/NumPy and Verilator installed:

```bash
python3 scripts/test_sudoku_model.py
python3 scripts/run_sudoku_sim.py --cycles 2000000 --require-solved
python3 scripts/run_sudoku_sim.py --preset paper --cycles 10000000 --out build/sudoku_paper_sim
```

The classic seed-1 RTL run reaches a valid grid at 1,547,537 cycles. The paper
seed-1 10M-cycle simulation reaches energy −79 and is retained as an unsolved
attempt. The scoreboard independently checks fields, accepted flips, current
objective, clamp flags and best assignments. See the [model audit](sudoku_model_audit.md).

With Vivado 2025.2 available:

```bash
python3 scripts/build_sudoku.py --preset classic --clock-mhz 100 --out build/sudoku
# Or --preset paper --out build/sudoku_paper
```

Copy `qubo.bit`, `qubo.hwh`, and `manifest.json` together to a PYNQ board,
along with `scripts/record_demo_board.py` and `scripts/sudoku_model.py`.
Run in the board's PYNQ Python environment with root FPGA access:

```bash
python record_demo_board.py --bitfile qubo.bit --manifest manifest.json \
  --clock-mhz 100 --cycles 10000000 --chunk 10000 --seed 1 --out recording.json
```

The recorder verifies artifact hashes and ABI, loads all 800 states and fields,
pauses for coherent best-assignment readout and checks every captured grid.
It records the actual configured clock, seed, cooling and source identities.
The paper board preset used the same 100 MHz build in two retained attempts:
seed 1 at cooling period 65,536 stopped after 100,004,478 active cycles at
energy −79; seed 2 at cooling period 262,144 reached energy −81 at 8,569,998
active cycles. The latter is a changed cooling schedule, not a matched-seed
performance comparison. The viewer lets readers switch between these attempts.

This is demonstration capture, with host pauses and skipped intermediate
states; it is not a latency or throughput benchmark. The observed classic
board solution at 1,591,779 active cycles is a single attempt, not a measured
success distribution. Best-state playback omits deteriorations and plateaus.
