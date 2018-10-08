import Prelude
{-
    Language: Haskell
    Topic: Simple Functions to compute with more than one params
    Creator: Ranjith
    Date: October 8th, 2018
-}

average :: Float -> Float -> Float
average x y = (x + y)/2

addMultiply :: Int -> Int -> Int -> Int
addMultiply x y z = (x + y) * z

showResult :: Int -> String
showResult x = "Hello" ++ " " ++ show x

--Area of Circle: Pi*r^2
areaOfCircle :: Float -> String
areaOfCircle r = "The area of a circle with radius " ++ show r ++ "cm is about " ++ show (pi * r * r) ++ "cm^2"
