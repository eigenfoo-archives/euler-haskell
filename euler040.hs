import Data.Digits

main = print prod
    where prod = product $ digits 10 ds
          ds = read $ map (champ !!) (map (\x->10^x-1) [0..6]) :: Int
          champ = concat $ map show [1..]
