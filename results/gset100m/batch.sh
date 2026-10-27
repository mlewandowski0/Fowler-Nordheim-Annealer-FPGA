#!/bin/bash
# Gset 100M-flip evaluation, per results/gset100m/protocol.json.
source /etc/profile.d/xrt_setup.sh >/dev/null 2>&1
source /etc/profile.d/pynq_venv.sh
cd /home/xilinx/qubo_gset100m
for spec in "gset:results800:G1 G2 G3 G4 G5 G6 G7 G8 G9 G10 G11 G12 G13 G14 G15 G16 G17 G18 G19 G20 G21" \
            "gset1024:results1000:G43 G44 G45 G46 G47 G51 G52 G53 G54" \
            "gset2048:results2000:G22 G23 G24 G25 G26 G35 G36 G37 G38"; do
  b=${spec%%:*}; rest=${spec#*:}; dir=${rest%%:*}; names=${rest#*:}
  python scripts/run_gset_board.py --bitfile build/$b/qubo.bit --manifest build/$b/manifest.json \
    --graphs python_code/problems --names $names --seeds 1 2 3 --flips 100000000 \
    --cooling-period 4194304 --max-cycles 20000000000 --timeout 200 --out eval/$dir
done
echo DONE
