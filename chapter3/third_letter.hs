module ThirdLetter where
  
third_letter :: String -> Char
third_letter s =
  s !! 2

any_letter :: Int -> Char
any_letter n =
  "Curry is awesome!" !! n

rvrs :: String
rvrs =
  let original_string = "Curry is awesome"
  left_part  = take 8 original_string
    where original_string = "Curry is awesome"
  right_part = drop 8 original_string
    where original_string = "Curry is awesome"

  right_part ++ left_part
