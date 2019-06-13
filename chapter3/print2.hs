-- print2.hs

module Print2 where

main :: IO ()
-- do is used to sequence actions
main = do
  putStrLn "Count to four for me:"
  putStr   "one, two"
  putStr   ", three, and"
  putStrLn " four!"
