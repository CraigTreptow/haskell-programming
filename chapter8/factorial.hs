module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- p.432 Intermission exercise
applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b

-- applyTimes 5 (+1) 5
-- applyTimes 4 (+1) 6
-- applyTimes 3 (+1) 7
-- applyTimes 2 (+1) 8
-- applyTimes 1 (+1) 9
-- I forgot to apply the +1 the last time
-- applyTimes 0 (+1) 9 X 10
-- 9 X 10

f :: Bool -> Int
f False = 0

data Maybe a = Nothing | Just a
  deriving Show
f' :: Bool -> Factorial.Maybe Int
f' False = Factorial.Just 0
f' _     = Factorial.Nothing
