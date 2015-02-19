module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList [
  printsTheNumberItself,
  printsOne,
  printsFizzForThree,
  printsFizzForSix,
  printsFizzForNine,
  printsBuzzForFive,
  printsBuzzForTen
  ]

printsTheNumberItself =
  fizzbuzz 0 ~?= "0"

printsOne =
  fizzbuzz 1 ~?= "1"

printsFizzForThree =
  fizzbuzz 3 ~?= "Fizz"

printsFizzForSix =
  fizzbuzz 6 ~?= "Fizz"

printsFizzForNine =
  fizzbuzz 9 ~?= "Fizz"

printsBuzzForFive =
  fizzbuzz 5 ~?= "Buzz"

printsBuzzForTen =
  fizzbuzz 10 ~?= "Buzz"
