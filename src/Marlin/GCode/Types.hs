module Marlin.GCode.Types where

import Marlin.GCode.Class.Default (Default (..))
import Relude

newtype Pos = Pos {unPos :: Double}
  deriving (Eq, Ord, Show, Read)

newtype Rate = Rate {unRate :: Double}
  deriving (Eq, Ord, Show, Read)

newtype Power = Power {unPower :: Double}
  deriving (Eq, Ord, Show, Read)

newtype Offset = Offset {unOffset :: Double}
  deriving (Eq, Ord, Show, Read)

newtype Count = Count {unCount :: Int}
  deriving (Eq, Ord, Show, Read)

newtype Radius = Radius {unRadius :: Double}
  deriving (Eq, Ord, Show, Read)

-- class MkCmd (f :: (Type -> Type) -> Type) where
--   mkCmd :: (f NotDefined -> f Required) -> GCodeCmd

-- mkCmd :: (HasCtor (f Required) b) => (Default (f NotDefined)) => (f NotDefined -> f Required) -> b
-- mkCmd f = ctor (f def)

newtype NotDefined a = NotDefined a
  deriving (Show, Eq, Functor)
  deriving
    (Applicative)
    via Identity

data Required a = Required
  deriving (Show, Eq)

instance Default (Required a) where
  def = Required