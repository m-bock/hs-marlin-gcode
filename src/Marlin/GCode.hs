module Marlin.GCode
  ( module Marlin.GCode.Generated,
    module Marlin.GCode.Types,
    module Marlin.GCode.Class.Default,
    def',
  )
where

import Marlin.GCode.Class.Default (Default (..))
import Marlin.GCode.Generated
import Marlin.GCode.Types

def' :: (Default (f NotDefined)) => f NotDefined
def' = def