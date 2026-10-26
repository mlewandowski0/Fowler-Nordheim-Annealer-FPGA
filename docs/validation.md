# Validation report

Audit date: 26 October 2026. The original archive is preserved. The maintained
implementation is a corrected derivative of the later 2025 board RTL, not an
exact recreation of the 2024 paper build.

## What can be reproduced

The new path validates graph input generation, a complete RTL simulation,
AXI host initialization/control, a fresh routed FPGA build, and the cut score
of an assignment read back from the live board. Commands and output formats
are in [reproduce.md](reproduce.md).

The paper's exact historical experiment population is not fully recoverable.
In particular, the saved files do not unambiguously identify all 20 runs used
for each RNG statistic. Replotting the saved historical trace is possible,
but does not prove a fresh run of its exact configuration.

## Restored clock performance

The optimized implementation closes timing at **145.455 MHz** (6.875 ns),
with **+0.032 ns setup slack**, **+0.040 ns hold slack**, zero total negative
slack, and zero unconstrained internal endpoints. Vivado selected this precise
clock for the requested 144 MHz PS configuration. On the supplied PYNQ image,
the live PLL/divider configuration produces **142.857143 MHz**; this measured
configuration is below the timing-closed frequency and restores the paper's
approximately 140-144 MHz operating range.

The changes remove the bulk reset from 11,200 host-initialized state bits,
replace the serial priority mux with a balanced tree, register the cooling
terminal count while paused, and use the Vivado performance implementation
strategy. No search pipeline cycles are added. The original 11,424-load reset
path is eliminated; the new worst path is best-assignment capture control.

The board runs at **142.857143 MHz** and independently verifies the returned
assignments. Three 100-million-accepted-flip benchmarks take **7.33-7.93 s**
normalized hardware time (median **7.60 s**), with cuts **3050, 3049, 3049**.
The matched seed-1 throughput gain over 50 MHz is **2.857×**. Exact counts,
clock/bitstream hashes, normalization, reported Intel/SpiNNaker2 references,
and limitations are in [performance.md](performance.md) and the
[machine-readable summary](../results/performance/summary.json).

| Resource | Initial 50 MHz build | Optimized build |
| --- | ---: | ---: |
| Slice LUTs | 28,686 | 25,430 |
| Slice registers | 15,867 | 14,243 |
| BRAM tiles | 7 | 7.5 |
| DSPs | 25 | 25 |

The optimized **10-million-cycle** RTL replay checks every accepted update
and reproduces every best-cut transition of the earlier baseline exactly,
including **3050 at cycle 7,395,076**. Its saved best assignment independently
scores 3050. The balanced-selector test passes idle, each one-hot input, and
49,974 randomized priority/payload cases. The AXI test continues to pass.
Current evidence is in [the RTL result](../results/rtl/summary.json),
[selector log](../results/selector/simulation.log),
[AXI log](../results/axi/simulation.log), and
[build manifest](../results/implementation/manifest.json).

The new [timing](../results/implementation/timing.rpt),
[critical paths](../results/implementation/critical_paths.rpt),
[fan-out](../results/implementation/fanout.rpt),
[utilization](../results/implementation/utilization.rpt), and
[DRC](../results/implementation/drc.rpt) reports record the complete build.
The new on-chip power estimate is **1.991 W**, Medium confidence, without a
simulation activity file. This remains a Vivado estimate, not measured board
power. DSP pipelining and control-set methodology warnings remain visible.

## Initial 50 MHz correctness baseline

The initial maintained implementation completed **100,000,000 active cycles** with
**9,015,470 accepted flips**, reaching a **best cut of 3050** and a final
current cut of 3049. It first reached 3050 at cycle **7,395,076**. Seed is 1;
the cooling period is 65,536 active cycles per temperature-LUT increment.
The saved 800-bit best assignment independently scores **3050** in Python.

The tested simulator was Verilator `5.049 devel`, revision
`v5.048-95-g7f520ff1a`, with NumPy 2.4.5. Wall time was approximately 473 s;
this is simulator runtime on the host, not accelerator execution time.
[summary.json](../results/baseline_50mhz/rtl/summary.json) records the source and input hashes;
[best_assignment.txt](../results/baseline_50mhz/rtl/best_assignment.txt),
[convergence.csv](../results/baseline_50mhz/rtl/convergence.csv), and the simulation/compile
logs retain the evidence. A second seed passed a 100,000-cycle correctness
smoke test; that is not a solution-quality study.

The AXI test passes with independent write-channel ordering, byte strobes,
response backpressure, programmable cooling, paused initialization, run,
assignment score readback, pause/resume, and reset. Its
[simulation log](../results/baseline_50mhz/axi/simulation.log) is retained.

This improves the validation of the maintained implementation. It does not
reconstruct the original 20-run experiment or establish a statistical speedup.

## Initial 50 MHz routed build

Vivado **2025.2.1** built the maintained source for **xc7z020clg400-1** with a
**20 ns / 50 MHz** clock constraint. The final routed report has **+0.821 ns
worst setup slack**, **+0.016 ns worst hold slack**, zero total negative slack,
and no unconstrained internal endpoints. Implementation DRC has zero errors.
It retains 25 DSP multiplier-pipeline warnings and a methodology warning about
control-set usage. These are reported rather than treated as a warning-free
implementation.

| Resource | Used |
| --- | ---: |
| Slice LUTs | 28,686 |
| Slice registers | 15,867 |
| BRAM tiles | 7 |
| DSPs | 25 |

The larger control/readback path and later RTL make these counts distinct from
the paper. The graph-ROM implementation can be optimized into logic; the full
parallel state update also prevents inferring one conventional state BRAM per
unit. Use the actual utilization report rather than the paper's storage
capacity argument as a physical resource count.

The new Vivado power estimate is **1.784 W on-chip**, with Medium confidence
and no simulation activity file. A high-fanout reset activity warning further
limits this estimate. No measured power or energy claim is made.

The [build manifest](../results/baseline_50mhz/implementation/manifest.json) records every
selected RTL/build-source hash and both output artifact hashes. Full
[timing](../results/baseline_50mhz/implementation/timing.rpt),
[utilization](../results/baseline_50mhz/implementation/utilization.rpt),
[power](../results/baseline_50mhz/implementation/power.rpt), and
[DRC](../results/baseline_50mhz/implementation/drc.rpt) reports are retained.

## Initial 50 MHz board checks

The initial 50 MHz overlay was loaded on the connected **Zynq-7020**, running **PYNQ
3.1.1**, Linux `6.6.10-xilinx-v2024.1-g3c0eca68c652`, ARMv7. FCLK0 was explicitly
set to **50.0 MHz**. With seed 1, cooling period 65,536, and a five-second host
run, the hardware returned a best cut of **3050**. Reading all 800 assignment
bits and scoring their crossing edges independently also gives **3050**.

The run recorded **250,176,410 active cycles** and **22,253,070 accepted flips**.
The host's measured interval includes control overhead; the hardware cycles
are the appropriate execution-time basis. The core is paused for coherent
multiword result readback.

[seed1.json](../results/baseline_50mhz/board/seed1.json) includes the assignment, score samples,
clock, counters, cooling period, PYNQ/kernel versions, graph hash, bitstream
hash, and matching hardware-metadata hash. It uses the artifact hashes in the
final build manifest. This is direct hardware evidence rather than a score
inferred from the paper or from an unverified legacy scalar register.

A repeat of seed 1 also returned **3050**, and seed 2 returned **3047**; both
assignments were independently verified. The two seed-1 best assignments are
identical, and the board's seed-1 best assignment is identical to the saved
RTL best assignment. These checks demonstrate this configuration's seeded
repeatability; two distinct seeds do not establish a success probability.
All final board checks are retained, including the lower seed-2 result.

| Board check | Best cut | Independent assignment check |
| --- | ---: | --- |
| [Seed 1](../results/baseline_50mhz/board/seed1.json) | 3050 | Pass |
| [Seed 1 repeat](../results/baseline_50mhz/board/qubo-release-repeat-seed1.json) | 3050 | Pass; identical assignment |
| [Seed 2](../results/baseline_50mhz/board/qubo-release-repeat-seed2.json) | 3047 | Pass |

## Historical evidence

| Claim/artifact | Finding |
| --- | --- |
| Paper Fig. 2: G15 reaches 3049 in about 75 million cycles | `paper_writing/current_best.txt` contains 661 monotonically improving points; first 3049 is at cycle 75,516,185. |
| Approximately 144 MHz and 0.53 s | The paper uses 6.937 ns and simulated cycles. These are historical timing-derived estimates. |
| Paper Table II, A=32 | PDF reports 16,960 LUTs, 12,928 flip-flops, 39 BRAM tiles, 25 DSPs. The draft `table.tex` contains different counts and is not substituted for the PDF. |
| Later archived routed design | Vivado 2024.2 report dated 21 May 2025: 50 MHz, setup slack +4.346 ns, hold slack +0.034 ns, 27,194 LUTs, 14,533 registers, 7 BRAM tiles, 25 DSPs. |
| Website's 1.421 W FPGA number | Matches the later Vivado on-chip power estimate. No simulation activity file is recorded; confidence is Medium. It is not measured board power. |
| Website's cross-platform comparison | The notebook compares different workloads, including 100 million flips and time-to-solution. It is not a controlled speedup/energy benchmark. |
| Archived board bitstream, fresh run | Reported scalar score 3028 in approximately five seconds at an inherited 31.25 MHz clock; no assignment readback, so that score alone is not independently verified. |

The live board's inherited clock differed from the archived report's 50 MHz
constraint. The new driver explicitly sets and records FCLK0 and reads a
hardware cycle counter instead of assuming a clock from an old report.

## RNG experiment audit

[archive_groups.csv](../results/archive/archive_groups.csv) and
[archive_audit.json](../results/archive/archive_audit.json) contain complete
summaries and individual input hashes. The audit includes every available
log in each selected directory, without choosing runs by score.

The `paper_writing/simulation_results/` folders contain 30 or 40 runs whose
last logged iteration is 9.9 million; these do not reproduce the paper's
100-million-iteration study. Under `python_code/runs/iter=1e8_PC/`, the available
populations are:

| RNG | Available logs | Mean gap to paper reference 3050 | Best logged cut |
| --- | ---: | ---: | ---: |
| 6-bit LFSR | 20 | 5.05 | 3049 |
| 7-bit LFSR | 21 | 2.3333 | 3049 |
| 8-bit LFSR | 26 | 1.1154 | 3050 |
| Mersenne Twister | 21 | 2.7619 | 3049 |
| Halton | 22 | 1.0 | 3049 |

Some logs stop early. None includes a reliable completion marker and saved
assignment suitable for independently verifying its best score. The analysis
in `paper_writing/s.ipynb` sorts final scores and takes a 20-run subset; the
identity of the manually selected finished runs is not recorded. The new
audit does not repeat that selection.

## Correctness fixes and reproducibility changes

The later scheduler ignored host halt when accepting candidates and advancing
its counters. With deterministic initialization, the new scoreboard caught a
stale membrane at active cycle 2: index 31 reported 0 where the graph-based
reference expected 30. The maintained scheduler honors halt, drains a captured
update, and freezes its cooling counter during pause.

Candidate buffers are flushed while halted, and noise RNGs stop advancing
during host initialization. Otherwise a seed's effect depends on the time
spent programming other units over AXI. Accepted flips now have their own
counter; the legacy counter counted visits to the waiting state.

The new interface exposes an ABI ID, active cycles, accepted flips, paused
status, cooling period, and the complete best assignment. The best assignment
is captured with its score and is read only after pause completes. This makes
the reported score independently checkable on the board.

The selected source list fixes an incorrect `GRAPH_WIDTH / UNIT_WIDTH` default
and avoids SystemVerilog keyword conflicts. The historical project copies are
left unchanged. The maintained fixed-point path retains the later signed
arithmetic implementation; the older paper directory contains different
arithmetic and control logic.

## Validation coverage and limits

The integration scoreboard checks the selected spin and local field at every
accepted update, derives cut changes from graph edges, and compares the RTL's
current score, best score, and saved best assignment. Python then scores the
saved assignment directly against the full G15 graph. The AXI test covers
address-first and data-first writes, byte strobes, response backpressure,
initialization while paused, run/pause/resume, readback, and reset.

The supported path is N=800, M=25, A=32, binary symmetric edges, no self-loops,
fixed priority, all-one initial assignment, signed 18-bit fixed point with
9 fractional bits, 16-bit noise LFSRs with an 8-bit LUT address, and a 9-bit
temperature LUT. Both drivers record the programmable cooling period. These
settings differ from the paper's stated 7-bit RNG/temperature configuration.
Matching one historical score would not establish identical trajectories or
the paper's 20-run success probability.

Verilator reports retained legacy parameter-branch warnings, including
out-of-range selections in unused LFSR case arms, width conversions, incomplete
FSM cases, and an implicit one-bit candidate net. No latch or multiple-driver
warning was found in the selected simulation path. The build logs are retained;
other parameter combinations and floating-point/unbuffered paths are not
validated.

The graph is compiled into the overlay. Arbitrary QUBO matrices, runtime graph
loading, other initialization states, other FPGA parts, multi-seed statistical
claims, and measured power/energy are outside this validation. Hosted CI has
been configured but has not yet executed on GitHub.

The source-release archive was extracted to a fresh temporary directory and
`make test audit` passed there, checking that the maintained path does not
depend on the original Vivado projects, caches, or absolute checkout paths.
The optimized export also passed the performance-summary regeneration and
saved board-assignment check; its [verification log](../results/packaging/optimized_test.log)
is retained.
