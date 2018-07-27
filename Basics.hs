-- referred @ http://www.seas.upenn.edu/%7Ecis194/spring13/lectures/01-intro.html

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

-- foo example
foo :: Integer -> Integer
foo 0 = 16
foo 1
  | "Haskell" > "C++" = 3
  | otherwise         = 4
foo n
  | n < 0             = 0
  | n `mod` 17 == 2   = -43
  | otherwise         = n + 3


isEven :: Integer -> Bool
isEven n
  | n `mod` 2 == 0 = True
  | otherwise      = False


-- Generate the sequence of hailstone iterations from a starting number.
hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)
