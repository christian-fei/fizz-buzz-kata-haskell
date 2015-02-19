module FizzBuzz
where


fizzbuzz :: Int -> String
fizzbuzz 0 = 0
fizzbuzz n
  | n `mod` 15 == 0  = "FizzBuzz"
  | n `mod` 3 == 0   = "Fizz"
  | n `mod` 5 == 0   = "Buzz"
  | otherwise        = show n
