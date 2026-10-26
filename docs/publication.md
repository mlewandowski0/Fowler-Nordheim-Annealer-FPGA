# Repository notes

## Layout

Start with the top-level README, `demo/`, and the [documentation guide](README.md).
Maintained RTL, testbenches, tools, and measured evidence live in `rtl/`, `sim/`,
`scripts/`, and `results/`. Selected graph inputs, LUTs, historical logs, and
source excerpts remain at their original paths to preserve provenance hashes.

Generated Vivado/Vitis projects and unrelated experiments are not in the
current tree; they remain in earlier Git commits, which is why a full clone is
large. `make package` creates a compact source archive (plus validated overlay
bundles when local builds exist). Bitstreams are rebuilt from source; they are
not committed.

`ISCAS2025-FPGA-QUBO/` is a file copy of the original project website,
including its static demo. Updating it does not deploy the GitHub Pages site;
`scripts/export_demo_recordings.py` synchronizes demo assets and selected
documentation into it.

## Papers

The FPGA paper is on [IEEE Xplore](https://ieeexplore.ieee.org/document/11044179/).
The NeuroSA reference tables come from the Supplementary Information of
[Chen et al., Nat. Commun. 2025](https://www.nature.com/articles/s41467-025-58231-5).
Neither PDF is redistributed; their hashes are recorded where they are used.

## Licensing

Code, RTL, documentation and results are MIT-licensed ([LICENSE](../LICENSE)).
`third_party/neurosa_reference/` (CC BY-NC 4.0) and the website template in
`ISCAS2025-FPGA-QUBO/` keep their own licenses.

## Claims

The maintained claims are measured FPGA clock scaling, independently checked
Gset/Sudoku solutions, named CPU measurements, and fixed native-iteration
runtimes. Old Intel/SpiNNaker2 speedup ratios remain withdrawn. Published
SpiNNaker2 runtime bars are documented separately; their exact iteration budget
and equivalent work event remain unconfirmed. See
[the comparison](spinnaker_comparison.md) and [iteration timing](iterations.md).
