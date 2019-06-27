module ThreeLetterAcronym where

acro xs =
  [x | x <- xs, elem x ['A'..'Z']]

