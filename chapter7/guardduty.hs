module GuardDuty where

-- p.387 Guard Duty

-- 1) always 'F' now
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | otherwise = 'F'
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59  = 'F'
  where y = x / 100

-- 2) Nope, behavior changed
avgGrade' :: (Fractional a, Ord a) => a -> Char
avgGrade' x
  | y >= 0.7  = 'C'
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.59 = 'D'
  | y < 0.59  = 'F'
  where y = x / 100

-- 3) True when xs is a palindrome
-- 4) any List, or Enumerable, maybe?
-- 5) type is Enumerable actually pal :: Eq a => [a] -> Bool
pal xs
  | xs == reverse xs = True
  | otherwise        = False

-- 6) c indication of positive or negative
numbers x
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1

-- 7) args can be any Num
-- 8) type is numbers :: Ord a => Num 
-- 8 is actually numbers :: (Ord a, Num a, Num p) => a -> p

