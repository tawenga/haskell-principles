{-# LANGUAGE GeneralizedNewtypeDeriving #-}

data Manufacturer = Mini | Mazda | Tata deriving (Eq, Show)
data Airline = PapuAir | CatapultsR'Us | TakeYourChancesUnited deriving (Eq, Show)
data Price = Price Integer deriving (Eq, Show)
data Size = Size Integer deriving (Eq, Show)
data Vehicle = Car Manufacturer Price | Plane Airline Size deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 707)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar (_ ) = False

areCars :: [Vehicle] -> [Bool]
areCars x = map isCar x

getManu :: Vehicle -> Manufacturer
getManu (Car m p) = m
getManu (_ ) = undefined

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 42

newtype Goats = Goats Int deriving (Eq, Show, TooMany)

data Person = Person { name :: String, age :: Int } deriving (Eq, Show)
