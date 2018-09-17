-- Exercise 1 We need to first find the digits of a number. Define the
-- functions
 -- toDigits    :: Integer -> [Integer]
 -- toDigitsRev :: Integer -> [Integer]
-- toDigits should convert positive Integers to a list of digits. (For 0 or negative inputs, toDigits should return the empty list.) toDigitsRev should do the same, but with the digits reversed.
-- Example: toDigits 1234 == [1,2,3,4] Example: toDigitsRev 1234 == [4,3,2,1] Example: toDigits 0 == []
-- Example: toDigits (-17) == []

-- toDigits :: Integer -> [Integer]
-- toDigitsRev :: Integer -> [Integer]

-- toDigits n = n `mod` 10
--       | if n < 0
--       | 0 else n

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

-- toDigits :: Integer -> Integer
-- toDigits 0 = 0
-- toDigits n = n `mod` 10 + toDigits(n-1)

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
length' xs = sum[ 1 | _ <- xs]

toDigits n = [read [c] :: Integer | c <- show n]


takeFinal :: Integral b => b -> Maybe (b, b)
takeFinal 0 = Nothing
takeFinal m = Just (r, q)
  where (q,r) = m `divMod` 10

_toDigits :: Integral b => b -> [b]
_toDigits = reverse . unfoldr takeFinal
