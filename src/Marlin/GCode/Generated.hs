module Marlin.GCode.Generated where

import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (Offset, Count, Radius, Pos, Power, Rate, Required)
import Relude (Generic, Maybe, Type)

data GCodeCmd
  = Cmd_G0_LinearMove_NoExtrusion (G0_LinearMove_NoExtrusion Required)
  | Cmd_G1_LinearMove_WithExtrusion (G1_LinearMove_WithExtrusion Required)
  | Cmd_G3_LinearMove_Clockwise_FormI (G3_LinearMove_Clockwise_FormI Required)
  | Cmd_G3_LinearMove_Clockwise_FormJ (G3_LinearMove_Clockwise_FormJ Required)
  | Cmd_G3_LinearMove_Clockwise_FormR (G3_LinearMove_Clockwise_FormR Required)
   deriving (Generic)

--------------------------------------------------------------------------------
--- G0_LinearMove_NoExtrusion
--------------------------------------------------------------------------------

data G0_LinearMove_NoExtrusion (f :: Type -> Type) 
  = G0_LinearMove_NoExtrusion {
  axisA :: Maybe Pos,
  axisB :: Maybe Pos,
  axisC :: Maybe Pos,
  axisExtrusion :: Maybe Pos,
  feedrate :: Maybe Rate,
  laser :: Maybe Power,
  axisU :: Maybe Pos,
  axisV :: Maybe Pos,
  axisW :: Maybe Pos,
  axisX :: Maybe Pos,
  axisY :: Maybe Pos,
  axisZ :: Maybe Pos
} deriving (Generic)

instance Default (G0_LinearMove_NoExtrusion Required)
instance Upcast (G0_LinearMove_NoExtrusion Required) GCodeCmd where
  upcast = Cmd_G0_LinearMove_NoExtrusion

--------------------------------------------------------------------------------
--- G1_LinearMove_WithExtrusion
--------------------------------------------------------------------------------

data G1_LinearMove_WithExtrusion (f :: Type -> Type) 
  = G1_LinearMove_WithExtrusion {
  axisA :: Maybe Pos,
  axisB :: Maybe Pos,
  axisC :: Maybe Pos,
  axisExtrusion :: Maybe Pos,
  feedrate :: Maybe Rate,
  laser :: Maybe Power,
  axisU :: Maybe Pos,
  axisV :: Maybe Pos,
  axisW :: Maybe Pos,
  axisX :: Maybe Pos,
  axisY :: Maybe Pos,
  axisZ :: Maybe Pos
} deriving (Generic)

instance Default (G1_LinearMove_WithExtrusion Required)
instance Upcast (G1_LinearMove_WithExtrusion Required) GCodeCmd where
  upcast = Cmd_G1_LinearMove_WithExtrusion

--------------------------------------------------------------------------------
--- G3_LinearMove_Clockwise_FormI
--------------------------------------------------------------------------------

data G3_LinearMove_Clockwise_FormI (f :: Type -> Type) 
  = G3_LinearMove_Clockwise_FormI {
  axisA :: Maybe Pos,
  axisB :: Maybe Pos,
  axisC :: Maybe Pos,
  axisExtrusion :: Maybe Pos,
  feedrate :: Maybe Rate,
  offsetX :: f Offset,
  count :: Maybe Count,
  laser :: Maybe Power,
  axisU :: Maybe Pos,
  axisV :: Maybe Pos,
  axisW :: Maybe Pos,
  axisX :: Maybe Pos,
  axisY :: Maybe Pos,
  axisZ :: Maybe Pos
} deriving (Generic)

instance Default (G3_LinearMove_Clockwise_FormI Required)
instance Upcast (G3_LinearMove_Clockwise_FormI Required) GCodeCmd where
  upcast = Cmd_G3_LinearMove_Clockwise_FormI

--------------------------------------------------------------------------------
--- G3_LinearMove_Clockwise_FormJ
--------------------------------------------------------------------------------

data G3_LinearMove_Clockwise_FormJ (f :: Type -> Type) 
  = G3_LinearMove_Clockwise_FormJ {
  axisA :: Maybe Pos,
  axisB :: Maybe Pos,
  axisC :: Maybe Pos,
  axisExtrusion :: Maybe Pos,
  feedrate :: Maybe Rate,
  offsetY :: f Offset,
  count :: Maybe Count,
  laser :: Maybe Power,
  axisU :: Maybe Pos,
  axisV :: Maybe Pos,
  axisW :: Maybe Pos,
  axisX :: Maybe Pos,
  axisY :: Maybe Pos,
  axisZ :: Maybe Pos
} deriving (Generic)

instance Default (G3_LinearMove_Clockwise_FormJ Required)
instance Upcast (G3_LinearMove_Clockwise_FormJ Required) GCodeCmd where
  upcast = Cmd_G3_LinearMove_Clockwise_FormJ

--------------------------------------------------------------------------------
--- G3_LinearMove_Clockwise_FormR
--------------------------------------------------------------------------------

data G3_LinearMove_Clockwise_FormR (f :: Type -> Type) 
  = G3_LinearMove_Clockwise_FormR {
  axisA :: Maybe Pos,
  axisB :: Maybe Pos,
  axisC :: Maybe Pos,
  axisExtrusion :: Maybe Pos,
  feedrate :: Maybe Rate,
  count :: Maybe Count,
  radius :: f Radius,
  laser :: Maybe Power,
  axisU :: Maybe Pos,
  axisV :: Maybe Pos,
  axisW :: Maybe Pos,
  axisX :: Maybe Pos,
  axisY :: Maybe Pos,
  axisZ :: Maybe Pos
} deriving (Generic)

instance Default (G3_LinearMove_Clockwise_FormR Required)
instance Upcast (G3_LinearMove_Clockwise_FormR Required) GCodeCmd where
  upcast = Cmd_G3_LinearMove_Clockwise_FormR