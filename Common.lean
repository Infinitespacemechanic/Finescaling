import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open Real

-- Common denominator = first jump over first radian
-- Straight foot = 12, Curved foot = 4 * pi

noncomputable def straightFoot : ℝ := 12
noncomputable def curvedFoot : ℝ := 4 * Real.pi
noncomputable def commonDenominator : ℝ := Real.pi / 3 - 1
noncomputable def residualPerFoot : ℝ := curvedFoot - straightFoot

-- Alias for announcement
noncomputable def fineScalingNumber : ℝ := commonDenominator

-- Proofs
lemma common_pos : 0 < commonDenominator := by
  unfold commonDenominator
  linarith [Real.pi_gt_three]

lemma residual_eq_12_mul_common : residualPerFoot = 12 * commonDenominator := by
  unfold residualPerFoot curvedFoot straightFoot commonDenominator
  ring

lemma curved_eq_straight_plus_residual : curvedFoot = straightFoot + residualPerFoot := by
  unfold curvedFoot straightFoot residualPerFoot
  ring
