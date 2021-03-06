module Days where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving Show

data Date =
  Date DayOfWeek Int
  deriving Show

-- can be replaced with deriving Eq above
instance Eq DayOfWeek where
  (==) Mon Mon   = True
  (==) Tue Tue   = True
  (==) Weds Weds = True
  (==) Thu Thu   = True
  (==) Fri Fri   = True
  (==) Sat Sat   = True
  (==) Sun Sun   = True
  (==) _ _       = False

instance Eq Date where
  (==) (Date weekday dayOfMonth)
       (Date weekday' dayOfMonth') =
     weekday == weekday' &&
     dayOfMonth == dayOfMonth'

-- Now we can:
-- Date Thu 10 == Date Thu 10, which is True
-- Adding the deriving Show to each data type allows `Date Thu 10` to work

