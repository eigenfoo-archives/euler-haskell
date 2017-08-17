main = print . length $ takeWhile lessThan1000Digits fibs
    where fibs :: [Integer] 
          fibs = 1 : 1 : (zipWith (+) fibs (tail fibs))
          lessThan1000Digits x = (length $ show x) < 1000
