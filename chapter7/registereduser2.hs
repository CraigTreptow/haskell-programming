-- registeredUser2.hs

module RegisteredUser where
  
newtype Username      = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser =
  putStrLn "UnregisteredUser"

printUser (RegisteredUser (Username name) (AccountNumber acctNum)) =
  putStrLn $ name ++ " " ++ show acctNum

-- example:
-- myUser = Username "ctreptow'
-- myAcct = AccountNumber 10213
-- myUser = RegisteredUser myUser myAcct
-- printUser myUser
