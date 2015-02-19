module FizzBuzz
where


fizzbuzz :: Int -> String
fizzbuzz n
  | n == 0           = show n
  | n `mod` 3 == 0   = "Fizz"
  | n `mod` 5 == 0   = "Buzz"
  | otherwise        = show n
