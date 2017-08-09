main = print $ maximum palindromes
    where palindromes = [x*y | x <- [999,998..1], y <- [999,998..1],
                               (reverse $ show (x*y)) == (show (x*y))]
