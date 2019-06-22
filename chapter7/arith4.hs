module Arith4 where
  
-- id :: a -> a
-- -- id x = x

roundTrip :: (Show a, Read a) => a -> a
roundTrip' :: (Show a, Read a) => a -> a
roundTrip' a = read (show a)
-- pointfree version
roundTrip = read . show

-- TODO
roundTrip2 :: (Show a, Read b) => a -> b
roundTrip2 b = b

main = do
  print (roundTrip' 4)
  print (roundTrip 4)
  print (roundTrip2 4)
  print (id 4)

