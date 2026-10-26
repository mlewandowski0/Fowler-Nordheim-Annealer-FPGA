# Sudoku model audit

The mathematical model, clue reduction, memory layout, and generated RTL
specialization pass the independent checks in
[`scripts/test_sudoku_model.py`](../scripts/test_sudoku_model.py). Run:

```bash
python3 scripts/test_sudoku_model.py
```

Seven deterministic tests cover an independently constructed conflict graph,
the published clue coordinates, both preset reductions, independent Sudoku
validation, randomized energies/flip gains, generated memory files, and RTL
source contracts. This is a model audit, not a measured solver benchmark or a
replacement for clocked RTL simulation and board validation.

## Encoding and source

The formulation follows Sascha Mücke's
[A Simple QUBO Formulation of Sudoku](https://arxiv.org/html/2403.04816v1),
Equations (1)–(3) and the clamping operations in Section 2.1. The source defines
an upper triangular QUBO: each conflicting pair is counted once, including
pairs that violate more than one rule. With one bit per cell/digit, the
objective used here is

```text
E(x) = -sum_i x_i + 3 sum_{i<j, conflicting} x_i*x_j.
```

The full encoding has 729 bits. Independent enumeration gives degree 28 for
every bit and 10,206 undirected conflict edges. Degree 28 consists of eight
other digits in the cell and 20 cells with the same digit in the union of its
row, column, and box. The same-digit row/box overlaps do not create extra
penalties. A two-bit test sharing both a row and a box has energy 1, not 4.

The paper preset's 24 clue triples match Section 3/Figure 1 exactly. Applying
all four clue-clamping rules leaves **211 free bits**, matching the paper's
reduction before its additional optional preprocessing. The classic preset
has **30 clues and 153 free bits**. Neither preset uses the paper's optional
QPRO+ preprocessing.

## Clamping, initialization, and padding

The implementation fixes each clue bit ON, all its conflicting bits OFF,
and the 71 padding slots (729–799) OFF. The retained adjacency is symmetric
and contains only free-to-free conflict edges. The padding and every other
clamped variable have zero adjacency and cannot propose a flip. These facts
are checked against an independent, pairwise Sudoku-rule construction.

Every free bit starts OFF. The only initial ON bits are the original clues:
24 or 30 bits, respectively. Generated fields, state words, the 25 distributed
adjacency memories, and the full graph memory are read back and compared with
the model. No solved grid is written to initialization files.

Because every free candidate conflicts with no ON clue, clamping leaves the
free linear coefficient at -1 and contributes the constant `-clue_count`.
There is no missing clue-dependent linear bias. The reduced energy is

```text
E(x) = -clue_count - sum_free x_i
       + 3 sum_{i<j, free conflict} x_i*x_j.
```

## Hardware field and score mapping

For each free bit, define the signed field

```text
h_i = -2 + 6 * number_of_ON_free_neighbors(i).
```

The generated storage uses neighbor updates of +6 when a bit turns ON and
-6 when it turns OFF. The scheduler's score change is `-h_i` for OFF→ON and
`+h_i` for ON→OFF. Hence the tracked gain relative to initialization is

```text
gain = -2 * (E(x) + clue_count).
```

The tests independently evaluate 96 random clamped assignments and 768
single-bit transitions. Each full energy difference agrees with the hardware
score delta, and each incremental field update agrees with recomputation.
All fixed bits remain at their prescribed values in these tests.

For any binary state, each free field lies between -2 and 166, so the signed
10-bit field is sufficient. Even a conservative full-729-variable energy
bound fits the generated signed 18-bit score. These bounds concern valid
field initialization and correct updates; they do not cover a corrupted
memory or incorrect update sequence.

State bit 3 becomes an immutable clamp flag in the generated variant. The
spike predicate explicitly requires `!st_p[3]`; storage updates no longer
overwrite that flag. State bit 1 holds the assignment, and bit 0 is its
complement. The tracker receives the host's state writes while halted and
initializes both current and best assignments accordingly.

The host must reset the tracker and load **all 800 fields/states while halted**
before starting a puzzle. The scheduler's reset assignment alone is not the
clue-only initialization. The generator supplies this write path; the source
contract test does not prove the host/AXI timing or every clocked interaction.

## Independent solution validation

The test oracle is a bounded MRV/backtracking Sudoku solver. It is used only
inside the test script, to obtain a valid assignment for each preset and
check energy/goal correspondence. Its assignments are never passed to the
annealer or emitted as initialization files.

An independent validator requires binary one-hot cells, the original clues,
and every row/column/box to contain digits 1–9. Both test solutions satisfy
these rules and have energy -81. Empty cells, multiple digits in a cell,
and an otherwise valid digit-permuted grid that violates clues are rejected
by both validators.

There is also a direct global lower-bound argument. A cell containing `k`
selected digits contributes `-k + 3*k*(k-1)/2`, which is at least -1 and
equals -1 only when `k=1`. Inter-cell conflict penalties are nonnegative.
Thus `E >= -81`, and equality requires exactly one digit per cell and no
Sudoku conflicts. With clues clamped, energy -81 therefore certifies a
solution of the requested puzzle. The corresponding score goals are
**114 for the paper preset** and **102 for the classic preset**.

The checked model files are
[`sudoku_model.py`](../scripts/sudoku_model.py),
[`prepare_sudoku_rtl.py`](../scripts/prepare_sudoku_rtl.py), and
[`build_sudoku.py`](../scripts/build_sudoku.py). Physical timing closure,
annealing success rate, and actual hardware time to solution require their
own recorded validation.
