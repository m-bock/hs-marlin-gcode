module Marlin.GCode.Generated where

import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (ArgValue, Celsius, Count, Degrees, Flag, Index, LaserPower, Mm, MmPerMin, MmPerSec, Milliseconds, NotDefined, Required(..), Seconds)
import Relude
import qualified Data.Text as T

--------------------------------------------------------------------------------
--- GCodeCmd
--------------------------------------------------------------------------------

data GCodeCmd
  = Cmd_LinearMove_NoExtrusion (LinearMove_NoExtrusion Required)
  | Cmd_LinearMove_WithExtrusion (LinearMove_WithExtrusion Required)
  | Cmd_LinearMove_Clockwise_OffsetX (LinearMove_Clockwise_OffsetX Required)
  | Cmd_LinearMove_Clockwise_OffsetY (LinearMove_Clockwise_OffsetY Required)
  | Cmd_LinearMove_Clockwise_Radius (LinearMove_Clockwise_Radius Required)
  | Cmd_LinearMove_CounterClockwise_OffsetX (LinearMove_CounterClockwise_OffsetX Required)
  | Cmd_LinearMove_CounterClockwise_OffsetY (LinearMove_CounterClockwise_OffsetY Required)
  | Cmd_LinearMove_CounterClockwise_Radius (LinearMove_CounterClockwise_Radius Required)
  | Cmd_Dwell (Dwell Required)
  | Cmd_BezierCubicSplineMove_Initial (BezierCubicSplineMove_Initial Required)
  | Cmd_BezierCubicSplineMove_Subsequent (BezierCubicSplineMove_Subsequent Required)
  | Cmd_DirectStepperMove (DirectStepperMove Required)
  | Cmd_Retract (Retract Required)
  | Cmd_Recover (Recover Required)
  | Cmd_CleanTheNozzle (CleanTheNozzle Required)
  | Cmd_CNCWorkspacePlanes_XY (CNCWorkspacePlanes_XY Required)
  | Cmd_CNCWorkspacePlanes_ZX (CNCWorkspacePlanes_ZX Required)
  | Cmd_CNCWorkspacePlanes_YZ (CNCWorkspacePlanes_YZ Required)
  | Cmd_InchUnits (InchUnits Required)
  | Cmd_MillimeterUnits (MillimeterUnits Required)
  | Cmd_MeshValidationPattern (MeshValidationPattern Required)
  | Cmd_ParkToolehead (ParkToolehead Required)
  | Cmd_AutoHome (AutoHome Required)
  | Cmd_BedLeveling_3Point (BedLeveling_3Point Required)
  | Cmd_BedLeveling_Bilinear (BedLeveling_Bilinear Required)
  | Cmd_BedLeveling_Linear (BedLeveling_Linear Required)
  | Cmd_BedLeveling_Manual (BedLeveling_Manual Required)
  | Cmd_BedLeveling_Unified (BedLeveling_Unified Required)
  | Cmd_SingleZ_Probe (SingleZ_Probe Required)
  | Cmd_DockSled (DockSled Required)
  | Cmd_UndockSled (UndockSled Required)
  | Cmd_DeltaAutoCalibration (DeltaAutoCalibration Required)
  | Cmd_ZSteppersAuto_Alignment (ZSteppersAuto_Alignment Required)
  | Cmd_MechanicalGantryCalibration (MechanicalGantryCalibration Required)
  | Comment (Maybe GCodeCmd) Text
       deriving (Generic)

instance ToText GCodeCmd where
  toText =
    \case
      Cmd_LinearMove_NoExtrusion r -> toText r
      Cmd_LinearMove_WithExtrusion r -> toText r
      Cmd_LinearMove_Clockwise_OffsetX r -> toText r
      Cmd_LinearMove_Clockwise_OffsetY r -> toText r
      Cmd_LinearMove_Clockwise_Radius r -> toText r
      Cmd_LinearMove_CounterClockwise_OffsetX r -> toText r
      Cmd_LinearMove_CounterClockwise_OffsetY r -> toText r
      Cmd_LinearMove_CounterClockwise_Radius r -> toText r
      Cmd_Dwell r -> toText r
      Cmd_BezierCubicSplineMove_Initial r -> toText r
      Cmd_BezierCubicSplineMove_Subsequent r -> toText r
      Cmd_DirectStepperMove r -> toText r
      Cmd_Retract r -> toText r
      Cmd_Recover r -> toText r
      Cmd_CleanTheNozzle r -> toText r
      Cmd_CNCWorkspacePlanes_XY r -> toText r
      Cmd_CNCWorkspacePlanes_ZX r -> toText r
      Cmd_CNCWorkspacePlanes_YZ r -> toText r
      Cmd_InchUnits r -> toText r
      Cmd_MillimeterUnits r -> toText r
      Cmd_MeshValidationPattern r -> toText r
      Cmd_ParkToolehead r -> toText r
      Cmd_AutoHome r -> toText r
      Cmd_BedLeveling_3Point r -> toText r
      Cmd_BedLeveling_Bilinear r -> toText r
      Cmd_BedLeveling_Linear r -> toText r
      Cmd_BedLeveling_Manual r -> toText r
      Cmd_BedLeveling_Unified r -> toText r
      Cmd_SingleZ_Probe r -> toText r
      Cmd_DockSled r -> toText r
      Cmd_UndockSled r -> toText r
      Cmd_DeltaAutoCalibration r -> toText r
      Cmd_ZSteppersAuto_Alignment r -> toText r
      Cmd_MechanicalGantryCalibration r -> toText r
      Comment Nothing c -> "; " <> c
      Comment (Just cmd) c -> toText cmd <> " ; " <> c

instance ToText [GCodeCmd] where
  toText = T.unlines . map toText

withComment :: GCodeCmd -> Text -> GCodeCmd
withComment cmd c = Comment (Just cmd) c

comment :: Text -> GCodeCmd
comment c = Comment Nothing c

--------------------------------------------------------------------------------
--- Commands
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--- Linear Move (G0)
--- Docs: https://marlinfw.org/docs/gcode/G000-G001.html
--------------------------------------------------------------------------------

data LinearMove_NoExtrusion (f :: Type -> Type)
  = LinearMove_NoExtrusion
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_NoExtrusion NotDefined)

instance Upcast (LinearMove_NoExtrusion Required) GCodeCmd where
  upcast = Cmd_LinearMove_NoExtrusion

instance ToText (LinearMove_NoExtrusion Required) where
  toText r = mkCmd "G0" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G1)
--- Docs: https://marlinfw.org/docs/gcode/G000-G001.html
--------------------------------------------------------------------------------

data LinearMove_WithExtrusion (f :: Type -> Type)
  = LinearMove_WithExtrusion
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_WithExtrusion NotDefined)

instance Upcast (LinearMove_WithExtrusion Required) GCodeCmd where
  upcast = Cmd_LinearMove_WithExtrusion

instance ToText (LinearMove_WithExtrusion Required) where
  toText r = mkCmd "G1" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_OffsetX (f :: Type -> Type)
  = LinearMove_Clockwise_OffsetX
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_OffsetX NotDefined)

instance Upcast (LinearMove_Clockwise_OffsetX Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_OffsetX

instance ToText (LinearMove_Clockwise_OffsetX Required) where
  toText r = mkCmd "G2" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkReqArg 'I' r.offsetX,
          mkArg 'P' r.count,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_OffsetY (f :: Type -> Type)
  = LinearMove_Clockwise_OffsetY
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetY :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_OffsetY NotDefined)

instance Upcast (LinearMove_Clockwise_OffsetY Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_OffsetY

instance ToText (LinearMove_Clockwise_OffsetY Required) where
  toText r = mkCmd "G2" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkReqArg 'J' r.offsetY,
          mkArg 'P' r.count,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_Radius (f :: Type -> Type)
  = LinearMove_Clockwise_Radius
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    count :: Maybe Count,
    radius :: f Mm,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_Radius NotDefined)

instance Upcast (LinearMove_Clockwise_Radius Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_Radius

instance ToText (LinearMove_Clockwise_Radius Required) where
  toText r = mkCmd "G2" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkArg 'P' r.count,
          mkReqArg 'R' r.radius,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_OffsetX (f :: Type -> Type)
  = LinearMove_CounterClockwise_OffsetX
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_OffsetX NotDefined)

instance Upcast (LinearMove_CounterClockwise_OffsetX Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_OffsetX

instance ToText (LinearMove_CounterClockwise_OffsetX Required) where
  toText r = mkCmd "G3" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkReqArg 'I' r.offsetX,
          mkArg 'P' r.count,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_OffsetY (f :: Type -> Type)
  = LinearMove_CounterClockwise_OffsetY
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetY :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_OffsetY NotDefined)

instance Upcast (LinearMove_CounterClockwise_OffsetY Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_OffsetY

instance ToText (LinearMove_CounterClockwise_OffsetY Required) where
  toText r = mkCmd "G3" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkReqArg 'J' r.offsetY,
          mkArg 'P' r.count,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_Radius (f :: Type -> Type)
  = LinearMove_CounterClockwise_Radius
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    count :: Maybe Count,
    radius :: f Mm,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_Radius NotDefined)

instance Upcast (LinearMove_CounterClockwise_Radius Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_Radius

instance ToText (LinearMove_CounterClockwise_Radius Required) where
  toText r = mkCmd "G3" [mkArg 'A' r.axisA,
          mkArg 'B' r.axisB,
          mkArg 'C' r.axisC,
          mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkArg 'P' r.count,
          mkReqArg 'R' r.radius,
          mkArg 'S' r.laser,
          mkArg 'U' r.axisU,
          mkArg 'V' r.axisV,
          mkArg 'W' r.axisW,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Dwell (G4)
--- Docs: https://marlinfw.org/docs/gcode/G004.html
--------------------------------------------------------------------------------

data Dwell (f :: Type -> Type)
  = Dwell
  { timeSeconds :: Maybe Seconds,
    timeMilliseconds :: Maybe Milliseconds
  }
  deriving (Generic)

instance Default (Dwell NotDefined)

instance Upcast (Dwell Required) GCodeCmd where
  upcast = Cmd_Dwell

instance ToText (Dwell Required) where
  toText r = mkCmd "G4" [mkArg 'S' r.timeSeconds,
          mkArg 'P' r.timeMilliseconds]

--------------------------------------------------------------------------------
--- Bezier Cubic Spline Move (G5)
--- Docs: https://marlinfw.org/docs/gcode/G005.html
--------------------------------------------------------------------------------

data BezierCubicSplineMove_Initial (f :: Type -> Type)
  = BezierCubicSplineMove_Initial
  { axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX1 :: f Mm,
    offsetY1 :: f Mm,
    offsetX2 :: f Mm,
    offsetY2 :: f Mm,
    laser :: Maybe LaserPower,
    axisX :: f Mm,
    axisY :: f Mm
  }
  deriving (Generic)

instance Default (BezierCubicSplineMove_Initial NotDefined)

instance Upcast (BezierCubicSplineMove_Initial Required) GCodeCmd where
  upcast = Cmd_BezierCubicSplineMove_Initial

instance ToText (BezierCubicSplineMove_Initial Required) where
  toText r = mkCmd "G5" [mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkReqArg 'I' r.offsetX1,
          mkReqArg 'J' r.offsetY1,
          mkReqArg 'P' r.offsetX2,
          mkReqArg 'Q' r.offsetY2,
          mkArg 'S' r.laser,
          mkReqArg 'X' r.axisX,
          mkReqArg 'Y' r.axisY]

--------------------------------------------------------------------------------
--- Bezier Cubic Spline Move (G5)
--- Docs: https://marlinfw.org/docs/gcode/G005.html
--------------------------------------------------------------------------------

data BezierCubicSplineMove_Subsequent (f :: Type -> Type)
  = BezierCubicSplineMove_Subsequent
  { axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX1 :: Maybe Mm,
    offsetY1 :: Maybe Mm,
    offsetX2 :: f Mm,
    offsetY2 :: f Mm,
    laser :: Maybe LaserPower,
    axisX :: f Mm,
    axisY :: f Mm
  }
  deriving (Generic)

instance Default (BezierCubicSplineMove_Subsequent NotDefined)

instance Upcast (BezierCubicSplineMove_Subsequent Required) GCodeCmd where
  upcast = Cmd_BezierCubicSplineMove_Subsequent

instance ToText (BezierCubicSplineMove_Subsequent Required) where
  toText r = mkCmd "G5" [mkArg 'E' r.axisExtrusion,
          mkArg 'F' r.feedrate,
          mkArg 'I' r.offsetX1,
          mkArg 'J' r.offsetY1,
          mkReqArg 'P' r.offsetX2,
          mkReqArg 'Q' r.offsetY2,
          mkArg 'S' r.laser,
          mkReqArg 'X' r.axisX,
          mkReqArg 'Y' r.axisY]

--------------------------------------------------------------------------------
--- Direct Stepper Move (G6)
--- Docs: https://marlinfw.org/docs/gcode/G006.html
--------------------------------------------------------------------------------

data DirectStepperMove (f :: Type -> Type)
  = DirectStepperMove
  { directionE :: Maybe Flag,
    pageIndex :: Maybe Index,
    stepRate :: Maybe MmPerSec,
    stepCount :: Maybe Count,
    directionX :: Maybe Flag,
    directionY :: Maybe Flag,
    directionZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (DirectStepperMove NotDefined)

instance Upcast (DirectStepperMove Required) GCodeCmd where
  upcast = Cmd_DirectStepperMove

instance ToText (DirectStepperMove Required) where
  toText r = mkCmd "G6" [mkArg 'E' r.directionE,
          mkArg 'I' r.pageIndex,
          mkArg 'R' r.stepRate,
          mkArg 'S' r.stepCount,
          mkArg 'X' r.directionX,
          mkArg 'Y' r.directionY,
          mkArg 'Z' r.directionZ]

--------------------------------------------------------------------------------
--- Retract (G10)
--- Docs: https://marlinfw.org/docs/gcode/G010.html
--------------------------------------------------------------------------------

data Retract (f :: Type -> Type)
  = Retract
  { swapRetract :: Maybe Flag
  }
  deriving (Generic)

instance Default (Retract NotDefined)

instance Upcast (Retract Required) GCodeCmd where
  upcast = Cmd_Retract

instance ToText (Retract Required) where
  toText r = mkCmd "G10" [mkArg 'S' r.swapRetract]

--------------------------------------------------------------------------------
--- Recover (G11)
--- Docs: https://marlinfw.org/docs/gcode/G011.html
--------------------------------------------------------------------------------

data Recover (f :: Type -> Type)
  = Recover
  {}
  deriving (Generic)

instance Default (Recover NotDefined)

instance Upcast (Recover Required) GCodeCmd where
  upcast = Cmd_Recover

instance ToText (Recover Required) where
  toText r = mkCmd "G11" []

--------------------------------------------------------------------------------
--- Clean The Nozzle (G12)
--- Docs: https://marlinfw.org/docs/gcode/G012.html
--------------------------------------------------------------------------------

data CleanTheNozzle (f :: Type -> Type)
  = CleanTheNozzle
  { pattern :: Maybe Index,
    radius :: Maybe Mm,
    repetitions :: Maybe Count,
    triangles :: Maybe Count,
    includeX :: Maybe Flag,
    includeY :: Maybe Flag,
    includeZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (CleanTheNozzle NotDefined)

instance Upcast (CleanTheNozzle Required) GCodeCmd where
  upcast = Cmd_CleanTheNozzle

instance ToText (CleanTheNozzle Required) where
  toText r = mkCmd "G12" [mkArg 'P' r.pattern,
          mkArg 'R' r.radius,
          mkArg 'S' r.repetitions,
          mkArg 'T' r.triangles,
          mkArg 'X' r.includeX,
          mkArg 'Y' r.includeY,
          mkArg 'Z' r.includeZ]

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G17)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_XY (f :: Type -> Type)
  = CNCWorkspacePlanes_XY
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_XY NotDefined)

instance Upcast (CNCWorkspacePlanes_XY Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_XY

instance ToText (CNCWorkspacePlanes_XY Required) where
  toText r = mkCmd "G17" []

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G18)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_ZX (f :: Type -> Type)
  = CNCWorkspacePlanes_ZX
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_ZX NotDefined)

instance Upcast (CNCWorkspacePlanes_ZX Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_ZX

instance ToText (CNCWorkspacePlanes_ZX Required) where
  toText r = mkCmd "G18" []

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G19)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_YZ (f :: Type -> Type)
  = CNCWorkspacePlanes_YZ
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_YZ NotDefined)

instance Upcast (CNCWorkspacePlanes_YZ Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_YZ

instance ToText (CNCWorkspacePlanes_YZ Required) where
  toText r = mkCmd "G19" []

--------------------------------------------------------------------------------
--- Inch Units (G20)
--- Docs: https://marlinfw.org/docs/gcode/G020.html
--------------------------------------------------------------------------------

data InchUnits (f :: Type -> Type)
  = InchUnits
  {}
  deriving (Generic)

instance Default (InchUnits NotDefined)

instance Upcast (InchUnits Required) GCodeCmd where
  upcast = Cmd_InchUnits

instance ToText (InchUnits Required) where
  toText r = mkCmd "G20" []

--------------------------------------------------------------------------------
--- Millimeter Units (G21)
--- Docs: https://marlinfw.org/docs/gcode/G021.html
--------------------------------------------------------------------------------

data MillimeterUnits (f :: Type -> Type)
  = MillimeterUnits
  {}
  deriving (Generic)

instance Default (MillimeterUnits NotDefined)

instance Upcast (MillimeterUnits Required) GCodeCmd where
  upcast = Cmd_MillimeterUnits

instance ToText (MillimeterUnits Required) where
  toText r = mkCmd "G21" []

--------------------------------------------------------------------------------
--- Mesh Validation Pattern (G26)
--- Docs: https://marlinfw.org/docs/gcode/G026.html
--------------------------------------------------------------------------------

data MeshValidationPattern (f :: Type -> Type)
  = MeshValidationPattern
  { bedTemp :: Maybe Celsius,
    continueClosest :: Maybe Flag,
    disableLeveling :: Maybe Flag,
    filamentDiameter :: Maybe Mm,
    hotendTemp :: Maybe Celsius,
    materialPreset :: Maybe Index,
    keepHeatersOn :: Maybe Flag,
    layerHeight :: Maybe Mm,
    oozeAmount :: Maybe Mm,
    primeLength :: Maybe Mm,
    retractionMultiplier :: Maybe Mm,
    repetitions :: Maybe Count,
    nozzleSize :: Maybe Mm,
    randomDeviation :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (MeshValidationPattern NotDefined)

instance Upcast (MeshValidationPattern Required) GCodeCmd where
  upcast = Cmd_MeshValidationPattern

instance ToText (MeshValidationPattern Required) where
  toText r = mkCmd "G26" [mkArg 'B' r.bedTemp,
          mkArg 'C' r.continueClosest,
          mkArg 'D' r.disableLeveling,
          mkArg 'F' r.filamentDiameter,
          mkArg 'H' r.hotendTemp,
          mkArg 'I' r.materialPreset,
          mkArg 'K' r.keepHeatersOn,
          mkArg 'L' r.layerHeight,
          mkArg 'O' r.oozeAmount,
          mkArg 'P' r.primeLength,
          mkArg 'Q' r.retractionMultiplier,
          mkArg 'R' r.repetitions,
          mkArg 'S' r.nozzleSize,
          mkArg 'U' r.randomDeviation,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY]

--------------------------------------------------------------------------------
--- Park Toolehead (G27)
--- Docs: https://marlinfw.org/docs/gcode/G027.html
--------------------------------------------------------------------------------

data ParkToolehead (f :: Type -> Type)
  = ParkToolehead
  { parkingBehavior :: Maybe Index
  }
  deriving (Generic)

instance Default (ParkToolehead NotDefined)

instance Upcast (ParkToolehead Required) GCodeCmd where
  upcast = Cmd_ParkToolehead

instance ToText (ParkToolehead Required) where
  toText r = mkCmd "G27" [mkArg 'P' r.parkingBehavior]

--------------------------------------------------------------------------------
--- Auto Home (G28)
--- Docs: https://marlinfw.org/docs/gcode/G028.html
--------------------------------------------------------------------------------

data AutoHome (f :: Type -> Type)
  = AutoHome
  { homeA :: Maybe Flag,
    homeB :: Maybe Flag,
    homeC :: Maybe Flag,
    holdXY :: Maybe Flag,
    restoreLeveling :: Maybe Flag,
    skipIfTrusted :: Maybe Flag,
    raiseDistance :: Maybe Mm,
    homeU :: Maybe Flag,
    homeV :: Maybe Flag,
    homeW :: Maybe Flag,
    homeX :: Maybe Flag,
    homeY :: Maybe Flag,
    homeZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (AutoHome NotDefined)

instance Upcast (AutoHome Required) GCodeCmd where
  upcast = Cmd_AutoHome

instance ToText (AutoHome Required) where
  toText r = mkCmd "G28" [mkArg 'A' r.homeA,
          mkArg 'B' r.homeB,
          mkArg 'C' r.homeC,
          mkArg 'H' r.holdXY,
          mkArg 'L' r.restoreLeveling,
          mkArg 'O' r.skipIfTrusted,
          mkArg 'R' r.raiseDistance,
          mkArg 'U' r.homeU,
          mkArg 'V' r.homeV,
          mkArg 'W' r.homeW,
          mkArg 'X' r.homeX,
          mkArg 'Y' r.homeY,
          mkArg 'Z' r.homeZ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-3point.html
--------------------------------------------------------------------------------

data BedLeveling_3Point (f :: Type -> Type)
  = BedLeveling_3Point
  { abort :: Maybe Flag,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    jettison :: Maybe Flag,
    optional :: Maybe Flag,
    query :: Maybe Flag,
    verbosity :: Maybe Index
  }
  deriving (Generic)

instance Default (BedLeveling_3Point NotDefined)

instance Upcast (BedLeveling_3Point Required) GCodeCmd where
  upcast = Cmd_BedLeveling_3Point

instance ToText (BedLeveling_3Point Required) where
  toText r = mkCmd "G29" [mkArg 'A' r.abort,
          mkArg 'C' r.createFake,
          mkArg 'D' r.dryRun,
          mkArg 'E' r.engageEach,
          mkArg 'J' r.jettison,
          mkArg 'O' r.optional,
          mkArg 'Q' r.query,
          mkArg 'V' r.verbosity]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-bilinear.html
--------------------------------------------------------------------------------

data BedLeveling_Bilinear (f :: Type -> Type)
  = BedLeveling_Bilinear
  { abort :: Maybe Flag,
    backLimit :: Maybe Mm,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    frontLimit :: Maybe Mm,
    areaSize :: Maybe Mm,
    meshX :: Maybe Index,
    jettison :: Maybe Flag,
    meshY :: Maybe Index,
    leftLimit :: Maybe Mm,
    optional :: Maybe Flag,
    query :: Maybe Flag,
    rightLimit :: Maybe Mm,
    travelSpeed :: Maybe MmPerMin,
    verbosity :: Maybe Index,
    writeMesh :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    meshZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Bilinear NotDefined)

instance Upcast (BedLeveling_Bilinear Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Bilinear

instance ToText (BedLeveling_Bilinear Required) where
  toText r = mkCmd "G29" [mkArg 'A' r.abort,
          mkArg 'B' r.backLimit,
          mkArg 'C' r.createFake,
          mkArg 'D' r.dryRun,
          mkArg 'E' r.engageEach,
          mkArg 'F' r.frontLimit,
          mkArg 'H' r.areaSize,
          mkArg 'I' r.meshX,
          mkArg 'J' r.jettison,
          mkArg 'K' r.meshY,
          mkArg 'L' r.leftLimit,
          mkArg 'O' r.optional,
          mkArg 'Q' r.query,
          mkArg 'R' r.rightLimit,
          mkArg 'S' r.travelSpeed,
          mkArg 'V' r.verbosity,
          mkArg 'W' r.writeMesh,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY,
          mkArg 'Z' r.meshZ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-linear.html
--------------------------------------------------------------------------------

data BedLeveling_Linear (f :: Type -> Type)
  = BedLeveling_Linear
  { abort :: Maybe Flag,
    backLimit :: Maybe Mm,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    frontLimit :: Maybe Mm,
    areaSize :: Maybe Mm,
    jettison :: Maybe Flag,
    leftLimit :: Maybe Mm,
    optional :: Maybe Flag,
    gridSize :: Maybe Index,
    query :: Maybe Flag,
    rightLimit :: Maybe Mm,
    travelSpeed :: Maybe MmPerMin,
    topology :: Maybe Flag,
    verbosity :: Maybe Index,
    columns :: Maybe Index,
    rows :: Maybe Index
  }
  deriving (Generic)

instance Default (BedLeveling_Linear NotDefined)

instance Upcast (BedLeveling_Linear Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Linear

instance ToText (BedLeveling_Linear Required) where
  toText r = mkCmd "G29" [mkArg 'A' r.abort,
          mkArg 'B' r.backLimit,
          mkArg 'C' r.createFake,
          mkArg 'D' r.dryRun,
          mkArg 'E' r.engageEach,
          mkArg 'F' r.frontLimit,
          mkArg 'H' r.areaSize,
          mkArg 'J' r.jettison,
          mkArg 'L' r.leftLimit,
          mkArg 'O' r.optional,
          mkArg 'P' r.gridSize,
          mkArg 'Q' r.query,
          mkArg 'R' r.rightLimit,
          mkArg 'S' r.travelSpeed,
          mkArg 'T' r.topology,
          mkArg 'V' r.verbosity,
          mkArg 'X' r.columns,
          mkArg 'Y' r.rows]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-mbl.html
--------------------------------------------------------------------------------

data BedLeveling_Manual (f :: Type -> Type)
  = BedLeveling_Manual
  { meshX :: Maybe Index,
    meshY :: Maybe Index,
    state :: f Index,
    meshXOld :: Maybe Count,
    meshYOld :: Maybe Count,
    meshZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Manual NotDefined)

instance Upcast (BedLeveling_Manual Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Manual

instance ToText (BedLeveling_Manual Required) where
  toText r = mkCmd "G29" [mkArg 'I' r.meshX,
          mkArg 'J' r.meshY,
          mkReqArg 'S' r.state,
          mkArg 'X' r.meshXOld,
          mkArg 'Y' r.meshYOld,
          mkArg 'Z' r.meshZ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-ubl.html
--------------------------------------------------------------------------------

data BedLeveling_Unified (f :: Type -> Type)
  = BedLeveling_Unified
  { activate :: Maybe Flag,
    businessCard :: Maybe Mm,
    constant :: Maybe Mm,
    disable :: Maybe Flag,
    stowEach :: Maybe Flag,
    fadeHeight :: Maybe Mm,
    height :: Maybe Mm,
    invalidate :: Maybe Index,
    grid :: Maybe Index,
    kompare :: Maybe Index,
    load :: Maybe Index,
    phase :: Maybe Index,
    testPattern :: Maybe Index,
    repeat :: Maybe Count,
    save :: Maybe Index,
    topology :: Maybe Index,
    unlevel :: Maybe Flag,
    verbosity :: Maybe Index,
    what :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Unified NotDefined)

instance Upcast (BedLeveling_Unified Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Unified

instance ToText (BedLeveling_Unified Required) where
  toText r = mkCmd "G29" [mkArg 'A' r.activate,
          mkArg 'B' r.businessCard,
          mkArg 'C' r.constant,
          mkArg 'D' r.disable,
          mkArg 'E' r.stowEach,
          mkArg 'F' r.fadeHeight,
          mkArg 'H' r.height,
          mkArg 'I' r.invalidate,
          mkArg 'J' r.grid,
          mkArg 'K' r.kompare,
          mkArg 'L' r.load,
          mkArg 'P' r.phase,
          mkArg 'Q' r.testPattern,
          mkArg 'R' r.repeat,
          mkArg 'S' r.save,
          mkArg 'T' r.topology,
          mkArg 'U' r.unlevel,
          mkArg 'V' r.verbosity,
          mkArg 'W' r.what,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY]

--------------------------------------------------------------------------------
--- Single Z-Probe (G30)
--- Docs: https://marlinfw.org/docs/gcode/G030.html
--------------------------------------------------------------------------------

data SingleZ_Probe (f :: Type -> Type)
  = SingleZ_Probe
  { temperatureCompensation :: Maybe Flag,
    engageEach :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (SingleZ_Probe NotDefined)

instance Upcast (SingleZ_Probe Required) GCodeCmd where
  upcast = Cmd_SingleZ_Probe

instance ToText (SingleZ_Probe Required) where
  toText r = mkCmd "G30" [mkArg 'C' r.temperatureCompensation,
          mkArg 'E' r.engageEach,
          mkArg 'X' r.axisX,
          mkArg 'Y' r.axisY]

--------------------------------------------------------------------------------
--- Dock Sled (G31)
--- Docs: https://marlinfw.org/docs/gcode/G031.html
--------------------------------------------------------------------------------

data DockSled (f :: Type -> Type)
  = DockSled
  {}
  deriving (Generic)

instance Default (DockSled NotDefined)

instance Upcast (DockSled Required) GCodeCmd where
  upcast = Cmd_DockSled

instance ToText (DockSled Required) where
  toText r = mkCmd "G31" []

--------------------------------------------------------------------------------
--- Undock Sled (G32)
--- Docs: https://marlinfw.org/docs/gcode/G032.html
--------------------------------------------------------------------------------

data UndockSled (f :: Type -> Type)
  = UndockSled
  {}
  deriving (Generic)

instance Default (UndockSled NotDefined)

instance Upcast (UndockSled Required) GCodeCmd where
  upcast = Cmd_UndockSled

instance ToText (UndockSled Required) where
  toText r = mkCmd "G32" []

--------------------------------------------------------------------------------
--- Delta Auto Calibration (G33)
--- Docs: https://marlinfw.org/docs/gcode/G033.html
--------------------------------------------------------------------------------

data DeltaAutoCalibration (f :: Type -> Type)
  = DeltaAutoCalibration
  { precision :: Maybe Mm,
    engageEach :: Maybe Flag,
    iterations :: Maybe Count,
    probeOffsetRelative :: Maybe Flag,
    probePoints :: Maybe Index,
    reduceGrid :: Maybe Mm,
    saveSensorless :: Maybe Flag,
    disableTowerAngles :: Maybe Flag,
    verbosity :: Maybe Index,
    disableStallguardX :: Maybe Flag,
    disableStallguardY :: Maybe Flag,
    disableStallguardZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (DeltaAutoCalibration NotDefined)

instance Upcast (DeltaAutoCalibration Required) GCodeCmd where
  upcast = Cmd_DeltaAutoCalibration

instance ToText (DeltaAutoCalibration Required) where
  toText r = mkCmd "G33" [mkArg 'C' r.precision,
          mkArg 'E' r.engageEach,
          mkArg 'F' r.iterations,
          mkArg 'O' r.probeOffsetRelative,
          mkArg 'P' r.probePoints,
          mkArg 'R' r.reduceGrid,
          mkArg 'S' r.saveSensorless,
          mkArg 'T' r.disableTowerAngles,
          mkArg 'V' r.verbosity,
          mkArg 'X' r.disableStallguardX,
          mkArg 'Y' r.disableStallguardY,
          mkArg 'Z' r.disableStallguardZ]

--------------------------------------------------------------------------------
--- Z Steppers Auto-Alignment (G34)
--- Docs: https://marlinfw.org/docs/gcode/G034-zsaa.html
--------------------------------------------------------------------------------

data ZSteppersAuto_Alignment (f :: Type -> Type)
  = ZSteppersAuto_Alignment
  { amplification :: Maybe Mm,
    stowEach :: Maybe Flag,
    iterations :: Maybe Index,
    unlockAll :: Maybe Flag,
    recalculate :: Maybe Flag,
    lockState :: Maybe Flag,
    targetAccuracy :: Maybe Mm,
    stepper :: Maybe Index
  }
  deriving (Generic)

instance Default (ZSteppersAuto_Alignment NotDefined)

instance Upcast (ZSteppersAuto_Alignment Required) GCodeCmd where
  upcast = Cmd_ZSteppersAuto_Alignment

instance ToText (ZSteppersAuto_Alignment Required) where
  toText r = mkCmd "G34" [mkArg 'A' r.amplification,
          mkArg 'E' r.stowEach,
          mkArg 'I' r.iterations,
          mkArg 'L' r.unlockAll,
          mkArg 'R' r.recalculate,
          mkArg 'S' r.lockState,
          mkArg 'T' r.targetAccuracy,
          mkArg 'Z' r.stepper]

--------------------------------------------------------------------------------
--- Mechanical Gantry Calibration (G34)
--- Docs: https://marlinfw.org/docs/gcode/G034-mgc.html
--------------------------------------------------------------------------------

data MechanicalGantryCalibration (f :: Type -> Type)
  = MechanicalGantryCalibration
  { current :: Maybe Index,
    extraHeight :: Maybe Mm
  }
  deriving (Generic)

instance Default (MechanicalGantryCalibration NotDefined)

instance Upcast (MechanicalGantryCalibration Required) GCodeCmd where
  upcast = Cmd_MechanicalGantryCalibration

instance ToText (MechanicalGantryCalibration Required) where
  toText r = mkCmd "G34" [mkArg 'S' r.current,
          mkArg 'Z' r.extraHeight]


--------------------------------------------------------------------------------
--- Utils
--------------------------------------------------------------------------------

mkArg :: (Upcast a ArgValue) => Char -> Maybe a -> Maybe (Char, ArgValue)
mkArg c = fmap (\a -> (c, upcast a))

mkReqArg :: (Upcast a ArgValue) => Char -> Required a -> Maybe (Char, ArgValue)
mkReqArg c (Required a) = Just (c, upcast a)

mkCmd :: Text -> [Maybe (Char, ArgValue)] -> Text
mkCmd c args = if null args then c else c <> " " <> T.unwords (map (\(c, a) -> T.singleton c <> toText a) (catMaybes args))