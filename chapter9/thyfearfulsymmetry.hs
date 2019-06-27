module ThyFearfulSymmetry where

-- I got this from here:
-- https://github.com/dwayne/haskell-programming/blob/master/ch9/MyWords.hs
-- I could not remember the existance of where (or much else), but
-- I was planning on some sort of recursion.
--
-- This is a great answer.  Easily understood
--
myWords :: String -> [String]
myWords []       = []
myWords (' ':s)  = myWords s
myWords s        = w : myWords t
  where
    w = takeWhile (/= ' ') s
    t = dropWhile (/= ' ') s
