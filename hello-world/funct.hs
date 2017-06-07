data Employee = Dev | Manager | VP | CEO deriving (Eq, Show, Ord)

reportBoss :: Employee -> Employee -> IO()
reportBoss e e' = putStrLn $ show e ++ " bootlicks the" ++ " " ++ show e' 

employeeRank:: (Employee -> Employee-> Ordering) -> Employee -> Employee -> IO()
employeeRank f e e' = 
  case f e e' of
    LT -> reportBoss e e'
    EQ -> putStrLn "No One is Sup"
    GT -> (flip reportBoss) e e'
