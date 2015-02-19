module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList $
  normalNumbers ++ [
    calcFizzBuzz 3 ~?= "Fizz"
  ]


normalNumbers = [
  calcFizzBuzz 0 ~?= "0",
  calcFizzBuzz 1 ~?= "1",
  calcFizzBuzz 2 ~?= "2",
  calcFizzBuzz 3 ~?= "3",
  calcFizzBuzz 4 ~?= "4",
  calcFizzBuzz 5 ~?= "5"
  ]


