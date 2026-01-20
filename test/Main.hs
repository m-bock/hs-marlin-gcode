{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}

module Main where

-- import Marlin.GCode (G2_NoExtrusion_Clockwise_IForm_Required (..), GCodeCmd (..), def, set)

import Data.Row
import qualified Data.Row.Records as Rec
import qualified Data.Row.Variants as Var
import GHC.Base (Symbol)
import GHC.Records (HasField (getField))
import qualified Marlin.GCode as MG
import Relude

data Options f = Options
  { a :: Int,
    b :: String,
    c :: f Int,
    d :: f String
  }

defaultOptions :: Options (Const ())
defaultOptions =
  Options
    { a = 0,
      b = "",
      c = Const (),
      d = Const ()
    }

opt :: Options Identity
opt =
  defaultOptions
    { c = Identity 1,
      d = Identity "Hello",
      a = 1,
      b = "World"
    }

main :: IO ()
main = do
  pure ()