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


**Functions**

Haskell is a functional language so the function concept is essential to the language. A function takes one or more arguments and computes a result. Given the same arguments, the result will always be the same. This is similar to a mathematical function and it means that in Haskell there are no side-effects. There are two fundamental operations on functions: function definition (creating a function) and function application (using a function to compute a result).

**Function definitions**

In Haskell, many functions are pre-defined in a standard library called the prelude.
In due course, we’ll learn how to use many of these standard functions.
Defining a function
But the essence of functional programming is defining your own functions to solve your problems!

```
A function is defined by an equation.
f = \x -> x+1  -- lambda function
-- or
f x = x+1 -- named function

This is equivalent to f(x)=x+1
 in mathematical notation.
```
 

The left hand side of the equation looks like a variable – and that’s what it is
The right hand side is an expression that uses the local variables listed in parentheses and defines the result of the expression.
Function application
How function application works
A function definition is an equation, e.g. 𝚏=∖𝚡→𝚡+𝟷
The left hand side gives the name of the function;
The right hand side (the “body”) is an expression giving the formal parameters, and the value of the application. The expression may use the parameters.

An application is an expression like f 31, where 31
 is the argument.
The application is evaluated by replacing it with the body of the function, where the formal parameters are replaced by the arguments.
Example of application

```
f  = \x - > x+1
  f 3
--  > {bind x=3}
  (x+1) where x=3
--  > {substitute 3 for x}
  3+1
--  >
4
Multiple arguments and results
Functions with several arguments
A function with three arguments:

add3nums = \x y z -> x + y + z
To use it,

10 + 4* add3nums 1 2 3
= {- put extra parentheses in to show structure -}
  10 + ( 4* (add3nums 1 2 3) )
  -- >
  10 + (4*(1+2+3) )
  -- >
  10 + (4*6)
  -- >
  10 + 24
  -- >
  34
```

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

**Look for list files in GHCI:**

```ghci> :cd /tmp```

Even you can use same like tab key to find your directory to move inside or your respective file

// When you see an = symbol in Haskell code, it represents “meaning”: the name on the left is defined to be the expression on the right. So in imperative languages =(EqualTo) means we are going to assign something but in Haskell its called expression. Just think of Algebra(x+1 = 3), Do you think we are assigning 3 to x+1. Ha ha.. No we are saying both are equal. ie. LHS = RHS


**List comprehensions**

Sequences are fine, but sometimes you need more expressive power. A list comprehension is a high level notation for specifying the computation of a list. It is inspired by the mathematical notation for set comprehension.

Let's look at a simple examples of list comprehension:

[3*x | x <- [1..10]]

As you can see, to the left of the bar | we have an expression that is computed for every element of the list to the right. The parameter in the expression is specified using the left arrow <-



**In Terminal if you want add mulitple statements**

*use command:*
``` 
Prelude> :set +m
Prelude> do x <- getLine
Prelude|    putStrLn("Hello" ++ x)
Prelude|
Steve Jobs
HelloSteve Jobs
```











**Reference**

https://stackoverflow.com/questions/1012573/getting-started-with-haskell

http://book.realworldhaskell.org/read/getting-started.html

http://learnyouahaskell.com/chapters

http://www.seas.upenn.edu/%7Ecis194/spring13/lectures/01-intro.html

