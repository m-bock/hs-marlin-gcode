module Marlin.GCode.Generated where

import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (ArgValue, Degrees, LaserPower, Mm, MmPerMin, NotDefined, Required(..), Count, Seconds, Milliseconds)
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
  | Cmd_BezierCubicSplineMove (BezierCubicSplineMove Required)
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
--- LinearMove_NoExtrusion (G0)
--- https://marlinfw.org/docs/gcode/G000-G001.html
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
--- LinearMove_WithExtrusion (G1)
--- https://marlinfw.org/docs/gcode/G000-G001.html
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
--- LinearMove_Clockwise_OffsetX (G2)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G2" [mkReqArg 'I' r.offsetX,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- LinearMove_Clockwise_OffsetY (G2)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G2" [mkReqArg 'J' r.offsetY,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- LinearMove_Clockwise_Radius (G2)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G2" [mkReqArg 'R' r.radius,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- LinearMove_CounterClockwise_OffsetX (G3)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G3" [mkReqArg 'I' r.offsetX,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- LinearMove_CounterClockwise_OffsetY (G3)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G3" [mkReqArg 'J' r.offsetY,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- LinearMove_CounterClockwise_Radius (G3)
--- https://marlinfw.org/docs/gcode/G002-G003.html
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
  toText r = mkCmd "G3" [mkReqArg 'R' r.radius,
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
          mkArg 'Z' r.axisZ]

--------------------------------------------------------------------------------
--- Dwell (G4)
--- https://marlinfw.org/docs/gcode/G004.html
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
--- BezierCubicSplineMove (G5)
--- https://marlinfw.org/docs/gcode/G005.html
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
--- Utils
--------------------------------------------------------------------------------

mkArg :: (Upcast a ArgValue) => Char -> Maybe a -> Maybe (Char, ArgValue)
mkArg c = fmap (\a -> (c, upcast a))

mkReqArg :: (Upcast a ArgValue) => Char -> Required a -> Maybe (Char, ArgValue)
mkReqArg c (Required a) = Just (c, upcast a)

mkCmd :: Text -> [Maybe (Char, ArgValue)] -> Text
mkCmd c args = c <> " " <> T.unwords (map (\(c, a) -> T.singleton c <> toText a) (catMaybes args))