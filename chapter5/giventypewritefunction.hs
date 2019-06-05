module GiveTypeWriteFunction where

myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (a, x) = undefined

i :: a -> a
i x = x

c :: a -> b -> a
c x _ = x

c'' :: b -> a -> b
c'' x _  = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r [x] = [x]

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a =
  (bToC (aToB a))

a :: (a -> c) -> a -> a
a aToC a =
  a

a' :: (a -> b) -> a -> b
a' aToB a =
  (aToB a)

