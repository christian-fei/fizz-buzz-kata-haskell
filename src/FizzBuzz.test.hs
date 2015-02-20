module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

main = defaultMain tests

tests = hUnitTestToTests $ TestList $ simpleNumbers ++ [
  returnsFizzForThree,
  returnsFizzForSix
  ]

simpleNumbers = [
  returnsZeroForZero,
  returnsOneForOne,
  returnsTwoForTwo
  ]

returnsZeroForZero =
  fizzbuzz 0 ~?= "0"

returnsOneForOne =
  fizzbuzz 1 ~?= "1"

returnsTwoForTwo =
  fizzbuzz 2 ~?= "2"

returnsFizzForThree =
  fizzbuzz 3 ~?= "Fizz"

returnsFizzForSix =
  fizzbuzz 6 ~?= "Fizz"
