module Multi where

multy :: (Integral a) => a -> a -> a
multy _ 0 =  0
multy 0 _ =  0
multy a b = multy ((a - 1) b) + b
