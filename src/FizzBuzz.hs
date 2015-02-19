module FizzBuzz
where


fizzbuzz :: Int -> String
fizzbuzz n
  | n == 0           = show n
  | n `mod` 3 == 0   = "Fizz"
  | otherwise        = show n
