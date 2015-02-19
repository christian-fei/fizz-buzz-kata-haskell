module Main
where

import Test.HUnit
import FizzBuzz

main = do runTestTT tests

tests = TestList [
  calledOnNormalNumberReturnsTheNumber
  ]

calledOnNormalNumberReturnsTheNumber =
  calcFizzBuzz 0 ~?= "0"
