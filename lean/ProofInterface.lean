import IT25KnowledgeEconomy.PaperInterface

/-!
# Proof Interface: Artificial Intelligence in the Knowledge Economy

This file contains exact-type proof endpoints for the transparent propositions
in `PaperInterface.lean`. It is not a human semantic-review surface: one source
claim is reviewed once, against its expanded `...Spec : Prop` declaration.
-/

namespace IT25KnowledgeEconomy

theorem lowTypeWageAdvantage : LowTypeWageAdvantageSpec := by
  intro a n wA wN ha hn hwA hwN
  exact lowTypeWageAdvantage_of_equilibriumFormulas ha hn hwA hwN

theorem strictOutputGainBridge : StrictOutputGainBridgeSpec := by
  intro yN yA extra hextra hdecomp
  exact strictOutputGain_of_positiveAutonomousOpportunity hextra hdecomp

end IT25KnowledgeEconomy
