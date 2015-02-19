module FizzBuzz
where

calcFizzBuzz :: Int -> String
calcFizzBuzz 0 = "0"
calcFizzBuzz n
  | n `mod` 15 == 0     = "FizzBuzz"
  | n `mod` 5  == 0     = "Buzz"
  | n `mod` 3  == 0     = "Fizz"
  | otherwise           = show n
