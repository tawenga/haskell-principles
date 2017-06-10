import Data.Char
myUp :: String -> [Char]
myUp(x:[]) = [(toUpper x)]
myUp(x:xs) = (toUpper x) :  (myUp xs)

firstCap :: String -> Char
firstCap(x:xs) = toUpper x
