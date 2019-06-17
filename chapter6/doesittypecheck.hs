module DoesItTypeCheck where

-- data Person = Person Bool
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)


-- data Mood = Blah | Woot
--   deriving Show
-- settleDown x = if x == Woot
--                   then Blah
--                   else x
-- 

type Subject = String
type Verb = String
type Object = String
data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- p.320

data Rocks =
  Rocks String
  deriving (Eq, Show)

data Yeah =
  Yeah Bool
  deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

-- phew = Papu "chases" True

truth = Papu (Rocks "chomskydoz")
             (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-- p.321 Match the types

i :: Num a => a
-- Nope
-- i :: a
i = 1


-- f :: Float
-- Nope
-- f :: Num a => a
-- Yes!
f :: Fractional a => a
f = 1.0

-- I've elided the rest, just cuz I'm not in the mood to try and 
-- plow through all of them
