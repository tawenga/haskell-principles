countVowels :: String -> Int
countVowels xs = length $ [x | x <- xs, elem x "aeiou"]

replaceThe :: String -> String
ifThe :: String -> String

ifThe str = case str == "the" of
  True -> "a"
  False -> str

replaceThe x = ifThe y ++ replaceThe ys 
  where (y:ys) = words x

