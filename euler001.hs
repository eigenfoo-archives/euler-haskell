main = print . sum $ filter multiple3or5 [1..999]
  where multiple3or5 = (\n -> n `rem` 3 == 0 || n `rem` 5 == 0)
