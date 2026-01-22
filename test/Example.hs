module Main where

import qualified Data.Text.IO as TIO
import Marlin.GCode
import Relude

sketchTriangle :: [GCodeCmd]
sketchTriangle = do
  -- Equilateral triangle vertices (side length 60mm, centered at 100,100)
  let point1x = Mm 100 -- top vertex
      point1y = Mm 135

      point2x = Mm 70 -- bottom left
      point2y = Mm 83

      point3x = Mm 130 -- bottom right
      point3y = Mm 83

      countLayers = 10
      heightLayer = Mm 0.2

  indexLayer <- [0 .. countLayers - 1] :: [Int]

  let z = Mm 0.2 + heightLayer * fromIntegral indexLayer

  [ comment ("Triangle Layer " <> show indexLayer),
    Cmd_LinearMove_NoExtrusion
      ( idef
          { axisX = Just point1x,
            axisY = Just point1y,
            axisZ = Just z
          }
      )
      `withComment` "Move to point 1",
    Cmd_LinearMove_WithExtrusion
      ( idef
          { axisX = Just point2x,
            axisY = Just point2y,
            axisZ = Just z,
            axisExtrusion = Req (Mm 3)
          }
      )
      `withComment` "Extrude to point 2",
    Cmd_LinearMove_WithExtrusion
      ( idef
          { axisX = Just point3x,
            axisY = Just point3y,
            axisZ = Just z,
            axisExtrusion = Req (Mm 3)
          }
      )
      `withComment` "Extrude to point 3",
    Cmd_LinearMove_WithExtrusion
      ( idef
          { axisX = Just point1x,
            axisY = Just point1y,
            axisZ = Just z,
            axisExtrusion = Req (Mm 3)
          }
      )
      `withComment` "Extrude to point 1"
    ]

main :: IO ()
main = do
  let gcode = toText sketchTriangle
  TIO.writeFile "renders/triangle.gcode" gcode
  putStrLn "G-code written to renders/triangle.gcode"