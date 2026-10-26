# ISCAS 2025 project page

Static project page and historical media for **Design and FPGA Realization of
QUBO Hardware Accelerator for MAX-CUT Problem**, by Maciej Lewandowski and Piotr Dudek.

The current implementation, contribution overview, and validation instructions
are in the [repository README](../README.md), [validation report](../docs/validation.md),
and [reproduction guide](../docs/reproduce.md). The paper abstract is retained;
additional text explains the distinction between historical simulation, timing
estimates, and independently verified board runs.

Preview locally from the repository root:

```bash
python3 -m http.server 8000 --directory ISCAS2025-FPGA-QUBO
```

This directory is a deliberate website export tracked directly by the main
repository. The former nested `.git` metadata is preserved only in the ignored
local research archive. Committing this export does not deploy the live site.

## Template attribution and license

Built using the [Academic Project Page Template](https://github.com/eliahuhorwitz/Academic-project-page-template),
adopted from [Nerfies](https://nerfies.github.io/).
The website template is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
This notice does not license the accelerator RTL or the paper.
