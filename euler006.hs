main = print (squaredsum - sumsquares)
  where squaredsum = (sum [1..100])^2
        sumsquares = (sum $ map (^2) [1..100])
