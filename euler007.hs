main = print $ primes !! 10000 -- zero indexing; 10001st prime
  where primes = 2 : filter (\n -> (length $ prime_factors n) == 1) [3,5..]

prime_factors :: (Integral a) => a -> [a]
prime_factors 1 = []
prime_factors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ prime_factors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]
