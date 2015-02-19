module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList normalNumbers


normalNumbers = [
  calcFizzBuzz 0 ~?= "0"
  ]
