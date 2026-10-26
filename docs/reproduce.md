# Reproducing the accelerator

Run all commands from the repository root. Python needs NumPy; RTL simulation
needs Verilator with `--binary`, `--timing`, and assertion support, plus a C++
compiler and Make. The validation report records the versions actually tested.

```bash
python3 -m pip install -r requirements.txt
make test
make sim
make audit
```

`make test` runs a 100,000-cycle integration check and AXI transactions with
separate address/data arrival, byte strobes, and read/write backpressure. It
also exercises loading while halted, running, pausing, assignment readback,
resuming, and resetting. `make sim` uses one million active cycles. These are
correctness checks, not a guarantee of reaching the paper's best score.

For a longer deterministic run:

```bash
python3 scripts/run_sim.py --cycles 100000000 --seed 1 --out build/long_run
```

Both simulation and the board driver default to `--cooling-period 65536` active
cycles per LUT increment. This setting is configurable and recorded in output
JSON; changing it changes the optimization trajectory.

The runner resolves paths relative to the repository, verifies all 25 graph
partitions against `python_code/G15.npy`, generates memory initialization files,
and rebuilds when the simulator or selected RTL changes. It records the source
hash, input hashes, seed, cycle count, accepted flips, and simulator version.
The graph has 800 vertices and 4,661 undirected, unit-weight edges. The `.npy`
SHA-256 is `dce8ea06fac816a4726ee70be45955cbcb22212673904affd86b850720c9c9e2`.

The historical ROM filename token `A25` means 25 units. In the paper's
notation this is M=25, A=32 variables per unit.

Inspect `summary.json`, `convergence.csv`, `best_assignment.txt`,
`simulation.log`, and `compile.log` in the selected output directory. Character
`i` of the assignment file corresponds to vertex `i`. At every accepted flip,
the scoreboard checks the selected local field and spin against an independent
model, computes the score change from incident graph edges, and checks the RTL
score and best assignment. Python then recomputes the saved assignment's cut
directly from the full graph. A mismatch fails the command.

## Building the PYNQ overlay

The maintained build targets `xc7z020clg400-1` with a requested 144 MHz clock.
Vivado resolves this to 145.455 MHz for the build; the tested PYNQ PLL settings
produce 142.857143 MHz on the board. It creates a fresh
Vivado project and PS/PL block design without reading old `.xpr` files or
absolute paths from the historical projects.

```bash
# In a shell with Vivado available:
make overlay
```

Outputs are `build/overlay/qubo.bit`, `qubo.hwh`, `manifest.json`, `timing.rpt`,
`utilization.rpt`, `power.rpt`, `critical_paths.rpt`, and `fanout.rpt`. The build rejects negative worst setup or
hold slack. Inspect the full timing and DRC reports as part of any new target
or tool-version validation. A different Vivado release can change placement,
resource utilization, timing, and bitstream hashes.

The PS is already configured by the running PYNQ image; this build supplies a
PL overlay, not a boot image or replacement Linux installation. It uses the
Zynq PS AXI GP0 port and FCLK0. Verify the FPGA part/package on another board.
The graph and lookup tables are compiled into the bitstream.

## Running on PYNQ

Copy `qubo.bit`, `qubo.hwh`, `manifest.json`, `scripts/run_board.py`, and `python_code/G15.npy`
to the board. Keep the `.bit` and `.hwh` basenames identical, as required by
[PYNQ's overlay documentation](https://pynq.readthedocs.io/en/latest/overlay_design_methodology/overlay_design.html).
Use your board's address and credentials interactively; none are stored in the
repository.

In a root shell on the board with the PYNQ environment loaded:

```bash
source /etc/profile.d/xrt_setup.sh
source /etc/profile.d/pynq_venv.sh
python run_board.py --bitfile qubo.bit --manifest manifest.json --graph G15.npy --clock-mhz 144 --seconds 5 --out board_result.json
```

The driver checks the ABI ID and artifact hashes, requests the selected FCLK0
frequency, verifies the actual configured clock stays below the build ceiling,
resets the core, and loads
deterministic seeds and degree-based initial local fields for the all-one
assignment, runs, requests a pause, waits for any captured update to finish,
and reads the best assignment. It then independently scores that assignment.
The JSON output contains input/bitstream/metadata hashes, actual configured
clock, elapsed host time, hardware cycles, accepted flips, score, and all 800
assignment bits. Host polling time is not a precise accelerator runtime;
use the hardware cycle count and clock frequency.

To reproduce the throughput measurement:

```bash
python run_board.py --bitfile qubo.bit --manifest manifest.json --graph G15.npy --clock-mhz 144 --seconds 20 --target-flips 100000000 --seed 1 --out bench_fast_seed1.json
```

The target is **accepted spin flips**, not proposals or clock cycles. Host
polling stops slightly above 100 million; both exact counts and overshoot are
recorded. Hardware time is `cycles / (configured_clock_mhz * 1e6)`. The reported
normalized 100-million-flip duration scales that time by `100M / actual_flips`.
It excludes bitstream loading and host initialization.

Repeat with seeds 2 and 3. For the matched 50 MHz baseline use `--clock-mhz 50
--seconds 50` with the same bitstream, seed, and cooling configuration. Above
50 MHz the driver requires a hash-matching build manifest. It rejects a run
whose timeout could wrap the 32-bit cycle counter; shorten the interval for
longer/higher-clock experiments. Configure the cooling period while paused.

An archived overlay can be examined with `--legacy`. That mode only reports
its scalar score, does not change its inherited clock, and explicitly marks
the assignment as unverified. It is not equivalent to validating the rebuilt
core. These legacy artifacts are not part of the maintained checkout. On the original
development machine they are preserved under `.research-archive/`, at the
following relative paths; they can also be recovered from Git history:

- `zynq7020/zynq7020_hardware/zynq7020_hardware.runs/impl_1/design_1_N_eq_800_wrapper.bit`
- `zynq7020/zynq7020_hardware/zynq7020_hardware.gen/sources_1/bd/design_1_N_eq_800/hw_handoff/design_1_N_eq_800.hwh`

## What the archive audit can establish

`scripts/audit_results.py` summarizes all logs in the recorded experiment
folders, records their hashes, and verifies that the saved convergence curve
is monotonic. It never selects runs according to their score. Many original
logs have no completion marker or saved assignment, so reconstructing a plot
from them is weaker evidence than rerunning the RTL with the new scoreboard.

The maintained implementation uses later arithmetic and control logic, and
different RNG/LUT/cooling settings from the paper. Its trajectory is therefore
not expected to exactly match the historical 75,516,185-cycle trace.
