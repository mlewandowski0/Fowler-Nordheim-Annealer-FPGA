#!/usr/bin/env python3
"""Audit benchmark event definitions and reproduce supported FPGA measurements.

This reads archived source/logs and recorded board results. It does not run or
simulate a CPU/SpiNNaker2 competitor, and does not turn historical constants
into validated speedups.
"""
import argparse
import ast
import csv
import hashlib
import json
from pathlib import Path
import re
import statistics

import numpy as np

ROOT = Path(__file__).resolve().parents[1]


def source_evidence(relative, needle, context=2):
    path = ROOT / relative
    text = path.read_text()
    lines = text.splitlines()
    hit = next(i for i, line in enumerate(lines) if needle in line)
    first, last = max(0, hit-context), min(len(lines), hit+context+1)
    return {"file": relative, "line": hit+1,
            "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "excerpt": "\n".join(f"{i+1}: {lines[i]}" for i in range(first, last))}


def python_counter_semantics(relative):
    path = ROOT / relative
    tree = ast.parse(path.read_text())
    parents = {}
    for node in ast.walk(tree):
        for child in ast.iter_child_nodes(node):
            parents[child] = node
    loops, increments = [], []
    bindings = {}
    for node in ast.walk(tree):
        if isinstance(node, ast.Assign):
            for target in node.targets:
                if isinstance(target, ast.Name):
                    bindings[target.id] = ast.unparse(node.value)
    for node in ast.walk(tree):
        if isinstance(node, ast.For):
            bound = ast.unparse(node.iter)
            resolved = bindings.get(bound, bound)
            if "MAX_ITER" in resolved:
                loops.append({"line": node.lineno, "bound": bound, "resolved_bound": resolved})
        if isinstance(node, ast.AugAssign) and isinstance(node.target, ast.Name) and node.target.id == "num_spikes":
            conditionals = []
            current = node
            while current in parents:
                current = parents[current]
                if isinstance(current, ast.If):
                    conditionals.append(ast.unparse(current.test))
            increments.append({"line": node.lineno, "enclosing_conditions": conditionals})
    assert loops and increments, relative
    return {"file": relative, "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "iteration_budget_loops": loops, "accepted_counter_increments": increments,
            "max_iter_counts_accepted_flips": False}


def historical_constants():
    relative = "paper_writing/comparison.ipynb"
    path = ROOT / relative
    cells = json.loads(path.read_text())["cells"]
    result = []
    for index, cell in enumerate(cells):
        if cell.get("cell_type") != "code":
            continue
        source = "".join(cell["source"])
        literals = {}
        for node in ast.parse(source).body:
            if isinstance(node, ast.Assign):
                try:
                    value = ast.literal_eval(node.value)
                except (ValueError, TypeError):
                    continue
                for target in node.targets:
                    if isinstance(target, ast.Name):
                        literals[target.id] = value
        if "names" in literals and "times" in literals:
            for name, duration in zip(literals["names"], literals["times"]):
                result.append({"platform": name, "reported_seconds": duration,
                               "code_cell_index": index,
                               "origin": "literal list in plotting code",
                               "raw_timing_record_identified": False,
                               "accepted_flip_definition_established": False,
                               "validated_cross_platform_speedup": False})
    assert any(r["reported_seconds"] == 504 for r in result)
    assert any(r["reported_seconds"] == 2460 for r in result)
    return {"file": relative, "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "references": result,
            "mixed_figure_metrics": "NeuroSA: 100 mln flips; bifurcation machine: time to solution"}


def archived_log_counts():
    groups, records = [], []
    for directory in sorted((ROOT / "python_code/runs/iter=1e8_PC").iterdir()):
        if not directory.is_dir():
            continue
        entries = []
        for path in sorted(directory.glob("logs/*.txt")):
            with path.open() as stream:
                reader = csv.DictReader(stream)
                if not {"iter", "spikes"}.issubset(reader.fieldnames or []):
                    continue
                rows = list(reader)
            if not rows:
                continue
            last = rows[-1]
            iteration = int(float(last["iter"]))
            accepted = int(float(last["spikes"]))
            # The runner logs the zero-based loop index after processing it.
            rounds = iteration+1
            assert 0 <= accepted <= rounds, path
            entry = {"file": str(path.relative_to(ROOT)),
                     "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
                     "last_logged_zero_based_iteration": iteration,
                     "candidate_rounds_through_last_log": rounds,
                     "accepted_flips_through_last_log": accepted,
                     "accepted_fraction": accepted/rounds,
                     "completion_proven": False}
            entries.append(entry)
        if entries:
            groups.append({"directory": str(directory.relative_to(ROOT)),
                           "logs": len(entries),
                           "minimum_last_logged_rounds": min(r["candidate_rounds_through_last_log"] for r in entries),
                           "maximum_last_logged_rounds": max(r["candidate_rounds_through_last_log"] for r in entries),
                           "minimum_accepted_fraction": min(r["accepted_fraction"] for r in entries),
                           "maximum_accepted_fraction": max(r["accepted_fraction"] for r in entries)})
            records.extend(entries)
    assert records
    return groups, records


def fpga_results():
    graph_path = ROOT / "python_code/G15.npy"
    graph_sha = hashlib.sha256(graph_path.read_bytes()).hexdigest()
    graph = np.load(graph_path, allow_pickle=False)
    manifest = json.loads((ROOT / "results/implementation/manifest.json").read_text())
    runs = []
    for path in sorted((ROOT / "results/performance/board").glob("bench_*.json")):
        value = json.loads(path.read_text())
        assert value["graph_sha256"] == graph_sha
        for key, name in [("bitfile_sha256", "qubo.bit"), ("hwh_sha256", "qubo.hwh")]:
            assert value[key] == manifest["artifacts"][name]
        assignment = np.array(value["assignment"], dtype=np.int32)
        assert assignment.shape == (800,) and set(np.unique(assignment)) <= {0, 1}
        cut = int(np.sum(np.triu(graph, 1)*(assignment[:, None] != assignment[None, :])))
        assert cut == value["final_score"] == value["independent_cut"]
        cycles, flips = value["cycles"], value["accepted_flips"]
        assert 0 < cycles < 2**32 and 10**8 <= flips < 2**32
        seconds = cycles/(value["fclk0_mhz"]*1e6)
        normalized = seconds*1e8/flips
        assert abs(seconds-value["hardware_seconds"]) < 1e-8
        assert abs(normalized-value["normalized_seconds_per_100m_flips"]) < 1e-8
        runs.append({"file": str(path.relative_to(ROOT)), "seed": value["seed"],
                     "clock_mhz": value["fclk0_mhz"], "cooling_period": value["cooling_period"],
                     "accepted_flips": flips, "cycles": cycles,
                     "actual_hardware_seconds": seconds,
                     "normalized_seconds_per_100m_accepted_flips": normalized,
                     "overshoot_fraction_of_target": (flips-1e8)/1e8,
                     "verified_best_cut": cut, "assignment_verified_here": True,
                     "bitfile_sha256": value["bitfile_sha256"],
                     "graph_sha256": graph_sha,
                     "sha256": hashlib.sha256(path.read_bytes()).hexdigest()})
    slow = next(r for r in runs if r["clock_mhz"] == 50 and r["seed"] == 1)
    fast = next(r for r in runs if r["clock_mhz"] > 100 and r["seed"] == 1)
    assert slow["cooling_period"] == fast["cooling_period"]
    assert slow["bitfile_sha256"] == fast["bitfile_sha256"]
    gain = slow["normalized_seconds_per_100m_accepted_flips"]/fast["normalized_seconds_per_100m_accepted_flips"]
    clock_gain = fast["clock_mhz"]/slow["clock_mhz"]
    return {"runs": runs, "same_bitstream_seed1_normalized_throughput_gain": gain,
            "same_seed_clock_frequency_ratio": clock_gain,
            "relative_gain_minus_clock_ratio_ppm": (gain/clock_gain-1)*1e6,
            "median_fast_normalized_seconds": statistics.median(r["normalized_seconds_per_100m_accepted_flips"] for r in runs if r["clock_mhz"] > 100),
            "verdict": "Supported normalized clock-scaling throughput comparison, not CPU/SpiNNaker2 speedup or time-to-solution speedup."}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=ROOT / "results/comparison_audit")
    args = parser.parse_args()
    groups, logs = archived_log_counts()
    old_scheduler = "zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/new/scheduler_2.v"
    old_text = (ROOT / old_scheduler).read_text()
    assert re.search(r"S_WAIT:\s*begin\s*flips\s*<=\s*flips\s*\+\s*1;\s*if\s*\(flip\)", old_text)
    record = {
        "audit_version": 1,
        "verdict": "CPU/SpiNNaker2 advertised speedups are unvalidated: historical timed work and current accepted-flip budget are not established as equivalent.",
        "historical_plot_constants": historical_constants(),
        "python_budget_semantics": python_counter_semantics("python_code/NeuroSA_runner.py"),
        "legacy_log_groups": groups,
        "legacy_logs": logs,
        "fpga": fpga_results(),
        "evidence": [
            source_evidence("python_code/NeuroSA_runner.py", "for iter in pb:"),
            source_evidence("python_code/NeuroSA_runner.py", "if spike and not spike_sel:"),
            source_evidence("python_code/NeuroSA_runner.py", "num_spikes += 1"),
            source_evidence("python_code/NeuroSA_runner.py", "if iter % config.COUNTER == 0:"),
            source_evidence(old_scheduler, "flips <= flips + 1;", 4),
            source_evidence("vitis_software/fw_ann_Neq800_flips_and_uart_app/src/main.c", "while (val < NO_OF_FLIPS)", 3),
            source_evidence("rtl/scheduler_2.v", "flips <= flips + 1;", 3)],
        "limitations": [
            "The archive does not link the literal 504/2460-second constants to a particular timed run or executable. The legacy-runner evidence demonstrates a budget-definition risk, not proof of how those constants were measured.",
            "MAX_ITER is a candidate-round budget. A round tests up to UNITS candidates and can end with no accepted flip; earlier units short-circuit later evaluations.",
            "The archived hardware counter increments each S_WAIT cycle. The maintained counter increments once per S_CAPTURE accepted update. No source/bitstream/timing link establishes which counter generated the original 20-second value.",
            "FPGA durations use hardware cycles and configured PLL frequency and exclude host initialization/loading/readout. The original host seconds field also includes post-stop hashing overhead and is not end-to-end latency.",
            "The 50-to142.857 MHz comparison uses the same bitstream/configuration/seed, but slightly different stopping counts. It is a normalized throughput estimate; exact counts/overshoot are retained.",
            "CPU uses floating-point/software-style approximations and early exit; the FPGA uses fixed-point LUTs and parallel candidate generation. Cooling advances by candidate rounds in Python and active cycles in hardware.",
            "Final assignments and objective scores are verified; this is not verification of original CPU/SpiNNaker2 final quality or a statistically powered time-to-solution comparison.",
            "Power values have no matched measured system boundary; the FPGA figure is a vector-less Vivado estimate, so energy-efficiency speedups are unsupported."],
        "supported_claims": [
            "G15 FPGA throughput at the recorded clock, with exact accepted flips, cycles, configurations, independent assignments, and explicit normalization.",
            "Approximately 2.857x normalized throughput from raising the same FPGA implementation from 50 to 142.857 MHz for seed 1.",
            "Three recorded high-clock runs produce best cuts 3050, 3049, 3049; no 20-run success probability is inferred."],
        "unsupported_claims": [
            "66x faster than Intel Core Ultra 9 185H.",
            "324x faster than SpiNNaker2.",
            "2.857x improvement over a CPU/SpiNNaker2 algorithm or over the paper's time-to-solution.",
            "Measured board energy or energy-efficiency improvements inferred from Vivado power."],
    }
    args.out.mkdir(parents=True, exist_ok=True)
    (args.out / "audit.json").write_text(json.dumps(record, indent=2)+"\n")
    with (args.out / "legacy_iteration_vs_flips.csv").open("w") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(logs[0]))
        writer.writeheader()
        writer.writerows(logs)
    print(json.dumps({"verdict": record["verdict"], "audited_legacy_logs": len(logs),
                      "same_seed_fpga_throughput_gain": record["fpga"]["same_bitstream_seed1_normalized_throughput_gain"],
                      "results": str(args.out)}, indent=2))


if __name__ == "__main__":
    main()
