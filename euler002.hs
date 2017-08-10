import Data.List

main = print $ sum [x | x <- takeWhile (< 4000000) fibs, even x]
  where fibs = unfoldr (\(a, b) -> Just (a, (b, a+b))) (1, 1)

{-
It turns out there is an extremely elegant, recursive way of generating the
Fibonacci numbers using zipWith:
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
-}
