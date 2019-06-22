-- matchingTuples1.hs
module TupleFunctions where

-- exmple from ch. 4
-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f = undefined

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- pattern matching Tuples.  I think I did it this way.
f' :: (a, b) -> (c, d) -> ((b, d), (a, c))
f' (a, b) (c, d) = ((b, d), (a, c))

-- These have to be the same type because
-- -- (+) is a -> a -> a
addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

-- Note: NOT pattern matching
-- addEmUp2 could also be written like so:
addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

third3 :: (a, b, c) -> c
third3 (_, _, x) = x
