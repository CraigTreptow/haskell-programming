module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\ \ symmetry?"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

-- also got from here: https://github.com/dwayne/haskell-programming/blob/master/ch9/PoemLines.hs
-- I can't think straight or something tonight and it sucks

myLines :: String -> [String]
myLines []       = []
myLines ('\n':s) = myLines s
myLines s        = w : myLines t
  where
    w = takeWhile (/= '\n') s
    t = dropWhile (/= '\n') s

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)

