module Summer where

summer :: (Eq a, Num a) => a -> a
summer 0 =  0
summer n = summer (n - 1) + n
