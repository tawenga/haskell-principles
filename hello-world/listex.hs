myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) =  myOr $ (f x :  map f xs ) 

myElem :: Eq a => a -> [a] -> Bool
myElem v (x:xs) = myAny (==v) (x:xs)

fibs = 1 : scanl (+) 1 fibs
fibsN = [ x | x <- fibs, x < 100]



