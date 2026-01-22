module Marlin.GCode.Types where

import qualified Data.Text as T
import Marlin.GCode.Class.Default (Default (..))
import Marlin.GCode.Class.Upcast
import Relude
import Text.Printf (printf)

newtype Mm = Mm Double
  deriving (Eq, Ord, Show, Read, Num)

newtype MmPerMin = MmPerMin Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Celsius = Celsius Double
  deriving (Eq, Ord, Show, Read, Num)

newtype MmPerSec = MmPerSec Double
  deriving (Eq, Ord, Show, Read, Num)

newtype MmPerSec2 = MmPerSec2 Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Percent = Percent Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Seconds = Seconds Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Milliseconds = Milliseconds Int
  deriving (Eq, Ord, Show, Read, Num)

newtype Degrees = Degrees Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Index = Index Int
  deriving (Eq, Ord, Show, Read, Num)

newtype LaserPower = LaserPower Double
  deriving (Eq, Ord, Show, Read, Num)

newtype Flag = Flag Bool
  deriving (Eq, Ord, Show, Read)

newtype Count = Count Int
  deriving (Eq, Ord, Show, Read, Num)

newtype TextValue = TextValue Text
  deriving (Eq, Ord, Show, Read)

newtype Filename = Filename Text
  deriving (Eq, Ord, Show, Read)

---

data NotDefined a = NotDefined
  deriving (Show, Eq)

newtype Required a = Req a
  deriving (Show, Eq, Functor)

instance Default (NotDefined a) where
  def = NotDefined

---

data ArgValue
  = ArgMm Mm
  | ArgMmPerMin MmPerMin
  | ArgCelsius Celsius
  | ArgMmPerSec MmPerSec
  | ArgMmPerSec2 MmPerSec2
  | ArgPercent Percent
  | ArgSeconds Seconds
  | ArgMilliseconds Milliseconds
  | ArgDegrees Degrees
  | ArgIndex Index
  | ArgLaserPower LaserPower
  | ArgFlag Flag
  | ArgCount Count
  | ArgTextValue TextValue
  | ArgFilename Filename
  deriving (Show, Eq)

data RawCmd = RawCmd
  { cmd :: Text,
    args :: [Maybe (Char, ArgValue)]
  }

instance ToText RawCmd where
  toText (RawCmd t args) =
    if null args
      then t
      else t <> " " <> T.unwords (map toText (catMaybes args))

instance ToText (Char, ArgValue) where
  toText (c, a) = case a of
    ArgMm (Mm d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgMmPerMin (MmPerMin d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgCelsius (Celsius d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgMmPerSec (MmPerSec d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgMmPerSec2 (MmPerSec2 d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgPercent (Percent d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgSeconds (Seconds d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgMilliseconds (Milliseconds d) ->
      T.singleton c <> T.pack (show d)
    ArgDegrees (Degrees d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgIndex (Index d) ->
      T.singleton c <> T.pack (show d)
    ArgLaserPower (LaserPower d) ->
      T.singleton c <> T.pack (printf "%.4f" d)
    ArgFlag (Flag d) ->
      T.singleton c <> if d then "1" else "0"
    ArgCount (Count d) ->
      T.singleton c <> T.pack (show d)
    ArgTextValue (TextValue t) ->
      "\"" <> t <> "\""
    ArgFilename (Filename t) ->
      "\"" <> t <> "\""

instance Upcast Mm ArgValue where
  upcast = ArgMm

instance Upcast MmPerMin ArgValue where
  upcast = ArgMmPerMin

instance Upcast Celsius ArgValue where
  upcast = ArgCelsius

instance Upcast MmPerSec ArgValue where
  upcast = ArgMmPerSec

instance Upcast MmPerSec2 ArgValue where
  upcast = ArgMmPerSec2

instance Upcast Percent ArgValue where
  upcast = ArgPercent

instance Upcast Seconds ArgValue where
  upcast = ArgSeconds

instance Upcast Milliseconds ArgValue where
  upcast = ArgMilliseconds

instance Upcast Degrees ArgValue where
  upcast = ArgDegrees

instance Upcast Index ArgValue where
  upcast = ArgIndex

instance Upcast LaserPower ArgValue where
  upcast = ArgLaserPower

instance Upcast Flag ArgValue where
  upcast = ArgFlag

instance Upcast Count ArgValue where
  upcast = ArgCount

instance Upcast TextValue ArgValue where
  upcast = ArgTextValue

instance Upcast Filename ArgValue where
  upcast = ArgFilename