Unmodified `neurosa.py` from Zihao Chen / aimlab-wustl/neuroSA,
commit `989b9697b3fb64142eaf859bc6c443e75d328302`.
Source: https://github.com/aimlab-wustl/neuroSA/blob/989b9697b3fb64142eaf859bc6c443e75d328302/neurosa.py
License: CC BY-NC 4.0; see LICENSE and the source header.

`scripts/run_cpu_reference.py` wraps the original update method to stop on
accepted flips, save independently checked best assignments and time targets.
It implements the original threshold/iteration progression but omits console
printing during compute. It does not turn this Python baseline into a claim
about the fastest possible CPU solver or a cycle-equivalent FPGA model.
