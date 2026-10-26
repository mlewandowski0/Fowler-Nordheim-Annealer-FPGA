# AXI4-Lite interface, ABI v1

Base address: `0x40000000`. Accesses are 32-bit; writable registers honor byte
strobes. Offset `0x20` must return `0x51554231` (`QUB1`) before programming.

| Offset | Access | Meaning |
| --- | --- | --- |
| `0x00` | RW | Bit 0 releases core reset; bit 1 enables running. Use 0 for reset, 1 for initialize/pause, 3 to run. |
| `0x04` | RW | One-hot unit mask for loading both RNG seeds. Clear while changing seed values. |
| `0x08` | RW | One-hot unit mask for local-field/state writes. Clear while changing index or data. |
| `0x0c` | RW | Neuron-selection seed, low 9 bits. All ones is the XNOR-LFSR lock state; avoid it. |
| `0x10` | RW | Noise seed, low 16 bits. Avoid all ones. |
| `0x14` | RW | State in bits 13:10, signed local field in bits 9:0. Initial state `0010` encodes spin +1. |
| `0x18` | RW | Local variable index, 0..31. Global vertex index is `32*unit + local_index`. |
| `0x1c` | RO | Best cut score, low 16 bits. |
| `0x20` | RO | ABI identifier `0x51554231`. |
| `0x24` | RO | Active cycle counter, low 32 bits. |
| `0x28` | RO | Accepted flip counter, 32 bits. |
| `0x2c` | RO | Bit 0: paused and safe for coherent result readback. |
| `0x30` | RW | Active cycles per cooling increment. Set while reset/paused before running; the terminal count is registered while paused. The driver uses 65,536. Zero selects the RTL default, 4,096. |
| `0x40`..`0xa0` | RO | Best assignment: 25 words, bit `b` of word `w` is vertex `32*w+b`. |

Request pause and poll `0x2c` before reading multiword results. A captured
update drains before pause becomes effective. Counters stop while paused;
reset clears counters and scores and sets the tracked assignment to all ones.
The supported initialization is all spins +1 with local fields equal to graph
degrees. Other initial assignments are not supported by the score tracker.

The legacy AXI wrapper has no ABI ID or assignment readback and crosses the
named seed signal widths. Its interface must not be substituted for ABI v1.

Local field/state arrays are initialized by the host rather than bulk-cleared
by reset. Initialize every entry after reset and before enabling the search;
resetting the control/score tracker alone does not initialize problem state.
