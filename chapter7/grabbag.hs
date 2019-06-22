module GrabBag where

-- a) They are all equivalent
mTha x y z = x * y * z
mThb x y = \z -> x * y * z
mThc x = \y -> \z -> x * y * z
mThd = \x -> \y -> \z -> x * y * z

-- b) What is the type of mTha 3
-- Integer -> Integer -> Integer
-- NOPE

-- I think this is because it tries to be the LEAST specific, so only Num is required
-- mTh 3 :: Num a => a -> a -> a->

addOne x = x + 1
addOne' = \x -> x + 1

-- 3a) Rewrite f in where cause as anonymous
addOneIfOdd n = case odd n of
  True -> (\n -> n + 1) n
  False -> n
  -- where f n = n + 1

-- 3b) Rewrite to anonymous syntax
addFive x y = (if x > y then y else x) + 5
addFive' = \x -> \y -> (if x > y then y else x) + 5

-- 3c) Rewrite to NOT use anonymous syntax
mflip f = \x -> \y -> f y x
mflip' f x y = f y x
