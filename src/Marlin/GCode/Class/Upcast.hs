module Marlin.GCode.Class.Upcast where

class Upcast a b | a -> b where
  upcast :: a -> b
