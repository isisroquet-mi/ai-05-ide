# Final validation report — IT25KnowledgeEconomy

## Scope

This is an explicitly **partial formalization** of Ide and Talamàs (2025),
*Artificial Intelligence in the Knowledge Economy*, pinned to arXiv v11
(2025-02-25).

The Lean contribution checks two algebraic bridges used in the course report:

1. Given the two-type zero-profit formulas
   `wA = a * (1 - 1 / n)` and `wN = a`, with `a > 0` and `n > 1`, it proves
   `wN > wA`.
2. Given a positive autonomous-only output opportunity `extra > 0` and
   `yA = yN + extra`, it proves `yA > yN`.

## Boundary

The premises are deliberately visible in `PaperInterface.lean`. The code does
not claim to derive them from the full continuum equilibrium, matching
construction, or the complete statements of Propositions 5 and 6. Those remain
outside the formalized scope.

## Review surface

- `PaperInterface.lean`: transparent paper-facing specifications.
- `ProofInterface.lean`: exact-type proof endpoints.
- `MainTheorems.lean`: checked algebraic implementations.
- `Assumptions.lean`: intentionally empty; no paper assumption has been hidden
  behind a local axiom.

## Build

Target: `lake build +IT25KnowledgeEconomy`.

Verified on 2026-09-17: the target built successfully (757 jobs). The command
`python scripts/paper_contribution.py check IT25KnowledgeEconomy --fast` also
completed successfully, including the paper-interface build and `git diff
--check`.
