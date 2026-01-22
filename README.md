# hs-marlin-gcode

<img src="assets/logo.jpg" alt="logo">

Low level bindings to the [Marlin GCode](https://marlinfw.org/meta/gcode/) specification.

## Example: Drawing a triangle in 3D

### Haskell Code

<!-- START:RAW test/Example.hs -->
```haskell
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
```
<!-- END:RAW -->

### GCode Output

<!-- START:RAW renders/triangle.gcode -->
```gcode
; Triangle Layer 0
G0 X100.0000 Y135.0000 Z0.2000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z0.2000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z0.2000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z0.2000 ; Extrude to point 1
; Triangle Layer 1
G0 X100.0000 Y135.0000 Z0.4000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z0.4000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z0.4000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z0.4000 ; Extrude to point 1
; Triangle Layer 2
G0 X100.0000 Y135.0000 Z0.6000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z0.6000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z0.6000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z0.6000 ; Extrude to point 1
; Triangle Layer 3
G0 X100.0000 Y135.0000 Z0.8000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z0.8000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z0.8000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z0.8000 ; Extrude to point 1
; Triangle Layer 4
G0 X100.0000 Y135.0000 Z1.0000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z1.0000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z1.0000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z1.0000 ; Extrude to point 1
; Triangle Layer 5
G0 X100.0000 Y135.0000 Z1.2000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z1.2000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z1.2000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z1.2000 ; Extrude to point 1
; Triangle Layer 6
G0 X100.0000 Y135.0000 Z1.4000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z1.4000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z1.4000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z1.4000 ; Extrude to point 1
; Triangle Layer 7
G0 X100.0000 Y135.0000 Z1.6000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z1.6000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z1.6000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z1.6000 ; Extrude to point 1
; Triangle Layer 8
G0 X100.0000 Y135.0000 Z1.8000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z1.8000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z1.8000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z1.8000 ; Extrude to point 1
; Triangle Layer 9
G0 X100.0000 Y135.0000 Z2.0000 ; Move to point 1
G1 E3.0000 X70.0000 Y83.0000 Z2.0000 ; Extrude to point 2
G1 E3.0000 X130.0000 Y83.0000 Z2.0000 ; Extrude to point 3
G1 E3.0000 X100.0000 Y135.0000 Z2.0000 ; Extrude to point 1
```
<!-- END:RAW -->

# Live Demo

[Result in Online GCode Viewer](https://m-bock.github.io/gcode-viewer/?url=https://raw.githubusercontent.com/m-bock/hs-marlin-gcode/main/renders/index.json)

## Coverage

234 commands (including its all of its required and optional arguments) are covered.
Not covered: `G53`, `M43`, `M217`, `M240`, `M260`, `M306`, `M350`, `M351`, `M493`, `M494`, `M552`, `M553`, `M554`, `M569`, `M605`, `M665`, `M666`, `M810`, `M860`, `M871`, `M907`, `M912`, `M913`, `M914`, `M916`, `M917`, `M918`, `M919`, `M920`, `M7219`