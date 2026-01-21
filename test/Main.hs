{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module Main where

import qualified Data.Text as T
import GHC.Records
import Marlin.GCode
import Marlin.GCode (Degrees (..), Mm (..), NotDefined)
import qualified Marlin.GCode as MG
import Relude
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Marlin.GCode tests"
    [ testGroup
        "Default instances"
        [ testCase ".."
            $ True
            @?= True
        ],
      testGroup
        "toText"
        [ testCase "all commands"
            $ toText
              [ comment "Test comment",
                MG.Cmd_LinearMove_NoExtrusion
                  MG.def'
                    { axisX = Just (Mm 10),
                      axisY = Just (Mm 20)
                    },
                MG.Cmd_LinearMove_WithExtrusion
                  MG.def'
                    { axisX = Just (Mm 10),
                      axisY = Just (Mm 20)
                    }
                  `MG.withComment` "Test comment",
                MG.Cmd_LinearMove_Clockwise_OffsetX
                  MG.def'
                    { offsetX = pure $ Mm 10,
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20)
                    },
                MG.Cmd_LinearMove_Clockwise_OffsetY
                  MG.def'
                    { offsetY = pure $ Mm 10,
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20)
                    },
                MG.Cmd_LinearMove_Clockwise_Radius
                  MG.def'
                    { radius = pure $ Degrees 10,
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20)
                    }
              ]
            @?= T.unlines
              [ "; Test comment",
                "G0 X10.0000 Y20.0000",
                "G1 X10.0000 Y20.0000 ; Test comment",
                "G3 I10.0000 X10.0000 Y20.0000",
                "G3 J10.0000 X10.0000 Y20.0000",
                "G3 R10.0000 X10.0000 Y20.0000"
              ]
        ]
    ]