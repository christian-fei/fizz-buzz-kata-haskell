module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

main = defaultMain tests

tests = hUnitTestToTests $ TestList [
  returnsZeroForZero,
  returnsOneForOne
  ]

returnsZeroForZero =
  fizzbuzz 0 ~?= "0"

returnsOneForOne =
  fizzbuzz 1 ~?= "1"
