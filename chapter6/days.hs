module Days where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  -- deriving (Ord, Show, Eq)
  deriving (Show, Eq)

-- Friday is always the best day
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _   Fri = LT
  compare _   _   = EQ

