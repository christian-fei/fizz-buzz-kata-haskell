module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  simpleNumbers ++ multipleOfThreeIsFizz ++ [
    returnsBuzzForFive,
    returnsBuzzForTen
    ]

simpleNumbers = [
  returnsZeroForZero,
  returnsOneForOne,
  returnsTwoForTwo
  ]

multipleOfThreeIsFizz = [
  returnsFizzForThree,
  returnsFizzForSix
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

returnsBuzzForFive =
  fizzbuzz 5 ~?= "Buzz"

returnsBuzzForTen =
  fizzbuzz 10 ~?= "Buzz"
