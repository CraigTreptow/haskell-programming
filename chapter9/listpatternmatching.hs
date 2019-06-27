module ListPatternMatching where

-- these don't pattern match on am empty list
-- so they'll error when you try
myHead (x : _) = x
myTail0 (_ : xs) = xs

-- we *could* do something like this
myTail1 :: [a] -> [a]
myTail1 [] = []
myTail1 (_ : xs) = xs

-- this is deemed "better"
-- Maybe can be either Nothing or Just a
--  I converted myHead to safeHead
--  It is "weird" to have a responst be Just 1, rather than 1
safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail (_:[]) = Nothing  -- list of one item is empty list
safeTail (_:xs) = Just xs

safeHead :: [a] -> Maybe a
safeHead []     = Nothing
safeHead (x:[]) = Just x
safeHead (x:_)  = Just x

