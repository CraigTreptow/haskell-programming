module LetsWriteCode where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10


-- type is the same as above
-- tensDigit :: Integral b => b -> b
tensDigit' x =
  fst (x `divMod` 10)

-- case version
foldBool1 :: a -> a -> Bool -> a
foldBool1 x y b =
  case b == False of
    True -> x
    False -> y

-- guard version
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
  | b == False = x
  | otherwise  = y

-- pattern matching version
foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True  = y


-- Hints:
-- The first argument to our function is also a function
-- which can be applied to values.
-- The second argument is a tuple, which can be used for pattern matching

-- TODO
-- g :: (a -> b) -> (a, c) -> (b, c)
-- g f t =
  -- ( (snd t), f (fst t) )


