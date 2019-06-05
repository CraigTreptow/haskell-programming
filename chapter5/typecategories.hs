module TypeCategories where

f :: Num a => a -> b -> Int -> Int; f = undefined
--           [0]  [1]   [2]    [3]
-- 0 constrained polymorphic
-- 1 fully polymorphic
-- 2 & 3 concrete

g :: zed -> Zed -> Blah; g = undefined
--   [0]    [1]     [2]
-- 0 fully polymorphic
-- 1 constrained polymorphic
-- 2 contrained polymorphic

h :: Enum b => a -> b -> c; h = undefined
--            [0]  [1]  [2]
-- 0 fully polymorphic
-- 1 concrete
-- 2 fully polymorphic

i :: f -> g -> C; i = undefined
--  [0]  [1]  [2]
-- 0 fully polymorphic
-- 1 fully polymorphic
-- 2 concreate
