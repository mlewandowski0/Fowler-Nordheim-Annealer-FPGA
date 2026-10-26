# SpiNNaker2 comparison: published runtime and measured FPGA quality

**The SpiNNaker2 times do exist.** The direct source is
[arXiv:2406.05224v2, Figure S3a, PDF page 38](https://arxiv.org/pdf/2406.05224v2#page=38),
with the timing definition in Section S5.2 on PDF pages 37–38. These are
supplementary printed pages 6–7. The figure also appears in the journal
supplement supplied here as `results.pdf`, page 7.

The green bars report approximately:

| Graph | SpiNNaker2 published runtime, approximate |
| --- | ---: |
| G4 | 2,400 s |
| G11 | 2,600 s |
| G15 | 2,600 s |

These are **graph readings rounded to 100 seconds**, not raw numerical timing
records. The exact old website constant of 2460 s is not printed as a G15
measurement in the inspected source. It should not be presented with that
precision without its underlying record.

## What the published timing means

Section S5.2 states that NeuroSA executes a fixed number of iterations across
the CPU and SpiNNaker2 measurements. It calls the result time-to-solution,
but does not pair each runtime with a specified target cut, first-hit time,
accepted-flip count, or success/failure population. Section S5 describes time
steps in which no spike is emitted. Therefore an iteration is not automatically
an accepted flip. The SpiNNaker2 ARM clock is reported as 300 MHz; we do not
rescale either platform to a common clock.

Section S5.1 describes a bare-metal implementation that is about 40× faster
than a software-stack implementation. That factor must not be reapplied to
the plotted runtimes or treated as evidence for an unreported variant's time.
Our reference is the published configuration accompanying Figure S3.

## New FPGA measurements at a demanding shared reference

To avoid comparing a relaxed 99%-quality threshold with an unspecified
SpiNNaker2 result, we ran **30 predeclared seed settings on each of G4, G11
and G15**, with all 90 outcomes retained. The primary targets are the full
historical reference cuts: 11646, 564, and 3050. Every run uses the same
100 MHz signed loadable-memory build, cooling period 65,536, and exactly
10 million accepted flips. The RTL latches the first clock at each target;
there are no intermediate host pauses. All final assignments are independently
rescored. The protocol was saved before the batch.

| Graph | Reference cut | Hits / settings | Median first hit, successful settings | Median complete trial |
| --- | ---: | ---: | ---: | ---: |
| G4 | 11646 | 0 / 30 | Not reached | 2.814 s |
| G11 | 564 | 17 / 30 | 163.663 ms | 0.973 s |
| G15 | 3050 | 5 / 30 | 73.870 ms | 1.069 s |

The G4 failure is retained explicitly; the measured build did not reach the
full reference cut in this batch. The earlier 37-graph result concerns
best-of-three performance at **99% of historical reference**, a different goal.

For context, the secondary cuts in the generic NeuroSA column of the 2026
follow-up's Table S1 were also monitored:

| Graph | Secondary cut | Hits / settings | Conditional median first hit |
| --- | ---: | ---: | ---: |
| G4 | 11641 | 12 / 30 | 23.055 ms |
| G11 | 564 | 17 / 30 | 163.663 ms |
| G15 | 3049 | 12 / 30 | 69.784 ms |

That follow-up table does not distinguish CPU from SpiNNaker2 in its single
NeuroSA column. Its numeric times **540, 525 and 480 s must not be assigned
to SpiNNaker2**. Main Figure 2c distinguishes the platforms' runtime bars,
but does not provide usable SpiNNaker2 quality bars in its displayed range.
We therefore do not assert that these secondary cuts are the paired endpoint
of the SpiNNaker2 timing bars.

Both FPGA tables report active compute only. Each fresh state initialization
cost a median of about 84 ms, and uploading a graph took about 1.5 s, shared
across the 30 settings for that graph. These costs are excluded from first-hit
and complete-trial times. Bitstream loading is also excluded and retained
separately in the raw records. The published SpiNNaker2 setup boundary is not
established, so no end-to-end latency speedup is claimed.

The 30 settings are a deterministic LFSR seed sweep, not proof of independent
identically distributed restart trials. Hit fractions are descriptive;
conditional medians exclude unsuccessful settings and are shown beside the
full denominator. We do not turn them into a confidence-qualified TTS99
statistic or replace failures with successful timeout values.

## Fixed native-iteration measurements

The [fixed-iteration report](iterations.md) adds nine board runs with an exact
100-million-decision budget. Median active compute is 1.289 s (G4), 2.597 s
(G11) and 2.284 s (G15). Both flip and no-flip arbitration decisions count;
update/drain cycles are separate. This provides a reproducible fixed native
iteration measurement, while the numeric Fig S3 budget and its equivalent
event definition remain unconfirmed.

## The fair conclusion

The FPGA demonstrates verified, fast active-compute convergence on the same
Gset instances. Published SpiNNaker2 execution times are on the order of
2.4–2.6 kiloseconds for its reported fixed-iteration experiments. This is a
**descriptive literature comparison**, with different documented stopping
rules. Dividing those bars by FPGA first-hit times, by FPGA fixed-flip trial
times, or by a success-conditional median does not establish a matched solver
speedup. The comparison JSON therefore leaves `matched_speedup_ratio` null.

A matched speedup still needs either:

- SpiNNaker2 elapsed time for a documented count of the same accepted-flip
  event, plus achieved quality and initialization/cooling details; or
- per-run SpiNNaker2 first-hit times at the same cut targets, including failures,
  timeout budgets and setup inclusion. We can then compare reliability as well
  as time, rather than selecting successful runs only.

A machine-readable field template is provided at
[`required_spinnaker_runs.csv`](../results/spinnaker_comparison/required_spinnaker_runs.csv).
No message has been sent to the authors or SpiNNcloud.

## Provenance and reproduction

All three public commits of
[aimlab-wustl/neuroSA](https://github.com/aimlab-wustl/neuroSA) were inspected:
`5b26a5c0…`, `aac4a0b5…` and `989b9697…`. Each tree contains the CPU solver,
graph arrays and repository metadata, without separate SpiNNaker2 timing logs.
The newer [NeuroSA-HO repository](https://github.com/aimlab-wustl/NeuroSA-HO)
was also checked at commit `6652931942cb5ddcfecc480a327c42c68be3479e`.
Its recorded CPU/FPGA data concern the higher-order implementation; no matched
SpiNNaker2 per-run traces were identified.

The arXiv source archive contains the original Figure S3 file at
`Figures/nc_supp_advantage.pdf`. It embeds a raster graph rather than the raw
plotted arrays. `sources.json` records archive/PDF/figure hashes, pixel
calibration, approximate readings and the platform-label checks. This keeps
approximate graph readings separate from exact board measurements.

```bash
python3 scripts/summarize_spinnaker.py
```

This validates all 90 planned records, assignments, exact budgets, target
latches, graph identities and build identities, and regenerates the comparison
JSON and demo data. Raw results are in `results/spinnaker_comparison/board/`.
The same maintained `run_gset_board.py` command can reproduce the batch with
`--names G4 G11 G15 --seeds 1 2 ... 30`; expand that sequence to literal seed
arguments. The complete declaration is saved in `protocol.json` and the
board's `plan.json`. Outputs use a new directory to preserve previous runs.
