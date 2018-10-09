
squareplusone :: Int -> Int
squareplusone x = xsquared + 1
 where xsquared = x*x

 {-- Dealing with Uncertainty
What do we do when computations fail to generate results? Examples include taking
the head of an empty list, or finding the minimum value of a tree which turns out to be a Leaf.

Haskell provides Maybe values, which allow us to denote missing results with Nothing.
 This is type-safe, so much better than null in C-like languages.
 Maybe is like Option in Scala. --}

maxhelper :: Int -> [Int] -> Int
maxhelper x [] = x
maxhelper x (y:ys) = maxhelper
    (if x>y then x else y) ys


--Find the Maximum number from List
maxfromlist :: [Int] -> Maybe Int
maxfromlist [] = Nothing
maxfromlist (x:xs) = Just (maxhelper x xs)


getValue :: Maybe Int -> Int
getValue (Just n) = n
getValue Nothing = 0
