# Fixed native-iteration runtime

The `ITR1` overlay supports an exact iteration budget, independently of the
accepted-flip budget. It is a separate 100 MHz, signed, loadable 800-vertex
variant; the earlier sealed G15, Gset and Sudoku artifacts are unchanged.

## What one iteration means

One **native arbitration iteration** is a clock edge on which the active
scheduler is in `S_WAIT` and checks whether the candidate arbiter has a flip.
An iteration can accept one flip or none. Empty decisions during initial
pipeline fill count too. The local units run concurrently, so up to 25 units
can propose; this is not a count of individual candidate evaluations.

Accepted-update capture and memory-update/drain cycles do not increment this
counter. Nor do reset or host-pause cycles. At a drained stop:

```text
iterations = accepted_flips + rejected_iterations
active_cycles = iterations + 6 * accepted_flips
active_compute_seconds = active_cycles / actual_configured_clock_hz
```

The six cycles are one capture cycle and five drain cycles in this build.
Consequently, 100 million iterations need not take the same time on different
graphs: accepting more flips adds more update work. This is why hardware clock
cycles and accepted flips remain separate recorded quantities.

`rejected_iterations` means arbitration decisions with no accepted flip;
it includes pipeline-empty decisions and does not count all locally rejected
candidates. Speculative proposals discarded by arbitration are not separately
counted. No claim of candidate evaluations per second is inferred from it.

## Exact stopping and ABI

The accelerator stops automatically at the requested decision count and
finishes an accepted update on the final iteration. Host polling cannot add
iterations. Results and counters are then read while paused. ABI identifier:
`ITR1` (`0x49545231`). Existing Gset registers remain in place, with:

| Address | Direction | Meaning |
| --- | --- | --- |
| `0xc0` | R/W | Accepted-flip limit; set to zero for iteration-budget runs. |
| `0xc4` | R/W | Native iteration limit; zero disables this limit. |
| `0xc8` | R | Completed arbitration decisions. |
| `0xcc` | R | Decisions without an accepted flip. |

Configuration writes require the host to request pause and the core to be
halted, and use full-word strobes. A core reset clears both counters. Disabling
the limit permits resume from a paused assignment. The board runner requires
a positive budget and bounds the worst-case cycle count below its safety cap
so the 32-bit cycle counter cannot wrap.

## Measurement protocol

G4, G11 and G15 use predeclared seeds 1, 2, 3, a budget of **100 million native
iterations**, 100 MHz and cooling period 65,536 active cycles per step.
Cooling still follows active cycles, not the new iteration counter. All spins
start at +1. Every returned assignment is independently scored against both
the symmetric matrix and the original sparse edge list. No per-graph tuning
or successful-run filtering is performed.

The protocol is saved in `results/iterations/protocol.json`. The board's
`plan.json` additionally records source/artifact identities before execution.
Raw records retain exact iterations, rejections, accepted flips, cycles, cut,
assignment, host-run interval and separate initialization/upload times.
Compute time excludes loading and initialization; it includes final draining.

## Verified board result

All nine runs stopped at exactly 100,000,000 iterations with no overshoot.
The actual configured clock was 100 MHz. Each cut matches both independent
matrix and edge-list rescoring:

| Graph | Median active compute | Accepted flips, full three-seed range | Best-cut range |
| --- | ---: | ---: | ---: |
| G4 | 1.288776 s | 3,520,572–7,360,425 | 11622–11641 |
| G11 | 2.597417 s | 26,084,623–26,732,257 | 562–564 |
| G15 | 2.284179 s | 19,133,696–22,655,497 | 3047–3050 |

The new build meets 100 MHz timing with +0.461 ns setup and +0.025 ns hold
slack. It uses 22,935 LUTs, 57.5 block-RAM tiles and 25 DSPs. Reports and the
source/artifact manifest are in `results/iterations/implementation/`.

## Reproduce

```bash
python3 scripts/test_iterations.py
python3 scripts/build_iterations.py
```

Copy `build/iterations/{qubo.bit,qubo.hwh,manifest.json}` together to a PYNQ
board, with `run_iterations_board.py`, `gset_model.py` and Gset text inputs.
Run using the board's PYNQ environment and FPGA access:

```bash
python run_iterations_board.py --bitfile qubo.bit --manifest manifest.json \
  --graphs problems --names G4 G11 G15 --seeds 1 2 3 \
  --iterations 100000000 --clock-mhz 100 --cooling-period 65536 --out iteration_runs
```

The output directory must be new. Copy its contents under
`results/iterations/board/`, then validate and export:

```bash
python3 scripts/summarize_iterations.py
python3 scripts/export_demo_recordings.py
```

The integration tests upload a signed and an unsigned graph through AXI and
scoreboard every accepted update. A separate scheduler test covers 18 small
budgets with all-accept, all-reject and alternating inputs, including an
accepted final iteration, exact draining, pause/reset/resume and both counter
identities above.

## Relation to SpiNNaker2

This is a reproducible **fixed native-iteration runtime**, the measurement
requested here. It can be shown beside the published SpiNNaker2 fixed-budget
experiments with both iteration definitions and achieved cuts visible.

The paper's main evaluation mentions 100 million iterations. Its Figure S3
method states that a fixed iteration count was used, but does not specify that
figure's numeric count or establish the same event definition as our
pipelined arbiter. We therefore choose and label 100 million explicitly,
rather than asserting that the two plotted experiments did identical work.
The candidate policies, arithmetic, random sources and cooling also differ.
See [the source-audited SpiNNaker2 comparison](spinnaker_comparison.md).

No ratio of the published timing bars to this runtime is labeled a validated
common-work or time-to-solution speedup. A first-hit time remains a separate
metric; running a fixed budget does not establish when the other implementation
first reached a given cut or its success probability.
