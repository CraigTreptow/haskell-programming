module ChapterExercises where

import Data.Char

-- 2)
onlyUppers xs = filter isUpper xs

-- 3)
capitalizeFirst (x:xs) = [toUpper x] ++ xs

-- 4) recursion to upcase the whole string
capitalizeAll ""     = ""
capitalizeAll (x:xs) = [toUpper x] ++ capitalizeAll xs

-- 5)
onlyCapitalizedFirst xs = toUpper (head xs)

-- 6a) now as a composed function
onlyCapitalizedFirst' xs = (toUpper . head) xs

-- 6b) now pointfree
f = (toUpper . head)
onlyCapitalizedFirst'' xs = f xs

