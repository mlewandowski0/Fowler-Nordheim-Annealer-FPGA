# Recorded evidence

These are measured runs, simulation checks, implementation reports, and audit
outputs. Claims can be checked against their inputs, assignments, seeds, and
timing boundaries.

| Directory | Evidence |
| --- | --- |
| `implementation/` | Static G15 routed timing, utilization, estimated power, and source/artifact hashes. |
| `performance/` | Same-bitstream 50 MHz versus 142.857 MHz board measurements; 100M accepted-flip normalization. |
| `rtl/`, `axi/`, `selector/` | Maintained RTL simulation and interface checks. |
| `gset/` | 39 graphs, 117 principal board runs, plans, verified assignments, summaries, and overlay reports. |
| `comparison_cpu/`, `comparison_cpu_tts30/` | Named upstream NumPy implementation: accepted-flip and shared-target measurements. |
| `spinnaker_comparison/` | Published-source registry and 90 FPGA target trials; no matched SpiNNaker2 speedup. |
| `iterations/` | Nine runs at exactly 100M native arbitration iterations, counter tests, and timing reports. |
| `demo/` | Actual Sudoku and MAX-CUT trajectories used by the viewer, including unsuccessful attempts. |
| `readme/` | Checked 12-variable RTL trace and input/output hashes for README visualizations. |
| `archive/`, `comparison_audit/` | Historical-log summaries and counter/claim audits. |
| `baseline_50mhz/` | Earlier validation snapshot, separate from optimized results. |

Run `make audit` to check saved measurements and regenerate supported summaries.
See [validation](../docs/validation.md), [benchmarks](../docs/benchmarks.md), and
[iteration timing](../docs/iterations.md) for protocols and limitations.

Hardware compute times exclude deployment and initialization unless explicitly
stated. Demo capture pauses the core for coherent readout and is not a throughput
benchmark. Vivado power reports are estimates, not board power measurements.
Raw provenance files retain their original contents and paths.
