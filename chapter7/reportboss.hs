module ReportBoss where

data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)

-- original
-- reportBoss :: Employee -> Employee -> IO ()
-- reportBoss e e' =
--   putStrLn $ show e ++ " is the boss of " ++ show e'
-- 
-- employeeRank :: Employee -> Employee -> IO ()
-- employeeRank e e' =
--   case compare e e' of
--     GT -> reportBoss e e'
--     EQ -> putStrLn "Neither employee\ \ is the boss"
--     LT -> (flip reportBoss) e e'

-- refactored
reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' =
  putStrLn $ show e ++ " is the boss of " ++ show e'

employeeRank :: ( Employee -> Employee -> Ordering ) -> Employee -> Employee -> IO ()
employeeRank f e e' =
  case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee\ \ is the boss"
    LT -> (flip reportBoss) e e'

-- gives the same result as before if we pass in `compare` as the function
-- employeeRank compare Coder CEO

-- define another compare function that we can use
-- employeeRank codersRuleCEOsDrool Coder CEO

codersRuleCEOsDrool :: Employee -> Employee -> Ordering
codersRuleCEOsDrool Coder Coder = EQ
codersRuleCEOsDrool Coder _     = GT
codersRuleCEOsDrool _ Coder     = LT
codersRuleCEOsDrool e e'        = compare e e'


-- Examples:
-- *ReportBoss> employeeRank compare Coder CEO
-- CEO is the boss of Coder
-- *ReportBoss> employeeRank codersRuleCEOsDrool Coder CEO
-- Coder is the boss of CEO
