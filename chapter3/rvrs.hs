module Rvrs where
  

main :: IO()
main = do
  putStrLn rvrs

-- original_string :: String
-- original_string = "Curry is awesome"

rvrs :: String
rvrs =
  let
    string = "Curry is awesome"
  in
    drop 9 string ++ drop 5 (take 9 string) ++ take 5 string
