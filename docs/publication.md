# Repository and release notes

This is a private preparation snapshot. A local commit does not publish the
repository or deploy the website. Public release is a separate user decision.

## Current checkout

Start with the top-level README, `demo/`, and [documentation guide](README.md).
Maintained RTL, testbenches, tools, and measured evidence live in `rtl/`, `sim/`,
`scripts/`, and `results/`. Selected graph inputs, LUTs, historical logs, and
source excerpts remain at their original paths to preserve provenance hashes.

Generated Vivado/Vitis projects and unrelated experiments have been removed
from the tracked tree. They remain in previous Git commits and, on the original
development machine, in the ignored `.research-archive/` directory. No history
rewrite was performed: the roughly 1.7 GB historical tree still affects clone
size. A future lightweight public repository can use a source export without
old history, if desired.

`ISCAS2025-FPGA-QUBO/` is a deliberate file export tracked by this repository,
including its static demo. Its former nested `.git` metadata is preserved only
in the ignored local archive. Updating these files does not deploy the existing
GitHub Pages site. `scripts/export_demo_recordings.py` synchronizes demo assets
and selected documentation into the site export.

`make package` creates a compact source archive and includes validated overlay
bundles when those local builds exist. Build directories, Git metadata, local
archive contents, and machine/board configuration are excluded. Bitstreams are
rebuilt from source or distributed separately; they are not committed here.

## Before making it public

- Choose a software/RTL license with the relevant rights holders. The website
  template's CC BY-SA notice does not license the entire project. The vendored
  NeuroSA CPU reference has its own CC BY-NC 4.0 license and attribution.
- Review paper and benchmark redistribution rights and final contribution text.
- Decide whether to publish this history or a clean source export.
- Rotate the credential previously found in the board's private configuration;
  that configuration was not copied into this repository or release packages.
- Check the first hosted CI run after pushing. Local passing checks do not
  establish that GitHub-hosted CI has run.

The maintained claims are measured FPGA clock scaling, independently checked
Gset/Sudoku solutions, named CPU measurements, and fixed native-iteration
runtimes. Old Intel/SpiNNaker2 speedup ratios remain withdrawn. Published
SpiNNaker2 runtime bars are documented separately; their exact iteration budget
and equivalent work event remain unconfirmed. See
[the comparison](spinnaker_comparison.md) and [iteration timing](iterations.md).
