module FizzBuzz
where

calcFizzBuzz :: Int -> String
calcFizzBuzz n
  | n == 3      = "Fizz"
  | otherwise   = show n
