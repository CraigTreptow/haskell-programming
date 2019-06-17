module Trivial where

data Trivial =
  Trivial'

--       ! Type class the instance is providing
--          ! Type the instance is provided for
--                  ! terminates the declaration
instance Eq Trivial where
  Trivial' == Trivial' = True
  -- alternate way using prefix notation
  -- (==) Trivial' Trivial' = True

