#!/usr/bin/env python3
"""Validate G15 and generate ROMs with an explicit bit ordering."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
MIFS = ROOT / "zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/imports/mif_files"


def prepare(out):
    out = Path(out)
    out.mkdir(parents=True, exist_ok=True)
    graph = ROOT / "python_code/G15.npy"
    q = np.load(graph, allow_pickle=False)
    assert q.shape == (800, 800)
    assert np.array_equal(q, q.T) and not np.diag(q).any()
    assert set(np.unique(q)) == {0, 1}
    assert int(q.sum()) == 9322
    for unit in range(25):
        name = f"adj_matrix_N800_A25_distributed{unit}.mif"
        # Rightmost character is bit 0, the first vertex in this unit.
        text = "\n".join("".join(map(str, row[::-1])) for row in q[:, unit*32:(unit+1)*32]) + "\n"
        assert text.splitlines() == (MIFS / name).read_text().splitlines(), name
        (out / name).write_text(text)
    (out / "graph_rows.mem").write_text("\n".join("".join(map(str, row[::-1])) for row in q) + "\n")
    (out / "degrees.mem").write_text("\n".join(f"{int(v):04x}" for v in q.sum(axis=1)) + "\n")
    for name in ["log_noise_fixed_width=18_frac_bits=9_nbits_of_lut=8.mif", "temperature_LUT_fixed_N9.mif"]:
        shutil.copyfile(MIFS / name, out / name)
    manifest = {"graph": "G15", "vertices": 800, "edges": 4661,
                "graph_sha256": hashlib.sha256(graph.read_bytes()).hexdigest(),
                "rom_sha256": {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                               for p in sorted(out.glob("*.mif"))}}
    (out / "inputs.json").write_text(json.dumps(manifest, indent=2) + "\n")
    return manifest


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--out", type=Path, default=ROOT / "build/sim")
    args = p.parse_args()
    print(json.dumps(prepare(args.out), indent=2))
