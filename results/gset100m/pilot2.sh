#!/bin/bash
# Pilot for choosing one global cooling period at 100M accepted flips (seed 101 only).
source /etc/profile.d/xrt_setup.sh >/dev/null 2>&1
source /etc/profile.d/pynq_venv.sh
cd /home/xilinx/qubo_gset100m
for p in 8388608; do
  for spec in "gset:G1 G11 G15" "gset1024:G43" "gset2048:G22 G35"; do
    b=${spec%%:*}; names=${spec#*:}
    python scripts/run_gset_board.py --bitfile build/$b/qubo.bit --manifest build/$b/manifest.json \
      --graphs python_code/problems --names $names --seeds 101 --flips 100000000 \
      --cooling-period $p --max-cycles 20000000000 --timeout 150 --out pilot/p$p/$b
  done
done
echo DONE
