-- print3broken.hs
module Print3Broken where

-- fixed by defining greeting at the top level
-- so it was available to reference inside printSecond

greeting :: String
greeting = "Yarrrrr"

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond


