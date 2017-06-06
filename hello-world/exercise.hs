module Exercise where 

c :: String
c = "Curry is awesome"
rvrs = (drop 9 c) ++ " " ++ (drop 6 (take 8 c)) ++ " " ++  (take 5 c)
             
