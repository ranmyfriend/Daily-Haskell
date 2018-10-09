{--

monad is not a function, it is a container.
that's why you must label it monad, you just can't use it like a normal function,
 because there's nothing to call

monad can contain a function, or even be a function (because function could be treated
like container too), but generally it's just a data.

print is a function, but it's not monad itself, it builds and returns a monadic container.
getLine is a container itself, it couldn't be called

but while IO container still holds a function (inaccessable for your code, called by environment)
 inside the container, other monads like list or Maybe could be a simple data containers

--}


hello :: String -> IO String
hello x =
  do
     putStrLn ("Hello, " ++ x)
     putStrLn "What's your name?"
     name <- getLine
     return name
