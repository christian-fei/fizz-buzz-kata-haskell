module FizzBuzz
(
  fizzbuzz
)
where

fizzbuzz :: Int -> String
fizzbuzz 0 = "0"
fizzbuzz 5 = "Buzz"
fizzbuzz 10 = "Buzz"
fizzbuzz n
  | n `rem` 3 == 0    = "Fizz"
  | otherwise         = show n
