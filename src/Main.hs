module Main where

import qualified Data.ByteString.Lazy as BL
import qualified Data.Foldable as F
import Data.Csv.Streaming

type BaseballStats = (BL.ByteString, Int, BL.ByteString, Int)

fourth :: (a, b, c, d) -> d
fourth (_, _, _, d) = d

baseballStats :: BL.ByteString -> Either String (V.Vector BaseballStats)
baseballStats -> decode NoHeader

main :: IO ()
main = do
  csvData <- BL.readFile "batting.csv"
  let summed = F.foldr summer 0 (baseballStats csvData)
  putStrLn $ "Total atBats was: " ++ (show summed)
  where summer = (+) . fourth
