module Reverse where

rvrs :: String -> String
rvrs s =
  drop 9 s ++ drop 5 (take 9 s) ++ take 5 s

main :: IO ()
-- main = print (rvrs "Curry is awesome")
main = print $ rvrs "Curry is awesome"

