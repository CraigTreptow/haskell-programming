module FirstAndSecond where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t p =
  ((snd t, snd p), (fst t, fst p))
