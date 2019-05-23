-- practice.hs
module Mult1 where

-- let x = 5; y = 6 in x * y
mult1     = x * y
  where x = 5
        y = 6

-- let x = 3; y = 1000 in x * 3 + y
ex1       = x * 3 + y
  where x = 3
        y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
ex2       = x * 5
  where x = 10 + 5 + y
        y = 10

-- let x = 7
--     y = negate x
--     z = y * 10
-- in z / x + y
ex3       = z / x + y
  where x = 7
        y = negate x
        z = y * 10

-- p93 exercise #3

waxOn     = x * 5
  where z = 7
        x = y ^ 2
        y = z + 8

triple x = x * 3
waxOff x = triple x
