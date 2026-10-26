<div align="center">

# Near-memory QUBO accelerator

**A NeuroSA annealer in the programmable logic of a Zynq-7020 FPGA.**

[Paper](https://ieeexplore.ieee.org/document/11044179/) · [Live demo](https://mlewandowski0.github.io/Fowler-Nordheim-Annealer-FPGA/demo/) · [Architecture walkthrough](https://mlewandowski0.github.io/Fowler-Nordheim-Annealer-FPGA/docs/assets/architecture.html) · [Reproduce](docs/reproduce.md)

*Maciej Lewandowski · Piotr Dudek · University of Manchester · IEEE ISCAS 2025*

</div>

![Best assignments read back from a Zynq-7020 during two board runs. Sudoku reaches a valid solution in 15.9 ms; G15 MAX-CUT climbs to its best-known cut, with the two sets drawn side by side and cut edges crossing between them.](docs/assets/fpga-search.gif)

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

[![Gap to the best-known cut on 37 Gset graphs: the FPGA's best of three seeds is within 0.5% on 36 graphs and exact on 8; published NeuroSA results shown for comparison. Bottom: FPGA compute time, 1–4.3 s per run.](docs/assets/gset.png)](docs/benchmarks.md)

On the 37 Gset graphs from the NeuroSA paper, the best of three FPGA runs is within **0.5%** of the
best-known cut on 36 and **exact on 8**, using one fixed configuration (10M accepted flips, 100 MHz).

## How it works

![Zynq-7020 system: PYNQ on the ARM cores configures the accelerator over AXI4-Lite; M units with local Q fragments, membranes and noise generators feed a spike selector and scheduler, which broadcasts each accepted flip back to every unit.](docs/assets/zynq-system.svg)

The graph is split across units that each keep their slice of the problem **next to the logic that uses it**.
Every cycle, all units propose a flip in parallel; one is accepted and broadcast, and every unit updates
its own local fields. The animation runs the paper's figure on a 12-variable simulation of the RTL:

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
