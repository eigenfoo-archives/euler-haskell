import Data.List

primes :: [Int]
primes = 2 : primes'
    where isPrime (p:ps) n = p*p > n || (n `rem` p /= 0 && isPrime ps n)
          primes' = 3 : filter (isPrime primes') [5,7..]

oddComposites :: [Int]
oddComposites = [3,5..] \\ primes

goldbachs :: [Int]
goldbachs = [p+2*n^2 | p<-primes, n<-[1..]]

-- doesn't work because \\ is not lazy...
main = print . head $ (oddComposites \\ goldbachs)
