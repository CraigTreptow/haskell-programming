module TypeSignatures where

functionH :: [a] -> a
functionH (x:_) = x

-- functionC :: a b -> Bool
functionC :: Ord a => a -> a -> Bool
functionC x y =
  if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y
