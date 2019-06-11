-- Example of week head normal form
-- by default Haskell evaluates to WHNF by default, 
-- not canonical (normal) form

(\f -> (1, 2 + f)) 2

-- is (1, 2 + 2) until the last possible moment, then it is
-- (1,4)

