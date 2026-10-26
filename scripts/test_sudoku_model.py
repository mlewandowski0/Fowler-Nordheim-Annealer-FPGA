#!/usr/bin/env python3
"""Independent mathematical checks for the Sudoku model; no annealing benchmark.

The exact solver below is a test oracle only. Its solutions are never written
to model/overlay initialization files or supplied to the annealer.
"""
import json
from pathlib import Path
import tempfile
import unittest

import numpy as np

import sudoku_model as sut
from prepare_sudoku_rtl import generate


def reference_conflicts():
    """Build pair membership directly from Sudoku rules, without model helpers."""
    coordinates = [(r, c, d) for r in range(9) for c in range(9) for d in range(9)]
    result = np.zeros((729, 729), dtype=bool)
    for i, (r, c, d) in enumerate(coordinates):
        for j in range(i + 1, 729):
            rr, cc, dd = coordinates[j]
            cell = r == rr and c == cc
            peer = r == rr or c == cc or (r // 3, c // 3) == (rr // 3, cc // 3)
            if cell or (d == dd and peer):
                result[i, j] = result[j, i] = True
    return result


REFERENCE = reference_conflicts()
EDGE_I, EDGE_J = np.nonzero(np.triu(REFERENCE, 1))


def reference_energy(bits):
    x = np.asarray(bits, dtype=np.int64)[:729]
    return int(-sum(x) + 3 * np.dot(x[EDGE_I], x[EDGE_J]))


def reference_valid(bits, puzzle):
    """Decode only binary one-hot cells and check the actual Sudoku rules."""
    x = list(map(int, bits[:729]))
    if len(x) != 729 or any(v not in (0, 1) for v in x):
        return False
    grid = []
    for i in range(81):
        digits = [d + 1 for d in range(9) if x[9 * i + d]]
        if len(digits) != 1:
            return False
        if puzzle[i] not in '0.' and digits[0] != int(puzzle[i]):
            return False
        grid.append(digits[0])
    groups = [grid[r * 9:r * 9 + 9] for r in range(9)]
    groups += [[grid[r * 9 + c] for r in range(9)] for c in range(9)]
    groups += [[grid[(r + dr) * 9 + c + dc] for dr in range(3) for dc in range(3)]
               for r in (0, 3, 6) for c in (0, 3, 6)]
    return all(sorted(group) == list(range(1, 10)) for group in groups)


def exact_test_solution(puzzle):
    """Bounded MRV backtracking oracle, used only by validation tests."""
    grid = [int(c) if c != '.' else 0 for c in puzzle]
    visits = 0

    def search():
        nonlocal visits
        visits += 1
        if visits > 100000:
            raise AssertionError('Test oracle exceeded its bounded search budget')
        best = None
        for i, value in enumerate(grid):
            if value:
                continue
            r, c = divmod(i, 9)
            used = set(grid[r * 9:r * 9 + 9])
            used.update(grid[rr * 9 + c] for rr in range(9))
            used.update(grid[rr * 9 + cc] for rr in range(r // 3 * 3, r // 3 * 3 + 3)
                        for cc in range(c // 3 * 3, c // 3 * 3 + 3))
            possible = set(range(1, 10)) - used
            if not possible:
                return False
            if best is None or len(possible) < len(best[1]):
                best = i, possible
        if best is None:
            return True
        i, possible = best
        for value in sorted(possible):
            grid[i] = value
            if search():
                return True
        grid[i] = 0
        return False

    if not search():
        raise AssertionError('Preset has no solution')
    bits = np.zeros(800, dtype=np.int32)
    for i, digit in enumerate(grid):
        bits[i * 9 + digit - 1] = 1
    return bits


class SudokuModelAudit(unittest.TestCase):
    def test_paper_clues_match_published_coordinates(self):
        # Section 3 / Fig. 1, arXiv:2403.04816v1; one-based (row,column,digit).
        published = {(1,8,2),(2,5,9),(2,8,4),(3,4,3),(3,6,2),(3,9,7),
                     (4,1,6),(4,3,5),(4,4,1),(4,9,8),(5,4,7),(5,6,5),
                     (5,7,1),(6,2,3),(6,4,2),(6,9,5),(7,2,9),(7,5,7),
                     (7,9,3),(8,2,8),(8,8,9),(9,3,4),(9,6,6),(9,7,5)}
        actual = {(i // 9 + 1, i % 9 + 1, int(c))
                  for i, c in enumerate(sut.PRESETS['paper']['puzzle']) if c != '0'}
        self.assertEqual(actual, published)

    def test_full_graph_and_overlap_deduplication(self):
        np.testing.assert_array_equal(sut.CONFLICT, REFERENCE)
        self.assertFalse(np.any(np.diag(sut.CONFLICT)))
        self.assertTrue(np.all(sut.CONFLICT.sum(axis=1) == 28))
        self.assertEqual(len(EDGE_I), 10206)
        # Same digit in two cells sharing both a row and a box: only one edge.
        x = np.zeros(800, dtype=np.int32)
        x[[0, 9]] = 1
        self.assertEqual(sut.energy(x), -2 + 3)

    def test_clamping_and_unbiased_free_initialization(self):
        for preset, expected in [('classic', (30, 153)), ('paper', (24, 211))]:
            with self.subTest(preset=preset):
                puzzle = sut.PRESETS[preset]['puzzle']
                m = sut.model(puzzle)
                clues = [(i, int(c)) for i, c in enumerate(puzzle) if c not in '0.']
                on = {i * 9 + d - 1 for i, d in clues}
                fixed = set(range(729, 800)) | on
                for i in on:
                    fixed.update(np.flatnonzero(REFERENCE[i]))
                self.assertEqual((m['clues'], len(m['free'])), expected)
                self.assertEqual(set(np.flatnonzero(m['fixed'])), fixed)
                self.assertEqual(set(np.flatnonzero(m['initial'])), on)
                self.assertTrue(np.all(m['initial'][m['free']] == 0))
                self.assertTrue(np.all(m['fields'][m['free']] == -2))
                self.assertFalse(np.any(m['fields'][m['fixed']]))
                self.assertTrue(np.all(m['fixed'][729:]))
                self.assertFalse(np.any(m['initial'][729:]))
                self.assertFalse(np.any(m['graph'][m['fixed'], :]))
                self.assertFalse(np.any(m['graph'][:, m['fixed']]))
                np.testing.assert_array_equal((m['states'] >> 3) & 1, m['fixed'])
                np.testing.assert_array_equal((m['states'] >> 1) & 1, m['initial'])
                np.testing.assert_array_equal(m['states'] & 1, 1 - m['initial'])
                self.assertEqual(reference_energy(m['initial']), -m['clues'])

    def test_independent_solution_and_invalid_states(self):
        for preset, data in sut.PRESETS.items():
            with self.subTest(preset=preset):
                puzzle = data['puzzle']
                x = exact_test_solution(puzzle)
                self.assertTrue(reference_valid(x, puzzle))
                self.assertTrue(sut.inspect(x, puzzle)['solved'])
                self.assertEqual(reference_energy(x), -81)
                self.assertEqual(sut.energy(x), -81)
                m = sut.model(puzzle)
                np.testing.assert_array_equal(x[m['fixed']], m['initial'][m['fixed']])
                self.assertEqual(-2 * (sut.energy(x) + m['clues']), m['goal_gain'])
                variants = [m['initial'].copy(), x.copy(), x.copy(), x.copy()]
                selected = np.flatnonzero(x[:729])
                variants[1][selected[0]] = 0  # an empty cell
                variants[2][(selected[0] // 9) * 9 + (selected[0] + 1) % 9] = 1
                # Still a valid Sudoku, but digit relabelling violates the clues.
                variants[3][:729] = np.roll(x[:729].reshape(81, 9), 1, axis=1).ravel()
                for invalid in variants:
                    self.assertFalse(reference_valid(invalid, puzzle))
                    self.assertFalse(sut.inspect(invalid, puzzle)['solved'])

    def test_random_clamped_energy_and_hardware_flip_identities(self):
        rng = np.random.default_rng(240304816)
        for preset, data in sut.PRESETS.items():
            m = sut.model(data['puzzle'])
            q = m['graph']
            for trial in range(48):
                x = m['initial'].copy()
                x[m['free']] = rng.integers(0, 2, len(m['free']))
                e = reference_energy(x)
                self.assertEqual(sut.energy(x), e)
                # Clue conflicts are all clamped OFF, so no extra linear shift.
                reduced = -int(x[m['free']].sum()) + 3 * int(x @ q @ x) // 2
                self.assertEqual(e, reduced - m['clues'])
                gain = -2 * (e + m['clues'])
                fields = m['fields'] + 6 * (q @ x)
                np.testing.assert_array_equal(fields[m['free']], (-2 + 6 * (q @ x))[m['free']])
                for i in rng.choice(m['free'], 8, replace=False):
                    before = int(x[i])
                    next_x = x.copy()
                    next_x[i] = 1 - before
                    next_e = reference_energy(next_x)
                    delta_gain = int(fields[i]) if before else -int(fields[i])
                    self.assertEqual(gain + delta_gain, -2 * (next_e + m['clues']))
                    updated_fields = fields + (6 if not before else -6) * q[i]
                    np.testing.assert_array_equal(updated_fields, m['fields'] + 6 * (q @ next_x))
                    self.assertGreaterEqual(int(updated_fields.min()), -512)
                    self.assertLessEqual(int(updated_fields.max()), 511)
                    self.assertGreaterEqual(gain + delta_gain, -(1 << 17))
                    self.assertLess(gain + delta_gain, 1 << 17)
                self.assertEqual(sut.inspect(x, data['puzzle'])['solved'],
                                 reference_valid(x, data['puzzle']))

    def test_prepared_files_contain_clues_only_and_disabled_padding(self):
        for preset in sut.PRESETS:
            with self.subTest(preset=preset), tempfile.TemporaryDirectory() as tmp:
                manifest = sut.prepare(tmp, preset)
                directory = Path(tmp)
                stored = json.loads((directory / 'sudoku_problem.json').read_text())
                self.assertEqual(stored, manifest)
                m = sut.model(sut.PRESETS[preset]['puzzle'])
                self.assertEqual(sum(stored['initial_bits']), m['clues'])
                for key, name in [('fields', 'fields.mem'), ('states', 'states.mem')]:
                    values = [int(line, 16) for line in (directory / name).read_text().splitlines()]
                    self.assertEqual(values, [int(v) & 1023 for v in m[key]])
                rows = np.array([[int(c) for c in line[::-1]]
                                 for line in (directory / 'graph_rows.mem').read_text().splitlines()])
                np.testing.assert_array_equal(rows, m['graph'])
                for u in range(25):
                    lines = (directory / f'adj_matrix_N800_A25_distributed{u}.mif').read_text().splitlines()
                    unit = np.array([[int(c) for c in line[::-1]] for line in lines])
                    np.testing.assert_array_equal(unit, rows[:, u * 32:(u + 1) * 32])

    def test_rtl_specialization_structural_contract(self):
        # This checks generated source contracts, not clocked RTL behavior.
        with tempfile.TemporaryDirectory() as tmp:
            files = {p.name: p.read_text() for p in generate(tmp)}
            storage = files['neuron_ensemble_storage.v']
            self.assertIn('parameter  DELTA = 6', storage)
            self.assertNotIn('state_ram[idx_offset_to_update][3] <=', storage)
            self.assertIn('& !st_p[3]', files['neuron_ensemble.v'])
            scheduler = files['scheduler_2.v']
            self.assertIn('if (halt_modules) begin', scheduler)
            self.assertIn('assignment[u*(1<<NEURON_NUM_WIDTH)+init_index] <= init_state;', scheduler)
            self.assertIn('best_assignment[u*(1<<NEURON_NUM_WIDTH)+init_index] <= init_state;', scheduler)
            self.assertIn('.init_state(neuron_state_in[1])', files['neuroSA_machine.sv'])
            self.assertIn('.SOLUTION_WIDTH(18)', files['qubo_axi.v'])
            self.assertIn("32'h53554431", files['qubo_axi.v'])


if __name__ == '__main__':
    unittest.main(verbosity=2)
