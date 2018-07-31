# Haskell Notes:

Use Command **ghci** to enter into Haskell compiler. Haskell, it's a Functional Programming Language. So basically all you need to think in terms of functions with language.

**Clear Command:**

```prelude> :! clear```

Every programming languages have their own built-in modules to do the set of basic functionalities. Like Haskell also has operators and pre-defined functions like read, sum, and all.

**Operators (+ - * / ^)**

Basically we people know how these operators work with input operands. So, Operator won’t do anything alone. It requires something like input from user end ie. Operand. So Plus(+) operator means everyone knows, if we give two number it can compute and give us some output. So we cannot go with 2+ or +2 something like this. It much requires two Integer input. So we must give 2 + 3 then + operator will give us 5 results. Same goes for rest of the operators

Now we got it what operators can do with operands.

Then how if we are coming up with some sort of calculations with is having more than one operators Like. 2 + 3 * 9. Here how what makes special here. If we blindly going with this everyone will get confused should I need to compute the 2+3 or 3*9? Here is the case Compiler will come up with some rules called “Precedence Rules”

We know what was the problem, the rules are going to apply on operators weight(ie.precedence or priority or order). So now we got to know every operator requires some operand to compute the results, and also have certain rules by default they are used to follow. So Like. 2 + 3 * 9. Here Multiply(*) operator has more precedence than Plus(+) operator

If you want to check what is the precedence rules on which operator use the following command:

```
Prelude> :info +
class Num a where
  (+) :: a -> a -> a
  ...
      -- Defined in ‘GHC.Num’
infixl 6 +

Prelude> :info *
class Num a where
  ...
  (*) :: a -> a -> a
  ...
      -- Defined in ‘GHC.Num’
infixl 7 *
```


And also there are infixl and infixr it means, These operators are infix operator which will follow left to right or right to left

**Function Syntax**

add n = n + 1

**Signature:**
add :: Integer -> Integer

**Definition:**
Here add is a function name and n is a Dynamic input which collects from the end user. Then executing the fun with immutable n input plus adding one number. 

Okay, We gotta function how we deploy this function into GHCI. We have to follow some command

**Load Function into GHCI:**

```*Main> :l Hello.hs```

:l is a shorter version of load and Hello.hs is my Haskell file. So basically all Haskell files should be in hs extension

Want to declare some variable in GHCI:

let a = 5 that's it. Haskell will give you this variable whenever you ask. Simply start using an as variable for future usage.


**Reference**

https://stackoverflow.com/questions/1012573/getting-started-with-haskell

http://book.realworldhaskell.org/read/getting-started.html

http://learnyouahaskell.com/chapters

