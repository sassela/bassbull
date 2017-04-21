module Main where

import Bassbull
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Verify that bassbull outputs the correct data" $ do
    it "equals 4858210" $ do
      theSum <- getAtBatsSum "batting.csv"
      theSum `shouldBe` 4858210


