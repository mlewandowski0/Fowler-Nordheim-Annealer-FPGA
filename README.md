<div align="center">

# Near-memory QUBO accelerator

**Combinatorial optimization in the programmable logic of a Zynq-7020.**

Local graph memories. Parallel candidate evaluation. One shared solution.

[Paper](https://ieeexplore.ieee.org/document/11044179/) · [Interactive demo](demo/index.html) · [Architecture walkthrough](docs/assets/architecture.html) · [Reproduce it](docs/reproduce.md)

*Maciej Lewandowski · Piotr Dudek · University of Manchester · IEEE ISCAS 2025*

</div>

![Best assignments read back from a Zynq-7020 during two board runs, on a shared device-time axis. Sudoku (100 MHz build) reaches a valid solution after 1,591,779 cycles, 15.9 ms. G15 MAX-CUT (142.857 MHz) reaches cut 3,045, 99.8% of the best-known 3,050, after 8,158,857 cycles, 57.1 ms.](docs/assets/fpga-search.gif)

*Best assignments read back from the FPGA during two separate board runs, placed
on one device-time axis (active cycles ÷ clock).* The Sudoku build (100 MHz)
reaches a valid solution in **15.9 ms**. G15 (142.857 MHz) reaches cut 3,045 in
**57.1 ms**; this short demo run was paused for readout, and the unpaused
performance runs reach 3,050. Every state is independently rescored.
[Still image](docs/assets/fpga-search-still.png) · [Recording provenance](docs/visuals.md).

| Restored G15 clock | Largest demonstrated graph | Gset evaluation | Sudoku encoding |
| :---: | :---: | :---: | :---: |
| **142.857 MHz** | **2,000 variables** | **39 graphs · 117 runs** | **729 candidate bits** |
| Measured board clock | Separate 100 MHz overlay | Every returned cut rescored | Clues clamp some variables |

This repository accompanies **[Design and FPGA Realization of QUBO Hardware
Accelerator for MAX-CUT Problem](https://ieeexplore.ieee.org/document/11044179/)**, presented at IEEE ISCAS 2025.
It contains the maintained RTL, reproducible build scripts, verified hardware
results, and visual demos. The broader Gset evaluation and Sudoku demo extend
the original paper's G15 implementation.

## Why near-memory?

A QUBO encodes choices as binary variables and assigns a cost to their
interactions. MAX-CUT rewards putting connected graph vertices into opposite
sets. Sudoku rewards choosing digits while penalizing conflicting choices.
Both become searches over bit assignments.

The accelerator partitions the interaction graph across local compute units.
Each unit keeps its **graph fragment, state, and local fields beside its update
logic**. Units evaluate candidates concurrently. An arbiter accepts one flip;
the scheduler broadcasts its index and direction, and all units update their
own fields in parallel. The host initializes and controls the run through
AXI4-Lite; the iterative search executes in programmable logic.

![System diagram: a host PC reaches the Zynq-7020 processing system over Ethernet. PYNQ configures the accelerator in programmable logic over AXI4-Lite. M units hold Q fragments, membranes and spins, and noise generators; a spike selector and scheduler broadcast each accepted flip back to every unit.](docs/assets/zynq-system.svg)

The search rule comes from **NeuroSA**. My contribution is its digital FPGA
architecture and implementation, emphasizing data locality, parallel updates,
and a verifiable hardware/software interface. This is near-memory computation
using FPGA logic and local storage; it does not require an analog memory device.

## Follow one flip through the architecture

The animation below runs on the paper's architecture figure
([original](diagrams/final_diagram_simplified.svg)). Highlights and the register
view underneath come from a Verilator simulation of the maintained RTL, reduced
to **12 variables in three units of four**, on a graph whose optimum (cut 18) is
checked by enumerating all 4,096 assignments. The numbered steps follow the
flowchart on the right of the figure:

[![The paper's architecture figure with the active blocks highlighted step by step, above a register view of a 12-variable RTL simulation: membranes, spins, proposals, the selected flip, and the cut against cycles and time.](docs/assets/architecture.gif)](docs/assets/architecture.html)

1. **Propose.** Each unit picks a random local variable *k* and reads its
   membrane V<sub>mem</sub>[k] and spin s[k] from its own memory.
2. **Compare.** It fires if the Fowler–Nordheim noise sample satisfies
   int(R<sub>FW</sub>) < s[k]·V<sub>mem</sub>[k]; all units test in the same cycle.
3. **Select.** The spike selector forwards one firing unit (fixed priority).
4. **Commit.** The scheduler flips s[k\*], updates the cut and counters, and
   keeps the best assignment.
5. **Update.** k\* and its old spin are broadcast; every unit fetches row k\* of
   its Q fragment and updates its membranes in parallel.

Flips 1, 2 and 900 are shown step by step, flips 3–899 fast-forwarded. The run
reaches the optimum after 900 accepted flips, at cycle 8,531 (85.3 µs at the
100 MHz overlay clock). The steps are stretched for explanation; the hardware
overlaps them within a few cycles. This is RTL simulation, not a board recording.
[Step through any of the 900 flips](docs/assets/architecture.html) ·
[Final frame](docs/assets/architecture-still.png) ·
[Checked trace](results/readme/tiny12/recording.json).

<details>
<summary><strong>The update rule</strong></summary>

For unit-weight MAX-CUT, maximize the weight of edges crossing the partition:

```text
C(x) = Σ edges (i,j) W[i,j] · (x[i] + x[j] − 2·x[i]·x[j])
```

With spins `s[i] ∈ {−1,+1}` and local fields `h[i] = Σj W[i,j]·s[j]`, flipping
spin `k` changes the cut by `s[k]·h[k]`. Neighbor fields update as
`h[j] ← h[j] − 2·s[k]·W[k,j]`, using the old spin. For ±1 edges this uses
conditional addition/subtraction. Separate variants support signed edges and
Sudoku biases/clamps; arbitrary weighted QUBOs are not supported.

The original G15 core has 25 units × 32 variables, fixed-point arithmetic,
LFSR noise, LUT thresholds, and programmable cooling. Graph/LUT ROMs are
compiled into that bitstream. Other maintained overlays add runtime graph
loading or Sudoku constraints. [RTL guide](rtl/README.md).

</details>

## Explore the FPGA solutions

Serve the repository locally, then open **[localhost:8000/demo/](http://localhost:8000/demo/)**:

```bash
python3 -m http.server 8000
```

- **Sudoku:** inspect the 729 candidate bits, scrub through recorded best
  assignments, and watch conflicts disappear. Both the classic and 24-clue
  paper puzzle solve on the board; an unsuccessful attempt remains available.
- **MAX-CUT:** watch an actual 800-variable partition evolve, then explore all
  39 tested graphs and their independently verified cuts.
- **Inside the architecture:** open
  **[localhost:8000/docs/assets/architecture.html](http://localhost:8000/docs/assets/architecture.html)**
  for play/pause, individual phases, and scrubbing through the 12-variable RTL example.

The demo also offers a **separately labeled browser software solver**. Recorded
FPGA playback does not need a connected board. Capture pauses and slowed replay
are explicit; use the benchmark measurements below for performance.
[Demo guide](docs/demo.md) · [Sudoku encoding](docs/sudoku.md).

## What the hardware measurements establish

| Experiment | Result | Evidence |
| --- | --- | --- |
| Restored static G15 design | **142.857 MHz** on the board; verified cut **3050**. Routed timing closes at 145.455 MHz. | [Implementation and validation](docs/validation.md) |
| Matched G15 clock scaling | **2.857×** throughput gain from 50 to 142.857 MHz; **13.165M accepted flips/s** median at the restored clock. | [Measurements](docs/performance.md) |
| Full Gset graphs | **39 graphs, 117 runs**, signed 800-node and unsigned 1000/2000-node variants at 100 MHz. | [Protocol and results](docs/benchmarks.md) |
| Fixed native iteration budget | Exactly **100M arbitration decisions**; G4/G11/G15 median active compute **1.289 / 2.597 / 2.284 s**, at 100 MHz. | [Counter definitions and raw runs](docs/iterations.md) |
| Same work as the CPU reference | 1M accepted flips on G4/G11/G15: **0.09–0.17 s** on the FPGA (100 MHz) vs **5.5–7.6 s** for the upstream NumPy NeuroSA on one Core Ultra 9 275HX core, **46–59× faster**, with higher cuts. Medians of three seeds. | [CPU comparison](docs/benchmarks.md#cpu-two-concrete-comparisons) |
| Time to 99% of the reference cut | G4: **8.4 ms** vs 8.5 s on the CPU (**≈1,000×**). G11 / G15: **64 / 32 ms** on the FPGA; the CPU reference missed the target within 30 s on all three seeds. | [CPU comparison](docs/benchmarks.md#first-time-to-the-same-target-cut) |

The Gset evaluation covers **37 of 59** instances in the original NeuroSA
supplementary tables, plus G8/G9. Three seeds and a fixed 10M accepted-flip
budget give best-of-three quality of at least 99% of the historical reference
on every covered table entry. Individual seed ranges and exclusions remain
visible; historical references are not optimality certificates.

[![Verified Gset quality over the tested original-table instances, including three-seed ranges and median active FPGA runtime.](results/gset/quality.png)](docs/benchmarks.md)

The CPU ratios compare two named implementations, not the hardware in
isolation: the FPGA tests 25 candidates per step in fixed point, the reference
one candidate in floating point, and their cooling differs. The reference is
not the fastest CPU MAX-CUT solver, and three seeds do not support a TTS99
claim. Published SpiNNaker2 runtimes are retained as approximate graph readings,
but their iteration budget and event mapping remain unconfirmed, so **no matched
FPGA/SpiNNaker2 speedup is claimed**. [Comparison protocol](docs/benchmarks.md) ·
[SpiNNaker2 source audit](docs/spinnaker_comparison.md).

<details>
<summary><strong>Historical results, timing boundaries, and limits</strong></summary>

The original paper reports G15 cut 3049; the saved simulation trace first
reaches it at 75,516,185 cycles. Its roughly 144 MHz timing estimate is separate
from the new board measurements. The maintained implementation starts from the
later board RTL and is not a reconstruction of every original paper setting.

The static G15 throughput measurements normalize actual accepted-flip counts,
including recorded polling overshoot. New loadable overlays stop on exact
budgets. Active hardware times exclude deployment and initialization unless
stated otherwise. Arbitration iterations, accepted flips, candidate tests, and
clock cycles are different counters. Vivado power reports are estimates, not
measured board power.

The original 20-run populations cannot all be reconstructed unambiguously from
the saved logs. Old CPU/SpiNNaker2 speedup claims were withdrawn after auditing
incompatible counters. [Validation report](docs/validation.md) ·
[Historical comparison audit](docs/comparison_audit.md) ·
[All evidence](results/README.md).

</details>

## My contribution

I am **Maciej Lewandowski**, and I developed this FPGA implementation in the
research project with **Piotr Dudek** at the University of Manchester:

- **Architecture and RTL:** partitioned graph/state/field storage, parallel
  candidate evaluation and updates, arbitration, scheduling, and stochastic
  threshold generation.
- **Hardware-oriented arithmetic:** fixed-point and LFSR/LUT experiments,
  including resource and solution-quality trade-offs.
- **System integration:** AXI4-Lite control, Zynq/PYNQ initialization, counters,
  assignment readback, and FPGA evaluation.
- **Reproducibility and demonstration:** maintained tests/build tools,
  independent solution checks, expanded graph evaluation, and the visual demos.

The last item extends the original paper. NeuroSA's algorithm and original
Python foundation are credited to their authors below.

## Reproduce it

Install Python/NumPy, Verilator, Make, and a C++ compiler:

```bash
python3 -m pip install -r requirements.txt
make test audit sudoku-test gset-test iteration-test
```

This runs RTL scoreboards and interface tests and checks the saved measurements
without an FPGA. To check just the committed G15 assignment:

```bash
python3 scripts/verify_saved_result.py results/rtl/summary.json
```

With Vivado, `make overlay` builds the static G15 design. Hardware execution
requires a compatible Zynq-7020/PYNQ board and the matching overlay/driver.
[Build and board instructions](docs/reproduce.md) ·
[Register map](docs/registers.md) · [Regenerate these visuals](docs/visuals.md).

## Find your starting point

| Path | Purpose |
| --- | --- |
| [`rtl/`](rtl/) · [`sim/`](sim/) | Maintained hardware and independently checked simulations. |
| [`scripts/`](scripts/) | Generate inputs, build overlays, run the board, and audit results. |
| [`demo/`](demo/) · [`docs/assets/`](docs/assets/) | Interactive viewer, diagrams, and README animations. |
| [`docs/`](docs/README.md) · [`results/`](results/README.md) | Guides, measured assignments, manifests, reports, and limitations. |
| [IEEE Xplore](https://ieeexplore.ieee.org/document/11044179/) · [NeuroSA article](https://www.nature.com/articles/s41467-025-58231-5) | The FPGA paper, and the NeuroSA article whose Supplementary Information holds the reference Gset tables. |
| [`ISCAS2025-FPGA-QUBO/`](ISCAS2025-FPGA-QUBO/) | Export of the original project website and media. |

Selected historical inputs and evidence retain their original paths. Generated
research projects are kept out of the current tracked tree and remain in Git
history. [Repository notes](docs/publication.md).

## Attribution and citation

The search algorithm is based on
[NeuroSA: ON-OFF Neuromorphic ISING Machines using Fowler-Nordheim Annealers](https://arxiv.org/abs/2406.05224).
The paper credits the 2024 Telluride workshop and Johannes Leugering for the
presentation and Python foundation. Sudoku follows
[Mücke's 729-variable formulation](https://arxiv.org/abs/2403.04816).
The work acknowledges UKRI support under grant EP/Y023048/1.

```bibtex
@inproceedings{lewandowski2025qubo,
  author = {Maciej Lewandowski and Piotr Dudek},
  title = {Design and FPGA Realization of QUBO Hardware Accelerator for MAX-CUT Problem},
  booktitle = {2025 IEEE International Symposium on Circuits and Systems (ISCAS)},
  year = {2025},
  url = {https://ieeexplore.ieee.org/document/11044179/}
}
```

## License

The RTL, scripts, documentation and measured results are released under the
[MIT License](LICENSE). Two directories keep their own licenses: the vendored
NeuroSA CPU reference in [`third_party/neurosa_reference/`](third_party/neurosa_reference/)
(CC BY-NC 4.0) and the website template in
[`ISCAS2025-FPGA-QUBO/`](ISCAS2025-FPGA-QUBO/) (see its notice). Gset graphs are
public benchmark instances. The papers are linked, not redistributed.
