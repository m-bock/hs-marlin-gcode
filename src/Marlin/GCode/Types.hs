module Marlin.GCode.Types where

import qualified Data.Text as T
import Marlin.GCode.Class.Default (Default (..))
import Marlin.GCode.Class.Upcast
import Relude
import Text.Printf (printf)

newtype Mm = Mm Double
  deriving (Eq, Ord, Show, Read)

newtype MmPerMin = MmPerMin Double
  deriving (Eq, Ord, Show, Read)

newtype Celsius = Celsius Double
  deriving (Eq, Ord, Show, Read)

newtype MmPerSec = MmPerSec Double
  deriving (Eq, Ord, Show, Read)

newtype MmPerSec2 = MmPerSec2 Double
  deriving (Eq, Ord, Show, Read)

newtype Percent = Percent Double
  deriving (Eq, Ord, Show, Read)

newtype Seconds = Seconds Double
  deriving (Eq, Ord, Show, Read)

newtype Milliseconds = Milliseconds Int
  deriving (Eq, Ord, Show, Read)

newtype Degrees = Degrees Double
  deriving (Eq, Ord, Show, Read)

newtype Index = Index Int
  deriving (Eq, Ord, Show, Read)

newtype LaserPower = LaserPower Double
  deriving (Eq, Ord, Show, Read)

newtype Flag = Flag Bool
  deriving (Eq, Ord, Show, Read)

newtype Count = Count Int
  deriving (Eq, Ord, Show, Read)

---

data NotDefined a = NotDefined
  deriving (Show, Eq)

newtype Required a = Required a
  deriving (Show, Eq, Functor)
  deriving
    (Applicative)
    via Identity

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
  deriving (Show, Eq)

instance ToText ArgValue where
  toText = \case
    ArgMm (Mm d) -> T.pack (printf "%.4f" d)
    ArgMmPerMin (MmPerMin d) -> T.pack (printf "%.4f" d)
    ArgCelsius (Celsius d) -> T.pack (printf "%.4f" d)
    ArgMmPerSec (MmPerSec d) -> T.pack (printf "%.4f" d)
    ArgMmPerSec2 (MmPerSec2 d) -> T.pack (printf "%.4f" d)
    ArgPercent (Percent d) -> T.pack (printf "%.4f" d)
    ArgSeconds (Seconds d) -> T.pack (printf "%.4f" d)
    ArgMilliseconds (Milliseconds d) -> T.pack (show d)
    ArgDegrees (Degrees d) -> T.pack (printf "%.4f" d)
    ArgIndex (Index d) -> T.pack (show d)
    ArgLaserPower (LaserPower d) -> T.pack (printf "%.4f" d)
    ArgFlag (Flag d) -> if d then "1" else "0"
    ArgCount (Count d) -> T.pack (show d)

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

---
