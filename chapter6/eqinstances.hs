module EqInstances where

data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn i) (TisAn i') = i == i'

data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
  (==) (Two x y) (Two x' y') = x == x' && y == y'

data StringOrInt = TisAnInt Int | TisAString String 
instance Eq StringOrInt where
  (==) (TisAnInt i) (TisAnInt i')     = i == i'
  (==) (TisAString s) (TisAString s') = s == s'
  (==) _ _                            = False

-- I looked at https://github.com/mikegehard/haskellBookExercises/blob/master/chapter6/implementEq.hs
-- to complete these down through EitherOr
data Pair a = Pair a a
-- a must have an instance of Eq
instance Eq a => Eq (Pair a) where
  (==) (Pair a a') (Pair b b') = a == b && a' == b'

data Tuple a b = Tuple a b
-- I guess they were giving us a hint by calling it Tuple
-- It's not Tuple!!
-- This syntax is saying BOTH a and b need instances of Eq
instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

data Which a = ThisOne a | ThatOne a
-- This was confusing at first, but is making more sense now
-- It needs to know which type first, then the value is has
instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) (_) (_)                  = False

data EitherOr a b = Hello a | Goodbye b
-- instance (Eq a) (Eq b) => Eq (EitherOr a b) where
-- again, I first had the above, but it needs to be like a Tuple
-- I don't understand how I could have known that
-- This syntax is saying BOTH a and b need instances of Eq
instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) (_) (_) = False

