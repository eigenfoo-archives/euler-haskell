main = print . sum $ takeWhile (< 2000000) primes

-- Adapted from O'Neill
primes :: [Int]
primes = 2 : [x | x <- [3,5..], isPrime x]
  where isPrime x      = all (\p -> x `rem` p /= 0) (factorsToTry x)
        factorsToTry x = takeWhile (\p -> p^2 <= x) primes

{-
Below is my initial naive solution. However, as explained by O'Neill, it is
not a faithful implementation of the Sieve of Eratosthenes, and is monstrously
inefficient. For more information, refer to The Genuine Sieve of Eratosthenes
by O'Neill: https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

import Data.List

main = print . sum $ primesUpTo 2000000

primesUpTo :: (Integral a) => a -> [a]
primesUpTo n = sift [2..n]
  where sift [] = []
        sift (p:xs) = p : sift (xs \\ [p^2,p^2+p..n])
-}
