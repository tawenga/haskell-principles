module Jammin where

data Fruit =
    Peach
  | Plum
  | Apple
  | Blackberry
  deriving (Eq, Ord, Show)

data JamJars = JamJars { fruit :: Fruit, units :: Int } deriving (Eq, Ord, Show)

row1 = JamJars Peach 31
row2 = JamJars Plum 73
row3 = JamJars Apple 34
row4 = JamJars Peach 56
row5 = JamJars Plum 4
row6 = JamJars Blackberry 3

allJam = [row1, row2, row3, row4, row5, row6]

count = map units allJam

allCount = sum $ count

compareKind (JamJars k _) (JamJars k' _) = compare k k' 
