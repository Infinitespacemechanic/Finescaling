import Flexible.Common

def main : IO Unit := do
  IO.println s!"straightFoot = {straightFoot}"
  IO.println s!"curvedFoot = 4*pi = {curvedFoot}"
  IO.println s!"commonDenominator (fineScalingNumber) = pi/3 - 1 = {commonDenominator}"
  IO.println s!"residualPerFoot = 4*pi - 12 = {residualPerFoot}"
  IO.println s!"12 * common = {12 * commonDenominator}"
  IO.println s!"1 / common = {1 / commonDenominator}"
  IO.println s!"2*pi / common = {2 * Real.pi / commonDenominator}"
