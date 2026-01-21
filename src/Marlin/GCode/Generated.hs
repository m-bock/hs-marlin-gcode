module Marlin.GCode.Generated where

import qualified Data.Text as T
import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (ArgValue, Count, Degrees, LaserPower, Milliseconds, Mm, MmPerMin, NotDefined, Required (..), Seconds)
import Relude

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
  | Cmd_BezierCubicSplineMove (BezierCubicSplineMove Required)
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
      Cmd_BezierCubicSplineMove r -> toText r
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
  toText r =
    mkCmd
      "G0"
      [ mkArg 'A' r.axisA,
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
        mkArg 'Z' r.axisZ
      ]

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
  toText r =
    mkCmd
      "G1"
      [ mkArg 'A' r.axisA,
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
        mkArg 'Z' r.axisZ
      ]

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
  toText r =
    mkCmd
      "G2"
      [ mkReqArg 'I' r.offsetX,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

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
  toText r =
    mkCmd
      "G2"
      [ mkReqArg 'J' r.offsetY,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

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
    radius :: f Degrees,
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
  toText r =
    mkCmd
      "G2"
      [ mkReqArg 'R' r.radius,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- LinearMove (G3)
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
  toText r =
    mkCmd
      "G3"
      [ mkReqArg 'I' r.offsetX,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- LinearMove (G3)
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
  toText r =
    mkCmd
      "G3"
      [ mkReqArg 'J' r.offsetY,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- LinearMove (G3)
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
    radius :: f Degrees,
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
  toText r =
    mkCmd
      "G3"
      [ mkReqArg 'R' r.radius,
        mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

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
  toText r =
    mkCmd
      "G4"
      [ mkArg 'S' r.timeSeconds,
        mkArg 'P' r.timeMilliseconds
      ]

--------------------------------------------------------------------------------
--- Bezier Cubic Spline Move (G5)
--- Docs: https://marlinfw.org/docs/gcode/G005.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data BezierCubicSplineMove (f :: Type -> Type)
  = BezierCubicSplineMove
  {}
  deriving (Generic)

instance Default (BezierCubicSplineMove NotDefined)

instance Upcast (BezierCubicSplineMove Required) GCodeCmd where
  upcast = Cmd_BezierCubicSplineMove

instance ToText (BezierCubicSplineMove Required) where
  toText r = mkCmd "G5" []

--------------------------------------------------------------------------------
--- Direct Stepper Move (G6)
--- Docs: https://marlinfw.org/docs/gcode/G006.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data DirectStepperMove (f :: Type -> Type)
  = DirectStepperMove
  {}
  deriving (Generic)

instance Default (DirectStepperMove NotDefined)

instance Upcast (DirectStepperMove Required) GCodeCmd where
  upcast = Cmd_DirectStepperMove

instance ToText (DirectStepperMove Required) where
  toText r = mkCmd "G6" []

--------------------------------------------------------------------------------
--- Retract (G10)
--- Docs: https://marlinfw.org/docs/gcode/G010.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data Retract (f :: Type -> Type)
  = Retract
  {}
  deriving (Generic)

instance Default (Retract NotDefined)

instance Upcast (Retract Required) GCodeCmd where
  upcast = Cmd_Retract

instance ToText (Retract Required) where
  toText r = mkCmd "G10" []

--------------------------------------------------------------------------------
--- Recover (G11)
--- Docs: https://marlinfw.org/docs/gcode/G011.html
--- Status: UNIMPLEMENTED
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
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data CleanTheNozzle (f :: Type -> Type)
  = CleanTheNozzle
  {}
  deriving (Generic)

instance Default (CleanTheNozzle NotDefined)

instance Upcast (CleanTheNozzle Required) GCodeCmd where
  upcast = Cmd_CleanTheNozzle

instance ToText (CleanTheNozzle Required) where
  toText r = mkCmd "G12" []

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
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data MeshValidationPattern (f :: Type -> Type)
  = MeshValidationPattern
  {}
  deriving (Generic)

instance Default (MeshValidationPattern NotDefined)

instance Upcast (MeshValidationPattern Required) GCodeCmd where
  upcast = Cmd_MeshValidationPattern

instance ToText (MeshValidationPattern Required) where
  toText r = mkCmd "G26" []

--------------------------------------------------------------------------------
--- Park Toolehead (G27)
--- Docs: https://marlinfw.org/docs/gcode/G027.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ParkToolehead (f :: Type -> Type)
  = ParkToolehead
  {}
  deriving (Generic)

instance Default (ParkToolehead NotDefined)

instance Upcast (ParkToolehead Required) GCodeCmd where
  upcast = Cmd_ParkToolehead

instance ToText (ParkToolehead Required) where
  toText r = mkCmd "G27" []

--------------------------------------------------------------------------------
--- Utils
--------------------------------------------------------------------------------

mkArg :: (Upcast a ArgValue) => Char -> Maybe a -> Maybe (Char, ArgValue)
mkArg c = fmap (\a -> (c, upcast a))

mkReqArg :: (Upcast a ArgValue) => Char -> Required a -> Maybe (Char, ArgValue)
mkReqArg c (Required a) = Just (c, upcast a)

mkCmd :: Text -> [Maybe (Char, ArgValue)] -> Text
mkCmd c args = c <> " " <> T.unwords (map (\(c, a) -> T.singleton c <> toText a) (catMaybes args))