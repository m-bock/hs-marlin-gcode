module Marlin.GCode
  ( module Marlin.GCode.Generated,
    module Marlin.GCode.Types,
    module Marlin.GCode.Class.Default,
    idef,
  )
where

import Marlin.GCode.Class.Default (Default (..))
import Marlin.GCode.Generated
import Marlin.GCode.Types

-- Incomplete default (some fields are not defined)
idef :: (Default (f NotDefined)) => f NotDefined
idef = def