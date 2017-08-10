main = print . maximum . primeFactors $ 600851475143

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ primeFactors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]
