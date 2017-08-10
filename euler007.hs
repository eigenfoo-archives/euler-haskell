main = print $ primes !! 10000 -- zero indexing; 10001st prime
  where primes = 2 : filter (\n -> (length $ primeFactors n) == 1) [3,5..]

primeFactors :: (Integral a) => a -> [a]
primeFactors 1 = []
primeFactors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ primeFactors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]
