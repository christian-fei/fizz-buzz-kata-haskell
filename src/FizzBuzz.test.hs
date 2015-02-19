module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList [
  printsTheNumberItself,
  printsOne
  ]

printsTheNumberItself =
  fizzbuzz 0 ~?= "0"

printsOne =
  fizzbuzz 1 ~?= "1"
