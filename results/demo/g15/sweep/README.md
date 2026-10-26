# G15 replay captures, 2026-10-26

Paused-readout captures on the static G15 overlay (`qubo.bit` SHA-256
`0aa4c0d0…`, FCLK0 = 142.857143 MHz), made with `scripts/record_demo_board.py`
in 25,000-cycle chunks, cooling period 65,536. Seed 1 used a 40M-cycle budget;
seeds 2–10 used 12M cycles, run by `run_capture.sh`, which stopped at the
first seed whose best cut reached the best-known 3,050. All attempts are kept.

| Seed | Best cut | At active cycle | Device time |
| ---: | ---: | ---: | ---: |
| 1 | 3,038 | 7,135,110 | 49.95 ms |
| 2 | 3,042 | 7,214,423 | 50.50 ms |
| 3 | 3,041 | 8,564,306 | 59.95 ms |
| 4 | 3,049 | 5,942,718 | 41.60 ms |
| 5 | 3,045 | 7,421,595 | 51.95 ms |
| 6 | 3,049 | 7,300,505 | 51.10 ms |
| 7 | 3,039 | 8,602,175 | 60.22 ms |
| 8 | 3,039 | 8,532,421 | 59.73 ms |
| 9 | 3,047 | 8,547,410 | 59.83 ms |
| 10 | **3,050** | 7,796,923 | 54.58 ms |

Seed 10 drives the README replay and the demo viewer. Pausing for readout
changes the trajectory, so these are not the unpaused performance runs in
`results/performance/`. `capture.log` lists seeds 2–10 (seed 1 ran in an
earlier invocation). Every saved state is rescored against the edge list by
`scripts/render_readme_visuals.py` and `scripts/export_demo_recordings.py`.
