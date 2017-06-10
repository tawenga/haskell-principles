t ::[([Char] , [Char], [Char])]
nouns = "days war fire ice curtains"
verbs = "eat pray cheer clean"

t = [ (x,y,x) | x <- words nouns, y <- words verbs]

seekritFunc x =(sum (map length (words x))) / (length (words x))

