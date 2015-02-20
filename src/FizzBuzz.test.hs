module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

main = defaultMain tests

tests = hUnitTestToTests $ TestList [
  returnsZeroForZero
  ]

returnsZeroForZero =
  fizzbuzz 0 ~?= "0"
