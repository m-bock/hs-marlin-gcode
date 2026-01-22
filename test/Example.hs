module Example where

import Marlin.GCode
import Relude

example :: GCodeCmd
example =
  Cmd_LinearMove_NoExtrusion
    idef
      { axisX = Just (Mm 10),
        axisY = Just (Mm 20)
      }

main :: IO ()
main = do
  putStrLn "hello world"