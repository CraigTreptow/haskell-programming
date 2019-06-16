module Sectioning where

celebrate = (++ " woot!")
-- celebrate "nap time"
-- celebrate "cats"

-- also works for functions that are normally prefix

c = (`elem` [1..10])
-- c 9
-- True

-- works in REPL, but not compile??
-- hasTen = elem 10
-- hasTen [1..9]
-- False
