module FunctionComposition where

-- first add the values in the list, and then negate that
-- the $ is needed for its lower precedence
-- this way the function composition happens first
--
-- xs = [1, 2, 3, 4, 5]
-- this is stylistic choice only.  $ seems more common, though
-- negate . sum $ xs
-- alternative: (negate . sum) xs
-- -15

-- list is reversed, then the first 5 are taken
-- take 5 . reverse $ [1..10]
-- [10,9,8,7,6]
--
-- Given
-- take 5 (enumFrom 3)
-- Rewritten
-- take 5 . enumFrom $ 3
-- Alternative:
-- f x = take 5 . enumFrom $ x
-- f 3


-- compose more than two functions:
-- Essentially process right to left
-- take 5 . filter odd . enumFrom $ 3
-- [3,5,7,9,11]


-- Two ways to implement print with putStrLn and show:
print :: Show a => a -> IO ()
print a = putStrLn (show a)

-- using the . operator for composing functions.
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- we can write print as:
print' :: Show a => a -> IO ()
-- print' a = (putStrLn . show) a

-- and the pointfree version
print' = putStrLn . show

