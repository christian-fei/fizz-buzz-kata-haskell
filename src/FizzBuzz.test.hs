module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  simpleNumbers ++ multipleOfThreeIsFizz ++ multipleOfFiveIsBuzz ++ multipleOfFifteeneIsFizzBuzz

simpleNumbers = [
  returnsZeroForZero,
  returnsOneForOne,
  returnsTwoForTwo
  ]

multipleOfThreeIsFizz = [
  returnsFizzForThree,
  returnsFizzForSix
  ]

multipleOfFiveIsBuzz = [
  returnsBuzzForFive,
  returnsBuzzForTen
  ]

multipleOfFifteeneIsFizzBuzz = [
  returnsFizzBuzzForFifteen,
  returnsFizzBuzzForThirty
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

returnsFizzBuzzForFifteen =
  fizzbuzz 15 ~?= "FizzBuzz"

returnsFizzBuzzForThirty =
  fizzbuzz 30 ~?= "FizzBuzz"
