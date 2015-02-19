module FizzBuzz
where

calcFizzBuzz :: Int -> String
calcFizzBuzz 0 = "0"
calcFizzBuzz n
  | n `mod` 3 == 0      = "Fizz"
  | n == 5              = "Buzz"
  | otherwise           = show n
