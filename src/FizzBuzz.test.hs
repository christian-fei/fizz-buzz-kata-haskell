module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList [
  printsTheNumberItself,
  printsOne,
  printsFizzForThree,
  printsFizzForMultiplesOfThree
  ]

printsTheNumberItself =
  fizzbuzz 0 ~?= "0"

printsOne =
  fizzbuzz 1 ~?= "1"

printsFizzForThree =
  fizzbuzz 3 ~?= "Fizz"

printsFizzForMultiplesOfThree =
  fizzbuzz 6 ~?= "Fizz"
