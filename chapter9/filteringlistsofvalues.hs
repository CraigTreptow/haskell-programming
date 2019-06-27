module FilteringListsOfValues where

-- same as filter even, but with anonymous function syntax
a = filter (\x -> (rem x 2) == 0) [1..20]

-- equivalent.  I like c (list comprehension) better right now
b = filter (\x -> elem x "aeiou") "abracadabra"
c = [x | x <- "abracadabra", elem x "aeiou"]


-- Exercises
-- 1) Multiples of three out of a list from 1-30
d = [x | x <- [1..30], x `mod` 3 == 0]
--
-- 2) HOW MANY Multiples of three out of a list from 1-30 ?
d' = length [x | x <- [1..30], x `mod` 3 == 0]

-- 3) Build myFilter "the brown dog was a goof" result: ["brown","dog","was","goof"]
-- myFilter s = 
  -- filter ((/= "the") | (/= "a") | (/= "an")) (words s)

-- got from here
-- https://github.com/dwayne/haskell-programming/blob/master/ch9/myFilter.hs
-- I was heding this direction, but couldn't quite see it.
-- I like it though.  pattern matching plus composition
article :: String -> Bool
article "the" = True
article "an"  = True
article "a"   = True
article _     = False

myFilter :: String -> [String]
myFilter = (filter (not . article)) . words

