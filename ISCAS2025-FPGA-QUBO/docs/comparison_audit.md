# Comparison audit: what can be advertised

**Update:** a fresh, separately labeled CPU comparison and a 39-graph FPGA
evaluation are now available in [the benchmark report](benchmarks.md). This
audit below concerns the old website constants; they remain unvalidated.

The current evidence supports the FPGA's recorded throughput and its
approximately **2.857× clock-scaling gain**. It does **not** establish a
reproduced speedup against Intel Core Ultra 9 185H or SpiNNaker2. The original
504 s and 2460 s values are literal plotting inputs, without a link to raw
timed runs or an established matching work definition. This is a missing
comparison, rather than proof that the original measurements were false.

Run the independent audit from the repository root:

```bash
python3 scripts/audit_comparison.py
```

It parses the original loop and notebook, audits 110 original experiment
logs, checks FPGA artifact identities, independently scores every recorded
benchmark assignment, and recomputes throughput from hardware cycles and
configured clocks. Outputs are
[`audit.json`](../results/comparison_audit/audit.json) and
[`legacy_iteration_vs_flips.csv`](../results/comparison_audit/legacy_iteration_vs_flips.csv).
The JSON records source line numbers, excerpts, and SHA-256 hashes.

## The work definitions differ

| Quantity | Meaning in the available implementation |
| --- | --- |
| Python `MAX_ITER` | Candidate rounds; each round evaluates up to 25 candidates, short-circuiting when the first acceptable one is found. |
| Python `num_spikes` | Accepted flips; incremented only when a candidate is accepted. |
| Legacy RTL `flips` | Visits to `S_WAIT`, including cycles without an accepted flip. |
| Maintained RTL accepted-flip counter | Accepted updates, incremented once in `S_CAPTURE`. |
| Maintained RTL cycle counter | Active hardware clock cycles, including waiting/update cycles. |

The numerical runner iterates over `tqdm(range(int(config.MAX_ITER)))` and
increments `num_spikes` only inside `if spike_sel`. See the
[iteration loop](../python_code/NeuroSA_runner.py#L297),
[early-exit selection](../python_code/NeuroSA_runner.py#L332), and
[accepted-flip increment](../python_code/NeuroSA_runner.py#L371).
Thus a configuration with `MAX_ITER=1e8` does not request 100 million
accepted flips. Its last log is also not proof of successful completion.

A concrete example is the archived 7-bit-LFSR run 0: at zero-based iteration
99,900,000, its log records **74,566,277 accepted spikes**. That is 99,900,001
processed candidate rounds and about 74.64% acceptance, rather than 100 million
accepted flips. Across all 21 archived 7-bit runs, the last logged accepted
fraction ranges from approximately 73.52% to 75.75%.

This example is a
[recorded result](../python_code/runs/iter=1e8_PC/LFSR_7bit_UNITS=25_N=800/logs/approximationsapprox_problem=G15_rng_selection_LFSR_b=10_rng_calculation_LFSR_b=7_log_lut_memory_close_UNITS=25_run=0.txt).
It illustrates the event-count problem; the archive does not identify this
particular runner/run as the source of the 504-second plotting constant.

The [archived scheduler](../zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/new/scheduler_2.v#L121)
increments `flips` before testing `if (flip)` in `S_WAIT`. The
[Vitis flip-counter application](../vitis_software/fw_ann_Neq800_flips_and_uart_app/src/main.c#L438)
waits for a register named `NUMBER_OF_FLIPS` to reach 100 million. No
source/bitstream/timing manifest proves which hardware counter generated the
original website's 20-second FPGA value. Its work definition therefore also
needs confirmation. The maintained counter is explicitly incremented in
[`S_CAPTURE`](../rtl/scheduler_2.v#L153).

## What is verified now

The seed-1 runs at 50 and 142.857143 MHz use the same bitstream, graph,
initialization, seed, and cooling configuration. Their returned assignments
both independently score 3050. The accepted counts are slightly different
because the host polls for a target and then pauses the accelerator.

| Clock | Actual accepted flips | Hardware seconds | Normalized seconds / 100M accepted flips |
| --- | ---: | ---: | ---: |
| 50 MHz | 100,008,280 | 22.662373 | 22.660497 |
| 142.857143 MHz | 100,101,202 | 7.939173 | 7.931146 |

For each run, hardware seconds are `active_cycles / configured_clock_hz`.
The normalized time is `hardware_seconds * 100M / actual_accepted_flips`.
Their ratio is **2.85715288×**, compared with a configured-clock ratio of
**2.85714286×**. The small difference is approximately 3.5 parts per million
and reflects the slightly different stopping points and normalization.
This establishes clock-scaling throughput for this accelerator configuration;
it is not a comparison against a CPU, another algorithm, or time to solve.

Across the three restored-clock seeds, the median normalized hardware duration
is **7.596059 s** and the independently checked best cuts are **3050, 3049,
3049**. All final attempts are retained. Three seeds do not establish a
20-run success rate or a general time-to-solution distribution.

The configured PYNQ clock is recorded from the PLL/divider API. It is not an
independent oscilloscope measurement. The timing-closed build and hardware
cycle counts provide additional evidence for the operating point.

The original board result field named `seconds` excludes initialization and
bitstream loading and includes post-stop file-hashing overhead, because those
hash expressions are evaluated before its timer endpoint. It must not be
called end-to-end latency or pure solver compute time. Use the recorded
hardware counters for the present throughput result; future end-to-end
experiments should time loading, initialization, computation, verification,
and transfer separately.

## Why numerical work is not identical

The Python runner short-circuits candidate generation after the first
acceptable unit. The hardware generates candidates concurrently, so unused
units' RNGs can advance differently. The numerical and maintained hardware
paths also differ in RNG widths, arithmetic/lookup quantization, and cooling:
the numerical threshold advances by candidate rounds, whereas the FPGA
cooling interval advances by active cycles. Equal accepted-flip counts alone
do not imply equal candidate work or equal solution quality.

These differences need not invalidate a solver-level comparison. They require
comparing the same optimization task at the same quality/reliability target,
with the implementations and boundaries clearly identified. A slow
Python/NumPy implementation should be named as such rather than presented as
the intrinsic capability of an Intel processor. A cycle-accurate RTL simulator
is likewise not a competitive numerical CPU solver and is not used as a
surrogate here.

## Safe advertising language

> On G15, our Zynq-7020 implementation runs at a configured 142.857 MHz and
> processes a median 13.16 million accepted spin flips per second across three
> recorded runs. Their independently verified best cuts are 3050, 3049, and
> 3049. Raising the same seed-1 implementation from 50 MHz to 142.857 MHz
> improves normalized accepted-flip throughput by approximately 2.857×.

Keep the graph, configuration, number of seeds, verified assignments, and
measurement boundary close to the claim. The following are not supported by
the current archive:

- A reproduced 66× speedup over Intel Core Ultra 9 185H or 324× over SpiNNaker2.
- A time-to-solution speedup inferred by dividing the old reported durations
  by the new fixed-budget FPGA median.
- A measured energy-efficiency comparison derived from Vivado power estimates.
- A solver's latency inferred from animation playback duration.

The original notebook also mixes NeuroSA's stated fixed flip budget with the
bifurcation machine's time-to-solution figure. Those quantities should not
share a speedup chart.

## Protocol for a valid new CPU/SpiNNaker2 comparison

1. Fix a graph and objective convention, graph hash, initialization, target
   quality, and run budget. Start with G15 and a target cut of at least 3049;
   include 3050 as a separate target.
2. Identify every implementation precisely: source commit, CPU model,
   language/library/compiler versions, thread count, arithmetic, RNG,
   candidate policy, and cooling schedule. Preserve any algorithmic
   differences; do not hide them under the processor name.
3. For a matched-algorithm throughput test, report candidate rounds,
   candidates tested, accepted flips, RNG draws, and active cycles where
   applicable. Stop on the chosen event budget in every implementation.
   Match or explicitly distinguish candidate-generation and cooling semantics.
4. For the more useful solver comparison, measure time to the same target
   cut with a valid saved assignment, over a predeclared seed set and common
   timeout/work budget. Record failures as well as successes; report the
   success rate and elapsed-time distribution, not only the best successful
   run. Different algorithms may be compared honestly under this protocol.
5. Report solver compute time and end-to-end time separately. Include loading,
   initialization, host communication, and verification when claiming a full
   system latency. Account for any pauses introduced by state readback.
6. Obtain the original Intel/SpiNNaker2 traces and settings or rerun those
   systems with this protocol. Preserve raw counters/timestamps and objective
   verification. Until that exists, the historical constants belong in an
   audit/provenance table, not an advertised speedup ratio.
7. Measure power at a stated, comparable boundary for an energy claim. Record
   idle subtraction, instrumentation, and integration interval. A supply
   rating, chip estimate, and measured CPU-package power are different quantities.

A presentation viewer may replay recorded states at a convenient speed.
Label replay/software/hardware modes, retain original timestamps, and keep
observation-induced pauses and animation playback outside throughput claims.
