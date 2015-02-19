module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList [
  printsTheNumberItself
  ]

printsTheNumberItself =
  fizzbuzz 0 ~?= "0"
