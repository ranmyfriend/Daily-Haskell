
squareplusone :: Int -> Int
squareplusone x = xsquared + 1
 where xsquared = x*x

maxhelper :: Int -> [Int] -> Int
maxhelper x [] = x
maxhelper x (y:ys) = maxhelper
    (if x>y then x else y) ys


--Find the Maximum number from List
maxfromlist :: [Int] -> Maybe Int
maxfromlist [] = Nothing
maxfromlist (x:xs) = Just (maxhelper x xs)
