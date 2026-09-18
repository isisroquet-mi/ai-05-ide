import Mathlib.Algebra.Order.Field.Basic

/-!
# Paper-Facing Theorems: Artificial Intelligence in the Knowledge Economy

This file is the implementation theorem layer for the source paper. Keep
source-faithful definitions and theorem wrappers here, and expose only the
compact human-review subset in `PaperInterface.lean`.

During the statement-first phase, each exact paper-facing proposition lives in a
transparent `<name>Spec : Prop` declaration in `PaperInterface.lean`; the paired
theorem/lemma endpoint belongs in `ProofInterface.lean` and has exactly that
type. Add proof implementations here only after those specifications pass v11
raw-source-to-expanded-Spec review and recursive premise provenance audit. Before full closeout, the v11
realization audit independently binds pinned source atoms to the elaborated Spec
and accounts for the complete Lean closure; a proof hole or a declaration name
is never evidence for that correspondence.
-/

namespace IT25KnowledgeEconomy

/-! ## Checked algebra for the two-type discrete reduction

These lemmas deliberately expose the economic equalities as premises.  They
verify the algebraic implications used in the hand derivation; they do not
claim to derive those equalities from the paper's continuum equilibrium.
-/

theorem lowTypeWageAdvantage_of_equilibriumFormulas
    {a n wA wN : ℝ}
    (ha : 0 < a) (hn : 1 < n)
    (hwA : wA = a * (1 - 1 / n)) (hwN : wN = a) :
    wN > wA := by
  rw [hwA, hwN]
  have hn0 : 0 < n := lt_trans zero_lt_one hn
  rw [mul_sub, mul_one]
  exact sub_lt_self a (div_pos ha hn0)

theorem strictOutputGain_of_positiveAutonomousOpportunity
    {yN yA extra : ℝ}
    (hextra : 0 < extra) (hdecomp : yA = yN + extra) :
    yA > yN := by
  rw [hdecomp]
  exact lt_add_of_pos_right yN hextra

end IT25KnowledgeEconomy
