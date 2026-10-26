#!/bin/bash
# Seed sweep: stop at the first paused-readout capture whose best cut reaches 3050.
source /etc/profile.d/xrt_setup.sh >/dev/null 2>&1
source /etc/profile.d/pynq_venv.sh
cd /home/xilinx/qubo_g15_capture
for s in $(seq 2 60); do
  out=g15_seed$s.json
  python record_demo_board.py --bitfile qubo.bit --manifest manifest.json --graph G15.npy \
    --clock-mhz 144 --seed $s --cycles 12000000 --chunk 25000 --out $out > last.txt 2>&1
  echo "$(date +%T) seed $s $(tail -1 last.txt)"
  grep -q '"cut": 3050' last.txt && { echo FOUND $s; break; }
done
echo DONE
