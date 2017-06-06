module GreetIfCool where

greet :: String -> IO()
greet coolness =
           if cool
             then putStrLn "Sweet"
           else 
             putStrLn "Sour"
           where cool = coolness == "cool"
