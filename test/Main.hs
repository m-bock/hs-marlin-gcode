module Main where

import qualified Data.Text as T
import GHC.Records
import Marlin.GCode hiding (idef)
import Relude
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Marlin.GCode tests"
    [ testCase "RawCmd with all ArgValue types"
        $ toText
          ( RawCmd
              "TEST"
              [ Just ('A', ArgMm (Mm 1)),
                Just ('B', ArgMmPerMin (MmPerMin 2)),
                Just ('C', ArgCelsius (Celsius 3)),
                Just ('D', ArgMmPerSec (MmPerSec 4)),
                Just ('E', ArgMmPerSec2 (MmPerSec2 5)),
                Just ('F', ArgPercent (Percent 6)),
                Just ('G', ArgSeconds (Seconds 7)),
                Just ('H', ArgMilliseconds (Milliseconds 8)),
                Just ('I', ArgDegrees (Degrees 9)),
                Just ('J', ArgIndex (Index 10)),
                Just ('K', ArgLaserPower (LaserPower 11)),
                Just ('L', ArgFlag (Flag True)),
                Just ('M', ArgCount (Count 12)),
                Just ('_', ArgFilename (Filename "test.gcode")),
                Just ('_', ArgTextValue (TextValue "test"))
              ]
          )
        @?= "TEST A1.0000 B2.0000 C3.0000 D4.0000 E5.0000 F6.0000 G7.0000 H8 I9.0000 J10 K11.0000 L1 M12 \"test.gcode\" \"test\""
    ]
