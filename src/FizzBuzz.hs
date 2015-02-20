module FizzBuzz
(
  fizzbuzz
)
where

fizzbuzz :: Int -> String
fizzbuzz 0 = "0"
fizzbuzz n
  | n `rem` 5 == 0    = "Buzz"
  | n `rem` 3 == 0    = "Fizz"
  | otherwise         = show n
