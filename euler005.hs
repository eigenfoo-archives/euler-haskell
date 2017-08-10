import Data.List

main = print . product $ foldl1 lcmPrimes $ map primeFactors [1..20]

lcmPrimes :: (Eq a) => [a] -> [a] -> [a]
lcmPrimes a b = a ++ (b \\ a)

primeFactors :: (Integral a) => a -> [a]
primeFactors 1 = []
primeFactors n
  | factor == []        = [n]
  | n < (head factor)^2 = [n]   -- stop searching if sqrt n < head factor
  | otherwise           = factor ++ primeFactors (n `div` (head factor))
    where factor = take 1 [x | x <- [2..n-1], n `rem` x == 0]

{-
Naive solution: (takes much longer, does not scale)
  main = print $ head $ filter evenlyDivisible1_20 [1..]

  evenlyDivisible1_20 :: (Integral a) => a -> Bool
  evenlyDivisible1_20 n = and $ map (== 0) $ map (n `rem`) [1..20]

If, unlike me at the time, you knew that lcm was a built-in function, there is
a one-line solution:
  main = print $ foldr1 lcm [1..20]
-}
