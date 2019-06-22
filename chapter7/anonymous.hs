module Anonymous where

triple :: Integer -> Integer
triple x = x * 3

-- p.342

-- And here is the same function but with anonymous function syntax:
-- This is what the book shows, but I get this error:

-- anonymous.hs:7:1: error:
--     Invalid type signature: (\ x -> x * 3) :: ...
--     Should be of form <variable> :: <type>
--   |
-- 7 | (\x -> x * 3) :: Integer -> Integer
-- 
-- (\x -> x * 3) :: Integer -> Integer

-- You need the parentheses for the type assertion

-- :: Integer -> Integer to apply to the entire anonymous function and not
-- just the Num a => a value 3.

-- You can give this function a name, making it not anonymous anymore, in GHCi like this:

-- works in REPL, but not here
:{
  let trip :: Integer -> Integer
      trip = \x -> x * 3
:}

