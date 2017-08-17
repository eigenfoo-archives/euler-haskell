import Data.List
-- not really... need the index!
main = print . maximum $ map collatzLength [1..1000]

collatzLength :: Int -> Int
collatzLength n = case index of
                       Just value -> value + 1
                       Nothing -> 0
    where index = findIndex (== 1) (iterate collatz n)
          collatz a = if even a then a `div` 2 else 3*a + 1



