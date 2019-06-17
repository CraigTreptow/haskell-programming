module Identity where

data Identity a =
  Identity a

-- Broken because we know nothing about a and can't assume it will have
-- an instance of Eq
-- instance Eq (Identity a) where
--
-- It works now, because we are saying a MUST have an instance of Eq
instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'

