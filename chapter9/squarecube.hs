module SquareCube where

mySqr  = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- 1) expression to make tuples of the outputs
one = [(x,y) | x <- mySqr, y <- myCube]

-- 2) only x & y values less than 50
two = [(x,y) | x <- mySqr, y <- myCube, x < 50, y < 50]

-- 3) how many tuples inhabit the output list by applying another function
three = length two
