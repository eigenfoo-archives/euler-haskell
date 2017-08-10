import Data.List

main = print . product $ foldl1 lcm_primes $ map prime_factors [1..20]

lcm_primes :: (Eq a) => [a] -> [a] -> [a]
lcm_primes a b = a ++ (b \\ a)

prime_factors :: (Integral a) => a -> [a]
prime_factors 1 = []
prime_factors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ prime_factors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]

{-
Naive solution: (takes too long and does not scale)
  main = print $ head $ filter evenlyDivisible1_20 [1..]

  evenlyDivisible1_20 :: (Integral a) => a -> Bool
  evenlyDivisible1_20 n = and $ map (== 0) $ map (n `rem`) [1..20]

If, unlike me at the time, you knew that lcm was a built-in function, there is
a one-line solution:
  main = print $ foldr1 lcm [1..20]
-}
