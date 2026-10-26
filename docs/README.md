# Start here

The top-level [README](../README.md) explains the architecture, contribution,
measured results, and attribution. These guides provide the next level of detail:

| Goal | Guide |
| --- | --- |
| Run the RTL, build an overlay, or deploy to PYNQ | [Reproduction](reproduce.md) |
| Understand what has actually been verified | [Validation and limitations](validation.md) |
| Explore the Sudoku and MAX-CUT viewer | [Demo](demo.md) |
| Understand the 729-variable Sudoku formulation | [Sudoku](sudoku.md) |
| Inspect the 39-graph evaluation and named CPU baseline | [Benchmarks](benchmarks.md) |
| Interpret the published SpiNNaker2 runtimes fairly | [SpiNNaker2 comparison](spinnaker_comparison.md) |
| Reproduce the fixed 100M native-iteration measurements | [Iteration timing](iterations.md) |
| Understand the original comparison's counter mismatch | [Comparison audit](comparison_audit.md) |
| Inspect the static G15 host interface | [Register map](registers.md) |
| Prepare a future public release | [Repository and release notes](publication.md) |

Use `make test audit sudoku-test gset-test iteration-test` for simulation and
saved-result checks. These do not require an FPGA or Vivado. Building an overlay
requires Vivado; running hardware requires a compatible Zynq-7020/PYNQ board.
Browser QA has separate Playwright dependencies.

`paper.pdf` is the five-page FPGA paper. `results.pdf` is the NeuroSA
supplementary material with the original evaluation tables on pages 11–12.
