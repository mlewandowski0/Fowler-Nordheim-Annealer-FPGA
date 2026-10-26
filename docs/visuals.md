# README visuals and provenance

All README figures are drawn from checked recordings. Each is available as an
animation, a still image, and (for the architecture) an interactive page.

| Asset | Content | Source data |
| --- | --- | --- |
| `assets/fpga-search.gif`, `fpga-search-still.png` | Board replay: Sudoku and G15 best assignments | `results/demo/classic/fpga_seed1.json`, `results/demo/g15/fpga_seed1.json` |
| `assets/zynq-system.svg` (+ PNG) | Logical system block diagram | Hand-drawn; reflects the maintained RTL and drivers |
| `assets/architecture.gif`, `architecture-still.png`, `architecture.html` | The paper figure, animated with a 12-variable RTL trace | `diagrams/final_diagram_simplified.svg`, `results/readme/tiny12/` |

## Board replay

The replay shows only independently checked best assignments read back from a
Zynq-7020:

- **Sudoku** (`classic/fpga_seed1.json`): 729-bit encoding of the classic
  puzzle on the separate 100 MHz Sudoku build; 30 clues clamp all but 153 bits.
  17 saved best states; valid solution at active cycle 1,591,779 = **15.92 ms**.
- **G15** (`g15/fpga_seed1.json`): 800 variables on the static 142.857143 MHz
  build. 55 saved best states; final cut 3,045 at active cycle 8,158,857 =
  **57.11 ms** (99.8% of the best-known 3,050). This short demo run paused
  between chunks for readout; the unpaused performance runs reach 3,050.

Both runs are placed on one **device-time axis**: active cycles divided by the
build's clock. Readout pauses are not counted. The replay advances
logarithmically in device time so the early, fast improvements stay visible;
the charts use the same log axis. The G15 spins are drawn in hardware order,
one row per unit (25 units × 32 variables). Sudoku cells that repeat a digit in
a row, column or box are marked red. The renderer independently re-checks every
Sudoku objective, clue and solution and recounts every G15 crossing edge. The
replay's short captures are not runtime benchmarks: use
[performance](performance.md) and [benchmarks](benchmarks.md) for throughput.

## System diagram

`assets/zynq-system.svg` shows the host link, the Zynq processing system with
PYNQ, the AXI4-Lite register interface, and the accelerator's units, spike
selector, scheduler and broadcast path, using the colour coding of the paper
figure. It is a logical diagram, not a floorplan; Vivado decides how each
unit's storage maps to block RAM, distributed RAM or registers.

## Architecture walkthrough

The walkthrough draws on top of the **unmodified** paper figure
`../diagrams/final_diagram_simplified.svg`. For each step it dims the figure and
outlines the active blocks; numbered badges mark the flowchart boxes. The panel
underneath is a register view: membranes V<sub>mem</sub>, spins, each unit's
proposal and whether it fired, the selected k\*, the cut, and a best-cut-vs-time
trace with cycles and time.

`sim/readme_tiny_tb.sv` instantiates the maintained core with 12 variables in
three units of four, using the existing fixed-point arithmetic, RNG/LUT noise,
fixed-priority selector, scheduler and graph ROM mechanism. Units 0 and 1 are the
two units drawn in the figure; unit 2 is its “⋯”. The 18-edge, 3-regular
bipartite graph has optimum cut 18, checked by enumerating all 4,096
assignments. Seed 1 reaches it after 900 accepted flips, at cycle 8,531
(85.31 µs at the 100 MHz clock of the loadable overlays). The simulation checks
every selected field, spin, current cut, best cut and best assignment against a
graph model; the renderer re-checks the fixed-priority selection, each unit's
proposal, and every field update.

The GIF shows flips 1, 2 and 900 in five steps each and fast-forwards flips
3–899. The steps follow the flowchart in the figure and are stretched for
explanation: the hardware overlaps them in a few clock cycles, and the cycles
between accepted flips include rejected proposals, which the trace does not
record individually. Membrane values are those after each accepted flip.
`architecture.html` steps through all 900 flips (←/→, space, slider) and
respects the reduced-motion preference; serve the repository root with
`python3 -m http.server 8000` and open `/docs/assets/architecture.html`.

This is RTL simulation, not a 12-variable board measurement. No sealed
performance source or overlay is modified.

## Regenerate

The checked recordings are committed. Rendering needs Python, Pillow,
Playwright and its Chromium build, but no FPGA:

```bash
python3 -m pip install -r requirements-visuals.txt
python3 -m playwright install chromium
make readme-visuals
```

`scripts/render_readme_visuals.py` fills the page templates in
`scripts/visuals/` with the checked data, captures each frame in headless
Chromium, and assembles the GIFs with one shared palette. Text uses Helvetica or
its metric equivalents (Nimbus Sans, Liberation Sans). `--html-only` writes the
pages without capturing. To rerun the 12-variable RTL first (Verilator and a C++
toolchain required):

```bash
make readme-trace readme-visuals
```

`results/readme/visuals.json` records the hashes of the templates, base figure,
inputs and outputs. `results/readme/tiny12/` keeps the trace, checked recording
and simulation log.
