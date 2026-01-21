{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module Main where

import qualified Data.Text as T
import GHC.Records
import Marlin.GCode
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
        "Single Commands"
        [ testCase "Linear Move No Extrusion - maximum args"
            $ toText
              ( MG.Cmd_LinearMove_NoExtrusion
                  MG.def'
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
              ( MG.Cmd_LinearMove_WithExtrusion
                  MG.def'
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
              ( MG.Cmd_LinearMove_Clockwise_OffsetX
                  MG.def'
                    { offsetX = pure $ Mm 10,
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
              ( MG.Cmd_LinearMove_Clockwise_OffsetY
                  MG.def'
                    { offsetY = pure $ Mm 10,
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
              ( MG.Cmd_LinearMove_Clockwise_Radius
                  MG.def'
                    { radius = pure $ Mm 10,
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
              ( MG.Cmd_LinearMove_CounterClockwise_OffsetX
                  MG.def'
                    { offsetX = pure $ Mm 10,
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
              ( MG.Cmd_LinearMove_CounterClockwise_OffsetY
                  MG.def'
                    { offsetY = pure $ Mm 10,
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
              ( MG.Cmd_LinearMove_CounterClockwise_Radius
                  MG.def'
                    { radius = pure $ Mm 10,
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
              ( MG.Cmd_Dwell
                  MG.def'
                    { timeSeconds = Just (Seconds 5.5),
                      timeMilliseconds = Just (Milliseconds 1000)
                    }
              )
            @?= "G4 S5.5000 P1000",
          testCase "Bezier Cubic Spline Move Initial - maximum args"
            $ toText
              ( MG.Cmd_BezierCubicSplineMove_Initial
                  MG.def'
                    { offsetX1 = pure $ Mm 1,
                      offsetY1 = pure $ Mm 2,
                      offsetX2 = pure $ Mm 3,
                      offsetY2 = pure $ Mm 4,
                      axisX = pure $ Mm 10,
                      axisY = pure $ Mm 20,
                      axisExtrusion = Just (Mm 5),
                      feedrate = Just (MmPerMin 1500),
                      laser = Just (LaserPower 50)
                    }
              )
            @?= "G5 E5.0000 F1500.0000 I1.0000 J2.0000 P3.0000 Q4.0000 S50.0000 X10.0000 Y20.0000",
          testCase "Bezier Cubic Spline Move Subsequent - maximum args"
            $ toText
              ( MG.Cmd_BezierCubicSplineMove_Subsequent
                  MG.def'
                    { offsetX2 = pure $ Mm 3,
                      offsetY2 = pure $ Mm 4,
                      axisX = pure $ Mm 10,
                      axisY = pure $ Mm 20,
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
              ( MG.Cmd_DirectStepperMove
                  MG.def'
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
              ( MG.Cmd_Retract
                  MG.def'
                    { swapRetract = Just (Flag True)
                    }
              )
            @?= "G10 S1",
          testCase "Recover - maximum args"
            $ toText (MG.Cmd_Recover (MG.Recover {} :: MG.Recover Required))
            @?= "G11",
          testCase "Clean The Nozzle - maximum args"
            $ toText
              ( MG.Cmd_CleanTheNozzle
                  MG.def'
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
            $ toText (MG.Cmd_CNCWorkspacePlanes_XY (MG.CNCWorkspacePlanes_XY {} :: MG.CNCWorkspacePlanes_XY Required))
            @?= "G17",
          testCase "CNC Workspace Planes ZX - maximum args"
            $ toText (MG.Cmd_CNCWorkspacePlanes_ZX (MG.CNCWorkspacePlanes_ZX {} :: MG.CNCWorkspacePlanes_ZX Required))
            @?= "G18",
          testCase "CNC Workspace Planes YZ - maximum args"
            $ toText (MG.Cmd_CNCWorkspacePlanes_YZ (MG.CNCWorkspacePlanes_YZ {} :: MG.CNCWorkspacePlanes_YZ Required))
            @?= "G19",
          testCase "Inch Units - maximum args"
            $ toText (MG.Cmd_InchUnits (MG.InchUnits {} :: MG.InchUnits Required))
            @?= "G20",
          testCase "Millimeter Units - maximum args"
            $ toText (MG.Cmd_MillimeterUnits (MG.MillimeterUnits {} :: MG.MillimeterUnits Required))
            @?= "G21",
          testCase "Mesh Validation Pattern - maximum args"
            $ toText
              ( MG.Cmd_MeshValidationPattern
                  MG.def'
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
              ( MG.Cmd_ParkToolehead
                  MG.def'
                    { parkingBehavior = Just (Index 0)
                    }
              )
            @?= "G27 P0",
          testCase "Auto Home - maximum args"
            $ toText
              ( MG.Cmd_AutoHome
                  MG.def'
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
              ( MG.Cmd_BedLeveling_3Point
                  MG.def'
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
              ( MG.Cmd_BedLeveling_Bilinear
                  MG.def'
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
              ( MG.Cmd_BedLeveling_Linear
                  MG.def'
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
              ( MG.Cmd_BedLeveling_Manual
                  MG.def'
                    { state = pure $ Index 1,
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
              ( MG.Cmd_BedLeveling_Unified
                  MG.def'
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
              ( MG.Cmd_SingleZ_Probe
                  MG.def'
                    { temperatureCompensation = Just (Flag True),
                      engageEach = Just (Flag True),
                      axisX = Just (Mm 100),
                      axisY = Just (Mm 100)
                    }
              )
            @?= "G30 C1 E1 X100.0000 Y100.0000",
          testCase "Dock Sled - maximum args"
            $ toText (MG.Cmd_DockSled (MG.DockSled {} :: MG.DockSled Required))
            @?= "G31",
          testCase "Undock Sled - maximum args"
            $ toText (MG.Cmd_UndockSled (MG.UndockSled {} :: MG.UndockSled Required))
            @?= "G32",
          testCase "Delta Auto Calibration - maximum args"
            $ toText
              ( MG.Cmd_DeltaAutoCalibration
                  MG.def'
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
              ( MG.Cmd_ZSteppersAuto_Alignment
                  MG.def'
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
              ( MG.Cmd_MechanicalGantryCalibration
                  MG.def'
                    { current = Just (Index 1),
                      extraHeight = Just (Mm 5)
                    }
              )
            @?= "G34 S1 Z5.0000"
        ],
      testCase "multiple commands"
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
                { radius = pure $ Mm 10,
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
