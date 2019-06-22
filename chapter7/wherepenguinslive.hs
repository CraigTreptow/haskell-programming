module WherePenguinsLive where

data WherePenguinsLive =
    Galapagos
  | Antarctica
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

-- is it South Africa? If so, return True
isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica  = True
isSouthAfrica Galapagos    = False
isSouthAfrica Antarctica   = False
isSouthAfrica Australia    = False
isSouthAfrica SouthAmerica = False

-- pattern matching FTW!
isSouthAfrica' :: WherePenguinsLive -> Bool
isSouthAfrica' SouthAfrica = True
isSouthAfrica' _           = False


-- example:
-- isSouthAfrica Galapagos

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

-- humboldt  = Peng SouthAmerica
-- gentoo    = Peng Antarctica
-- macaroni  = Peng Antarctica
-- little    = Peng Australia
-- galapagos = Peng Galapagos

-- gimmeWhereTheyLive humboldt

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica) = True
antarcticPenguin _                 = False

-- In this final function, the (||) operator is an or function that will return True if either value is True:
antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p = (galapagosPenguin p) || (antarcticPenguin p)

-- example;
-- antarcticOrGalapagos (Peng Galapagos)
-- antarcticOrGalapagos macaroni

