module TypeKwonDo where

-- answers from here: https://github.com/nackjicholson/haskellbook-solutions/blob/master/chapter6/exercises.hs
-- because I don't understand and am too tired right now

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y =
  f x == y

-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f x y =
  f y + fromIntegral x
