{- 
    Language: Haskell
    Topic: Simple Functions to compute with single params
    Creator: Ranjith
    Date: October 8th, 2018
-}

inc :: Int -> Int
inc x = x + 1

double :: Int -> Int
double x = x * 2

doubleFloat :: Float -> Float
doubleFloat x = x * 2

incDouble :: Int -> Int
incDouble x = inc x + double x

pprint :: String -> String
pprint x = x

llength :: String -> Int
llength x = length(x)

exclaim :: String -> String
exclaim sentence = sentence ++ "!"
