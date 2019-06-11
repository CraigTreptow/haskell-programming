module FunctionWithWhere where

printInc n = print plusTwo
  where plusTwo = n + 2

-- let followed by in is a let expression
printInc2 n = let plusTwo = n + 2
              in print plusTwo

