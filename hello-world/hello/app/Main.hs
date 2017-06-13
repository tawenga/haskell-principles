module Main where

import Hello
import System.IO

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStr "Enter name: "
  name <- getLine
  sayHello name
