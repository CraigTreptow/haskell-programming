module ListComprehensions where

-- squares of the numbers 1 through 10
s =
  [ x^2 | x <- [1..10]]

-- squares of only the even numbers 1 through 10
s' =
  [x^2 | x <- [1..10], rem x 2 == 0]

-- raise x to the power of y
-- the rightmost generator is exhausted first, so:
-- 1^2, 1^3, 2^2, 2^3, ...
s'' =
  [x^y | x <- [1..5], y <- [2, 3]]


-- or perhaps only the results that are less than 200
s''' =
  [x^y | x <- [1..5], y <- [2, 3], x^y < 200]

-- can do stuff like this to get tubples
t =
  [(x,y) | x <- [1,2,3], y <- [4,5,6] ]
