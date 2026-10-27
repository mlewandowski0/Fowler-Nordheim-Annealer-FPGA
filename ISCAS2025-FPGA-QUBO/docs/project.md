<div align="center">

# Near-memory QUBO accelerator

**A NeuroSA annealer in the programmable logic of a Zynq-7020 FPGA.**

[Paper](https://ieeexplore.ieee.org/document/11044179/) · [Live demo](https://mlewandowski0.github.io/Fowler-Nordheim-Annealer-FPGA/demo/) · [Architecture walkthrough](https://mlewandowski0.github.io/Fowler-Nordheim-Annealer-FPGA/docs/assets/architecture.html) · [Reproduce](docs/reproduce.md)

*Maciej Lewandowski · Piotr Dudek · University of Manchester · IEEE ISCAS 2025*

</div>

## Why combinatorial optimization

Many hard problems in computer science come down to picking the best of an astronomically large set of
discrete choices: placing and routing a chip, scheduling jobs or flights, allocating registers in a
compiler, partitioning a network, assembling DNA fragments, selecting a portfolio. Most are NP-hard, so
in practice they are solved with heuristics such as simulated annealing that need many millions of small
steps. A large family of them can be written in one common form, **QUBO** (quadratic unconstrained binary
optimization) or its equivalent, the Ising model, so a fast QUBO solver speeds up all of them at once.
Here it solves **MAX-CUT** benchmark graphs and **Sudoku**.

## Why near-memory

Each annealing step does almost no arithmetic (an addition and a comparison) but touches memory: flipping
one variable changes the local field of every neighbour. On a CPU or GPU the search is therefore limited by
moving data rather than by computing. This accelerator splits the problem across many small units, each
keeping its slice of the QUBO matrix, its variables and their local fields **in on-chip memory next to
the logic that updates them**. All units propose flips in the same clock cycle, and an accepted flip is a
single broadcast that every unit applies to its own memory in parallel, with no off-chip traffic during
the search.

## Results on the FPGA

![Best assignments read back from a Zynq-7020 during two board runs. Sudoku reaches a valid solution in 15.9 ms; G15 MAX-CUT climbs to its best-known cut of 3,050, shown on a zoomed window of 28 vertices coloured by group.](docs/assets/fpga-search.gif)

Solutions read back from the FPGA during two board runs, on one device-time axis.
Sudoku is solved in **15.9 ms**; the 800-vertex G15 MAX-CUT reaches its best-known
cut of **3,050**. [How the replay was made](docs/visuals.md)

## Fast

![FPGA vs CPU and SpiNNaker2 on G4, G11 and G15: 46–59× faster than a NumPy NeuroSA reference at the same work, about 1,000× faster to 99% of the best-known cut, and 1–3 s full runs against published SpiNNaker2 runtimes of 2,400–2,600 s.](docs/assets/speed.png)

- **46–59× faster** than the NumPy NeuroSA reference on a CPU core, for the same 1M accepted flips, with better cuts.
- **≈1,000× faster** to 99% of the best-known cut on G4; on G11 and G15 the CPU does not get there within 30 s.
- A complete FPGA run takes **1–3 s**; published SpiNNaker2 runs of NeuroSA on the same graphs take **≈2,400–2,600 s**.

The CPU reference is the authors' NumPy code, not the fastest possible CPU solver; SpiNNaker2 timings are read
from a published figure whose iteration count is not reported. [Details](docs/benchmarks.md)

## Accurate

[![Gap to the best-known cut on 37 Gset graphs with 100M accepted flips per run: the FPGA's worst of three seeds, the range over seeds, and NeuroSA's worst published run. Bottom: FPGA time per run, 9–28 s.](docs/assets/gset.png)](docs/benchmarks.md#100m-accepted-flips)

On the 37 Gset graphs from the NeuroSA paper, with 100M accepted flips per run (9–28 s on the FPGA) and one
cooling schedule for all graphs, the best of three seeds reaches the **best-known cut on 25** and is within
**0.12%** on every graph. Even the worst seed matches or beats NeuroSA's worst published run on 20.

## How it works

![Zynq-7020 system: PYNQ on the ARM cores configures the accelerator over AXI4-Lite; M units with local Q fragments, membranes and noise generators feed a spike selector and scheduler, which broadcasts each accepted flip back to every unit.](docs/assets/zynq-system.svg)

A PYNQ host on the Zynq's ARM cores loads the problem and reads back results; the search itself runs
entirely in programmable logic. The animation steps through one accepted flip on the paper's architecture
figure, driven by a 12-variable simulation of the RTL:

[![The paper's architecture figure with the active blocks highlighted step by step, above a register view of a 12-variable RTL simulation with cycles and time.](docs/assets/architecture.gif)](https://mlewandowski0.github.io/Fowler-Nordheim-Annealer-FPGA/docs/assets/architecture.html)

## Reproduce

```bash
python3 -m pip install -r requirements.txt     # plus Verilator, make, a C++ compiler
make test audit sudoku-test gset-test iteration-test
```

This reruns the RTL simulations and re-checks every saved board result; no FPGA needed.
Building the bitstream needs Vivado; [board instructions](docs/reproduce.md).
The search rule is [NeuroSA](https://www.nature.com/articles/s41467-025-58231-5) by Chen et al.;
Sudoku follows [Mücke's formulation](https://arxiv.org/abs/2403.04816). Supported by UKRI grant EP/Y023048/1.

```bibtex
@inproceedings{lewandowski2025qubo,
  author    = {Maciej Lewandowski and Piotr Dudek},
  title     = {Design and FPGA Realization of QUBO Hardware Accelerator for MAX-CUT Problem},
  booktitle = {2025 IEEE International Symposium on Circuits and Systems (ISCAS)},
  year      = {2025},
  url       = {https://ieeexplore.ieee.org/document/11044179/}
}
```

[MIT License](LICENSE). `third_party/neurosa_reference/` (CC BY-NC 4.0) and the website template in
`ISCAS2025-FPGA-QUBO/` keep their own licenses.
