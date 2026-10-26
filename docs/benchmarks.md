# Gset evaluation and platform comparisons

The requested tables are **Tables S1/S2 on pages 11–12 of `results.pdf`**,
the supplement to [Chen et al., ON-OFF neuromorphic ISING machines using
Fowler-Nordheim annealers](https://www.nature.com/articles/s41467-025-58231-5).
`paper.pdf` is the separate five-page FPGA implementation paper. The inventory
preserves all 59 table entries, including the omission of G8/G9.

## What ran

**39 full graphs, 117 board runs, every assignment independently verified.**
That covers **37/59 original table entries**, plus G8 and G9 as extra cases.
Each graph uses predeclared seeds 1, 2, 3 and exactly **10 million accepted
flips**, at a configured 100 MHz, with cooling period 65,536. There is no
per-graph tuning. Graphs are neither cropped nor replaced by smaller samples.

| Build | Logical graphs | Physical mapping | Edge weights | Original-table cases |
| --- | --- | --- | --- | ---: |
| `gset` / `GST1` | G1–G21 | 25 × 32 = 800 | −1, 0, +1 | 19 |
| `gset1024` / `GST2` | G43–G47, G51–G54 | 32 × 32 = 1024 | 0, +1 | 9 |
| `gset2048` / `GST3` | G22–G26, G35–G38 | 32 × 64 = 2048 | 0, +1 | 9 |

Padded slots in the larger builds are clamped and cannot contribute accepted
flips. The local distributed graph ROM is replaced with banked, host-writable
block RAM. One graph can be replaced by another without rebuilding the
bitstream. Negative edges use a separate bank and reverse the field-update
sign. The 2000-vertex build uses all 140 block-RAM tiles and 45,222 LUTs;
its setup slack is +0.249 ns and hold slack +0.016 ns at 100 MHz. The 800-node
signed build uses 57.5 block-RAM tiles and 22,915 LUTs, with +0.294 ns setup
and +0.014 ns hold slack. These are separate builds from the sealed G15
142.857 MHz performance release and the Sudoku overlays.

The remaining **22 table entries** need size/weight combinations beyond
these evaluated memory mappings. Signed 2000-vertex graphs require twice
the graph storage; larger full dense graphs also exceed the evaluated local
memory capacity. They remain explicitly excluded in
[`inventory.json`](../results/gset/inventory.json). This is a limitation of
these implementations, not a claim that these problems cannot run on any FPGA
architecture. See [SuiteSparse's Gset inventory](https://sparse.tamu.edu/Gset)
for original sizes and graph types.

The best of three runs reaches at least **99% of the paper's reference score
on all 37 covered table entries**; the lowest such ratio is **99.294%**.
This is a best-of-three descriptive result, not a guaranteed approximation
ratio or a reproduction of the paper's worst-case population. Reference
scores are historical best-known values, not proofs of optimality. The full
three-seed ranges are shown, including runs below 99%.

![Verified Gset quality ranges and compute times](../results/gset/quality.png)

## Measurement and verification

The AXI extension adds a hardware accepted-flip limit: it stops exactly at
the requested count, drains the final update, and freezes the counters. There
is no polling-overshoot normalization. It also latches the first active cycle
at which the cut reaches three programmed targets: ceil(99% of the paper
reference), the paper's reported NeuroSA worst cut, and the paper reference.
No intermediate host pause is used during these runs.

`hardware_seconds = active_cycles / configured_clock_hz`. FPGA timestamps
come from hardware, rather than host polling. Graph upload, state loading,
bitstream loading and final verification are excluded from compute time;
separate host setup intervals are retained in each raw JSON. These timings
are not full application latency or measured energy consumption.

Before board execution, clocked RTL tests upload graphs through AXI, check
every accepted update against independently accumulated signed fields and
cuts, verify best assignments, the exact flip budget, and first-hit cycle
latches. The 1000/2000-node tests additionally reject padded-node flips and
exercise the expanded readback mappings. On the host, every board assignment
is rescored both against the parsed symmetric matrix and directly against the
original sparse text edge list. Plans, all attempts, graph hashes, artifact
hashes, tool reports and driver versions are retained under `results/gset/`.

## CPU: two concrete comparisons

The CPU baseline uses Zihao Chen's **unmodified public NumPy NeuroSA update
method**, pinned to commit `989b9697b3fb64142eaf859bc6c443e75d328302` of
[aimlab-wustl/neuroSA](https://github.com/aimlab-wustl/neuroSA).
Its license and attribution accompany the source in
`third_party/neurosa_reference/`. The wrapper controls stopping, records
best assignments and first-hit times, and omits console output during compute.

The measured CPU here is **Intel Core Ultra 9 275HX**, pinned to one logical
CPU with numerical-library thread counts set to one, using Python 3.14 and
NumPy 2.4.5. Exact versions and affinity are recorded per run. It is not the
paper's Core Ultra 9 185H. CPU compute timing includes RNG, selection, updates,
loop and monitoring, and best-state copies. Initialization and file I/O are
excluded. CPU and FPGA both start with all spins +1.

### Fixed accepted-flip budget

Three seeds on G4, G11 and G15 stop at exactly **1 million accepted flips**
on both platforms. An extra 9 board runs provide this separate common budget.
The table reports median compute time and the entire returned quality range:

| Graph | FPGA seconds | NumPy seconds | FPGA cuts | NumPy cuts |
| --- | ---: | ---: | --- | --- |
| G4 | 0.166257 | 7.583477 | 11622–11641 | 11453–11483 |
| G11 | 0.092947 | 5.464182 | 562 | 234–240 |
| G15 | 0.094912 | 5.588619 | 3047–3050 | 2712–2728 |

This is a comparison of **named implementations**, not a controlled isolation
of the FPGA versus CPU hardware. The baseline proposes one uniform candidate
per iteration using floating-point thresholds; the FPGA evaluates 25
candidates with fixed-priority arbitration, fixed-point/LFSR noise and a
different cooling schedule. Equal accepted counts do not imply equal random
work, equal iteration counts or equal solution quality. These differences
are part of the result and must accompany any derived ratio. This is not a
comparison against the fastest CPU MAX-CUT solver.

### First time to the same target cut

For a solver comparison we also predeclare a target of ceil(99% of the same
historical reference), seeds 1–3, and a **30-second CPU compute timeout**.
The CPU loop stops immediately on hitting that target, or at timeout. FPGA
first-hit times are read from RTL latches during the common 1M-flip runs;
all three FPGA seeds hit all three targets before their run ends.

| Graph | Target cut | FPGA median first hit | NumPy median first hit | Successes FPGA / NumPy |
| --- | ---: | ---: | ---: | --- |
| G4 | 11530 | 8.428 ms | 8.542 s | 3/3 · 3/3 |
| G11 | 559 | 64.308 ms | No hit within 30 s | 3/3 · 0/3 |
| G15 | 3020 | 32.211 ms | No hit within 30 s | 3/3 · 0/3 |

The FPGA measurements are successful first-hit observations within its finite
flip budget, not 30-second FPGA timeout experiments. CPU failures are
censored; 30 seconds is not a successful solution time and is not substituted
into a finite speedup ratio. Three seeds are insufficient for a robust
success-probability estimate or a confidence-qualified TTS99 claim. Successful
G4 measurements allow a descriptive compute-time ratio for these named
implementations, but do not establish a general CPU hardware speedup.

## SpiNNaker2: what the published timings establish

**Update:** the [source-audited SpiNNaker2 comparison](spinnaker_comparison.md)
locates the runtime bars in arXiv v2, Figure S3a (PDF page 38), reports
approximate values, checks GitHub history, and adds 90 FPGA trials at stricter
reference-score targets. Runtime bars exist; a matched speedup is not established.

The supplied supplement, Section S5.2 and Figure S3 (pages 6–7), describes
fixed execution iterations across CPU/SpiNNaker runs while calling the result
“time-to-solution.” It does not identify a shared target cut and first-hitting
time distribution for those bars. The public source's iteration counter
advances even when no spin changes. Thus a published iteration is not
necessarily one accepted flip, and the old 504/2460-second constants cannot
be divided by the new accepted-flip times as a controlled speedup.

The public repository at the pinned commit contains solver code and Gset
arrays, without the raw paired timing/first-hit traces needed for this match.
The article states that the SpiNNaker implementation is available on request.
This work has not rerun SpiNNaker2 and makes no validated ratio against it.
Published values can be shown in a separately labeled historical-runtime
table; their missing event/quality match must remain explicit.

A valid fixed-work comparison needs the graph identity, exact event definition
(candidate attempts, candidates tested or accepted flips), budget, achieved
scores, seeds and compute-time boundary. A valid target-score comparison needs
the graph, target, per-run time of first reaching it, timeout, failures, and
setup inclusion. Either raw published measurements satisfying those fields or
a new run can supply this evidence. No equal-clock CPU extrapolation is used:
wall-clock performance is compared at each platform's actual operating point.

## Fixed native-iteration timing

In addition to fixed accepted-flip budgets, the [ITR1 build](iterations.md)
measures exactly 100 million native arbitration decisions, including no-flip
decisions. Three-seed medians on G4/G11/G15 are 1.289/2.597/2.284 seconds of
active compute. Its iteration counter and accepted-flip counter are separate.

## Reproduce

```bash
python3 scripts/audit_gset_inputs.py
make gset-test
# Each creates a separate source- and artifact-hashed build:
python3 scripts/build_gset.py
python3 scripts/build_gset1024.py
python3 scripts/build_gset2048.py
```

Copy each bit/HWH/manifest trio, `run_gset_board.py`, `gset_model.py` and
`python_code/problems/` to the board. In the PYNQ environment with FPGA access:

```bash
python run_gset_board.py --bitfile gset/qubo.bit --manifest gset/manifest.json \
  --graphs problems --names G1 G2 G3 G4 G5 G6 G7 G8 G9 G10 G11 G12 G13 G14 G15 G16 G17 G18 G19 G20 G21 \
  --out results800
python run_gset_board.py --bitfile gset1024/qubo.bit --manifest gset1024/manifest.json \
  --graphs problems --names G43 G44 G45 G46 G47 G51 G52 G53 G54 --out results1000
python run_gset_board.py --bitfile gset2048/qubo.bit --manifest gset2048/manifest.json \
  --graphs problems --names G22 G23 G24 G25 G26 G35 G36 G37 G38 --out results2000
python run_gset_board.py --bitfile gset/qubo.bit --manifest gset/manifest.json \
  --graphs problems --names G4 G11 G15 --flips 1000000 --out comparison800
```

Each batch refuses to overwrite an existing output directory. Transfer all
four directories under `results/gset/board/`. Original board-driver versions
are retained under `results/gset/provenance/`; the maintained driver supports
all mappings and includes its own source hashes in new records.

On an otherwise idle CPU, to create fresh reference runs use new directories:

```bash
python3 scripts/run_cpu_reference.py --out build/cpu_fixed
python3 scripts/run_cpu_reference.py --flips 100000000 --seconds 30 \
  --stop-at-99-percent --out build/cpu_tts30
```

The saved CPU runs are under `results/comparison_cpu/` and
`results/comparison_cpu_tts30/`; their original wrappers are identified by
hash. Then validate and regenerate the website:

```bash
python3 scripts/summarize_gset.py
python3 scripts/plot_gset.py
python3 scripts/export_demo_recordings.py
```
