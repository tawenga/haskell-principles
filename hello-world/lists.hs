myEnum :: (Ord a, Enum a) => a -> a -> [a]
myEnum x y
  | x <= y = [x] ++ myEnum (succ x) y
  | otherwise = []
  
