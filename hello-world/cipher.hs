module Cipher where

import Data.Char
ceasarCipher :: Int -> String -> String
ceasarCipher num str = map (\x -> (if x > 122 then chr((mod x 122) + 96) else chr x)) $ map ((+) num) $ map (ord) str
