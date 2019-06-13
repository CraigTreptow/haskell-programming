module CurryIsAwesome where

exclaim :: String -> String
exclaim s = s ++ "!"

fourth :: String -> Char
fourth s = s !! 4

drop9 :: String -> String
drop9 s = drop 9 s

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

