module PointFree where

-- (f. g. h) vs f (g h x))

-- xs = [1, 2, 3, 4, 5]
-- negate . sum $ xs

-- pointfree style, means f has no args declared
-- f = negate . sum
-- f [1, 2, 3, 4, 5]
