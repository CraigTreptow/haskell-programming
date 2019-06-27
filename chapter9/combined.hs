module Combined where

myTake character string =
  takeWhile (/= character) string

myDrop character string =
  dropWhile (/= character) string

myWords :: String -> [String]
myWords []       = []
myWords (' ':s)  = myWords s
myWords s        = w : myWords t
  where
    w = myTake ' ' s -- takeWhile (/= ' ') s
    t = myDrop ' ' s -- dropWhile (/= ' ') s

myLines :: String -> [String]
myLines []       = []
myLines ('\n':s) = myLines s
myLines s        = w : myLines t
  where
    w = myTake '\n' s -- takeWhile (/= '\n') s
    t = myDrop '\n' s -- dropWhile (/= '\n') s
