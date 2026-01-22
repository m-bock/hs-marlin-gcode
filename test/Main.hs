{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module Main where

import qualified Data.Text as T
import GHC.Records
import Marlin.GCode
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
        "Single Commands"
        [ testCase "Linear Move No Extrusion - maximum args"
            $ toText
              ( Cmd_LinearMove_NoExtrusion
                  idef
                    { axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G0 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move With Extrusion - maximum args"
            $ toText
              ( Cmd_LinearMove_WithExtrusion
                  idef
                    { axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G1 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move Clockwise OffsetX - maximum args"
            $ toText
              ( Cmd_LinearMove_Clockwise_OffsetX
                  idef
                    { offsetX = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G2 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 I10.0000 P5 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move Clockwise OffsetY - maximum args"
            $ toText
              ( Cmd_LinearMove_Clockwise_OffsetY
                  idef
                    { offsetY = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G2 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 J10.0000 P5 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move Clockwise Radius - maximum args"
            $ toText
              ( Cmd_LinearMove_Clockwise_Radius
                  idef
                    { radius = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G2 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 P5 R10.0000 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move CounterClockwise OffsetX - maximum args"
            $ toText
              ( Cmd_LinearMove_CounterClockwise_OffsetX
                  idef
                    { offsetX = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G3 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 I10.0000 P5 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move CounterClockwise OffsetY - maximum args"
            $ toText
              ( Cmd_LinearMove_CounterClockwise_OffsetY
                  idef
                    { offsetY = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G3 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 J10.0000 P5 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Linear Move CounterClockwise Radius - maximum args"
            $ toText
              ( Cmd_LinearMove_CounterClockwise_Radius
                  idef
                    { radius = Req (Mm 10),
                      axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      feedrate = Just (MmPerMin 1500),
                      count = Just (Count 5),
                      laser = Just (LaserPower 50),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G3 A1.0000 B2.0000 C3.0000 E4.0000 F1500.0000 P5 R10.0000 S50.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Dwell - maximum args"
            $ toText
              ( Cmd_Dwell
                  idef
                    { timeSeconds = Just (Seconds 5.5),
                      timeMilliseconds = Just (Milliseconds 1000)
                    }
              )
            @?= "G4 S5.5000 P1000",
          testCase "Bezier Cubic Spline Move Initial - maximum args"
            $ toText
              ( Cmd_BezierCubicSplineMove_Initial
                  idef
                    { offsetX1 = Req (Mm 1),
                      offsetY1 = Req (Mm 2),
                      offsetX2 = Req (Mm 3),
                      offsetY2 = Req (Mm 4),
                      axisX = Req (Mm 10),
                      axisY = Req (Mm 20),
                      axisExtrusion = Just (Mm 5),
                      feedrate = Just (MmPerMin 1500),
                      laser = Just (LaserPower 50)
                    }
              )
            @?= "G5 E5.0000 F1500.0000 I1.0000 J2.0000 P3.0000 Q4.0000 S50.0000 X10.0000 Y20.0000",
          testCase "Bezier Cubic Spline Move Subsequent - maximum args"
            $ toText
              ( Cmd_BezierCubicSplineMove_Subsequent
                  idef
                    { offsetX2 = Req (Mm 3),
                      offsetY2 = Req (Mm 4),
                      axisX = Req (Mm 10),
                      axisY = Req (Mm 20),
                      axisExtrusion = Just (Mm 5),
                      feedrate = Just (MmPerMin 1500),
                      offsetX1 = Just (Mm 1),
                      offsetY1 = Just (Mm 2),
                      laser = Just (LaserPower 50)
                    }
              )
            @?= "G5 E5.0000 F1500.0000 I1.0000 J2.0000 P3.0000 Q4.0000 S50.0000 X10.0000 Y20.0000",
          testCase "Direct Stepper Move - maximum args"
            $ toText
              ( Cmd_DirectStepperMove
                  idef
                    { directionE = Just (Flag True),
                      pageIndex = Just (Index 1),
                      stepRate = Just (MmPerSec 10.5),
                      stepCount = Just (Count 100),
                      directionX = Just (Flag True),
                      directionY = Just (Flag False),
                      directionZ = Just (Flag True)
                    }
              )
            @?= "G6 E1 I1 R10.5000 S100 X1 Y0 Z1",
          testCase "Retract - maximum args"
            $ toText
              ( Cmd_Retract
                  idef
                    { swapRetract = Just (Flag True)
                    }
              )
            @?= "G10 S1",
          testCase "Recover - maximum args"
            $ toText (Cmd_Recover (Recover {} :: Recover Required))
            @?= "G11",
          testCase "Clean The Nozzle - maximum args"
            $ toText
              ( Cmd_CleanTheNozzle
                  idef
                    { pattern = Just (Index 1),
                      radius = Just (Mm 5),
                      repetitions = Just (Count 3),
                      triangles = Just (Count 4),
                      includeX = Just (Flag True),
                      includeY = Just (Flag True),
                      includeZ = Just (Flag True)
                    }
              )
            @?= "G12 P1 R5.0000 S3 T4 X1 Y1 Z1",
          testCase "CNC Workspace Planes XY - maximum args"
            $ toText (Cmd_CNCWorkspacePlanes_XY (CNCWorkspacePlanes_XY {} :: CNCWorkspacePlanes_XY Required))
            @?= "G17",
          testCase "CNC Workspace Planes ZX - maximum args"
            $ toText (Cmd_CNCWorkspacePlanes_ZX (CNCWorkspacePlanes_ZX {} :: CNCWorkspacePlanes_ZX Required))
            @?= "G18",
          testCase "CNC Workspace Planes YZ - maximum args"
            $ toText (Cmd_CNCWorkspacePlanes_YZ (CNCWorkspacePlanes_YZ {} :: CNCWorkspacePlanes_YZ Required))
            @?= "G19",
          testCase "Inch Units - maximum args"
            $ toText (Cmd_InchUnits (InchUnits {} :: InchUnits Required))
            @?= "G20",
          testCase "Millimeter Units - maximum args"
            $ toText (Cmd_MillimeterUnits (MillimeterUnits {} :: MillimeterUnits Required))
            @?= "G21",
          testCase "Mesh Validation Pattern - maximum args"
            $ toText
              ( Cmd_MeshValidationPattern
                  idef
                    { bedTemp = Just (Celsius 60),
                      continueClosest = Just (Flag True),
                      disableLeveling = Just (Flag False),
                      filamentDiameter = Just (Mm 1.75),
                      hotendTemp = Just (Celsius 210),
                      materialPreset = Just (Index 1),
                      keepHeatersOn = Just (Flag True),
                      layerHeight = Just (Mm 0.2),
                      oozeAmount = Just (Mm 0.1),
                      primeLength = Just (Mm 10),
                      retractionMultiplier = Just (Mm 1),
                      repetitions = Just (Count 1),
                      nozzleSize = Just (Mm 0.4),
                      randomDeviation = Just (Mm 0),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100)
                    }
              )
            @?= "G26 B60.0000 C1 D0 F1.7500 H210.0000 I1 K1 L0.2000 O0.1000 P10.0000 Q1.0000 R1 S0.4000 U0.0000 X100.0000 Y100.0000",
          testCase "Park Toolehead - maximum args"
            $ toText
              ( Cmd_ParkToolehead
                  idef
                    { parkingBehavior = Just (Index 0)
                    }
              )
            @?= "G27 P0",
          testCase "Auto Home - maximum args"
            $ toText
              ( Cmd_AutoHome
                  idef
                    { homeA = Just (Flag True),
                      homeB = Just (Flag True),
                      homeC = Just (Flag True),
                      holdXY = Just (Flag False),
                      restoreLeveling = Just (Flag True),
                      skipIfTrusted = Just (Flag False),
                      raiseDistance = Just (Mm 5),
                      homeU = Just (Flag True),
                      homeV = Just (Flag True),
                      homeW = Just (Flag True),
                      homeX = Just (Flag True),
                      homeY = Just (Flag True),
                      homeZ = Just (Flag True)
                    }
              )
            @?= "G28 A1 B1 C1 H0 L1 O0 R5.0000 U1 V1 W1 X1 Y1 Z1",
          testCase "Bed Leveling 3 Point - maximum args"
            $ toText
              ( Cmd_BedLeveling_3Point
                  idef
                    { abort = Just (Flag False),
                      createFake = Just (Flag False),
                      dryRun = Just (Flag True),
                      engageEach = Just (Flag True),
                      jettison = Just (Flag False),
                      optional = Just (Flag False),
                      query = Just (Flag False),
                      verbosity = Just (Index 1)
                    }
              )
            @?= "G29 A0 C0 D1 E1 J0 O0 Q0 V1",
          testCase "Bed Leveling Bilinear - maximum args"
            $ toText
              ( Cmd_BedLeveling_Bilinear
                  idef
                    { abort = Just (Flag False),
                      backLimit = Just (Mm 200),
                      createFake = Just (Flag False),
                      dryRun = Just (Flag True),
                      engageEach = Just (Flag True),
                      frontLimit = Just (Mm 0),
                      areaSize = Just (Mm 50),
                      meshX = Just (Index 5),
                      jettison = Just (Flag False),
                      meshY = Just (Index 5),
                      leftLimit = Just (Mm 0),
                      optional = Just (Flag False),
                      query = Just (Flag False),
                      rightLimit = Just (Mm 200),
                      travelSpeed = Just (MmPerMin 5000),
                      verbosity = Just (Index 1),
                      writeMesh = Just (Flag True),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100),
                      meshZ = Just (Mm 0)
                    }
              )
            @?= "G29 A0 B200.0000 C0 D1 E1 F0.0000 H50.0000 I5 J0 K5 L0.0000 O0 Q0 R200.0000 S5000.0000 V1 W1 X100.0000 Y100.0000 Z0.0000",
          testCase "Bed Leveling Linear - maximum args"
            $ toText
              ( Cmd_BedLeveling_Linear
                  idef
                    { abort = Just (Flag False),
                      backLimit = Just (Mm 200),
                      createFake = Just (Flag False),
                      dryRun = Just (Flag True),
                      engageEach = Just (Flag True),
                      frontLimit = Just (Mm 0),
                      areaSize = Just (Mm 50),
                      jettison = Just (Flag False),
                      leftLimit = Just (Mm 0),
                      optional = Just (Flag False),
                      gridSize = Just (Index 3),
                      query = Just (Flag False),
                      rightLimit = Just (Mm 200),
                      travelSpeed = Just (MmPerMin 5000),
                      topology = Just (Flag True),
                      verbosity = Just (Index 1),
                      columns = Just (Index 5),
                      rows = Just (Index 5)
                    }
              )
            @?= "G29 A0 B200.0000 C0 D1 E1 F0.0000 H50.0000 J0 L0.0000 O0 P3 Q0 R200.0000 S5000.0000 T1 V1 X5 Y5",
          testCase "Bed Leveling Manual - maximum args"
            $ toText
              ( Cmd_BedLeveling_Manual
                  idef
                    { state = Req (Index 1),
                      meshX = Just (Index 2),
                      meshY = Just (Index 3),
                      meshXOld = Just (Count 1),
                      meshYOld = Just (Count 2),
                      meshZ = Just (Mm 0.1)
                    }
              )
            @?= "G29 I2 J3 S1 X1 Y2 Z0.1000",
          testCase "Bed Leveling Unified - maximum args"
            $ toText
              ( Cmd_BedLeveling_Unified
                  idef
                    { activate = Just (Flag True),
                      businessCard = Just (Mm 0.1),
                      constant = Just (Mm 0),
                      disable = Just (Flag False),
                      stowEach = Just (Flag True),
                      fadeHeight = Just (Mm 10),
                      height = Just (Mm 0),
                      invalidate = Just (Index 0),
                      grid = Just (Index 1),
                      kompare = Just (Index 0),
                      load = Just (Index 0),
                      phase = Just (Index 0),
                      testPattern = Just (Index 0),
                      repeat = Just (Count 1),
                      save = Just (Index 0),
                      topology = Just (Index 0),
                      unlevel = Just (Flag False),
                      verbosity = Just (Index 1),
                      what = Just (Flag False),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100)
                    }
              )
            @?= "G29 A1 B0.1000 C0.0000 D0 E1 F10.0000 H0.0000 I0 J1 K0 L0 P0 Q0 R1 S0 T0 U0 V1 W0 X100.0000 Y100.0000",
          testCase "Single Z-Probe - maximum args"
            $ toText
              ( Cmd_SingleZ_Probe
                  idef
                    { temperatureCompensation = Just (Flag True),
                      engageEach = Just (Flag True),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100)
                    }
              )
            @?= "G30 C1 E1 X100.0000 Y100.0000",
          testCase "Dock Sled - maximum args"
            $ toText (Cmd_DockSled (DockSled {} :: DockSled Required))
            @?= "G31",
          testCase "Undock Sled - maximum args"
            $ toText (Cmd_UndockSled (UndockSled {} :: UndockSled Required))
            @?= "G32",
          testCase "Delta Auto Calibration - maximum args"
            $ toText
              ( Cmd_DeltaAutoCalibration
                  idef
                    { precision = Just (Mm 0.01),
                      engageEach = Just (Flag True),
                      iterations = Just (Count 3),
                      probeOffsetRelative = Just (Flag False),
                      probePoints = Just (Index 7),
                      reduceGrid = Just (Mm 0),
                      saveSensorless = Just (Flag False),
                      disableTowerAngles = Just (Flag False),
                      verbosity = Just (Index 1),
                      disableStallguardX = Just (Flag False),
                      disableStallguardY = Just (Flag False),
                      disableStallguardZ = Just (Flag False)
                    }
              )
            @?= "G33 C0.0100 E1 F3 O0 P7 R0.0000 S0 T0 V1 X0 Y0 Z0",
          testCase "Z Steppers Auto-Alignment - maximum args"
            $ toText
              ( Cmd_ZSteppersAuto_Alignment
                  idef
                    { amplification = Just (Mm 0.5),
                      stowEach = Just (Flag True),
                      iterations = Just (Index 3),
                      unlockAll = Just (Flag False),
                      recalculate = Just (Flag True),
                      lockState = Just (Flag False),
                      targetAccuracy = Just (Mm 0.01),
                      stepper = Just (Index 0)
                    }
              )
            @?= "G34 A0.5000 E1 I3 L0 R1 S0 T0.0100 Z0",
          testCase "Mechanical Gantry Calibration - maximum args"
            $ toText
              ( Cmd_MechanicalGantryCalibration
                  idef
                    { current = Just (Index 1),
                      extraHeight = Just (Mm 5)
                    }
              )
            @?= "G34 S1 Z5.0000",
          testCase "Tramming Assistant - maximum args"
            $ toText
              ( Cmd_TrammingAssistant
                  idef
                    { screwThreadType = Just (Index 40)
                    }
              )
            @?= "G35 S40",
          testCase "Probe Target Error On Fail - maximum args"
            $ toText
              ( Cmd_ProbeTarget_ErrorOnFail
                  idef
                    { feedrate = Just (MmPerMin 100),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 5)
                    }
              )
            @?= "G38.2 F100.0000 X10.0000 Y20.0000 Z5.0000",
          testCase "Probe Target No Error On Fail - maximum args"
            $ toText
              ( Cmd_ProbeTarget_NoErrorOnFail
                  idef
                    { feedrate = Just (MmPerMin 100),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 5)
                    }
              )
            @?= "G38.3 F100.0000 X10.0000 Y20.0000 Z5.0000",
          testCase "Probe Target Away Error On Fail - maximum args"
            $ toText
              ( Cmd_ProbeTarget_AwayErrorOnFail
                  idef
                    { feedrate = Just (MmPerMin 100),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 5)
                    }
              )
            @?= "G38.4 F100.0000 X10.0000 Y20.0000 Z5.0000",
          testCase "Probe Target Away No Error On Fail - maximum args"
            $ toText
              ( Cmd_ProbeTarget_AwayNoErrorOnFail
                  idef
                    { feedrate = Just (MmPerMin 100),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 5)
                    }
              )
            @?= "G38.5 F100.0000 X10.0000 Y20.0000 Z5.0000",
          testCase "Move to Mesh Coordinate - maximum args"
            $ toText
              ( Cmd_MovetoMeshCoordinate
                  idef
                    { feedrate = Just (MmPerMin 100),
                      meshColumn = Just (Index 4),
                      meshRow = Just (Index 4),
                      moveProbe = Just (Flag True)
                    }
              )
            @?= "G42 F100.0000 I4 J4 P1",
          testCase "Select Workspace Workspace 1 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace1 (SelectWorkspace_Workspace1 {} :: SelectWorkspace_Workspace1 Required))
            @?= "G54",
          testCase "Select Workspace Workspace 2 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace2 (SelectWorkspace_Workspace2 {} :: SelectWorkspace_Workspace2 Required))
            @?= "G55",
          testCase "Select Workspace Workspace 3 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace3 (SelectWorkspace_Workspace3 {} :: SelectWorkspace_Workspace3 Required))
            @?= "G56",
          testCase "Select Workspace Workspace 4 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace4 (SelectWorkspace_Workspace4 {} :: SelectWorkspace_Workspace4 Required))
            @?= "G57",
          testCase "Select Workspace Workspace 5 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace5 (SelectWorkspace_Workspace5 {} :: SelectWorkspace_Workspace5 Required))
            @?= "G58",
          testCase "Select Workspace Workspace 6 - maximum args"
            $ toText (Cmd_SelectWorkspace_Workspace6 (SelectWorkspace_Workspace6 {} :: SelectWorkspace_Workspace6 Required))
            @?= "G59",
          testCase "Stored Positions - maximum args"
            $ toText
              ( Cmd_StoredPositions
                  idef
                    { deleteSlot = Just (Index 1),
                      restoreE = Just (Mm 10),
                      feedrate = Just (MmPerMin 100),
                      restoreSlot = Just (Index 2),
                      saveSlot = Just (Index 0),
                      restoreX = Just (Mm 5),
                      restoreY = Just (Mm 6),
                      restoreZ = Just (Mm 7)
                    }
              )
            @?= "G60 D1 E10.0000 F100.0000 Q2 S0 X5.0000 Y6.0000 Z7.0000",
          testCase "Return to Saved Position - maximum args"
            $ toText
              ( Cmd_ReturntoSavedPosition
                  idef
                    { restoreE = Just (Mm 10),
                      feedrate = Just (MmPerMin 100),
                      slot = Just (Index 1),
                      restoreX = Just (Mm 5),
                      restoreY = Just (Mm 6),
                      restoreZ = Just (Mm 7)
                    }
              )
            @?= "G61 E10.0000 F100.0000 S1 X5.0000 Y6.0000 Z7.0000",
          testCase "Probe Temperature Calibration - maximum args"
            $ toText
              ( Cmd_ProbeTemperatureCalibration
                  idef
                    { calibrateBed = Just (Flag True),
                      calibrateProbe = Just (Flag True)
                    }
              )
            @?= "G76 B1 P1",
          testCase "Cancel Current Motion Mode - maximum args"
            $ toText (Cmd_CancelCurrentMotionMode (CancelCurrentMotionMode {} :: CancelCurrentMotionMode Required))
            @?= "G80",
          testCase "Absolute Positioning - maximum args"
            $ toText (Cmd_AbsolutePositioning (AbsolutePositioning {} :: AbsolutePositioning Required))
            @?= "G90",
          testCase "Relative Positioning - maximum args"
            $ toText (Cmd_RelativePositioning (RelativePositioning {} :: RelativePositioning Required))
            @?= "G91",
          testCase "Set Position - maximum args"
            $ toText
              ( Cmd_SetPosition
                  idef
                    { axisA = Just (Mm 1),
                      axisB = Just (Mm 2),
                      axisC = Just (Mm 3),
                      axisExtrusion = Just (Mm 4),
                      axisU = Just (Mm 5),
                      axisV = Just (Mm 6),
                      axisW = Just (Mm 7),
                      axisX = Just (Mm 10),
                      axisY = Just (Mm 20),
                      axisZ = Just (Mm 30)
                    }
              )
            @?= "G92 A1.0000 B2.0000 C3.0000 E4.0000 U5.0000 V6.0000 W7.0000 X10.0000 Y20.0000 Z30.0000",
          testCase "Backlash Calibration - maximum args"
            $ toText
              ( Cmd_BacklashCalibration
                  idef
                    { backlashOnly = Just (Flag True),
                      toolheadIndex = Just (Index 1),
                      uncertainty = Just (Mm 0.1),
                      report = Just (Flag True)
                    }
              )
            @?= "G425 B1 T1 U0.1000 V1",
          testCase "Spindle CW / Laser On - maximum args"
            $ toText
              ( Cmd_SpindleCW_LaserOn
                  idef
                    { inlineMode = Just (Flag True),
                      powerPWM = Just (Index 128),
                      power = Just (Index 200)
                    }
              )
            @?= "M3 I1 O128 S200",
          testCase "Spindle CCW / Laser On - maximum args"
            $ toText
              ( Cmd_SpindleCCW_LaserOn
                  idef
                    { inlineMode = Just (Flag True),
                      powerPWM = Just (Index 128),
                      power = Just (Index 200)
                    }
              )
            @?= "M4 I1 O128 S200",
          testCase "Spindle / Laser Off - maximum args"
            $ toText (Cmd_Spindle_LaserOff (Spindle_LaserOff {} :: Spindle_LaserOff Required))
            @?= "M5",
          testCase "Enable Steppers - maximum args"
            $ toText
              ( Cmd_EnableSteppers
                  idef
                    { axisA = Just (Flag True),
                      axisB = Just (Flag True),
                      axisC = Just (Flag True),
                      axisExtrusion = Just (Flag True),
                      axisU = Just (Flag True),
                      axisV = Just (Flag True),
                      axisW = Just (Flag True),
                      axisX = Just (Flag True),
                      axisY = Just (Flag True),
                      axisZ = Just (Flag True)
                    }
              )
            @?= "M17 A1 B1 C1 E1 U1 V1 W1 X1 Y1 Z1",
          testCase "Disable Steppers - maximum args"
            $ toText
              ( Cmd_DisableSteppers
                  idef
                    { axisA = Just (Flag True),
                      axisB = Just (Flag True),
                      axisC = Just (Flag True),
                      axisExtrusion = Just (Flag True),
                      timeoutSeconds = Just (Seconds 60),
                      axisU = Just (Flag True),
                      axisV = Just (Flag True),
                      axisW = Just (Flag True),
                      axisX = Just (Flag True),
                      axisY = Just (Flag True),
                      axisZ = Just (Flag True)
                    }
              )
            @?= "M18 A1 B1 C1 E1 S60.0000 U1 V1 W1 X1 Y1 Z1",
          testCase "List SD Card - maximum args"
            $ toText
              ( Cmd_ListSDCard
                  idef
                    { binFilesOnly = Just (Flag True),
                      longFilenames = Just (Flag True),
                      timestamp = Just (Flag True)
                    }
              )
            @?= "M20 F1 L1 T1",
          testCase "Init SD Card - maximum args"
            $ toText (Cmd_InitSDCard (InitSDCard {} :: InitSDCard Required))
            @?= "M21",
          testCase "Release SD Card - maximum args"
            $ toText (Cmd_ReleaseSDCard (ReleaseSDCard {} :: ReleaseSDCard Required))
            @?= "M22",
          testCase "Start or Resume SD Print - maximum args"
            $ toText
              ( Cmd_StartorResumeSDPrint
                  idef
                    { resumePosition = Just (Count 1000),
                      elapsedTime = Just (Count 5000)
                    }
              )
            @?= "M24 S1000 T5000",
          testCase "Pause SD Print - maximum args"
            $ toText (Cmd_PauseSDPrint (PauseSDPrint {} :: PauseSDPrint Required))
            @?= "M25",
          testCase "Set SD Position - maximum args"
            $ toText
              ( Cmd_SetSDPosition
                  idef
                    { position = Just (Count 1000)
                    }
              )
            @?= "M26 S1000",
          testCase "Report SD Print Status - maximum args"
            $ toText
              ( Cmd_ReportSDPrintStatus
                  idef
                    { reportFilename = Just (Flag True),
                      autoReportInterval = Just (Seconds 5)
                    }
              )
            @?= "M27 C1 S5.0000",
          testCase "Stop SD Write - maximum args"
            $ toText (Cmd_StopSDWrite (StopSDWrite {} :: StopSDWrite Required))
            @?= "M29",
          testCase "Report Print Time - maximum args"
            $ toText (Cmd_ReportPrintTime (ReportPrintTime {} :: ReportPrintTime Required))
            @?= "M31",
          testCase "SDCard Sorting - maximum args"
            $ toText
              ( Cmd_SDCardSorting
                  idef
                    { folderSorting = Just (Index 1),
                      sortingOrder = Just (Index 1)
                    }
              )
            @?= "M34 F1 S1",
          testCase "Set Pin State - maximum args"
            $ toText
              ( Cmd_SetPinState
                  idef
                    { ignoreProtection = Just (Flag True),
                      pin = Just (Index 33),
                      state = Req (Index 1),
                      pinMode = Just (Index 1)
                    }
              )
            @?= "M42 I1 P33 S1 T1",
          testCase "Pins Debugging - maximum args"
            $ toText
              ( Cmd_PinsDebugging
                  idef
                    { watchEndstops = Just (Flag True),
                      ignoreProtection = Just (Flag True),
                      pin = Just (Index 56),
                      testProbe = Just (Flag True),
                      togglePins = Just (Flag True),
                      watchPins = Just (Flag True)
                    }
              )
            @?= "M43 E1 I1 P56 S1 T1 W1",
          testCase "Probe Repeatability Test - maximum args"
            $ toText
              ( Cmd_ProbeRepeatabilityTest
                  idef
                    { temperatureCompensation = Just (Flag True),
                      engageEach = Just (Flag True),
                      legs = Just (Count 7),
                      probeCount = Just (Count 10),
                      starPattern = Just (Index 1),
                      verbosity = Just (Index 2),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100)
                    }
              )
            @?= "M48 C1 E1 L7 P10 S1 V2 X100.0000 Y100.0000",
          testCase "Set Print Progress - maximum args"
            $ toText
              ( Cmd_SetPrintProgress
                  idef
                    { interactionCountdown = Just (Count 5),
                      progressPercent = Just (Index 50),
                      remainingTime = Just (Count 120)
                    }
              )
            @?= "M73 C5 P50 R120",
          testCase "Pause Print Job Timer - maximum args"
            $ toText (Cmd_PausePrintJobTimer (PausePrintJobTimer {} :: PausePrintJobTimer Required))
            @?= "M76",
          testCase "Stop Print Job Timer - maximum args"
            $ toText (Cmd_StopPrintJobTimer (StopPrintJobTimer {} :: StopPrintJobTimer Required))
            @?= "M77",
          testCase "Print Job Stats - maximum args"
            $ toText (Cmd_PrintJobStats (PrintJobStats {} :: PrintJobStats Required))
            @?= "M78",
          testCase "Power On - maximum args"
            $ toText
              ( Cmd_PowerOn
                  idef
                    { reportState = Just (Flag True)
                    }
              )
            @?= "M80 S1",
          testCase "Power Off - maximum args"
            $ toText (Cmd_PowerOff (PowerOff {} :: PowerOff Required))
            @?= "M81",
          testCase "E Absolute - maximum args"
            $ toText (Cmd_EAbsolute (EAbsolute {} :: EAbsolute Required))
            @?= "M82",
          testCase "E Relative - maximum args"
            $ toText (Cmd_ERelative (ERelative {} :: ERelative Required))
            @?= "M83",
          testCase "Inactivity Shutdown - maximum args"
            $ toText
              ( Cmd_InactivityShutdown
                  idef
                    { maxInactiveSeconds = Req (Seconds 600)
                    }
              )
            @?= "M85 S600.0000",
          testCase "Hotend Idle Timeout - maximum args"
            $ toText
              ( Cmd_HotendIdleTimeout
                  idef
                    { bedIdleTemp = Just (Celsius 30),
                      extruderIdleTemp = Just (Celsius 40),
                      timeoutSeconds = Just (Seconds 240),
                      temperatureTrigger = Just (Celsius 100)
                    }
              )
            @?= "M86 B30.0000 E40.0000 S240.0000 T100.0000",
          testCase "Disable Hotend Idle Timeout - maximum args"
            $ toText (Cmd_DisableHotendIdleTimeout (DisableHotendIdleTimeout {} :: DisableHotendIdleTimeout Required))
            @?= "M87",
          testCase "Set Axis Steps-per-unit - maximum args"
            $ toText
              ( Cmd_SetAxisSteps_per_unit
                  idef
                    { axisA = Just (Mm 100),
                      axisB = Just (Mm 100),
                      axisC = Just (Mm 100),
                      axisExtrusion = Just (Mm 100),
                      targetExtruder = Just (Index 0),
                      axisU = Just (Mm 100),
                      axisV = Just (Mm 100),
                      axisW = Just (Mm 100),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100),
                      axisZ = Just (Mm 100)
                    }
              )
            @?= "M92 A100.0000 B100.0000 C100.0000 E100.0000 T0 U100.0000 V100.0000 W100.0000 X100.0000 Y100.0000 Z100.0000",
          testCase "Set Hotend Temperature - maximum args"
            $ toText
              ( Cmd_SetHotendTemperature
                  idef
                    { maxAutoTemp = Just (Celsius 190),
                      autotempFactor = Just (Mm 0.5),
                      materialPreset = Just (Index 1),
                      targetTemp = Just (Celsius 180),
                      hotendIndex = Just (Index 0)
                    }
              )
            @?= "M104 B190.0000 F0.5000 I1 S180.0000 T0",
          testCase "Report Temperatures - maximum args"
            $ toText
              ( Cmd_ReportTemperatures
                  idef
                    { includeRedundant = Just (Flag True),
                      hotendIndex = Just (Index 0)
                    }
              )
            @?= "M105 R1 T0",
          testCase "Set Fan Speed - maximum args"
            $ toText
              ( Cmd_SetFanSpeed
                  idef
                    { materialPreset = Just (Index 1),
                      fanIndex = Just (Index 0),
                      speed = Just (Index 200),
                      secondarySpeed = Just (Index 128)
                    }
              )
            @?= "M106 I1 P0 S200 T128",
          testCase "Fan Off - maximum args"
            $ toText
              ( Cmd_FanOff
                  idef
                    { fanIndex = Just (Index 0)
                    }
              )
            @?= "M107 P0",
          testCase "Break and Continue - maximum args"
            $ toText (Cmd_BreakandContinue (BreakandContinue {} :: BreakandContinue Required))
            @?= "M108",
          testCase "Wait for Hotend Temperature - maximum args"
            $ toText
              ( Cmd_WaitforHotendTemperature
                  idef
                    { maxAutoTemp = Just (Celsius 190),
                      autotempFactor = Just (Mm 0.5),
                      materialPreset = Just (Index 1),
                      targetTempWait = Just (Celsius 180),
                      targetTemp = Just (Celsius 180),
                      hotendIndex = Just (Index 0)
                    }
              )
            @?= "M109 B190.0000 F0.5000 I1 R180.0000 S180.0000 T0",
          testCase "Set / Get Line Number - maximum args"
            $ toText
              ( Cmd_Set_GetLineNumber
                  idef
                    { lineNumber = Just (Count 100)
                    }
              )
            @?= "M110 N100",
          testCase "Debug Level - maximum args"
            $ toText
              ( Cmd_DebugLevel
                  idef
                    { debugFlags = Just (Index 38)
                    }
              )
            @?= "M111 S38",
          testCase "Full Shutdown - maximum args"
            $ toText (Cmd_FullShutdown (FullShutdown {} :: FullShutdown Required))
            @?= "M112",
          testCase "Host Keepalive - maximum args"
            $ toText
              ( Cmd_HostKeepalive
                  idef
                    { keepaliveInterval = Just (Seconds 5)
                    }
              )
            @?= "M113 S5.0000",
          testCase "Get Current Position - maximum args"
            $ toText
              ( Cmd_GetCurrentPosition
                  idef
                    { detailedInfo = Just (Flag True),
                      reportEStepper = Just (Flag True),
                      realPosition = Just (Flag True)
                    }
              )
            @?= "M114 D1 E1 R1",
          testCase "Firmware Info - maximum args"
            $ toText (Cmd_FirmwareInfo (FirmwareInfo {} :: FirmwareInfo Required))
            @?= "M115",
          testCase "Endstop States - maximum args"
            $ toText (Cmd_EndstopStates (EndstopStates {} :: EndstopStates Required))
            @?= "M119",
          testCase "Enable Endstops - maximum args"
            $ toText (Cmd_EnableEndstops (EnableEndstops {} :: EnableEndstops Required))
            @?= "M120",
          testCase "Disable Endstops - maximum args"
            $ toText (Cmd_DisableEndstops (DisableEndstops {} :: DisableEndstops Required))
            @?= "M121",
          testCase "Set Bed Temperature - maximum args"
            $ toText
              ( Cmd_SetBedTemperature
                  idef
                    { materialPreset = Just (Index 1),
                      targetTemp = Just (Celsius 80)
                    }
              )
            @?= "M140 I1 S80.0000",
          testCase "Set Chamber Temperature - maximum args"
            $ toText
              ( Cmd_SetChamberTemperature
                  idef
                    { targetTemp = Just (Celsius 40)
                    }
              )
            @?= "M141 S40.0000",
          testCase "Wait for Bed Temperature - maximum args"
            $ toText
              ( Cmd_WaitforBedTemperature
                  idef
                    { materialPreset = Just (Index 1),
                      targetTempWait = Just (Celsius 80),
                      targetTemp = Just (Celsius 80),
                      coolingTime = Just (Seconds 600)
                    }
              )
            @?= "M190 I1 R80.0000 S80.0000 T600.0000",
          testCase "Volumetric Extrusion Diameter - maximum args"
            $ toText
              ( Cmd_VolumetricExtrusionDiameter
                  idef
                    { filamentDiameter = Just (Mm 1.75),
                      extruderLimit = Just (Mm 10),
                      volumetricOn = Just (Flag True),
                      extruderIndex = Just (Index 0)
                    }
              )
            @?= "M200 D1.7500 L10.0000 S1 T0",
          testCase "Print / Travel Move Limits - maximum args"
            $ toText
              ( Cmd_Print_TravelMoveLimits
                  idef
                    { axisExtrusion = Just (Mm 1000),
                      frequencyLimit = Just (Count 60),
                      frequencyMinSpeed = Just (Mm 47),
                      targetExtruder = Just (Index 0),
                      axisX = Just (Mm 1000),
                      axisY = Just (Mm 1000),
                      axisZ = Just (Mm 100)
                    }
              )
            @?= "M201 E1000.0000 F60 S47.0000 T0 X1000.0000 Y1000.0000 Z100.0000",
          testCase "Set Max Feedrate - maximum args"
            $ toText
              ( Cmd_SetMaxFeedrate
                  idef
                    { axisExtrusion = Just (MmPerSec 50),
                      targetExtruder = Just (Index 0),
                      axisX = Just (MmPerSec 100),
                      axisY = Just (MmPerSec 100),
                      axisZ = Just (MmPerSec 5)
                    }
              )
            @?= "M203 E50.0000 T0 X100.0000 Y100.0000 Z5.0000",
          testCase "Set Starting Acceleration - maximum args"
            $ toText
              ( Cmd_SetStartingAcceleration
                  idef
                    { printingAccel = Just (Mm 2400),
                      retractAccel = Just (Mm 2000),
                      legacyAccel = Just (Mm 2000),
                      travelAccel = Just (Mm 2000)
                    }
              )
            @?= "M204 P2400.0000 R2000.0000 S2000.0000 T2000.0000",
          testCase "Set Advanced Settings - maximum args"
            $ toText
              ( Cmd_SetAdvancedSettings
                  idef
                    { minSegmentTime = Just (Milliseconds 20000),
                      axisExtrusion = Just (Mm 5),
                      junctionDeviation = Just (Mm 0.013),
                      minFeedratePrint = Just (MmPerSec 0),
                      minFeedrateTravel = Just (MmPerSec 0),
                      axisX = Just (Mm 8),
                      axisY = Just (Mm 8),
                      axisZ = Just (Mm 0.4)
                    }
              )
            @?= "M205 B20000 E5.0000 J0.0130 S0.0000 T0.0000 X8.0000 Y8.0000 Z0.4000",
          testCase "Set Home Offsets - maximum args"
            $ toText
              ( Cmd_SetHomeOffsets
                  idef
                    { axisA = Just (Mm 0),
                      axisB = Just (Mm 0),
                      axisC = Just (Mm 0),
                      scaraPsi = Just (Mm 0),
                      scaraTheta = Just (Mm 0),
                      axisU = Just (Mm 0),
                      axisV = Just (Mm 0),
                      axisW = Just (Mm 0),
                      axisX = Just (Mm 0),
                      axisY = Just (Mm 0),
                      axisZ = Just (Mm 0)
                    }
              )
            @?= "M206 A0.0000 B0.0000 C0.0000 P0.0000 T0.0000 U0.0000 V0.0000 W0.0000 X0.0000 Y0.0000 Z0.0000",
          testCase "Set Feedrate Percentage - maximum args"
            $ toText
              ( Cmd_SetFeedratePercentage
                  idef
                    { backupFactor = Just (Flag True),
                      restoreFactor = Just (Flag True),
                      feedratePercent = Just (Index 80)
                    }
              )
            @?= "M220 B1 R1 S80",
          testCase "Set Flow Percentage - maximum args"
            $ toText
              ( Cmd_SetFlowPercentage
                  idef
                    { flowPercent = Req (Index 100),
                      targetExtruder = Just (Index 0)
                    }
              )
            @?= "M221 S100 T0",
          testCase "Finish Moves - maximum args"
            $ toText (Cmd_FinishMoves (FinishMoves {} :: FinishMoves Required))
            @?= "M400",
          testCase "Deploy Probe - maximum args"
            $ toText
              ( Cmd_DeployProbe
                  idef
                    { reportHSMode = Just (Flag True),
                      remainInPlace = Just (Flag True),
                      setHSMode = Just (Flag True)
                    }
              )
            @?= "M401 H1 R1 S1",
          testCase "Stow Probe - maximum args"
            $ toText
              ( Cmd_StowProbe
                  idef
                    { remainInPlace = Just (Flag True)
                    }
              )
            @?= "M402 R1",
          testCase "Quickstop - maximum args"
            $ toText (Cmd_Quickstop (Quickstop {} :: Quickstop Required))
            @?= "M410",
          testCase "Save Settings - maximum args"
            $ toText (Cmd_SaveSettings (SaveSettings {} :: SaveSettings Required))
            @?= "M500",
          testCase "Restore Settings - maximum args"
            $ toText (Cmd_RestoreSettings (RestoreSettings {} :: RestoreSettings Required))
            @?= "M501",
          testCase "Factory Reset - maximum args"
            $ toText (Cmd_FactoryReset (FactoryReset {} :: FactoryReset Required))
            @?= "M502",
          testCase "Report Settings - maximum args"
            $ toText
              ( Cmd_ReportSettings
                  idef
                    { saveConfig = Just (Flag True),
                      detailedOutput = Just (Flag True)
                    }
              )
            @?= "M503 C1 S1",
          testCase "STOP Restart - maximum args"
            $ toText
              ( Cmd_STOPRestart
                  idef
                    { resumeWithoutFlush = Just (Flag True)
                    }
              )
            @?= "M999 S1"
        ],
      testCase "multiple commands"
        $ toText
          [ comment "Test comment",
            Cmd_LinearMove_NoExtrusion
              idef
                { axisX = Just (Mm 10),
                  axisY = Just (Mm 20)
                },
            Cmd_LinearMove_WithExtrusion
              idef
                { axisX = Just (Mm 10),
                  axisY = Just (Mm 20)
                }
              `withComment` "Test comment",
            Cmd_LinearMove_Clockwise_OffsetX
              idef
                { offsetX = Req (Mm 10),
                  axisX = Just (Mm 10),
                  axisY = Just (Mm 20)
                },
            Cmd_LinearMove_Clockwise_OffsetY
              idef
                { offsetY = Req (Mm 10),
                  axisX = Just (Mm 10),
                  axisY = Just (Mm 20)
                },
            Cmd_LinearMove_Clockwise_Radius
              idef
                { radius = Req (Mm 10),
                  axisX = Just (Mm 10),
                  axisY = Just (Mm 20)
                }
          ]
        @?= T.unlines
          [ "; Test comment",
            "G0 X10.0000 Y20.0000",
            "G1 X10.0000 Y20.0000 ; Test comment",
            "G2 I10.0000 X10.0000 Y20.0000",
            "G2 J10.0000 X10.0000 Y20.0000",
            "G2 R10.0000 X10.0000 Y20.0000"
          ]
    ]
