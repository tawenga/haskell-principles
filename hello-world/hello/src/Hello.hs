-- src/Hello.hs
module Hello where
sayHello :: String -> IO ()
sayHello name = putStrLn ("Greetings " ++ name ++ " from Haskell!")
