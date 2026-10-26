# Maintained fixed-point RTL

The explicit source list is [files.f](files.f). It selects the buffered,
fixed-point, binary-edge implementation; selected historical inputs remain as provenance. The full old project trees
are retained in Git history.

These files were initially copied from
`zynq7020/zynq7020_hardware/zynq7020_hardware.srcs/sources_1/imports/design-files/`,
except `scheduler_2.v`, copied from that project's `sources_1/new/` directory.
The starting point is the later 2025 board implementation, not a reconstruction
of the exact 2024 paper configuration.

Changes in this maintained version:

- Correct the `NEURONS_PER_UNIT` default to divide by `UNITS`.
- Honor host halt before accepting a candidate, drain a captured update, and
  suppress temperature pulses while paused.
- Flush candidate buffers during host initialization/pause.
- Freeze the noise RNG while paused so host loading time does not change seeded runs.
- Expose a programmable cooling interval, recorded by both simulation and board drivers.
- Count accepted flips separately from cycles spent waiting for candidates.
- Remove the bulk reset from 11,200 host-initialized field/state bits.
- Replace the serial priority chain with a balanced, cycle-equivalent mux tree.
- Register the cooling terminal count while paused to remove configuration
  subtraction from the active temperature-control path.
- Retain and expose the best assignment with its score.
- Rename the Verilog identifier `priority`, which is a SystemVerilog keyword.
- Add `qubo_axi.v`, an AXI4-Lite interface with independently buffered write
  address/data channels, cycle/flip counters, ABI identification, and assignment
  readback. The seed register meanings are documented in the new ABI.

The optimized build targets approximately 144 MHz; see the routed report and
recorded board clock for the precise frequencies. The supported configuration is G15, N=800, M=25, A=32, fixed priority, 18-bit
fixed point with 9 fractional bits, a 16-bit noise LFSR addressing an 8-bit LUT,
and a 9-bit cooling LUT. Graphs and LUTs are initialized from `.mif` files at
build time. The hardware accepts initial local fields and seeds from the host;
it does not accept a new graph through AXI.

Membrane/state arrays support simultaneous updates to 32 variables per unit.
They therefore map to registers and logic despite historical `ram_style`
comments/attributes. Do not claim that all state and graph storage occupy a
single physical BRAM per unit; inspect the generated utilization report.

Other parameter combinations and floating-point/unbuffered branches are legacy
experiments and are not supported by this source manifest. See
[the validation report](../docs/validation.md) for tested behavior and limits.
