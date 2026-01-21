{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE FlexibleContexts #-}

module Marlin.GCode.Class.Default where

import GHC.Generics
import Relude

class Default a where
  def :: a
  default def :: (Generic a, Default' (Rep a)) => a
  def = to def'

instance Default (Maybe a) where
  def = Nothing

instance Default Bool where
  def = False

class Default' (f :: Type -> Type) where
  def' :: f p

instance (Default' f) => Default' (D1 _1 (C1 ('MetaCons ctor _2 _3) f)) where
  def' = M1 (M1 def')

instance Default' U1 where
  def' = U1

instance (Default' t1, Default' t2) => Default' (t1 :*: t2) where
  def' = def' :*: def'

instance (Default a) => Default' (S1 ('MetaSel ('Just sym) _1 _2 _3) (Rec0 a)) where
  def' = M1 (K1 def)