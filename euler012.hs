import Data.List

main = print . head $ filter ((> 500) . numDivisors) triangulars
  where triangulars = scanl1 (+) [1..]

numDivisors :: Int -> Int
numDivisors n = product . map ((+ 1) . length) . group . primeFactors $ n

primeFactors :: (Int a) => a -> [a]
primeFactors 1 = []
primeFactors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ primeFactors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]
