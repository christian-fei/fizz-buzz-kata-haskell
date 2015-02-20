module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit


import FizzBuzz

-- main = do runTestTT tests
main = defaultMain tests

tests = hUnitTestToTests $ TestList [
  alwaysFails
  ]

alwaysFails =
  True ~?= False
