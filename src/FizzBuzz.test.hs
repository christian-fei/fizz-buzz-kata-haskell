module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList $
  normalNumbers ++ multipleOfThreeIsFizz ++ multipleOfFiveIsBuzz ++ [
    calcFizzBuzz 15 ~?= "FizzBuzz",
    calcFizzBuzz 30 ~?= "FizzBuzz",
    calcFizzBuzz 45 ~?= "FizzBuzz",
    calcFizzBuzz 60 ~?= "FizzBuzz",
    calcFizzBuzz 75 ~?= "FizzBuzz",
    calcFizzBuzz 90 ~?= "FizzBuzz"
    ]


normalNumbers = [
  calcFizzBuzz 0 ~?= "0",
  calcFizzBuzz 1 ~?= "1",
  calcFizzBuzz 2 ~?= "2",
  calcFizzBuzz 4 ~?= "4"
  ]

multipleOfThreeIsFizz = [
  calcFizzBuzz 3  ~?= "Fizz",
  calcFizzBuzz 6  ~?= "Fizz",
  calcFizzBuzz 9  ~?= "Fizz",
  calcFizzBuzz 12 ~?= "Fizz"
  ]

multipleOfFiveIsBuzz = [
  calcFizzBuzz 5 ~?= "Buzz",
  calcFizzBuzz 10 ~?= "Buzz",
  calcFizzBuzz 20 ~?= "Buzz",
  calcFizzBuzz 25 ~?= "Buzz"
  ]
