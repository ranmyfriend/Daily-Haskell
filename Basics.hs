-- Compute the sum of the integers from 1 to n.
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1

-- (If-clause used)
_hailstone :: Integer -> Integer
_hailstone n  = if n `mod` 2 == 0 then n `div` 2 else 3*n + 1

-- add +1 if n == 5 else -1
_rkSum :: Integer -> Integer
_rkSum n = if n == 5 then n+1 else n-1
