module Parametric where

-- a single type
-- it returns the same type, so either value is valid to return
-- therefore, there are two possible implementations
v :: a -> a -> a
v a b = a

vv :: a -> a -> a
vv a b = b

-- two types
-- it always returns the second type, so there is only one implementation
x :: a -> b -> b
x a b = b
