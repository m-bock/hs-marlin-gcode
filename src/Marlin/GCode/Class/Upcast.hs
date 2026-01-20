{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}

module Marlin.GCode.Class.Upcast where

import GHC.Generics
import Relude

class Upcast a b | a -> b where
  upcast :: a -> b
  default upcast :: (Generic b, Upcast' a (Rep b)) => a -> b
  upcast x = to (upcast' @a @(Rep b) x)

class Upcast' a (f :: Type -> Type) where
  upcast' :: a -> f p

instance (Upcast' a f) => Upcast' a (D1 _1 f) where
  upcast' x = M1 (upcast' x)

instance Upcast' a (C1 _meta1 (S1 _meta2 (Rec0 a))) where
  upcast' x = M1 (M1 (K1 x))

instance
  {-# OVERLAPPING #-}
  (Upcast' a (C1 _meta1 (S1 _meta2 (Rec0 a)))) =>
  Upcast' a (C1 _meta1 (S1 _meta2 (Rec0 a)) :+: f2)
  where
  upcast' x = L1 $ upcast' @a @(C1 _meta1 (S1 _meta2 (Rec0 a))) x

instance
  {-# OVERLAPPABLE #-}
  (Upcast' a f2) =>
  Upcast' a (C1 _meta1 (S1 _meta2 (Rec0 b)) :+: f2)
  where
  upcast' x = R1 (upcast' @a @f2 x)
