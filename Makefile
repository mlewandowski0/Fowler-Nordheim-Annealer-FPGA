.PHONY: inputs sim test audit overlay package demo sudoku-test gset-test iteration-test
inputs:
	python3 scripts/prepare_inputs.py
sim:
	python3 scripts/run_sim.py --cycles 1000000
test:
	python3 scripts/run_sim.py --cycles 100000
	python3 scripts/test_selector.py
	python3 scripts/test_axi.py
audit:
	python3 scripts/audit_results.py
	python3 scripts/audit_comparison.py
	python3 scripts/audit_gset_inputs.py
	python3 scripts/summarize_gset.py
	python3 scripts/summarize_spinnaker.py
	python3 scripts/summarize_iterations.py
overlay:
	python3 scripts/build_overlay.py
package:
	python3 scripts/package_source.py

sudoku-test:
	python3 scripts/test_sudoku_model.py
	python3 scripts/run_sudoku_sim.py --cycles 2000000 --require-solved
demo:
	python3 scripts/export_demo_recordings.py
	python3 -m http.server 8000

gset-test:
	python3 scripts/test_gset.py
	python3 scripts/test_gset.py --variant 1024
	python3 scripts/test_gset.py --variant 2048

iteration-test:
	python3 scripts/test_iterations.py
