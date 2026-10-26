#!/usr/bin/env python3
"""Build and run the G15 RTL with a graph-based correctness scoreboard."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import time

from prepare_inputs import ROOT, prepare


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--cycles", type=int, default=100_000)
    p.add_argument("--out", type=Path, default=ROOT / "build/sim")
    p.add_argument("--seed", type=int, default=1)
    p.add_argument("--cooling-period",type=int,default=65536)
    p.add_argument("--rebuild", action="store_true")
    a = p.parse_args()
    if a.cycles < 100 or not 1 <= a.seed <= 1000 or not 1 <= a.cooling_period <= 2**32-1:
        p.error("use cycles >= 100, seed in [1,1000], and a positive 32-bit cooling period")
    out = a.out.resolve()
    manifest = prepare(out)
    sources = [(ROOT / line).resolve() for line in (ROOT / "rtl/files.f").read_text().splitlines() if line]
    sources += [ROOT / "sim/reproduce_tb.sv"]
    version = subprocess.check_output(["verilator", "--version"], text=True).strip()
    digest = hashlib.sha256((version + "".join(f"{s.relative_to(ROOT)}\n{s.read_text()}" for s in sources)).encode()).hexdigest()
    binary = out / "obj/Vreproduce_tb"
    stamp = out / "build.sha256"
    if a.rebuild or not binary.exists() or not stamp.exists() or stamp.read_text().strip() != digest:
        cmd = ["verilator", "--binary", "--timing", "--assert", "-Wno-fatal", "-j", "4",
               "--top-module", "reproduce_tb", "--Mdir", str(out / "obj"), *map(str, sources)]
        with (out / "compile.log").open("w") as log:
            result = subprocess.run(cmd, cwd=out, stdout=log, stderr=subprocess.STDOUT)
        if result.returncode:
            raise SystemExit(f"Compilation failed: {out / 'compile.log'}")
        stamp.write_text(digest + "\n")
    start = time.monotonic()
    cmd = [str(binary), f"+cycles={a.cycles}", f"+seed={a.seed}",f"+cooling_period={a.cooling_period}"]
    with (out / "simulation.log").open("w") as log:
        result = subprocess.run(cmd, cwd=out, stdout=log, stderr=subprocess.STDOUT)
    log_text = (out / "simulation.log").read_text()
    print(log_text[-3000:])
    if result.returncode or "PASS" not in log_text:
        raise SystemExit(f"RTL validation failed: {out / 'simulation.log'}")
    import numpy as np
    q = np.load(ROOT / "python_code/G15.npy", allow_pickle=False)
    assignment = np.array(list(map(int, (out / "best_assignment.txt").read_text().strip())))
    cut = int(sum(q[i, j] for i in range(800) for j in range(i+1, 800) if assignment[i] != assignment[j]))
    summary = json.loads((out / "summary.json").read_text())
    assert cut == summary["best_cut"], (cut, summary)
    summary.update({"seed": a.seed,"cooling_period":a.cooling_period, "verilator": version, "source_sha256": digest,
                    "wall_seconds": round(time.monotonic()-start, 3), "inputs": manifest,
                    "assignment_cut_independently_verified": cut})
    (out / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(f"Independently verified saved assignment: cut={cut}")


if __name__ == "__main__":
    main()
