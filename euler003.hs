main = print $ maximum $ prime_factors 600851475143

prime_factors :: (Integral a) => a -> [a]
prime_factors 1 = []
prime_factors n
    | factor == [] = [n]
    | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
    | otherwise = factor ++ prime_factors (n `div` (head factor))
        where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]
