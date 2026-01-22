module Marlin.GCode.Generated where

import qualified Data.Text as T
import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (ArgValue, Celsius, Count, Degrees, Flag, Index, LaserPower, Milliseconds, Mm, MmPerMin, MmPerSec, NotDefined, Required (..), Seconds)
import Relude

--------------------------------------------------------------------------------
--- GCodeCmd
--------------------------------------------------------------------------------

data GCodeCmd
  = Cmd_LinearMove_NoExtrusion (LinearMove_NoExtrusion Required)
  | Cmd_LinearMove_WithExtrusion (LinearMove_WithExtrusion Required)
  | Cmd_LinearMove_Clockwise_OffsetX (LinearMove_Clockwise_OffsetX Required)
  | Cmd_LinearMove_Clockwise_OffsetY (LinearMove_Clockwise_OffsetY Required)
  | Cmd_LinearMove_Clockwise_Radius (LinearMove_Clockwise_Radius Required)
  | Cmd_LinearMove_CounterClockwise_OffsetX (LinearMove_CounterClockwise_OffsetX Required)
  | Cmd_LinearMove_CounterClockwise_OffsetY (LinearMove_CounterClockwise_OffsetY Required)
  | Cmd_LinearMove_CounterClockwise_Radius (LinearMove_CounterClockwise_Radius Required)
  | Cmd_Dwell (Dwell Required)
  | Cmd_BezierCubicSplineMove_Initial (BezierCubicSplineMove_Initial Required)
  | Cmd_BezierCubicSplineMove_Subsequent (BezierCubicSplineMove_Subsequent Required)
  | Cmd_DirectStepperMove (DirectStepperMove Required)
  | Cmd_Retract (Retract Required)
  | Cmd_Recover (Recover Required)
  | Cmd_CleanTheNozzle (CleanTheNozzle Required)
  | Cmd_CNCWorkspacePlanes_XY (CNCWorkspacePlanes_XY Required)
  | Cmd_CNCWorkspacePlanes_ZX (CNCWorkspacePlanes_ZX Required)
  | Cmd_CNCWorkspacePlanes_YZ (CNCWorkspacePlanes_YZ Required)
  | Cmd_InchUnits (InchUnits Required)
  | Cmd_MillimeterUnits (MillimeterUnits Required)
  | Cmd_MeshValidationPattern (MeshValidationPattern Required)
  | Cmd_ParkToolehead (ParkToolehead Required)
  | Cmd_AutoHome (AutoHome Required)
  | Cmd_BedLeveling_3Point (BedLeveling_3Point Required)
  | Cmd_BedLeveling_Bilinear (BedLeveling_Bilinear Required)
  | Cmd_BedLeveling_Linear (BedLeveling_Linear Required)
  | Cmd_BedLeveling_Manual (BedLeveling_Manual Required)
  | Cmd_BedLeveling_Unified (BedLeveling_Unified Required)
  | Cmd_SingleZ_Probe (SingleZ_Probe Required)
  | Cmd_DockSled (DockSled Required)
  | Cmd_UndockSled (UndockSled Required)
  | Cmd_DeltaAutoCalibration (DeltaAutoCalibration Required)
  | Cmd_ZSteppersAuto_Alignment (ZSteppersAuto_Alignment Required)
  | Cmd_MechanicalGantryCalibration (MechanicalGantryCalibration Required)
  | Cmd_TrammingAssistant (TrammingAssistant Required)
  | Cmd_ProbeTarget_ErrorOnFail (ProbeTarget_ErrorOnFail Required)
  | Cmd_ProbeTarget_NoErrorOnFail (ProbeTarget_NoErrorOnFail Required)
  | Cmd_ProbeTarget_AwayErrorOnFail (ProbeTarget_AwayErrorOnFail Required)
  | Cmd_ProbeTarget_AwayNoErrorOnFail (ProbeTarget_AwayNoErrorOnFail Required)
  | Cmd_MovetoMeshCoordinate (MovetoMeshCoordinate Required)
  | Cmd_MoveinMachineCoordinates (MoveinMachineCoordinates Required)
  | Cmd_SelectWorkspace_Workspace1 (SelectWorkspace_Workspace1 Required)
  | Cmd_SelectWorkspace_Workspace2 (SelectWorkspace_Workspace2 Required)
  | Cmd_SelectWorkspace_Workspace3 (SelectWorkspace_Workspace3 Required)
  | Cmd_SelectWorkspace_Workspace4 (SelectWorkspace_Workspace4 Required)
  | Cmd_SelectWorkspace_Workspace5 (SelectWorkspace_Workspace5 Required)
  | Cmd_SelectWorkspace_Workspace6 (SelectWorkspace_Workspace6 Required)
  | Cmd_SelectWorkspace_Workspace7 (SelectWorkspace_Workspace7 Required)
  | Cmd_SelectWorkspace_Workspace8 (SelectWorkspace_Workspace8 Required)
  | Cmd_SelectWorkspace_Workspace9 (SelectWorkspace_Workspace9 Required)
  | Cmd_StoredPositions (StoredPositions Required)
  | Cmd_ReturntoSavedPosition (ReturntoSavedPosition Required)
  | Cmd_ProbeTemperatureCalibration (ProbeTemperatureCalibration Required)
  | Cmd_CancelCurrentMotionMode (CancelCurrentMotionMode Required)
  | Cmd_AbsolutePositioning (AbsolutePositioning Required)
  | Cmd_RelativePositioning (RelativePositioning Required)
  | Cmd_SetPosition (SetPosition Required)
  | Cmd_BacklashCalibration (BacklashCalibration Required)
  | Cmd_UnconditionalStop (UnconditionalStop Required)
  | Cmd_SpindleCW_LaserOn (SpindleCW_LaserOn Required)
  | Cmd_SpindleCCW_LaserOn (SpindleCCW_LaserOn Required)
  | Cmd_Spindle_LaserOff (Spindle_LaserOff Required)
  | Cmd_CoolantControls_Mist (CoolantControls_Mist Required)
  | Cmd_CoolantControls_Flood (CoolantControls_Flood Required)
  | Cmd_CoolantControls_Off (CoolantControls_Off Required)
  | Cmd_Vacuum_BlowerControl_On (Vacuum_BlowerControl_On Required)
  | Cmd_Vacuum_BlowerControl_Off (Vacuum_BlowerControl_Off Required)
  | Cmd_ExpectedPrinterCheck (ExpectedPrinterCheck Required)
  | Cmd_EnableSteppers (EnableSteppers Required)
  | Cmd_DisableSteppers (DisableSteppers Required)
  | Cmd_ListSDCard (ListSDCard Required)
  | Cmd_InitSDCard (InitSDCard Required)
  | Cmd_ReleaseSDCard (ReleaseSDCard Required)
  | Cmd_SelectSDFile (SelectSDFile Required)
  | Cmd_StartorResumeSDPrint (StartorResumeSDPrint Required)
  | Cmd_PauseSDPrint (PauseSDPrint Required)
  | Cmd_SetSDPosition (SetSDPosition Required)
  | Cmd_ReportSDPrintStatus (ReportSDPrintStatus Required)
  | Cmd_StartSDWrite (StartSDWrite Required)
  | Cmd_StopSDWrite (StopSDWrite Required)
  | Cmd_DeleteSDFile (DeleteSDFile Required)
  | Cmd_ReportPrintTime (ReportPrintTime Required)
  | Cmd_SelectandStart (SelectandStart Required)
  | Cmd_GetLongPath (GetLongPath Required)
  | Cmd_SDCardSorting (SDCardSorting Required)
  | Cmd_SetPinState (SetPinState Required)
  | Cmd_PinsDebugging (PinsDebugging Required)
  | Cmd_TogglePins (TogglePins Required)
  | Cmd_ProbeRepeatabilityTest (ProbeRepeatabilityTest Required)
  | Cmd_SetPrintProgress (SetPrintProgress Required)
  | Cmd_StartPrintJobTimer (StartPrintJobTimer Required)
  | Cmd_PausePrintJobTimer (PausePrintJobTimer Required)
  | Cmd_StopPrintJobTimer (StopPrintJobTimer Required)
  | Cmd_PrintJobStats (PrintJobStats Required)
  | Cmd_PowerOn (PowerOn Required)
  | Cmd_PowerOff (PowerOff Required)
  | Cmd_EAbsolute (EAbsolute Required)
  | Cmd_ERelative (ERelative Required)
  | Cmd_InactivityShutdown (InactivityShutdown Required)
  | Cmd_HotendIdleTimeout (HotendIdleTimeout Required)
  | Cmd_DisableHotendIdleTimeout (DisableHotendIdleTimeout Required)
  | Cmd_SetAxisSteps_per_unit (SetAxisSteps_per_unit Required)
  | Cmd_SetHotendTemperature (SetHotendTemperature Required)
  | Cmd_ReportTemperatures (ReportTemperatures Required)
  | Cmd_SetFanSpeed (SetFanSpeed Required)
  | Cmd_FanOff (FanOff Required)
  | Cmd_BreakandContinue (BreakandContinue Required)
  | Cmd_WaitforHotendTemperature (WaitforHotendTemperature Required)
  | Cmd_Set_GetLineNumber (Set_GetLineNumber Required)
  | Cmd_DebugLevel (DebugLevel Required)
  | Cmd_FullShutdown (FullShutdown Required)
  | Cmd_HostKeepalive (HostKeepalive Required)
  | Cmd_GetCurrentPosition (GetCurrentPosition Required)
  | Cmd_FirmwareInfo (FirmwareInfo Required)
  | Cmd_SetLCDMessage (SetLCDMessage Required)
  | Cmd_SerialPrint (SerialPrint Required)
  | Cmd_EndstopStates (EndstopStates Required)
  | Cmd_EnableEndstops (EnableEndstops Required)
  | Cmd_DisableEndstops (DisableEndstops Required)
  | Cmd_SetBedTemperature (SetBedTemperature Required)
  | Cmd_SetChamberTemperature (SetChamberTemperature Required)
  | Cmd_WaitforBedTemperature (WaitforBedTemperature Required)
  | Cmd_VolumetricExtrusionDiameter (VolumetricExtrusionDiameter Required)
  | Cmd_Print_TravelMoveLimits (Print_TravelMoveLimits Required)
  | Cmd_SetMaxFeedrate (SetMaxFeedrate Required)
  | Cmd_SetStartingAcceleration (SetStartingAcceleration Required)
  | Cmd_SetAdvancedSettings (SetAdvancedSettings Required)
  | Cmd_SetHomeOffsets (SetHomeOffsets Required)
  | Cmd_SetFeedratePercentage (SetFeedratePercentage Required)
  | Cmd_SetFlowPercentage (SetFlowPercentage Required)
  | Cmd_FinishMoves (FinishMoves Required)
  | Cmd_DeployProbe (DeployProbe Required)
  | Cmd_StowProbe (StowProbe Required)
  | Cmd_Quickstop (Quickstop Required)
  | Cmd_SaveSettings (SaveSettings Required)
  | Cmd_RestoreSettings (RestoreSettings Required)
  | Cmd_FactoryReset (FactoryReset Required)
  | Cmd_ReportSettings (ReportSettings Required)
  | Cmd_STOPRestart (STOPRestart Required)
  | Cmd_FreeMemory (FreeMemory Required)
  | Cmd_ConfigureBedDistanceSensor (ConfigureBedDistanceSensor Required)
  | Cmd_TMCDebugging (TMCDebugging Required)
  | Cmd_FanTachometers (FanTachometers Required)
  | Cmd_ParkHead (ParkHead Required)
  | Cmd_Baricuda1Open (Baricuda1Open Required)
  | Cmd_Baricuda1Close (Baricuda1Close Required)
  | Cmd_Baricuda2Open (Baricuda2Open Required)
  | Cmd_Baricuda2Close (Baricuda2Close Required)
  | Cmd_SetLaserCoolerTemperature (SetLaserCoolerTemperature Required)
  | Cmd_SetMaterialPreset (SetMaterialPreset Required)
  | Cmd_SetTemperatureUnits (SetTemperatureUnits Required)
  | Cmd_SetRGBWColor (SetRGBWColor Required)
  | Cmd_PositionAuto_Report (PositionAuto_Report Required)
  | Cmd_TemperatureAuto_Report (TemperatureAuto_Report Required)
  | Cmd_SetMixFactor (SetMixFactor Required)
  | Cmd_SaveMix (SaveMix Required)
  | Cmd_SetMix (SetMix Required)
  | Cmd_GradientMix (GradientMix Required)
  | Cmd_WaitforChamberTemperature (WaitforChamberTemperature Required)
  | Cmd_WaitforProbeTemperature (WaitforProbeTemperature Required)
  | Cmd_WaitForLaserCoolerTemperature (WaitForLaserCoolerTemperature Required)
  | Cmd_FirmwareRetractionSettings (FirmwareRetractionSettings Required)
  | Cmd_FirmwareRecoverSettings (FirmwareRecoverSettings Required)
  | Cmd_SetAutoRetract (SetAutoRetract Required)
  | Cmd_HomingFeedrate (HomingFeedrate Required)
  | Cmd_SoftwareEndstops (SoftwareEndstops Required)
  | Cmd_FilamentSwapParameters (FilamentSwapParameters Required)
  | Cmd_SetHotendOffset (SetHotendOffset Required)
  | Cmd_WaitforPinState (WaitforPinState Required)
  | Cmd_TriggerCamera (TriggerCamera Required)
  | Cmd_LCDContrast (LCDContrast Required)
  | Cmd_LCDSleep_BacklightTimeout (LCDSleep_BacklightTimeout Required)
  | Cmd_LCDBrightness (LCDBrightness Required)
  | Cmd_I2CSend (I2CSend Required)
  | Cmd_I2CRequest (I2CRequest Required)
  | Cmd_ScanI2CBus (ScanI2CBus Required)
  | Cmd_ServoPosition (ServoPosition Required)
  | Cmd_EditServoAngles (EditServoAngles Required)
  | Cmd_DetachServo (DetachServo Required)
  | Cmd_Babystep (Babystep Required)
  | Cmd_PlayTone (PlayTone Required)
  | Cmd_SetHotendPID (SetHotendPID Required)
  | Cmd_ColdExtrude (ColdExtrude Required)
  | Cmd_PIDAutotune (PIDAutotune Required)
  | Cmd_SetBedPID (SetBedPID Required)
  | Cmd_UserThermistorParameters (UserThermistorParameters Required)
  | Cmd_ModelPredictiveTempControl (ModelPredictiveTempControl Required)
  | Cmd_SetChamberPID (SetChamberPID Required)
  | Cmd_SetMicro_stepping (SetMicro_stepping Required)
  | Cmd_SetMicrostepPins (SetMicrostepPins Required)
  | Cmd_CaseLightControl (CaseLightControl Required)
  | Cmd_SCARAThetaA (SCARAThetaA Required)
  | Cmd_SCARATheta_B (SCARATheta_B Required)
  | Cmd_SCARAPsi_A (SCARAPsi_A Required)
  | Cmd_SCARAPsi_B (SCARAPsi_B Required)
  | Cmd_SCARAPsi_C (SCARAPsi_C Required)
  | Cmd_ActivateSolenoid (ActivateSolenoid Required)
  | Cmd_DeactivateSolenoids (DeactivateSolenoids Required)
  | Cmd_MMU2FilamentType (MMU2FilamentType Required)
  | Cmd_FilamentWidthSensorNominalDiameter (FilamentWidthSensorNominalDiameter Required)
  | Cmd_FilamentWidthSensorOn (FilamentWidthSensorOn Required)
  | Cmd_FilamentWidthSensorOff (FilamentWidthSensorOff Required)
  | Cmd_ReadFilamentWidth (ReadFilamentWidth Required)
  | Cmd_FilamentRunout (FilamentRunout Required)
  | Cmd_Power_lossRecovery (Power_lossRecovery Required)
  | Cmd_LCDLanguage (LCDLanguage Required)
  | Cmd_BedLevelingState (BedLevelingState Required)
  | Cmd_SetMeshValue (SetMeshValue Required)
  | Cmd_SetZMotorXY (SetZMotorXY Required)
  | Cmd_XTwistCompensation (XTwistCompensation Required)
  | Cmd_BacklashCompensation (BacklashCompensation Required)
  | Cmd_HomeOffsetsHere (HomeOffsetsHere Required)
  | Cmd_PowerMonitor (PowerMonitor Required)
  | Cmd_CancelObjects (CancelObjects Required)
  | Cmd_Fixed_TimeMotion (Fixed_TimeMotion Required)
  | Cmd_FTMotionTrajectorySmoothing (FTMotionTrajectorySmoothing Required)
  | Cmd_ValidateEEPROMContents (ValidateEEPROMContents Required)
  | Cmd_LockMachine (LockMachine Required)
  | Cmd_UnlockMachine (UnlockMachine Required)
  | Cmd_SetPasscode (SetPasscode Required)
  | Cmd_AbortSDPrint (AbortSDPrint Required)
  | Cmd_EndstopsAbortSD (EndstopsAbortSD Required)
  | Cmd_MachineName (MachineName Required)
  | Cmd_EthernetIPAddress_NetworkIF (EthernetIPAddress_NetworkIF Required)
  | Cmd_EthernetSubnetMask (EthernetSubnetMask Required)
  | Cmd_EthernetGatewayIPAddress (EthernetGatewayIPAddress Required)
  | Cmd_SetTMCSteppingMode (SetTMCSteppingMode Required)
  | Cmd_SerialBaudRate (SerialBaudRate Required)
  | Cmd_NonlinearExtrusionControl (NonlinearExtrusionControl Required)
  | Cmd_ZVInputShaping (ZVInputShaping Required)
  | Cmd_FilamentChange (FilamentChange Required)
  | Cmd_ConfigureFilamentChange (ConfigureFilamentChange Required)
  | Cmd_MultiNozzleMode (MultiNozzleMode Required)
  | Cmd_DeltaConfiguration (DeltaConfiguration Required)
  | Cmd_SetDeltaEndstopAdjustments (SetDeltaEndstopAdjustments Required)
  | Cmd_DuetSmartEffectorSensitivity (DuetSmartEffectorSensitivity Required)
  | Cmd_LoadFilament (LoadFilament Required)
  | Cmd_UnloadFilament (UnloadFilament Required)
  | Cmd_ControllerFanSettings (ControllerFanSettings Required)
  | Cmd_RepeatMarker (RepeatMarker Required)
  | Cmd_G_codeMacros (G_codeMacros Required)
  | Cmd_ReportG_codeMacros (ReportG_codeMacros Required)
  | Cmd_XYZProbeOffset (XYZProbeOffset Required)
  | Cmd_BedSkewCompensation (BedSkewCompensation Required)
  | Cmd_I2CPositionEncoders (I2CPositionEncoders Required)
  | Cmd_ProbeTemperatureConfig (ProbeTemperatureConfig Required)
  | Cmd_HandlePromptResponse (HandlePromptResponse Required)
  | Cmd_LinearAdvanceFactor (LinearAdvanceFactor Required)
  | Cmd_StepperMotorCurrent (StepperMotorCurrent Required)
  | Cmd_TrimpotStepperMotorCurrent (TrimpotStepperMotorCurrent Required)
  | Cmd_SetTrimpotPins (SetTrimpotPins Required)
  | Cmd_ReportDACStepperCurrent (ReportDACStepperCurrent Required)
  | Cmd_CommitDACtoEEPROM (CommitDACtoEEPROM Required)
  | Cmd_TMCOTPre_WarnCondition (TMCOTPre_WarnCondition Required)
  | Cmd_ClearTMCOTPre_Warn (ClearTMCOTPre_Warn Required)
  | Cmd_SetHybridThresholdSpeed (SetHybridThresholdSpeed Required)
  | Cmd_TMCBumpSensitivity (TMCBumpSensitivity Required)
  | Cmd_TMCZAxisCalibration (TMCZAxisCalibration Required)
  | Cmd_L6474ThermalWarningTest (L6474ThermalWarningTest Required)
  | Cmd_L6474OvercurrentWarningTest (L6474OvercurrentWarningTest Required)
  | Cmd_L6474SpeedWarningTest (L6474SpeedWarningTest Required)
  | Cmd_TMCChopperTiming (TMCChopperTiming Required)
  | Cmd_TMCHomingCurrent (TMCHomingCurrent Required)
  | Cmd_StartSDLogging (StartSDLogging Required)
  | Cmd_MagneticParkingExtruder (MagneticParkingExtruder Required)
  | Cmd_BackUpFlashSettingstoSD (BackUpFlashSettingstoSD Required)
  | Cmd_RestoreFlashfromSD (RestoreFlashfromSD Required)
  | Cmd_TouchScreenCalibration (TouchScreenCalibration Required)
  | Cmd_FirmwareUpdate (FirmwareUpdate Required)
  | Cmd_MAX7219Control (MAX7219Control Required)
  | Comment (Maybe GCodeCmd) Text
  deriving (Generic)

instance ToText GCodeCmd where
  toText =
    \case
      Cmd_LinearMove_NoExtrusion r -> toText r
      Cmd_LinearMove_WithExtrusion r -> toText r
      Cmd_LinearMove_Clockwise_OffsetX r -> toText r
      Cmd_LinearMove_Clockwise_OffsetY r -> toText r
      Cmd_LinearMove_Clockwise_Radius r -> toText r
      Cmd_LinearMove_CounterClockwise_OffsetX r -> toText r
      Cmd_LinearMove_CounterClockwise_OffsetY r -> toText r
      Cmd_LinearMove_CounterClockwise_Radius r -> toText r
      Cmd_Dwell r -> toText r
      Cmd_BezierCubicSplineMove_Initial r -> toText r
      Cmd_BezierCubicSplineMove_Subsequent r -> toText r
      Cmd_DirectStepperMove r -> toText r
      Cmd_Retract r -> toText r
      Cmd_Recover r -> toText r
      Cmd_CleanTheNozzle r -> toText r
      Cmd_CNCWorkspacePlanes_XY r -> toText r
      Cmd_CNCWorkspacePlanes_ZX r -> toText r
      Cmd_CNCWorkspacePlanes_YZ r -> toText r
      Cmd_InchUnits r -> toText r
      Cmd_MillimeterUnits r -> toText r
      Cmd_MeshValidationPattern r -> toText r
      Cmd_ParkToolehead r -> toText r
      Cmd_AutoHome r -> toText r
      Cmd_BedLeveling_3Point r -> toText r
      Cmd_BedLeveling_Bilinear r -> toText r
      Cmd_BedLeveling_Linear r -> toText r
      Cmd_BedLeveling_Manual r -> toText r
      Cmd_BedLeveling_Unified r -> toText r
      Cmd_SingleZ_Probe r -> toText r
      Cmd_DockSled r -> toText r
      Cmd_UndockSled r -> toText r
      Cmd_DeltaAutoCalibration r -> toText r
      Cmd_ZSteppersAuto_Alignment r -> toText r
      Cmd_MechanicalGantryCalibration r -> toText r
      Cmd_TrammingAssistant r -> toText r
      Cmd_ProbeTarget_ErrorOnFail r -> toText r
      Cmd_ProbeTarget_NoErrorOnFail r -> toText r
      Cmd_ProbeTarget_AwayErrorOnFail r -> toText r
      Cmd_ProbeTarget_AwayNoErrorOnFail r -> toText r
      Cmd_MovetoMeshCoordinate r -> toText r
      Cmd_MoveinMachineCoordinates r -> toText r
      Cmd_SelectWorkspace_Workspace1 r -> toText r
      Cmd_SelectWorkspace_Workspace2 r -> toText r
      Cmd_SelectWorkspace_Workspace3 r -> toText r
      Cmd_SelectWorkspace_Workspace4 r -> toText r
      Cmd_SelectWorkspace_Workspace5 r -> toText r
      Cmd_SelectWorkspace_Workspace6 r -> toText r
      Cmd_SelectWorkspace_Workspace7 r -> toText r
      Cmd_SelectWorkspace_Workspace8 r -> toText r
      Cmd_SelectWorkspace_Workspace9 r -> toText r
      Cmd_StoredPositions r -> toText r
      Cmd_ReturntoSavedPosition r -> toText r
      Cmd_ProbeTemperatureCalibration r -> toText r
      Cmd_CancelCurrentMotionMode r -> toText r
      Cmd_AbsolutePositioning r -> toText r
      Cmd_RelativePositioning r -> toText r
      Cmd_SetPosition r -> toText r
      Cmd_BacklashCalibration r -> toText r
      Cmd_UnconditionalStop r -> toText r
      Cmd_SpindleCW_LaserOn r -> toText r
      Cmd_SpindleCCW_LaserOn r -> toText r
      Cmd_Spindle_LaserOff r -> toText r
      Cmd_CoolantControls_Mist r -> toText r
      Cmd_CoolantControls_Flood r -> toText r
      Cmd_CoolantControls_Off r -> toText r
      Cmd_Vacuum_BlowerControl_On r -> toText r
      Cmd_Vacuum_BlowerControl_Off r -> toText r
      Cmd_ExpectedPrinterCheck r -> toText r
      Cmd_EnableSteppers r -> toText r
      Cmd_DisableSteppers r -> toText r
      Cmd_ListSDCard r -> toText r
      Cmd_InitSDCard r -> toText r
      Cmd_ReleaseSDCard r -> toText r
      Cmd_SelectSDFile r -> toText r
      Cmd_StartorResumeSDPrint r -> toText r
      Cmd_PauseSDPrint r -> toText r
      Cmd_SetSDPosition r -> toText r
      Cmd_ReportSDPrintStatus r -> toText r
      Cmd_StartSDWrite r -> toText r
      Cmd_StopSDWrite r -> toText r
      Cmd_DeleteSDFile r -> toText r
      Cmd_ReportPrintTime r -> toText r
      Cmd_SelectandStart r -> toText r
      Cmd_GetLongPath r -> toText r
      Cmd_SDCardSorting r -> toText r
      Cmd_SetPinState r -> toText r
      Cmd_PinsDebugging r -> toText r
      Cmd_TogglePins r -> toText r
      Cmd_ProbeRepeatabilityTest r -> toText r
      Cmd_SetPrintProgress r -> toText r
      Cmd_StartPrintJobTimer r -> toText r
      Cmd_PausePrintJobTimer r -> toText r
      Cmd_StopPrintJobTimer r -> toText r
      Cmd_PrintJobStats r -> toText r
      Cmd_PowerOn r -> toText r
      Cmd_PowerOff r -> toText r
      Cmd_EAbsolute r -> toText r
      Cmd_ERelative r -> toText r
      Cmd_InactivityShutdown r -> toText r
      Cmd_HotendIdleTimeout r -> toText r
      Cmd_DisableHotendIdleTimeout r -> toText r
      Cmd_SetAxisSteps_per_unit r -> toText r
      Cmd_SetHotendTemperature r -> toText r
      Cmd_ReportTemperatures r -> toText r
      Cmd_SetFanSpeed r -> toText r
      Cmd_FanOff r -> toText r
      Cmd_BreakandContinue r -> toText r
      Cmd_WaitforHotendTemperature r -> toText r
      Cmd_Set_GetLineNumber r -> toText r
      Cmd_DebugLevel r -> toText r
      Cmd_FullShutdown r -> toText r
      Cmd_HostKeepalive r -> toText r
      Cmd_GetCurrentPosition r -> toText r
      Cmd_FirmwareInfo r -> toText r
      Cmd_SetLCDMessage r -> toText r
      Cmd_SerialPrint r -> toText r
      Cmd_EndstopStates r -> toText r
      Cmd_EnableEndstops r -> toText r
      Cmd_DisableEndstops r -> toText r
      Cmd_SetBedTemperature r -> toText r
      Cmd_SetChamberTemperature r -> toText r
      Cmd_WaitforBedTemperature r -> toText r
      Cmd_VolumetricExtrusionDiameter r -> toText r
      Cmd_Print_TravelMoveLimits r -> toText r
      Cmd_SetMaxFeedrate r -> toText r
      Cmd_SetStartingAcceleration r -> toText r
      Cmd_SetAdvancedSettings r -> toText r
      Cmd_SetHomeOffsets r -> toText r
      Cmd_SetFeedratePercentage r -> toText r
      Cmd_SetFlowPercentage r -> toText r
      Cmd_FinishMoves r -> toText r
      Cmd_DeployProbe r -> toText r
      Cmd_StowProbe r -> toText r
      Cmd_Quickstop r -> toText r
      Cmd_SaveSettings r -> toText r
      Cmd_RestoreSettings r -> toText r
      Cmd_FactoryReset r -> toText r
      Cmd_ReportSettings r -> toText r
      Cmd_STOPRestart r -> toText r
      Cmd_FreeMemory r -> toText r
      Cmd_ConfigureBedDistanceSensor r -> toText r
      Cmd_TMCDebugging r -> toText r
      Cmd_FanTachometers r -> toText r
      Cmd_ParkHead r -> toText r
      Cmd_Baricuda1Open r -> toText r
      Cmd_Baricuda1Close r -> toText r
      Cmd_Baricuda2Open r -> toText r
      Cmd_Baricuda2Close r -> toText r
      Cmd_SetLaserCoolerTemperature r -> toText r
      Cmd_SetMaterialPreset r -> toText r
      Cmd_SetTemperatureUnits r -> toText r
      Cmd_SetRGBWColor r -> toText r
      Cmd_PositionAuto_Report r -> toText r
      Cmd_TemperatureAuto_Report r -> toText r
      Cmd_SetMixFactor r -> toText r
      Cmd_SaveMix r -> toText r
      Cmd_SetMix r -> toText r
      Cmd_GradientMix r -> toText r
      Cmd_WaitforChamberTemperature r -> toText r
      Cmd_WaitforProbeTemperature r -> toText r
      Cmd_WaitForLaserCoolerTemperature r -> toText r
      Cmd_FirmwareRetractionSettings r -> toText r
      Cmd_FirmwareRecoverSettings r -> toText r
      Cmd_SetAutoRetract r -> toText r
      Cmd_HomingFeedrate r -> toText r
      Cmd_SoftwareEndstops r -> toText r
      Cmd_FilamentSwapParameters r -> toText r
      Cmd_SetHotendOffset r -> toText r
      Cmd_WaitforPinState r -> toText r
      Cmd_TriggerCamera r -> toText r
      Cmd_LCDContrast r -> toText r
      Cmd_LCDSleep_BacklightTimeout r -> toText r
      Cmd_LCDBrightness r -> toText r
      Cmd_I2CSend r -> toText r
      Cmd_I2CRequest r -> toText r
      Cmd_ScanI2CBus r -> toText r
      Cmd_ServoPosition r -> toText r
      Cmd_EditServoAngles r -> toText r
      Cmd_DetachServo r -> toText r
      Cmd_Babystep r -> toText r
      Cmd_PlayTone r -> toText r
      Cmd_SetHotendPID r -> toText r
      Cmd_ColdExtrude r -> toText r
      Cmd_PIDAutotune r -> toText r
      Cmd_SetBedPID r -> toText r
      Cmd_UserThermistorParameters r -> toText r
      Cmd_ModelPredictiveTempControl r -> toText r
      Cmd_SetChamberPID r -> toText r
      Cmd_SetMicro_stepping r -> toText r
      Cmd_SetMicrostepPins r -> toText r
      Cmd_CaseLightControl r -> toText r
      Cmd_SCARAThetaA r -> toText r
      Cmd_SCARATheta_B r -> toText r
      Cmd_SCARAPsi_A r -> toText r
      Cmd_SCARAPsi_B r -> toText r
      Cmd_SCARAPsi_C r -> toText r
      Cmd_ActivateSolenoid r -> toText r
      Cmd_DeactivateSolenoids r -> toText r
      Cmd_MMU2FilamentType r -> toText r
      Cmd_FilamentWidthSensorNominalDiameter r -> toText r
      Cmd_FilamentWidthSensorOn r -> toText r
      Cmd_FilamentWidthSensorOff r -> toText r
      Cmd_ReadFilamentWidth r -> toText r
      Cmd_FilamentRunout r -> toText r
      Cmd_Power_lossRecovery r -> toText r
      Cmd_LCDLanguage r -> toText r
      Cmd_BedLevelingState r -> toText r
      Cmd_SetMeshValue r -> toText r
      Cmd_SetZMotorXY r -> toText r
      Cmd_XTwistCompensation r -> toText r
      Cmd_BacklashCompensation r -> toText r
      Cmd_HomeOffsetsHere r -> toText r
      Cmd_PowerMonitor r -> toText r
      Cmd_CancelObjects r -> toText r
      Cmd_Fixed_TimeMotion r -> toText r
      Cmd_FTMotionTrajectorySmoothing r -> toText r
      Cmd_ValidateEEPROMContents r -> toText r
      Cmd_LockMachine r -> toText r
      Cmd_UnlockMachine r -> toText r
      Cmd_SetPasscode r -> toText r
      Cmd_AbortSDPrint r -> toText r
      Cmd_EndstopsAbortSD r -> toText r
      Cmd_MachineName r -> toText r
      Cmd_EthernetIPAddress_NetworkIF r -> toText r
      Cmd_EthernetSubnetMask r -> toText r
      Cmd_EthernetGatewayIPAddress r -> toText r
      Cmd_SetTMCSteppingMode r -> toText r
      Cmd_SerialBaudRate r -> toText r
      Cmd_NonlinearExtrusionControl r -> toText r
      Cmd_ZVInputShaping r -> toText r
      Cmd_FilamentChange r -> toText r
      Cmd_ConfigureFilamentChange r -> toText r
      Cmd_MultiNozzleMode r -> toText r
      Cmd_DeltaConfiguration r -> toText r
      Cmd_SetDeltaEndstopAdjustments r -> toText r
      Cmd_DuetSmartEffectorSensitivity r -> toText r
      Cmd_LoadFilament r -> toText r
      Cmd_UnloadFilament r -> toText r
      Cmd_ControllerFanSettings r -> toText r
      Cmd_RepeatMarker r -> toText r
      Cmd_G_codeMacros r -> toText r
      Cmd_ReportG_codeMacros r -> toText r
      Cmd_XYZProbeOffset r -> toText r
      Cmd_BedSkewCompensation r -> toText r
      Cmd_I2CPositionEncoders r -> toText r
      Cmd_ProbeTemperatureConfig r -> toText r
      Cmd_HandlePromptResponse r -> toText r
      Cmd_LinearAdvanceFactor r -> toText r
      Cmd_StepperMotorCurrent r -> toText r
      Cmd_TrimpotStepperMotorCurrent r -> toText r
      Cmd_SetTrimpotPins r -> toText r
      Cmd_ReportDACStepperCurrent r -> toText r
      Cmd_CommitDACtoEEPROM r -> toText r
      Cmd_TMCOTPre_WarnCondition r -> toText r
      Cmd_ClearTMCOTPre_Warn r -> toText r
      Cmd_SetHybridThresholdSpeed r -> toText r
      Cmd_TMCBumpSensitivity r -> toText r
      Cmd_TMCZAxisCalibration r -> toText r
      Cmd_L6474ThermalWarningTest r -> toText r
      Cmd_L6474OvercurrentWarningTest r -> toText r
      Cmd_L6474SpeedWarningTest r -> toText r
      Cmd_TMCChopperTiming r -> toText r
      Cmd_TMCHomingCurrent r -> toText r
      Cmd_StartSDLogging r -> toText r
      Cmd_MagneticParkingExtruder r -> toText r
      Cmd_BackUpFlashSettingstoSD r -> toText r
      Cmd_RestoreFlashfromSD r -> toText r
      Cmd_TouchScreenCalibration r -> toText r
      Cmd_FirmwareUpdate r -> toText r
      Cmd_MAX7219Control r -> toText r
      Comment Nothing c -> "; " <> c
      Comment (Just cmd) c -> toText cmd <> " ; " <> c

instance ToText [GCodeCmd] where
  toText = T.unlines . map toText

withComment :: GCodeCmd -> Text -> GCodeCmd
withComment cmd c = Comment (Just cmd) c

comment :: Text -> GCodeCmd
comment c = Comment Nothing c

--------------------------------------------------------------------------------
--- Commands
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--- Linear Move (G0)
--- Docs: https://marlinfw.org/docs/gcode/G000-G001.html
--------------------------------------------------------------------------------

data LinearMove_NoExtrusion (f :: Type -> Type)
  = LinearMove_NoExtrusion
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_NoExtrusion NotDefined)

instance Upcast (LinearMove_NoExtrusion Required) GCodeCmd where
  upcast = Cmd_LinearMove_NoExtrusion

instance ToText (LinearMove_NoExtrusion Required) where
  toText r =
    mkCmd
      "G0"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G1)
--- Docs: https://marlinfw.org/docs/gcode/G000-G001.html
--------------------------------------------------------------------------------

data LinearMove_WithExtrusion (f :: Type -> Type)
  = LinearMove_WithExtrusion
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_WithExtrusion NotDefined)

instance Upcast (LinearMove_WithExtrusion Required) GCodeCmd where
  upcast = Cmd_LinearMove_WithExtrusion

instance ToText (LinearMove_WithExtrusion Required) where
  toText r =
    mkCmd
      "G1"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_OffsetX (f :: Type -> Type)
  = LinearMove_Clockwise_OffsetX
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_OffsetX NotDefined)

instance Upcast (LinearMove_Clockwise_OffsetX Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_OffsetX

instance ToText (LinearMove_Clockwise_OffsetX Required) where
  toText r =
    mkCmd
      "G2"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkReqArg 'I' r.offsetX,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_OffsetY (f :: Type -> Type)
  = LinearMove_Clockwise_OffsetY
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetY :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_OffsetY NotDefined)

instance Upcast (LinearMove_Clockwise_OffsetY Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_OffsetY

instance ToText (LinearMove_Clockwise_OffsetY Required) where
  toText r =
    mkCmd
      "G2"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkReqArg 'J' r.offsetY,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G2)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_Clockwise_Radius (f :: Type -> Type)
  = LinearMove_Clockwise_Radius
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    count :: Maybe Count,
    radius :: f Mm,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_Clockwise_Radius NotDefined)

instance Upcast (LinearMove_Clockwise_Radius Required) GCodeCmd where
  upcast = Cmd_LinearMove_Clockwise_Radius

instance ToText (LinearMove_Clockwise_Radius Required) where
  toText r =
    mkCmd
      "G2"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkReqArg 'R' r.radius,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_OffsetX (f :: Type -> Type)
  = LinearMove_CounterClockwise_OffsetX
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_OffsetX NotDefined)

instance Upcast (LinearMove_CounterClockwise_OffsetX Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_OffsetX

instance ToText (LinearMove_CounterClockwise_OffsetX Required) where
  toText r =
    mkCmd
      "G3"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkReqArg 'I' r.offsetX,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_OffsetY (f :: Type -> Type)
  = LinearMove_CounterClockwise_OffsetY
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetY :: f Mm,
    count :: Maybe Count,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_OffsetY NotDefined)

instance Upcast (LinearMove_CounterClockwise_OffsetY Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_OffsetY

instance ToText (LinearMove_CounterClockwise_OffsetY Required) where
  toText r =
    mkCmd
      "G3"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkReqArg 'J' r.offsetY,
        mkArg 'P' r.count,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Linear Move (G3)
--- Docs: https://marlinfw.org/docs/gcode/G002-G003.html
--------------------------------------------------------------------------------

data LinearMove_CounterClockwise_Radius (f :: Type -> Type)
  = LinearMove_CounterClockwise_Radius
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    count :: Maybe Count,
    radius :: f Mm,
    laser :: Maybe LaserPower,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (LinearMove_CounterClockwise_Radius NotDefined)

instance Upcast (LinearMove_CounterClockwise_Radius Required) GCodeCmd where
  upcast = Cmd_LinearMove_CounterClockwise_Radius

instance ToText (LinearMove_CounterClockwise_Radius Required) where
  toText r =
    mkCmd
      "G3"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'P' r.count,
        mkReqArg 'R' r.radius,
        mkArg 'S' r.laser,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Dwell (G4)
--- Docs: https://marlinfw.org/docs/gcode/G004.html
--------------------------------------------------------------------------------

data Dwell (f :: Type -> Type)
  = Dwell
  { timeSeconds :: Maybe Seconds,
    timeMilliseconds :: Maybe Milliseconds
  }
  deriving (Generic)

instance Default (Dwell NotDefined)

instance Upcast (Dwell Required) GCodeCmd where
  upcast = Cmd_Dwell

instance ToText (Dwell Required) where
  toText r =
    mkCmd
      "G4"
      [ mkArg 'S' r.timeSeconds,
        mkArg 'P' r.timeMilliseconds
      ]

--------------------------------------------------------------------------------
--- Bezier Cubic Spline Move (G5)
--- Docs: https://marlinfw.org/docs/gcode/G005.html
--------------------------------------------------------------------------------

data BezierCubicSplineMove_Initial (f :: Type -> Type)
  = BezierCubicSplineMove_Initial
  { axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX1 :: f Mm,
    offsetY1 :: f Mm,
    offsetX2 :: f Mm,
    offsetY2 :: f Mm,
    laser :: Maybe LaserPower,
    axisX :: f Mm,
    axisY :: f Mm
  }
  deriving (Generic)

instance Default (BezierCubicSplineMove_Initial NotDefined)

instance Upcast (BezierCubicSplineMove_Initial Required) GCodeCmd where
  upcast = Cmd_BezierCubicSplineMove_Initial

instance ToText (BezierCubicSplineMove_Initial Required) where
  toText r =
    mkCmd
      "G5"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkReqArg 'I' r.offsetX1,
        mkReqArg 'J' r.offsetY1,
        mkReqArg 'P' r.offsetX2,
        mkReqArg 'Q' r.offsetY2,
        mkArg 'S' r.laser,
        mkReqArg 'X' r.axisX,
        mkReqArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Bezier Cubic Spline Move (G5)
--- Docs: https://marlinfw.org/docs/gcode/G005.html
--------------------------------------------------------------------------------

data BezierCubicSplineMove_Subsequent (f :: Type -> Type)
  = BezierCubicSplineMove_Subsequent
  { axisExtrusion :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    offsetX1 :: Maybe Mm,
    offsetY1 :: Maybe Mm,
    offsetX2 :: f Mm,
    offsetY2 :: f Mm,
    laser :: Maybe LaserPower,
    axisX :: f Mm,
    axisY :: f Mm
  }
  deriving (Generic)

instance Default (BezierCubicSplineMove_Subsequent NotDefined)

instance Upcast (BezierCubicSplineMove_Subsequent Required) GCodeCmd where
  upcast = Cmd_BezierCubicSplineMove_Subsequent

instance ToText (BezierCubicSplineMove_Subsequent Required) where
  toText r =
    mkCmd
      "G5"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.feedrate,
        mkArg 'I' r.offsetX1,
        mkArg 'J' r.offsetY1,
        mkReqArg 'P' r.offsetX2,
        mkReqArg 'Q' r.offsetY2,
        mkArg 'S' r.laser,
        mkReqArg 'X' r.axisX,
        mkReqArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Direct Stepper Move (G6)
--- Docs: https://marlinfw.org/docs/gcode/G006.html
--------------------------------------------------------------------------------

data DirectStepperMove (f :: Type -> Type)
  = DirectStepperMove
  { directionE :: Maybe Flag,
    pageIndex :: Maybe Index,
    stepRate :: Maybe MmPerSec,
    stepCount :: Maybe Count,
    directionX :: Maybe Flag,
    directionY :: Maybe Flag,
    directionZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (DirectStepperMove NotDefined)

instance Upcast (DirectStepperMove Required) GCodeCmd where
  upcast = Cmd_DirectStepperMove

instance ToText (DirectStepperMove Required) where
  toText r =
    mkCmd
      "G6"
      [ mkArg 'E' r.directionE,
        mkArg 'I' r.pageIndex,
        mkArg 'R' r.stepRate,
        mkArg 'S' r.stepCount,
        mkArg 'X' r.directionX,
        mkArg 'Y' r.directionY,
        mkArg 'Z' r.directionZ
      ]

--------------------------------------------------------------------------------
--- Retract (G10)
--- Docs: https://marlinfw.org/docs/gcode/G010.html
--------------------------------------------------------------------------------

data Retract (f :: Type -> Type)
  = Retract
  { swapRetract :: Maybe Flag
  }
  deriving (Generic)

instance Default (Retract NotDefined)

instance Upcast (Retract Required) GCodeCmd where
  upcast = Cmd_Retract

instance ToText (Retract Required) where
  toText r = mkCmd "G10" [mkArg 'S' r.swapRetract]

--------------------------------------------------------------------------------
--- Recover (G11)
--- Docs: https://marlinfw.org/docs/gcode/G011.html
--------------------------------------------------------------------------------

data Recover (f :: Type -> Type)
  = Recover
  {}
  deriving (Generic)

instance Default (Recover NotDefined)

instance Upcast (Recover Required) GCodeCmd where
  upcast = Cmd_Recover

instance ToText (Recover Required) where
  toText r = mkCmd "G11" []

--------------------------------------------------------------------------------
--- Clean The Nozzle (G12)
--- Docs: https://marlinfw.org/docs/gcode/G012.html
--------------------------------------------------------------------------------

data CleanTheNozzle (f :: Type -> Type)
  = CleanTheNozzle
  { pattern :: Maybe Index,
    radius :: Maybe Mm,
    repetitions :: Maybe Count,
    triangles :: Maybe Count,
    includeX :: Maybe Flag,
    includeY :: Maybe Flag,
    includeZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (CleanTheNozzle NotDefined)

instance Upcast (CleanTheNozzle Required) GCodeCmd where
  upcast = Cmd_CleanTheNozzle

instance ToText (CleanTheNozzle Required) where
  toText r =
    mkCmd
      "G12"
      [ mkArg 'P' r.pattern,
        mkArg 'R' r.radius,
        mkArg 'S' r.repetitions,
        mkArg 'T' r.triangles,
        mkArg 'X' r.includeX,
        mkArg 'Y' r.includeY,
        mkArg 'Z' r.includeZ
      ]

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G17)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_XY (f :: Type -> Type)
  = CNCWorkspacePlanes_XY
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_XY NotDefined)

instance Upcast (CNCWorkspacePlanes_XY Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_XY

instance ToText (CNCWorkspacePlanes_XY Required) where
  toText r = mkCmd "G17" []

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G18)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_ZX (f :: Type -> Type)
  = CNCWorkspacePlanes_ZX
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_ZX NotDefined)

instance Upcast (CNCWorkspacePlanes_ZX Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_ZX

instance ToText (CNCWorkspacePlanes_ZX Required) where
  toText r = mkCmd "G18" []

--------------------------------------------------------------------------------
--- CNC Workspace Planes (G19)
--- Docs: https://marlinfw.org/docs/gcode/G017-G019.html
--------------------------------------------------------------------------------

data CNCWorkspacePlanes_YZ (f :: Type -> Type)
  = CNCWorkspacePlanes_YZ
  {}
  deriving (Generic)

instance Default (CNCWorkspacePlanes_YZ NotDefined)

instance Upcast (CNCWorkspacePlanes_YZ Required) GCodeCmd where
  upcast = Cmd_CNCWorkspacePlanes_YZ

instance ToText (CNCWorkspacePlanes_YZ Required) where
  toText r = mkCmd "G19" []

--------------------------------------------------------------------------------
--- Inch Units (G20)
--- Docs: https://marlinfw.org/docs/gcode/G020.html
--------------------------------------------------------------------------------

data InchUnits (f :: Type -> Type)
  = InchUnits
  {}
  deriving (Generic)

instance Default (InchUnits NotDefined)

instance Upcast (InchUnits Required) GCodeCmd where
  upcast = Cmd_InchUnits

instance ToText (InchUnits Required) where
  toText r = mkCmd "G20" []

--------------------------------------------------------------------------------
--- Millimeter Units (G21)
--- Docs: https://marlinfw.org/docs/gcode/G021.html
--------------------------------------------------------------------------------

data MillimeterUnits (f :: Type -> Type)
  = MillimeterUnits
  {}
  deriving (Generic)

instance Default (MillimeterUnits NotDefined)

instance Upcast (MillimeterUnits Required) GCodeCmd where
  upcast = Cmd_MillimeterUnits

instance ToText (MillimeterUnits Required) where
  toText r = mkCmd "G21" []

--------------------------------------------------------------------------------
--- Mesh Validation Pattern (G26)
--- Docs: https://marlinfw.org/docs/gcode/G026.html
--------------------------------------------------------------------------------

data MeshValidationPattern (f :: Type -> Type)
  = MeshValidationPattern
  { bedTemp :: Maybe Celsius,
    continueClosest :: Maybe Flag,
    disableLeveling :: Maybe Flag,
    filamentDiameter :: Maybe Mm,
    hotendTemp :: Maybe Celsius,
    materialPreset :: Maybe Index,
    keepHeatersOn :: Maybe Flag,
    layerHeight :: Maybe Mm,
    oozeAmount :: Maybe Mm,
    primeLength :: Maybe Mm,
    retractionMultiplier :: Maybe Mm,
    repetitions :: Maybe Count,
    nozzleSize :: Maybe Mm,
    randomDeviation :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (MeshValidationPattern NotDefined)

instance Upcast (MeshValidationPattern Required) GCodeCmd where
  upcast = Cmd_MeshValidationPattern

instance ToText (MeshValidationPattern Required) where
  toText r =
    mkCmd
      "G26"
      [ mkArg 'B' r.bedTemp,
        mkArg 'C' r.continueClosest,
        mkArg 'D' r.disableLeveling,
        mkArg 'F' r.filamentDiameter,
        mkArg 'H' r.hotendTemp,
        mkArg 'I' r.materialPreset,
        mkArg 'K' r.keepHeatersOn,
        mkArg 'L' r.layerHeight,
        mkArg 'O' r.oozeAmount,
        mkArg 'P' r.primeLength,
        mkArg 'Q' r.retractionMultiplier,
        mkArg 'R' r.repetitions,
        mkArg 'S' r.nozzleSize,
        mkArg 'U' r.randomDeviation,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Park Toolehead (G27)
--- Docs: https://marlinfw.org/docs/gcode/G027.html
--------------------------------------------------------------------------------

data ParkToolehead (f :: Type -> Type)
  = ParkToolehead
  { parkingBehavior :: Maybe Index
  }
  deriving (Generic)

instance Default (ParkToolehead NotDefined)

instance Upcast (ParkToolehead Required) GCodeCmd where
  upcast = Cmd_ParkToolehead

instance ToText (ParkToolehead Required) where
  toText r = mkCmd "G27" [mkArg 'P' r.parkingBehavior]

--------------------------------------------------------------------------------
--- Auto Home (G28)
--- Docs: https://marlinfw.org/docs/gcode/G028.html
--------------------------------------------------------------------------------

data AutoHome (f :: Type -> Type)
  = AutoHome
  { homeA :: Maybe Flag,
    homeB :: Maybe Flag,
    homeC :: Maybe Flag,
    holdXY :: Maybe Flag,
    restoreLeveling :: Maybe Flag,
    skipIfTrusted :: Maybe Flag,
    raiseDistance :: Maybe Mm,
    homeU :: Maybe Flag,
    homeV :: Maybe Flag,
    homeW :: Maybe Flag,
    homeX :: Maybe Flag,
    homeY :: Maybe Flag,
    homeZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (AutoHome NotDefined)

instance Upcast (AutoHome Required) GCodeCmd where
  upcast = Cmd_AutoHome

instance ToText (AutoHome Required) where
  toText r =
    mkCmd
      "G28"
      [ mkArg 'A' r.homeA,
        mkArg 'B' r.homeB,
        mkArg 'C' r.homeC,
        mkArg 'H' r.holdXY,
        mkArg 'L' r.restoreLeveling,
        mkArg 'O' r.skipIfTrusted,
        mkArg 'R' r.raiseDistance,
        mkArg 'U' r.homeU,
        mkArg 'V' r.homeV,
        mkArg 'W' r.homeW,
        mkArg 'X' r.homeX,
        mkArg 'Y' r.homeY,
        mkArg 'Z' r.homeZ
      ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-3point.html
--------------------------------------------------------------------------------

data BedLeveling_3Point (f :: Type -> Type)
  = BedLeveling_3Point
  { abort :: Maybe Flag,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    jettison :: Maybe Flag,
    optional :: Maybe Flag,
    query :: Maybe Flag,
    verbosity :: Maybe Index
  }
  deriving (Generic)

instance Default (BedLeveling_3Point NotDefined)

instance Upcast (BedLeveling_3Point Required) GCodeCmd where
  upcast = Cmd_BedLeveling_3Point

instance ToText (BedLeveling_3Point Required) where
  toText r =
    mkCmd
      "G29"
      [ mkArg 'A' r.abort,
        mkArg 'C' r.createFake,
        mkArg 'D' r.dryRun,
        mkArg 'E' r.engageEach,
        mkArg 'J' r.jettison,
        mkArg 'O' r.optional,
        mkArg 'Q' r.query,
        mkArg 'V' r.verbosity
      ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-bilinear.html
--------------------------------------------------------------------------------

data BedLeveling_Bilinear (f :: Type -> Type)
  = BedLeveling_Bilinear
  { abort :: Maybe Flag,
    backLimit :: Maybe Mm,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    frontLimit :: Maybe Mm,
    areaSize :: Maybe Mm,
    meshX :: Maybe Index,
    jettison :: Maybe Flag,
    meshY :: Maybe Index,
    leftLimit :: Maybe Mm,
    optional :: Maybe Flag,
    query :: Maybe Flag,
    rightLimit :: Maybe Mm,
    travelSpeed :: Maybe MmPerMin,
    verbosity :: Maybe Index,
    writeMesh :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    meshZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Bilinear NotDefined)

instance Upcast (BedLeveling_Bilinear Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Bilinear

instance ToText (BedLeveling_Bilinear Required) where
  toText r =
    mkCmd
      "G29"
      [ mkArg 'A' r.abort,
        mkArg 'B' r.backLimit,
        mkArg 'C' r.createFake,
        mkArg 'D' r.dryRun,
        mkArg 'E' r.engageEach,
        mkArg 'F' r.frontLimit,
        mkArg 'H' r.areaSize,
        mkArg 'I' r.meshX,
        mkArg 'J' r.jettison,
        mkArg 'K' r.meshY,
        mkArg 'L' r.leftLimit,
        mkArg 'O' r.optional,
        mkArg 'Q' r.query,
        mkArg 'R' r.rightLimit,
        mkArg 'S' r.travelSpeed,
        mkArg 'V' r.verbosity,
        mkArg 'W' r.writeMesh,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.meshZ
      ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-abl-linear.html
--------------------------------------------------------------------------------

data BedLeveling_Linear (f :: Type -> Type)
  = BedLeveling_Linear
  { abort :: Maybe Flag,
    backLimit :: Maybe Mm,
    createFake :: Maybe Flag,
    dryRun :: Maybe Flag,
    engageEach :: Maybe Flag,
    frontLimit :: Maybe Mm,
    areaSize :: Maybe Mm,
    jettison :: Maybe Flag,
    leftLimit :: Maybe Mm,
    optional :: Maybe Flag,
    gridSize :: Maybe Index,
    query :: Maybe Flag,
    rightLimit :: Maybe Mm,
    travelSpeed :: Maybe MmPerMin,
    topology :: Maybe Flag,
    verbosity :: Maybe Index,
    columns :: Maybe Index,
    rows :: Maybe Index
  }
  deriving (Generic)

instance Default (BedLeveling_Linear NotDefined)

instance Upcast (BedLeveling_Linear Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Linear

instance ToText (BedLeveling_Linear Required) where
  toText r =
    mkCmd
      "G29"
      [ mkArg 'A' r.abort,
        mkArg 'B' r.backLimit,
        mkArg 'C' r.createFake,
        mkArg 'D' r.dryRun,
        mkArg 'E' r.engageEach,
        mkArg 'F' r.frontLimit,
        mkArg 'H' r.areaSize,
        mkArg 'J' r.jettison,
        mkArg 'L' r.leftLimit,
        mkArg 'O' r.optional,
        mkArg 'P' r.gridSize,
        mkArg 'Q' r.query,
        mkArg 'R' r.rightLimit,
        mkArg 'S' r.travelSpeed,
        mkArg 'T' r.topology,
        mkArg 'V' r.verbosity,
        mkArg 'X' r.columns,
        mkArg 'Y' r.rows
      ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-mbl.html
--------------------------------------------------------------------------------

data BedLeveling_Manual (f :: Type -> Type)
  = BedLeveling_Manual
  { meshX :: Maybe Index,
    meshY :: Maybe Index,
    state :: f Index,
    meshXOld :: Maybe Count,
    meshYOld :: Maybe Count,
    meshZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Manual NotDefined)

instance Upcast (BedLeveling_Manual Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Manual

instance ToText (BedLeveling_Manual Required) where
  toText r =
    mkCmd
      "G29"
      [ mkArg 'I' r.meshX,
        mkArg 'J' r.meshY,
        mkReqArg 'S' r.state,
        mkArg 'X' r.meshXOld,
        mkArg 'Y' r.meshYOld,
        mkArg 'Z' r.meshZ
      ]

--------------------------------------------------------------------------------
--- Bed Leveling (G29)
--- Docs: https://marlinfw.org/docs/gcode/G029-ubl.html
--------------------------------------------------------------------------------

data BedLeveling_Unified (f :: Type -> Type)
  = BedLeveling_Unified
  { activate :: Maybe Flag,
    businessCard :: Maybe Mm,
    constant :: Maybe Mm,
    disable :: Maybe Flag,
    stowEach :: Maybe Flag,
    fadeHeight :: Maybe Mm,
    height :: Maybe Mm,
    invalidate :: Maybe Index,
    grid :: Maybe Index,
    kompare :: Maybe Index,
    load :: Maybe Index,
    phase :: Maybe Index,
    testPattern :: Maybe Index,
    repeat :: Maybe Count,
    save :: Maybe Index,
    topology :: Maybe Index,
    unlevel :: Maybe Flag,
    verbosity :: Maybe Index,
    what :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLeveling_Unified NotDefined)

instance Upcast (BedLeveling_Unified Required) GCodeCmd where
  upcast = Cmd_BedLeveling_Unified

instance ToText (BedLeveling_Unified Required) where
  toText r =
    mkCmd
      "G29"
      [ mkArg 'A' r.activate,
        mkArg 'B' r.businessCard,
        mkArg 'C' r.constant,
        mkArg 'D' r.disable,
        mkArg 'E' r.stowEach,
        mkArg 'F' r.fadeHeight,
        mkArg 'H' r.height,
        mkArg 'I' r.invalidate,
        mkArg 'J' r.grid,
        mkArg 'K' r.kompare,
        mkArg 'L' r.load,
        mkArg 'P' r.phase,
        mkArg 'Q' r.testPattern,
        mkArg 'R' r.repeat,
        mkArg 'S' r.save,
        mkArg 'T' r.topology,
        mkArg 'U' r.unlevel,
        mkArg 'V' r.verbosity,
        mkArg 'W' r.what,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Single Z-Probe (G30)
--- Docs: https://marlinfw.org/docs/gcode/G030.html
--------------------------------------------------------------------------------

data SingleZ_Probe (f :: Type -> Type)
  = SingleZ_Probe
  { temperatureCompensation :: Maybe Flag,
    engageEach :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (SingleZ_Probe NotDefined)

instance Upcast (SingleZ_Probe Required) GCodeCmd where
  upcast = Cmd_SingleZ_Probe

instance ToText (SingleZ_Probe Required) where
  toText r =
    mkCmd
      "G30"
      [ mkArg 'C' r.temperatureCompensation,
        mkArg 'E' r.engageEach,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Dock Sled (G31)
--- Docs: https://marlinfw.org/docs/gcode/G031.html
--------------------------------------------------------------------------------

data DockSled (f :: Type -> Type)
  = DockSled
  {}
  deriving (Generic)

instance Default (DockSled NotDefined)

instance Upcast (DockSled Required) GCodeCmd where
  upcast = Cmd_DockSled

instance ToText (DockSled Required) where
  toText r = mkCmd "G31" []

--------------------------------------------------------------------------------
--- Undock Sled (G32)
--- Docs: https://marlinfw.org/docs/gcode/G032.html
--------------------------------------------------------------------------------

data UndockSled (f :: Type -> Type)
  = UndockSled
  {}
  deriving (Generic)

instance Default (UndockSled NotDefined)

instance Upcast (UndockSled Required) GCodeCmd where
  upcast = Cmd_UndockSled

instance ToText (UndockSled Required) where
  toText r = mkCmd "G32" []

--------------------------------------------------------------------------------
--- Delta Auto Calibration (G33)
--- Docs: https://marlinfw.org/docs/gcode/G033.html
--------------------------------------------------------------------------------

data DeltaAutoCalibration (f :: Type -> Type)
  = DeltaAutoCalibration
  { precision :: Maybe Mm,
    engageEach :: Maybe Flag,
    iterations :: Maybe Count,
    probeOffsetRelative :: Maybe Flag,
    probePoints :: Maybe Index,
    reduceGrid :: Maybe Mm,
    saveSensorless :: Maybe Flag,
    disableTowerAngles :: Maybe Flag,
    verbosity :: Maybe Index,
    disableStallguardX :: Maybe Flag,
    disableStallguardY :: Maybe Flag,
    disableStallguardZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (DeltaAutoCalibration NotDefined)

instance Upcast (DeltaAutoCalibration Required) GCodeCmd where
  upcast = Cmd_DeltaAutoCalibration

instance ToText (DeltaAutoCalibration Required) where
  toText r =
    mkCmd
      "G33"
      [ mkArg 'C' r.precision,
        mkArg 'E' r.engageEach,
        mkArg 'F' r.iterations,
        mkArg 'O' r.probeOffsetRelative,
        mkArg 'P' r.probePoints,
        mkArg 'R' r.reduceGrid,
        mkArg 'S' r.saveSensorless,
        mkArg 'T' r.disableTowerAngles,
        mkArg 'V' r.verbosity,
        mkArg 'X' r.disableStallguardX,
        mkArg 'Y' r.disableStallguardY,
        mkArg 'Z' r.disableStallguardZ
      ]

--------------------------------------------------------------------------------
--- Z Steppers Auto-Alignment (G34)
--- Docs: https://marlinfw.org/docs/gcode/G034-zsaa.html
--------------------------------------------------------------------------------

data ZSteppersAuto_Alignment (f :: Type -> Type)
  = ZSteppersAuto_Alignment
  { amplification :: Maybe Mm,
    stowEach :: Maybe Flag,
    iterations :: Maybe Index,
    unlockAll :: Maybe Flag,
    recalculate :: Maybe Flag,
    lockState :: Maybe Flag,
    targetAccuracy :: Maybe Mm,
    stepper :: Maybe Index
  }
  deriving (Generic)

instance Default (ZSteppersAuto_Alignment NotDefined)

instance Upcast (ZSteppersAuto_Alignment Required) GCodeCmd where
  upcast = Cmd_ZSteppersAuto_Alignment

instance ToText (ZSteppersAuto_Alignment Required) where
  toText r =
    mkCmd
      "G34"
      [ mkArg 'A' r.amplification,
        mkArg 'E' r.stowEach,
        mkArg 'I' r.iterations,
        mkArg 'L' r.unlockAll,
        mkArg 'R' r.recalculate,
        mkArg 'S' r.lockState,
        mkArg 'T' r.targetAccuracy,
        mkArg 'Z' r.stepper
      ]

--------------------------------------------------------------------------------
--- Mechanical Gantry Calibration (G34)
--- Docs: https://marlinfw.org/docs/gcode/G034-mgc.html
--------------------------------------------------------------------------------

data MechanicalGantryCalibration (f :: Type -> Type)
  = MechanicalGantryCalibration
  { current :: Maybe Index,
    extraHeight :: Maybe Mm
  }
  deriving (Generic)

instance Default (MechanicalGantryCalibration NotDefined)

instance Upcast (MechanicalGantryCalibration Required) GCodeCmd where
  upcast = Cmd_MechanicalGantryCalibration

instance ToText (MechanicalGantryCalibration Required) where
  toText r =
    mkCmd
      "G34"
      [ mkArg 'S' r.current,
        mkArg 'Z' r.extraHeight
      ]

--------------------------------------------------------------------------------
--- Tramming Assistant (G35)
--- Docs: https://marlinfw.org/docs/gcode/G035.html
--------------------------------------------------------------------------------

data TrammingAssistant (f :: Type -> Type)
  = TrammingAssistant
  { screwThreadType :: Maybe Index
  }
  deriving (Generic)

instance Default (TrammingAssistant NotDefined)

instance Upcast (TrammingAssistant Required) GCodeCmd where
  upcast = Cmd_TrammingAssistant

instance ToText (TrammingAssistant Required) where
  toText r = mkCmd "G35" [mkArg 'S' r.screwThreadType]

--------------------------------------------------------------------------------
--- Probe Target (G38.2)
--- Docs: https://marlinfw.org/docs/gcode/G038.html
--------------------------------------------------------------------------------

data ProbeTarget_ErrorOnFail (f :: Type -> Type)
  = ProbeTarget_ErrorOnFail
  { feedrate :: Maybe MmPerMin,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (ProbeTarget_ErrorOnFail NotDefined)

instance Upcast (ProbeTarget_ErrorOnFail Required) GCodeCmd where
  upcast = Cmd_ProbeTarget_ErrorOnFail

instance ToText (ProbeTarget_ErrorOnFail Required) where
  toText r =
    mkCmd
      "G38.2"
      [ mkArg 'F' r.feedrate,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Probe Target (G38.3)
--- Docs: https://marlinfw.org/docs/gcode/G038.html
--------------------------------------------------------------------------------

data ProbeTarget_NoErrorOnFail (f :: Type -> Type)
  = ProbeTarget_NoErrorOnFail
  { feedrate :: Maybe MmPerMin,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (ProbeTarget_NoErrorOnFail NotDefined)

instance Upcast (ProbeTarget_NoErrorOnFail Required) GCodeCmd where
  upcast = Cmd_ProbeTarget_NoErrorOnFail

instance ToText (ProbeTarget_NoErrorOnFail Required) where
  toText r =
    mkCmd
      "G38.3"
      [ mkArg 'F' r.feedrate,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Probe Target (G38.4)
--- Docs: https://marlinfw.org/docs/gcode/G038.html
--------------------------------------------------------------------------------

data ProbeTarget_AwayErrorOnFail (f :: Type -> Type)
  = ProbeTarget_AwayErrorOnFail
  { feedrate :: Maybe MmPerMin,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (ProbeTarget_AwayErrorOnFail NotDefined)

instance Upcast (ProbeTarget_AwayErrorOnFail Required) GCodeCmd where
  upcast = Cmd_ProbeTarget_AwayErrorOnFail

instance ToText (ProbeTarget_AwayErrorOnFail Required) where
  toText r =
    mkCmd
      "G38.4"
      [ mkArg 'F' r.feedrate,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Probe Target (G38.5)
--- Docs: https://marlinfw.org/docs/gcode/G038.html
--------------------------------------------------------------------------------

data ProbeTarget_AwayNoErrorOnFail (f :: Type -> Type)
  = ProbeTarget_AwayNoErrorOnFail
  { feedrate :: Maybe MmPerMin,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (ProbeTarget_AwayNoErrorOnFail NotDefined)

instance Upcast (ProbeTarget_AwayNoErrorOnFail Required) GCodeCmd where
  upcast = Cmd_ProbeTarget_AwayNoErrorOnFail

instance ToText (ProbeTarget_AwayNoErrorOnFail Required) where
  toText r =
    mkCmd
      "G38.5"
      [ mkArg 'F' r.feedrate,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Move to Mesh Coordinate (G42)
--- Docs: https://marlinfw.org/docs/gcode/G042.html
--------------------------------------------------------------------------------

data MovetoMeshCoordinate (f :: Type -> Type)
  = MovetoMeshCoordinate
  { feedrate :: Maybe MmPerMin,
    meshColumn :: Maybe Index,
    meshRow :: Maybe Index,
    moveProbe :: Maybe Flag
  }
  deriving (Generic)

instance Default (MovetoMeshCoordinate NotDefined)

instance Upcast (MovetoMeshCoordinate Required) GCodeCmd where
  upcast = Cmd_MovetoMeshCoordinate

instance ToText (MovetoMeshCoordinate Required) where
  toText r =
    mkCmd
      "G42"
      [ mkArg 'F' r.feedrate,
        mkArg 'I' r.meshColumn,
        mkArg 'J' r.meshRow,
        mkArg 'P' r.moveProbe
      ]

--------------------------------------------------------------------------------
--- Move in Machine Coordinates (G53)
--- Docs: https://marlinfw.org/docs/gcode/G053.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data MoveinMachineCoordinates (f :: Type -> Type)
  = MoveinMachineCoordinates
  {}
  deriving (Generic)

instance Default (MoveinMachineCoordinates NotDefined)

instance Upcast (MoveinMachineCoordinates Required) GCodeCmd where
  upcast = Cmd_MoveinMachineCoordinates

instance ToText (MoveinMachineCoordinates Required) where
  toText r = mkCmd "G53" []

--------------------------------------------------------------------------------
--- Select Workspace (G54)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace1 (f :: Type -> Type)
  = SelectWorkspace_Workspace1
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace1 NotDefined)

instance Upcast (SelectWorkspace_Workspace1 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace1

instance ToText (SelectWorkspace_Workspace1 Required) where
  toText r = mkCmd "G54" []

--------------------------------------------------------------------------------
--- Select Workspace (G55)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace2 (f :: Type -> Type)
  = SelectWorkspace_Workspace2
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace2 NotDefined)

instance Upcast (SelectWorkspace_Workspace2 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace2

instance ToText (SelectWorkspace_Workspace2 Required) where
  toText r = mkCmd "G55" []

--------------------------------------------------------------------------------
--- Select Workspace (G56)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace3 (f :: Type -> Type)
  = SelectWorkspace_Workspace3
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace3 NotDefined)

instance Upcast (SelectWorkspace_Workspace3 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace3

instance ToText (SelectWorkspace_Workspace3 Required) where
  toText r = mkCmd "G56" []

--------------------------------------------------------------------------------
--- Select Workspace (G57)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace4 (f :: Type -> Type)
  = SelectWorkspace_Workspace4
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace4 NotDefined)

instance Upcast (SelectWorkspace_Workspace4 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace4

instance ToText (SelectWorkspace_Workspace4 Required) where
  toText r = mkCmd "G57" []

--------------------------------------------------------------------------------
--- Select Workspace (G58)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace5 (f :: Type -> Type)
  = SelectWorkspace_Workspace5
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace5 NotDefined)

instance Upcast (SelectWorkspace_Workspace5 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace5

instance ToText (SelectWorkspace_Workspace5 Required) where
  toText r = mkCmd "G58" []

--------------------------------------------------------------------------------
--- Select Workspace (G59)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace6 (f :: Type -> Type)
  = SelectWorkspace_Workspace6
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace6 NotDefined)

instance Upcast (SelectWorkspace_Workspace6 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace6

instance ToText (SelectWorkspace_Workspace6 Required) where
  toText r = mkCmd "G59" []

--------------------------------------------------------------------------------
--- Select Workspace (G59.1)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace7 (f :: Type -> Type)
  = SelectWorkspace_Workspace7
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace7 NotDefined)

instance Upcast (SelectWorkspace_Workspace7 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace7

instance ToText (SelectWorkspace_Workspace7 Required) where
  toText r = mkCmd "G59.1" []

--------------------------------------------------------------------------------
--- Select Workspace (G59.2)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace8 (f :: Type -> Type)
  = SelectWorkspace_Workspace8
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace8 NotDefined)

instance Upcast (SelectWorkspace_Workspace8 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace8

instance ToText (SelectWorkspace_Workspace8 Required) where
  toText r = mkCmd "G59.2" []

--------------------------------------------------------------------------------
--- Select Workspace (G59.3)
--- Docs: https://marlinfw.org/docs/gcode/G054-G059.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SelectWorkspace_Workspace9 (f :: Type -> Type)
  = SelectWorkspace_Workspace9
  {}
  deriving (Generic)

instance Default (SelectWorkspace_Workspace9 NotDefined)

instance Upcast (SelectWorkspace_Workspace9 Required) GCodeCmd where
  upcast = Cmd_SelectWorkspace_Workspace9

instance ToText (SelectWorkspace_Workspace9 Required) where
  toText r = mkCmd "G59.3" []

--------------------------------------------------------------------------------
--- Stored Positions (G60)
--- Docs: https://marlinfw.org/docs/gcode/G060.html
--------------------------------------------------------------------------------

data StoredPositions (f :: Type -> Type)
  = StoredPositions
  { deleteSlot :: Maybe Index,
    restoreE :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    restoreSlot :: Maybe Index,
    saveSlot :: Maybe Index,
    restoreX :: Maybe Mm,
    restoreY :: Maybe Mm,
    restoreZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (StoredPositions NotDefined)

instance Upcast (StoredPositions Required) GCodeCmd where
  upcast = Cmd_StoredPositions

instance ToText (StoredPositions Required) where
  toText r =
    mkCmd
      "G60"
      [ mkArg 'D' r.deleteSlot,
        mkArg 'E' r.restoreE,
        mkArg 'F' r.feedrate,
        mkArg 'Q' r.restoreSlot,
        mkArg 'S' r.saveSlot,
        mkArg 'X' r.restoreX,
        mkArg 'Y' r.restoreY,
        mkArg 'Z' r.restoreZ
      ]

--------------------------------------------------------------------------------
--- Return to Saved Position (G61)
--- Docs: https://marlinfw.org/docs/gcode/G061.html
--------------------------------------------------------------------------------

data ReturntoSavedPosition (f :: Type -> Type)
  = ReturntoSavedPosition
  { restoreE :: Maybe Mm,
    feedrate :: Maybe MmPerMin,
    slot :: Maybe Index,
    restoreX :: Maybe Mm,
    restoreY :: Maybe Mm,
    restoreZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (ReturntoSavedPosition NotDefined)

instance Upcast (ReturntoSavedPosition Required) GCodeCmd where
  upcast = Cmd_ReturntoSavedPosition

instance ToText (ReturntoSavedPosition Required) where
  toText r =
    mkCmd
      "G61"
      [ mkArg 'E' r.restoreE,
        mkArg 'F' r.feedrate,
        mkArg 'S' r.slot,
        mkArg 'X' r.restoreX,
        mkArg 'Y' r.restoreY,
        mkArg 'Z' r.restoreZ
      ]

--------------------------------------------------------------------------------
--- Probe Temperature Calibration (G76)
--- Docs: https://marlinfw.org/docs/gcode/G076.html
--------------------------------------------------------------------------------

data ProbeTemperatureCalibration (f :: Type -> Type)
  = ProbeTemperatureCalibration
  { calibrateBed :: Maybe Flag,
    calibrateProbe :: Maybe Flag
  }
  deriving (Generic)

instance Default (ProbeTemperatureCalibration NotDefined)

instance Upcast (ProbeTemperatureCalibration Required) GCodeCmd where
  upcast = Cmd_ProbeTemperatureCalibration

instance ToText (ProbeTemperatureCalibration Required) where
  toText r =
    mkCmd
      "G76"
      [ mkArg 'B' r.calibrateBed,
        mkArg 'P' r.calibrateProbe
      ]

--------------------------------------------------------------------------------
--- Cancel Current Motion Mode (G80)
--- Docs: https://marlinfw.org/docs/gcode/G080.html
--------------------------------------------------------------------------------

data CancelCurrentMotionMode (f :: Type -> Type)
  = CancelCurrentMotionMode
  {}
  deriving (Generic)

instance Default (CancelCurrentMotionMode NotDefined)

instance Upcast (CancelCurrentMotionMode Required) GCodeCmd where
  upcast = Cmd_CancelCurrentMotionMode

instance ToText (CancelCurrentMotionMode Required) where
  toText r = mkCmd "G80" []

--------------------------------------------------------------------------------
--- Absolute Positioning (G90)
--- Docs: https://marlinfw.org/docs/gcode/G090.html
--------------------------------------------------------------------------------

data AbsolutePositioning (f :: Type -> Type)
  = AbsolutePositioning
  {}
  deriving (Generic)

instance Default (AbsolutePositioning NotDefined)

instance Upcast (AbsolutePositioning Required) GCodeCmd where
  upcast = Cmd_AbsolutePositioning

instance ToText (AbsolutePositioning Required) where
  toText r = mkCmd "G90" []

--------------------------------------------------------------------------------
--- Relative Positioning (G91)
--- Docs: https://marlinfw.org/docs/gcode/G091.html
--------------------------------------------------------------------------------

data RelativePositioning (f :: Type -> Type)
  = RelativePositioning
  {}
  deriving (Generic)

instance Default (RelativePositioning NotDefined)

instance Upcast (RelativePositioning Required) GCodeCmd where
  upcast = Cmd_RelativePositioning

instance ToText (RelativePositioning Required) where
  toText r = mkCmd "G91" []

--------------------------------------------------------------------------------
--- Set Position (G92)
--- Docs: https://marlinfw.org/docs/gcode/G092.html
--------------------------------------------------------------------------------

data SetPosition (f :: Type -> Type)
  = SetPosition
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetPosition NotDefined)

instance Upcast (SetPosition Required) GCodeCmd where
  upcast = Cmd_SetPosition

instance ToText (SetPosition Required) where
  toText r =
    mkCmd
      "G92"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Backlash Calibration (G425)
--- Docs: https://marlinfw.org/docs/gcode/G425.html
--------------------------------------------------------------------------------

data BacklashCalibration (f :: Type -> Type)
  = BacklashCalibration
  { backlashOnly :: Maybe Flag,
    toolheadIndex :: Maybe Index,
    uncertainty :: Maybe Mm,
    report :: Maybe Flag
  }
  deriving (Generic)

instance Default (BacklashCalibration NotDefined)

instance Upcast (BacklashCalibration Required) GCodeCmd where
  upcast = Cmd_BacklashCalibration

instance ToText (BacklashCalibration Required) where
  toText r =
    mkCmd
      "G425"
      [ mkArg 'B' r.backlashOnly,
        mkArg 'T' r.toolheadIndex,
        mkArg 'U' r.uncertainty,
        mkArg 'V' r.report
      ]

--------------------------------------------------------------------------------
--- Unconditional Stop (M0)
--- Docs: https://marlinfw.org/docs/gcode/M000-M001.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data UnconditionalStop (f :: Type -> Type)
  = UnconditionalStop
  { expireMilliseconds :: Maybe Milliseconds,
    expireSeconds :: Maybe Seconds
  }
  deriving (Generic)

instance Default (UnconditionalStop NotDefined)

instance Upcast (UnconditionalStop Required) GCodeCmd where
  upcast = Cmd_UnconditionalStop

instance ToText (UnconditionalStop Required) where
  toText r =
    mkCmd
      "M0"
      [ mkArg 'P' r.expireMilliseconds,
        mkArg 'S' r.expireSeconds
      ]

--------------------------------------------------------------------------------
--- Spindle CW / Laser On (M3)
--- Docs: https://marlinfw.org/docs/gcode/M003.html
--------------------------------------------------------------------------------

data SpindleCW_LaserOn (f :: Type -> Type)
  = SpindleCW_LaserOn
  { inlineMode :: Maybe Flag,
    powerPWM :: Maybe Index,
    power :: Maybe Index
  }
  deriving (Generic)

instance Default (SpindleCW_LaserOn NotDefined)

instance Upcast (SpindleCW_LaserOn Required) GCodeCmd where
  upcast = Cmd_SpindleCW_LaserOn

instance ToText (SpindleCW_LaserOn Required) where
  toText r =
    mkCmd
      "M3"
      [ mkArg 'I' r.inlineMode,
        mkArg 'O' r.powerPWM,
        mkArg 'S' r.power
      ]

--------------------------------------------------------------------------------
--- Spindle CCW / Laser On (M4)
--- Docs: https://marlinfw.org/docs/gcode/M004.html
--------------------------------------------------------------------------------

data SpindleCCW_LaserOn (f :: Type -> Type)
  = SpindleCCW_LaserOn
  { inlineMode :: Maybe Flag,
    powerPWM :: Maybe Index,
    power :: Maybe Index
  }
  deriving (Generic)

instance Default (SpindleCCW_LaserOn NotDefined)

instance Upcast (SpindleCCW_LaserOn Required) GCodeCmd where
  upcast = Cmd_SpindleCCW_LaserOn

instance ToText (SpindleCCW_LaserOn Required) where
  toText r =
    mkCmd
      "M4"
      [ mkArg 'I' r.inlineMode,
        mkArg 'O' r.powerPWM,
        mkArg 'S' r.power
      ]

--------------------------------------------------------------------------------
--- Spindle / Laser Off (M5)
--- Docs: https://marlinfw.org/docs/gcode/M005.html
--------------------------------------------------------------------------------

data Spindle_LaserOff (f :: Type -> Type)
  = Spindle_LaserOff
  {}
  deriving (Generic)

instance Default (Spindle_LaserOff NotDefined)

instance Upcast (Spindle_LaserOff Required) GCodeCmd where
  upcast = Cmd_Spindle_LaserOff

instance ToText (Spindle_LaserOff Required) where
  toText r = mkCmd "M5" []

--------------------------------------------------------------------------------
--- Coolant Controls (M7)
--- Docs: https://marlinfw.org/docs/gcode/M007-M009.html
--------------------------------------------------------------------------------

data CoolantControls_Mist (f :: Type -> Type)
  = CoolantControls_Mist
  {}
  deriving (Generic)

instance Default (CoolantControls_Mist NotDefined)

instance Upcast (CoolantControls_Mist Required) GCodeCmd where
  upcast = Cmd_CoolantControls_Mist

instance ToText (CoolantControls_Mist Required) where
  toText r = mkCmd "M7" []

--------------------------------------------------------------------------------
--- Coolant Controls (M8)
--- Docs: https://marlinfw.org/docs/gcode/M007-M009.html
--------------------------------------------------------------------------------

data CoolantControls_Flood (f :: Type -> Type)
  = CoolantControls_Flood
  {}
  deriving (Generic)

instance Default (CoolantControls_Flood NotDefined)

instance Upcast (CoolantControls_Flood Required) GCodeCmd where
  upcast = Cmd_CoolantControls_Flood

instance ToText (CoolantControls_Flood Required) where
  toText r = mkCmd "M8" []

--------------------------------------------------------------------------------
--- Coolant Controls (M9)
--- Docs: https://marlinfw.org/docs/gcode/M007-M009.html
--------------------------------------------------------------------------------

data CoolantControls_Off (f :: Type -> Type)
  = CoolantControls_Off
  {}
  deriving (Generic)

instance Default (CoolantControls_Off NotDefined)

instance Upcast (CoolantControls_Off Required) GCodeCmd where
  upcast = Cmd_CoolantControls_Off

instance ToText (CoolantControls_Off Required) where
  toText r = mkCmd "M9" []

--------------------------------------------------------------------------------
--- Vacuum / Blower Control (M10)
--- Docs: https://marlinfw.org/docs/gcode/M010-M011.html
--------------------------------------------------------------------------------

data Vacuum_BlowerControl_On (f :: Type -> Type)
  = Vacuum_BlowerControl_On
  {}
  deriving (Generic)

instance Default (Vacuum_BlowerControl_On NotDefined)

instance Upcast (Vacuum_BlowerControl_On Required) GCodeCmd where
  upcast = Cmd_Vacuum_BlowerControl_On

instance ToText (Vacuum_BlowerControl_On Required) where
  toText r = mkCmd "M10" []

--------------------------------------------------------------------------------
--- Vacuum / Blower Control (M11)
--- Docs: https://marlinfw.org/docs/gcode/M010-M011.html
--------------------------------------------------------------------------------

data Vacuum_BlowerControl_Off (f :: Type -> Type)
  = Vacuum_BlowerControl_Off
  {}
  deriving (Generic)

instance Default (Vacuum_BlowerControl_Off NotDefined)

instance Upcast (Vacuum_BlowerControl_Off Required) GCodeCmd where
  upcast = Cmd_Vacuum_BlowerControl_Off

instance ToText (Vacuum_BlowerControl_Off Required) where
  toText r = mkCmd "M11" []

--------------------------------------------------------------------------------
--- Expected Printer Check (M16)
--- Docs: https://marlinfw.org/docs/gcode/M016.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ExpectedPrinterCheck (f :: Type -> Type)
  = ExpectedPrinterCheck
  {}
  deriving (Generic)

instance Default (ExpectedPrinterCheck NotDefined)

instance Upcast (ExpectedPrinterCheck Required) GCodeCmd where
  upcast = Cmd_ExpectedPrinterCheck

instance ToText (ExpectedPrinterCheck Required) where
  toText r = mkCmd "M16" []

--------------------------------------------------------------------------------
--- Enable Steppers (M17)
--- Docs: https://marlinfw.org/docs/gcode/M017.html
--------------------------------------------------------------------------------

data EnableSteppers (f :: Type -> Type)
  = EnableSteppers
  { axisA :: Maybe Flag,
    axisB :: Maybe Flag,
    axisC :: Maybe Flag,
    axisExtrusion :: Maybe Flag,
    axisU :: Maybe Flag,
    axisV :: Maybe Flag,
    axisW :: Maybe Flag,
    axisX :: Maybe Flag,
    axisY :: Maybe Flag,
    axisZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (EnableSteppers NotDefined)

instance Upcast (EnableSteppers Required) GCodeCmd where
  upcast = Cmd_EnableSteppers

instance ToText (EnableSteppers Required) where
  toText r =
    mkCmd
      "M17"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Disable Steppers (M18)
--- Docs: https://marlinfw.org/docs/gcode/M018.html
--------------------------------------------------------------------------------

data DisableSteppers (f :: Type -> Type)
  = DisableSteppers
  { axisA :: Maybe Flag,
    axisB :: Maybe Flag,
    axisC :: Maybe Flag,
    axisExtrusion :: Maybe Flag,
    timeoutSeconds :: Maybe Seconds,
    axisU :: Maybe Flag,
    axisV :: Maybe Flag,
    axisW :: Maybe Flag,
    axisX :: Maybe Flag,
    axisY :: Maybe Flag,
    axisZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (DisableSteppers NotDefined)

instance Upcast (DisableSteppers Required) GCodeCmd where
  upcast = Cmd_DisableSteppers

instance ToText (DisableSteppers Required) where
  toText r =
    mkCmd
      "M18"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'S' r.timeoutSeconds,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- List SD Card (M20)
--- Docs: https://marlinfw.org/docs/gcode/M020.html
--------------------------------------------------------------------------------

data ListSDCard (f :: Type -> Type)
  = ListSDCard
  { binFilesOnly :: Maybe Flag,
    longFilenames :: Maybe Flag,
    timestamp :: Maybe Flag
  }
  deriving (Generic)

instance Default (ListSDCard NotDefined)

instance Upcast (ListSDCard Required) GCodeCmd where
  upcast = Cmd_ListSDCard

instance ToText (ListSDCard Required) where
  toText r =
    mkCmd
      "M20"
      [ mkArg 'F' r.binFilesOnly,
        mkArg 'L' r.longFilenames,
        mkArg 'T' r.timestamp
      ]

--------------------------------------------------------------------------------
--- Init SD Card (M21)
--- Docs: https://marlinfw.org/docs/gcode/M021.html
--------------------------------------------------------------------------------

data InitSDCard (f :: Type -> Type)
  = InitSDCard
  {}
  deriving (Generic)

instance Default (InitSDCard NotDefined)

instance Upcast (InitSDCard Required) GCodeCmd where
  upcast = Cmd_InitSDCard

instance ToText (InitSDCard Required) where
  toText r = mkCmd "M21" []

--------------------------------------------------------------------------------
--- Release SD Card (M22)
--- Docs: https://marlinfw.org/docs/gcode/M022.html
--------------------------------------------------------------------------------

data ReleaseSDCard (f :: Type -> Type)
  = ReleaseSDCard
  {}
  deriving (Generic)

instance Default (ReleaseSDCard NotDefined)

instance Upcast (ReleaseSDCard Required) GCodeCmd where
  upcast = Cmd_ReleaseSDCard

instance ToText (ReleaseSDCard Required) where
  toText r = mkCmd "M22" []

--------------------------------------------------------------------------------
--- Select SD File (M23)
--- Docs: https://marlinfw.org/docs/gcode/M023.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SelectSDFile (f :: Type -> Type)
  = SelectSDFile
  {}
  deriving (Generic)

instance Default (SelectSDFile NotDefined)

instance Upcast (SelectSDFile Required) GCodeCmd where
  upcast = Cmd_SelectSDFile

instance ToText (SelectSDFile Required) where
  toText r = mkCmd "M23" []

--------------------------------------------------------------------------------
--- Start or Resume SD Print (M24)
--- Docs: https://marlinfw.org/docs/gcode/M024.html
--------------------------------------------------------------------------------

data StartorResumeSDPrint (f :: Type -> Type)
  = StartorResumeSDPrint
  { resumePosition :: Maybe Count,
    elapsedTime :: Maybe Count
  }
  deriving (Generic)

instance Default (StartorResumeSDPrint NotDefined)

instance Upcast (StartorResumeSDPrint Required) GCodeCmd where
  upcast = Cmd_StartorResumeSDPrint

instance ToText (StartorResumeSDPrint Required) where
  toText r =
    mkCmd
      "M24"
      [ mkArg 'S' r.resumePosition,
        mkArg 'T' r.elapsedTime
      ]

--------------------------------------------------------------------------------
--- Pause SD Print (M25)
--- Docs: https://marlinfw.org/docs/gcode/M025.html
--------------------------------------------------------------------------------

data PauseSDPrint (f :: Type -> Type)
  = PauseSDPrint
  {}
  deriving (Generic)

instance Default (PauseSDPrint NotDefined)

instance Upcast (PauseSDPrint Required) GCodeCmd where
  upcast = Cmd_PauseSDPrint

instance ToText (PauseSDPrint Required) where
  toText r = mkCmd "M25" []

--------------------------------------------------------------------------------
--- Set SD Position (M26)
--- Docs: https://marlinfw.org/docs/gcode/M026.html
--------------------------------------------------------------------------------

data SetSDPosition (f :: Type -> Type)
  = SetSDPosition
  { position :: Maybe Count
  }
  deriving (Generic)

instance Default (SetSDPosition NotDefined)

instance Upcast (SetSDPosition Required) GCodeCmd where
  upcast = Cmd_SetSDPosition

instance ToText (SetSDPosition Required) where
  toText r = mkCmd "M26" [mkArg 'S' r.position]

--------------------------------------------------------------------------------
--- Report SD Print Status (M27)
--- Docs: https://marlinfw.org/docs/gcode/M027.html
--------------------------------------------------------------------------------

data ReportSDPrintStatus (f :: Type -> Type)
  = ReportSDPrintStatus
  { reportFilename :: Maybe Flag,
    autoReportInterval :: Maybe Seconds
  }
  deriving (Generic)

instance Default (ReportSDPrintStatus NotDefined)

instance Upcast (ReportSDPrintStatus Required) GCodeCmd where
  upcast = Cmd_ReportSDPrintStatus

instance ToText (ReportSDPrintStatus Required) where
  toText r =
    mkCmd
      "M27"
      [ mkArg 'C' r.reportFilename,
        mkArg 'S' r.autoReportInterval
      ]

--------------------------------------------------------------------------------
--- Start SD Write (M28)
--- Docs: https://marlinfw.org/docs/gcode/M028.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data StartSDWrite (f :: Type -> Type)
  = StartSDWrite
  {}
  deriving (Generic)

instance Default (StartSDWrite NotDefined)

instance Upcast (StartSDWrite Required) GCodeCmd where
  upcast = Cmd_StartSDWrite

instance ToText (StartSDWrite Required) where
  toText r = mkCmd "M28" []

--------------------------------------------------------------------------------
--- Stop SD Write (M29)
--- Docs: https://marlinfw.org/docs/gcode/M029.html
--------------------------------------------------------------------------------

data StopSDWrite (f :: Type -> Type)
  = StopSDWrite
  {}
  deriving (Generic)

instance Default (StopSDWrite NotDefined)

instance Upcast (StopSDWrite Required) GCodeCmd where
  upcast = Cmd_StopSDWrite

instance ToText (StopSDWrite Required) where
  toText r = mkCmd "M29" []

--------------------------------------------------------------------------------
--- Delete SD File (M30)
--- Docs: https://marlinfw.org/docs/gcode/M030.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data DeleteSDFile (f :: Type -> Type)
  = DeleteSDFile
  {}
  deriving (Generic)

instance Default (DeleteSDFile NotDefined)

instance Upcast (DeleteSDFile Required) GCodeCmd where
  upcast = Cmd_DeleteSDFile

instance ToText (DeleteSDFile Required) where
  toText r = mkCmd "M30" []

--------------------------------------------------------------------------------
--- Report Print Time (M31)
--- Docs: https://marlinfw.org/docs/gcode/M031.html
--------------------------------------------------------------------------------

data ReportPrintTime (f :: Type -> Type)
  = ReportPrintTime
  {}
  deriving (Generic)

instance Default (ReportPrintTime NotDefined)

instance Upcast (ReportPrintTime Required) GCodeCmd where
  upcast = Cmd_ReportPrintTime

instance ToText (ReportPrintTime Required) where
  toText r = mkCmd "M31" []

--------------------------------------------------------------------------------
--- Select and Start (M32)
--- Docs: https://marlinfw.org/docs/gcode/M032.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SelectandStart (f :: Type -> Type)
  = SelectandStart
  {}
  deriving (Generic)

instance Default (SelectandStart NotDefined)

instance Upcast (SelectandStart Required) GCodeCmd where
  upcast = Cmd_SelectandStart

instance ToText (SelectandStart Required) where
  toText r = mkCmd "M32" []

--------------------------------------------------------------------------------
--- Get Long Path (M33)
--- Docs: https://marlinfw.org/docs/gcode/M033.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data GetLongPath (f :: Type -> Type)
  = GetLongPath
  {}
  deriving (Generic)

instance Default (GetLongPath NotDefined)

instance Upcast (GetLongPath Required) GCodeCmd where
  upcast = Cmd_GetLongPath

instance ToText (GetLongPath Required) where
  toText r = mkCmd "M33" []

--------------------------------------------------------------------------------
--- SDCard Sorting (M34)
--- Docs: https://marlinfw.org/docs/gcode/M034.html
--------------------------------------------------------------------------------

data SDCardSorting (f :: Type -> Type)
  = SDCardSorting
  { folderSorting :: Maybe Index,
    sortingOrder :: Maybe Index
  }
  deriving (Generic)

instance Default (SDCardSorting NotDefined)

instance Upcast (SDCardSorting Required) GCodeCmd where
  upcast = Cmd_SDCardSorting

instance ToText (SDCardSorting Required) where
  toText r =
    mkCmd
      "M34"
      [ mkArg 'F' r.folderSorting,
        mkArg 'S' r.sortingOrder
      ]

--------------------------------------------------------------------------------
--- Set Pin State (M42)
--- Docs: https://marlinfw.org/docs/gcode/M042.html
--------------------------------------------------------------------------------

data SetPinState (f :: Type -> Type)
  = SetPinState
  { ignoreProtection :: Maybe Flag,
    pin :: Maybe Index,
    state :: f Index,
    pinMode :: Maybe Index
  }
  deriving (Generic)

instance Default (SetPinState NotDefined)

instance Upcast (SetPinState Required) GCodeCmd where
  upcast = Cmd_SetPinState

instance ToText (SetPinState Required) where
  toText r =
    mkCmd
      "M42"
      [ mkArg 'I' r.ignoreProtection,
        mkArg 'P' r.pin,
        mkReqArg 'S' r.state,
        mkArg 'T' r.pinMode
      ]

--------------------------------------------------------------------------------
--- Pins Debugging (M43)
--- Docs: https://marlinfw.org/docs/gcode/M043.html
--------------------------------------------------------------------------------

data PinsDebugging (f :: Type -> Type)
  = PinsDebugging
  { watchEndstops :: Maybe Flag,
    ignoreProtection :: Maybe Flag,
    pin :: Maybe Index,
    testProbe :: Maybe Flag,
    togglePins :: Maybe Flag,
    watchPins :: Maybe Flag
  }
  deriving (Generic)

instance Default (PinsDebugging NotDefined)

instance Upcast (PinsDebugging Required) GCodeCmd where
  upcast = Cmd_PinsDebugging

instance ToText (PinsDebugging Required) where
  toText r =
    mkCmd
      "M43"
      [ mkArg 'E' r.watchEndstops,
        mkArg 'I' r.ignoreProtection,
        mkArg 'P' r.pin,
        mkArg 'S' r.testProbe,
        mkArg 'T' r.togglePins,
        mkArg 'W' r.watchPins
      ]

--------------------------------------------------------------------------------
--- Toggle Pins (M43 T)
--- Docs: https://marlinfw.org/docs/gcode/M043-T.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TogglePins (f :: Type -> Type)
  = TogglePins
  {}
  deriving (Generic)

instance Default (TogglePins NotDefined)

instance Upcast (TogglePins Required) GCodeCmd where
  upcast = Cmd_TogglePins

instance ToText (TogglePins Required) where
  toText r = mkCmd "M43 T" []

--------------------------------------------------------------------------------
--- Probe Repeatability Test (M48)
--- Docs: https://marlinfw.org/docs/gcode/M048.html
--------------------------------------------------------------------------------

data ProbeRepeatabilityTest (f :: Type -> Type)
  = ProbeRepeatabilityTest
  { temperatureCompensation :: Maybe Flag,
    engageEach :: Maybe Flag,
    legs :: Maybe Count,
    probeCount :: Maybe Count,
    starPattern :: Maybe Index,
    verbosity :: Maybe Index,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (ProbeRepeatabilityTest NotDefined)

instance Upcast (ProbeRepeatabilityTest Required) GCodeCmd where
  upcast = Cmd_ProbeRepeatabilityTest

instance ToText (ProbeRepeatabilityTest Required) where
  toText r =
    mkCmd
      "M48"
      [ mkArg 'C' r.temperatureCompensation,
        mkArg 'E' r.engageEach,
        mkArg 'L' r.legs,
        mkArg 'P' r.probeCount,
        mkArg 'S' r.starPattern,
        mkArg 'V' r.verbosity,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- Set Print Progress (M73)
--- Docs: https://marlinfw.org/docs/gcode/M073.html
--------------------------------------------------------------------------------

data SetPrintProgress (f :: Type -> Type)
  = SetPrintProgress
  { interactionCountdown :: Maybe Count,
    progressPercent :: Maybe Index,
    remainingTime :: Maybe Count
  }
  deriving (Generic)

instance Default (SetPrintProgress NotDefined)

instance Upcast (SetPrintProgress Required) GCodeCmd where
  upcast = Cmd_SetPrintProgress

instance ToText (SetPrintProgress Required) where
  toText r =
    mkCmd
      "M73"
      [ mkArg 'C' r.interactionCountdown,
        mkArg 'P' r.progressPercent,
        mkArg 'R' r.remainingTime
      ]

--------------------------------------------------------------------------------
--- Start Print Job Timer (M75)
--- Docs: https://marlinfw.org/docs/gcode/M075.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data StartPrintJobTimer (f :: Type -> Type)
  = StartPrintJobTimer
  {}
  deriving (Generic)

instance Default (StartPrintJobTimer NotDefined)

instance Upcast (StartPrintJobTimer Required) GCodeCmd where
  upcast = Cmd_StartPrintJobTimer

instance ToText (StartPrintJobTimer Required) where
  toText r = mkCmd "M75" []

--------------------------------------------------------------------------------
--- Pause Print Job Timer (M76)
--- Docs: https://marlinfw.org/docs/gcode/M076.html
--------------------------------------------------------------------------------

data PausePrintJobTimer (f :: Type -> Type)
  = PausePrintJobTimer
  {}
  deriving (Generic)

instance Default (PausePrintJobTimer NotDefined)

instance Upcast (PausePrintJobTimer Required) GCodeCmd where
  upcast = Cmd_PausePrintJobTimer

instance ToText (PausePrintJobTimer Required) where
  toText r = mkCmd "M76" []

--------------------------------------------------------------------------------
--- Stop Print Job Timer (M77)
--- Docs: https://marlinfw.org/docs/gcode/M077.html
--------------------------------------------------------------------------------

data StopPrintJobTimer (f :: Type -> Type)
  = StopPrintJobTimer
  {}
  deriving (Generic)

instance Default (StopPrintJobTimer NotDefined)

instance Upcast (StopPrintJobTimer Required) GCodeCmd where
  upcast = Cmd_StopPrintJobTimer

instance ToText (StopPrintJobTimer Required) where
  toText r = mkCmd "M77" []

--------------------------------------------------------------------------------
--- Print Job Stats (M78)
--- Docs: https://marlinfw.org/docs/gcode/M078.html
--------------------------------------------------------------------------------

data PrintJobStats (f :: Type -> Type)
  = PrintJobStats
  {}
  deriving (Generic)

instance Default (PrintJobStats NotDefined)

instance Upcast (PrintJobStats Required) GCodeCmd where
  upcast = Cmd_PrintJobStats

instance ToText (PrintJobStats Required) where
  toText r = mkCmd "M78" []

--------------------------------------------------------------------------------
--- Power On (M80)
--- Docs: https://marlinfw.org/docs/gcode/M080.html
--------------------------------------------------------------------------------

data PowerOn (f :: Type -> Type)
  = PowerOn
  { reportState :: Maybe Flag
  }
  deriving (Generic)

instance Default (PowerOn NotDefined)

instance Upcast (PowerOn Required) GCodeCmd where
  upcast = Cmd_PowerOn

instance ToText (PowerOn Required) where
  toText r = mkCmd "M80" [mkArg 'S' r.reportState]

--------------------------------------------------------------------------------
--- Power Off (M81)
--- Docs: https://marlinfw.org/docs/gcode/M081.html
--------------------------------------------------------------------------------

data PowerOff (f :: Type -> Type)
  = PowerOff
  {}
  deriving (Generic)

instance Default (PowerOff NotDefined)

instance Upcast (PowerOff Required) GCodeCmd where
  upcast = Cmd_PowerOff

instance ToText (PowerOff Required) where
  toText r = mkCmd "M81" []

--------------------------------------------------------------------------------
--- E Absolute (M82)
--- Docs: https://marlinfw.org/docs/gcode/M082.html
--------------------------------------------------------------------------------

data EAbsolute (f :: Type -> Type)
  = EAbsolute
  {}
  deriving (Generic)

instance Default (EAbsolute NotDefined)

instance Upcast (EAbsolute Required) GCodeCmd where
  upcast = Cmd_EAbsolute

instance ToText (EAbsolute Required) where
  toText r = mkCmd "M82" []

--------------------------------------------------------------------------------
--- E Relative (M83)
--- Docs: https://marlinfw.org/docs/gcode/M083.html
--------------------------------------------------------------------------------

data ERelative (f :: Type -> Type)
  = ERelative
  {}
  deriving (Generic)

instance Default (ERelative NotDefined)

instance Upcast (ERelative Required) GCodeCmd where
  upcast = Cmd_ERelative

instance ToText (ERelative Required) where
  toText r = mkCmd "M83" []

--------------------------------------------------------------------------------
--- Inactivity Shutdown (M85)
--- Docs: https://marlinfw.org/docs/gcode/M085.html
--------------------------------------------------------------------------------

data InactivityShutdown (f :: Type -> Type)
  = InactivityShutdown
  { maxInactiveSeconds :: f Seconds
  }
  deriving (Generic)

instance Default (InactivityShutdown NotDefined)

instance Upcast (InactivityShutdown Required) GCodeCmd where
  upcast = Cmd_InactivityShutdown

instance ToText (InactivityShutdown Required) where
  toText r = mkCmd "M85" [mkReqArg 'S' r.maxInactiveSeconds]

--------------------------------------------------------------------------------
--- Hotend Idle Timeout (M86)
--- Docs: https://marlinfw.org/docs/gcode/M086.html
--------------------------------------------------------------------------------

data HotendIdleTimeout (f :: Type -> Type)
  = HotendIdleTimeout
  { bedIdleTemp :: Maybe Celsius,
    extruderIdleTemp :: Maybe Celsius,
    timeoutSeconds :: Maybe Seconds,
    temperatureTrigger :: Maybe Celsius
  }
  deriving (Generic)

instance Default (HotendIdleTimeout NotDefined)

instance Upcast (HotendIdleTimeout Required) GCodeCmd where
  upcast = Cmd_HotendIdleTimeout

instance ToText (HotendIdleTimeout Required) where
  toText r =
    mkCmd
      "M86"
      [ mkArg 'B' r.bedIdleTemp,
        mkArg 'E' r.extruderIdleTemp,
        mkArg 'S' r.timeoutSeconds,
        mkArg 'T' r.temperatureTrigger
      ]

--------------------------------------------------------------------------------
--- Disable Hotend Idle Timeout (M87)
--- Docs: https://marlinfw.org/docs/gcode/M087.html
--------------------------------------------------------------------------------

data DisableHotendIdleTimeout (f :: Type -> Type)
  = DisableHotendIdleTimeout
  {}
  deriving (Generic)

instance Default (DisableHotendIdleTimeout NotDefined)

instance Upcast (DisableHotendIdleTimeout Required) GCodeCmd where
  upcast = Cmd_DisableHotendIdleTimeout

instance ToText (DisableHotendIdleTimeout Required) where
  toText r = mkCmd "M87" []

--------------------------------------------------------------------------------
--- Set Axis Steps-per-unit (M92)
--- Docs: https://marlinfw.org/docs/gcode/M092.html
--------------------------------------------------------------------------------

data SetAxisSteps_per_unit (f :: Type -> Type)
  = SetAxisSteps_per_unit
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    axisExtrusion :: Maybe Mm,
    targetExtruder :: Maybe Index,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetAxisSteps_per_unit NotDefined)

instance Upcast (SetAxisSteps_per_unit Required) GCodeCmd where
  upcast = Cmd_SetAxisSteps_per_unit

instance ToText (SetAxisSteps_per_unit Required) where
  toText r =
    mkCmd
      "M92"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'E' r.axisExtrusion,
        mkArg 'T' r.targetExtruder,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Set Hotend Temperature (M104)
--- Docs: https://marlinfw.org/docs/gcode/M104.html
--------------------------------------------------------------------------------

data SetHotendTemperature (f :: Type -> Type)
  = SetHotendTemperature
  { maxAutoTemp :: Maybe Celsius,
    autotempFactor :: Maybe Mm,
    materialPreset :: Maybe Index,
    targetTemp :: Maybe Celsius,
    hotendIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (SetHotendTemperature NotDefined)

instance Upcast (SetHotendTemperature Required) GCodeCmd where
  upcast = Cmd_SetHotendTemperature

instance ToText (SetHotendTemperature Required) where
  toText r =
    mkCmd
      "M104"
      [ mkArg 'B' r.maxAutoTemp,
        mkArg 'F' r.autotempFactor,
        mkArg 'I' r.materialPreset,
        mkArg 'S' r.targetTemp,
        mkArg 'T' r.hotendIndex
      ]

--------------------------------------------------------------------------------
--- Report Temperatures (M105)
--- Docs: https://marlinfw.org/docs/gcode/M105.html
--------------------------------------------------------------------------------

data ReportTemperatures (f :: Type -> Type)
  = ReportTemperatures
  { includeRedundant :: Maybe Flag,
    hotendIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (ReportTemperatures NotDefined)

instance Upcast (ReportTemperatures Required) GCodeCmd where
  upcast = Cmd_ReportTemperatures

instance ToText (ReportTemperatures Required) where
  toText r =
    mkCmd
      "M105"
      [ mkArg 'R' r.includeRedundant,
        mkArg 'T' r.hotendIndex
      ]

--------------------------------------------------------------------------------
--- Set Fan Speed (M106)
--- Docs: https://marlinfw.org/docs/gcode/M106.html
--------------------------------------------------------------------------------

data SetFanSpeed (f :: Type -> Type)
  = SetFanSpeed
  { materialPreset :: Maybe Index,
    fanIndex :: Maybe Index,
    speed :: Maybe Index,
    secondarySpeed :: Maybe Index
  }
  deriving (Generic)

instance Default (SetFanSpeed NotDefined)

instance Upcast (SetFanSpeed Required) GCodeCmd where
  upcast = Cmd_SetFanSpeed

instance ToText (SetFanSpeed Required) where
  toText r =
    mkCmd
      "M106"
      [ mkArg 'I' r.materialPreset,
        mkArg 'P' r.fanIndex,
        mkArg 'S' r.speed,
        mkArg 'T' r.secondarySpeed
      ]

--------------------------------------------------------------------------------
--- Fan Off (M107)
--- Docs: https://marlinfw.org/docs/gcode/M107.html
--------------------------------------------------------------------------------

data FanOff (f :: Type -> Type)
  = FanOff
  { fanIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (FanOff NotDefined)

instance Upcast (FanOff Required) GCodeCmd where
  upcast = Cmd_FanOff

instance ToText (FanOff Required) where
  toText r = mkCmd "M107" [mkArg 'P' r.fanIndex]

--------------------------------------------------------------------------------
--- Break and Continue (M108)
--- Docs: https://marlinfw.org/docs/gcode/M108.html
--------------------------------------------------------------------------------

data BreakandContinue (f :: Type -> Type)
  = BreakandContinue
  {}
  deriving (Generic)

instance Default (BreakandContinue NotDefined)

instance Upcast (BreakandContinue Required) GCodeCmd where
  upcast = Cmd_BreakandContinue

instance ToText (BreakandContinue Required) where
  toText r = mkCmd "M108" []

--------------------------------------------------------------------------------
--- Wait for Hotend Temperature (M109)
--- Docs: https://marlinfw.org/docs/gcode/M109.html
--------------------------------------------------------------------------------

data WaitforHotendTemperature (f :: Type -> Type)
  = WaitforHotendTemperature
  { maxAutoTemp :: Maybe Celsius,
    autotempFactor :: Maybe Mm,
    materialPreset :: Maybe Index,
    targetTempWait :: Maybe Celsius,
    targetTemp :: Maybe Celsius,
    hotendIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (WaitforHotendTemperature NotDefined)

instance Upcast (WaitforHotendTemperature Required) GCodeCmd where
  upcast = Cmd_WaitforHotendTemperature

instance ToText (WaitforHotendTemperature Required) where
  toText r =
    mkCmd
      "M109"
      [ mkArg 'B' r.maxAutoTemp,
        mkArg 'F' r.autotempFactor,
        mkArg 'I' r.materialPreset,
        mkArg 'R' r.targetTempWait,
        mkArg 'S' r.targetTemp,
        mkArg 'T' r.hotendIndex
      ]

--------------------------------------------------------------------------------
--- Set / Get Line Number (M110)
--- Docs: https://marlinfw.org/docs/gcode/M110.html
--------------------------------------------------------------------------------

data Set_GetLineNumber (f :: Type -> Type)
  = Set_GetLineNumber
  { lineNumber :: Maybe Count
  }
  deriving (Generic)

instance Default (Set_GetLineNumber NotDefined)

instance Upcast (Set_GetLineNumber Required) GCodeCmd where
  upcast = Cmd_Set_GetLineNumber

instance ToText (Set_GetLineNumber Required) where
  toText r = mkCmd "M110" [mkArg 'N' r.lineNumber]

--------------------------------------------------------------------------------
--- Debug Level (M111)
--- Docs: https://marlinfw.org/docs/gcode/M111.html
--------------------------------------------------------------------------------

data DebugLevel (f :: Type -> Type)
  = DebugLevel
  { debugFlags :: Maybe Index
  }
  deriving (Generic)

instance Default (DebugLevel NotDefined)

instance Upcast (DebugLevel Required) GCodeCmd where
  upcast = Cmd_DebugLevel

instance ToText (DebugLevel Required) where
  toText r = mkCmd "M111" [mkArg 'S' r.debugFlags]

--------------------------------------------------------------------------------
--- Full Shutdown (M112)
--- Docs: https://marlinfw.org/docs/gcode/M112.html
--------------------------------------------------------------------------------

data FullShutdown (f :: Type -> Type)
  = FullShutdown
  {}
  deriving (Generic)

instance Default (FullShutdown NotDefined)

instance Upcast (FullShutdown Required) GCodeCmd where
  upcast = Cmd_FullShutdown

instance ToText (FullShutdown Required) where
  toText r = mkCmd "M112" []

--------------------------------------------------------------------------------
--- Host Keepalive (M113)
--- Docs: https://marlinfw.org/docs/gcode/M113.html
--------------------------------------------------------------------------------

data HostKeepalive (f :: Type -> Type)
  = HostKeepalive
  { keepaliveInterval :: Maybe Seconds
  }
  deriving (Generic)

instance Default (HostKeepalive NotDefined)

instance Upcast (HostKeepalive Required) GCodeCmd where
  upcast = Cmd_HostKeepalive

instance ToText (HostKeepalive Required) where
  toText r = mkCmd "M113" [mkArg 'S' r.keepaliveInterval]

--------------------------------------------------------------------------------
--- Get Current Position (M114)
--- Docs: https://marlinfw.org/docs/gcode/M114.html
--------------------------------------------------------------------------------

data GetCurrentPosition (f :: Type -> Type)
  = GetCurrentPosition
  { detailedInfo :: Maybe Flag,
    reportEStepper :: Maybe Flag,
    realPosition :: Maybe Flag
  }
  deriving (Generic)

instance Default (GetCurrentPosition NotDefined)

instance Upcast (GetCurrentPosition Required) GCodeCmd where
  upcast = Cmd_GetCurrentPosition

instance ToText (GetCurrentPosition Required) where
  toText r =
    mkCmd
      "M114"
      [ mkArg 'D' r.detailedInfo,
        mkArg 'E' r.reportEStepper,
        mkArg 'R' r.realPosition
      ]

--------------------------------------------------------------------------------
--- Firmware Info (M115)
--- Docs: https://marlinfw.org/docs/gcode/M115.html
--------------------------------------------------------------------------------

data FirmwareInfo (f :: Type -> Type)
  = FirmwareInfo
  {}
  deriving (Generic)

instance Default (FirmwareInfo NotDefined)

instance Upcast (FirmwareInfo Required) GCodeCmd where
  upcast = Cmd_FirmwareInfo

instance ToText (FirmwareInfo Required) where
  toText r = mkCmd "M115" []

--------------------------------------------------------------------------------
--- Set LCD Message (M117)
--- Docs: https://marlinfw.org/docs/gcode/M117.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetLCDMessage (f :: Type -> Type)
  = SetLCDMessage
  {}
  deriving (Generic)

instance Default (SetLCDMessage NotDefined)

instance Upcast (SetLCDMessage Required) GCodeCmd where
  upcast = Cmd_SetLCDMessage

instance ToText (SetLCDMessage Required) where
  toText r = mkCmd "M117" []

--------------------------------------------------------------------------------
--- Serial Print (M118)
--- Docs: https://marlinfw.org/docs/gcode/M118.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SerialPrint (f :: Type -> Type)
  = SerialPrint
  {}
  deriving (Generic)

instance Default (SerialPrint NotDefined)

instance Upcast (SerialPrint Required) GCodeCmd where
  upcast = Cmd_SerialPrint

instance ToText (SerialPrint Required) where
  toText r = mkCmd "M118" []

--------------------------------------------------------------------------------
--- Endstop States (M119)
--- Docs: https://marlinfw.org/docs/gcode/M119.html
--------------------------------------------------------------------------------

data EndstopStates (f :: Type -> Type)
  = EndstopStates
  {}
  deriving (Generic)

instance Default (EndstopStates NotDefined)

instance Upcast (EndstopStates Required) GCodeCmd where
  upcast = Cmd_EndstopStates

instance ToText (EndstopStates Required) where
  toText r = mkCmd "M119" []

--------------------------------------------------------------------------------
--- Enable Endstops (M120)
--- Docs: https://marlinfw.org/docs/gcode/M120.html
--------------------------------------------------------------------------------

data EnableEndstops (f :: Type -> Type)
  = EnableEndstops
  {}
  deriving (Generic)

instance Default (EnableEndstops NotDefined)

instance Upcast (EnableEndstops Required) GCodeCmd where
  upcast = Cmd_EnableEndstops

instance ToText (EnableEndstops Required) where
  toText r = mkCmd "M120" []

--------------------------------------------------------------------------------
--- Disable Endstops (M121)
--- Docs: https://marlinfw.org/docs/gcode/M121.html
--------------------------------------------------------------------------------

data DisableEndstops (f :: Type -> Type)
  = DisableEndstops
  {}
  deriving (Generic)

instance Default (DisableEndstops NotDefined)

instance Upcast (DisableEndstops Required) GCodeCmd where
  upcast = Cmd_DisableEndstops

instance ToText (DisableEndstops Required) where
  toText r = mkCmd "M121" []

--------------------------------------------------------------------------------
--- Set Bed Temperature (M140)
--- Docs: https://marlinfw.org/docs/gcode/M140.html
--------------------------------------------------------------------------------

data SetBedTemperature (f :: Type -> Type)
  = SetBedTemperature
  { materialPreset :: Maybe Index,
    targetTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (SetBedTemperature NotDefined)

instance Upcast (SetBedTemperature Required) GCodeCmd where
  upcast = Cmd_SetBedTemperature

instance ToText (SetBedTemperature Required) where
  toText r =
    mkCmd
      "M140"
      [ mkArg 'I' r.materialPreset,
        mkArg 'S' r.targetTemp
      ]

--------------------------------------------------------------------------------
--- Set Chamber Temperature (M141)
--- Docs: https://marlinfw.org/docs/gcode/M141.html
--------------------------------------------------------------------------------

data SetChamberTemperature (f :: Type -> Type)
  = SetChamberTemperature
  { targetTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (SetChamberTemperature NotDefined)

instance Upcast (SetChamberTemperature Required) GCodeCmd where
  upcast = Cmd_SetChamberTemperature

instance ToText (SetChamberTemperature Required) where
  toText r = mkCmd "M141" [mkArg 'S' r.targetTemp]

--------------------------------------------------------------------------------
--- Wait for Bed Temperature (M190)
--- Docs: https://marlinfw.org/docs/gcode/M190.html
--------------------------------------------------------------------------------

data WaitforBedTemperature (f :: Type -> Type)
  = WaitforBedTemperature
  { materialPreset :: Maybe Index,
    targetTempWait :: Maybe Celsius,
    targetTemp :: Maybe Celsius,
    coolingTime :: Maybe Seconds
  }
  deriving (Generic)

instance Default (WaitforBedTemperature NotDefined)

instance Upcast (WaitforBedTemperature Required) GCodeCmd where
  upcast = Cmd_WaitforBedTemperature

instance ToText (WaitforBedTemperature Required) where
  toText r =
    mkCmd
      "M190"
      [ mkArg 'I' r.materialPreset,
        mkArg 'R' r.targetTempWait,
        mkArg 'S' r.targetTemp,
        mkArg 'T' r.coolingTime
      ]

--------------------------------------------------------------------------------
--- Volumetric Extrusion Diameter (M200)
--- Docs: https://marlinfw.org/docs/gcode/M200.html
--------------------------------------------------------------------------------

data VolumetricExtrusionDiameter (f :: Type -> Type)
  = VolumetricExtrusionDiameter
  { filamentDiameter :: Maybe Mm,
    extruderLimit :: Maybe Mm,
    volumetricOn :: Maybe Flag,
    extruderIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (VolumetricExtrusionDiameter NotDefined)

instance Upcast (VolumetricExtrusionDiameter Required) GCodeCmd where
  upcast = Cmd_VolumetricExtrusionDiameter

instance ToText (VolumetricExtrusionDiameter Required) where
  toText r =
    mkCmd
      "M200"
      [ mkArg 'D' r.filamentDiameter,
        mkArg 'L' r.extruderLimit,
        mkArg 'S' r.volumetricOn,
        mkArg 'T' r.extruderIndex
      ]

--------------------------------------------------------------------------------
--- Print / Travel Move Limits (M201)
--- Docs: https://marlinfw.org/docs/gcode/M201.html
--------------------------------------------------------------------------------

data Print_TravelMoveLimits (f :: Type -> Type)
  = Print_TravelMoveLimits
  { axisExtrusion :: Maybe Mm,
    frequencyLimit :: Maybe Count,
    frequencyMinSpeed :: Maybe Mm,
    targetExtruder :: Maybe Index,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (Print_TravelMoveLimits NotDefined)

instance Upcast (Print_TravelMoveLimits Required) GCodeCmd where
  upcast = Cmd_Print_TravelMoveLimits

instance ToText (Print_TravelMoveLimits Required) where
  toText r =
    mkCmd
      "M201"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'F' r.frequencyLimit,
        mkArg 'S' r.frequencyMinSpeed,
        mkArg 'T' r.targetExtruder,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Set Max Feedrate (M203)
--- Docs: https://marlinfw.org/docs/gcode/M203.html
--------------------------------------------------------------------------------

data SetMaxFeedrate (f :: Type -> Type)
  = SetMaxFeedrate
  { axisExtrusion :: Maybe MmPerSec,
    targetExtruder :: Maybe Index,
    axisX :: Maybe MmPerSec,
    axisY :: Maybe MmPerSec,
    axisZ :: Maybe MmPerSec
  }
  deriving (Generic)

instance Default (SetMaxFeedrate NotDefined)

instance Upcast (SetMaxFeedrate Required) GCodeCmd where
  upcast = Cmd_SetMaxFeedrate

instance ToText (SetMaxFeedrate Required) where
  toText r =
    mkCmd
      "M203"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'T' r.targetExtruder,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Set Starting Acceleration (M204)
--- Docs: https://marlinfw.org/docs/gcode/M204.html
--------------------------------------------------------------------------------

data SetStartingAcceleration (f :: Type -> Type)
  = SetStartingAcceleration
  { printingAccel :: Maybe Mm,
    retractAccel :: Maybe Mm,
    legacyAccel :: Maybe Mm,
    travelAccel :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetStartingAcceleration NotDefined)

instance Upcast (SetStartingAcceleration Required) GCodeCmd where
  upcast = Cmd_SetStartingAcceleration

instance ToText (SetStartingAcceleration Required) where
  toText r =
    mkCmd
      "M204"
      [ mkArg 'P' r.printingAccel,
        mkArg 'R' r.retractAccel,
        mkArg 'S' r.legacyAccel,
        mkArg 'T' r.travelAccel
      ]

--------------------------------------------------------------------------------
--- Set Advanced Settings (M205)
--- Docs: https://marlinfw.org/docs/gcode/M205.html
--------------------------------------------------------------------------------

data SetAdvancedSettings (f :: Type -> Type)
  = SetAdvancedSettings
  { minSegmentTime :: Maybe Milliseconds,
    axisExtrusion :: Maybe Mm,
    junctionDeviation :: Maybe Mm,
    minFeedratePrint :: Maybe MmPerSec,
    minFeedrateTravel :: Maybe MmPerSec,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetAdvancedSettings NotDefined)

instance Upcast (SetAdvancedSettings Required) GCodeCmd where
  upcast = Cmd_SetAdvancedSettings

instance ToText (SetAdvancedSettings Required) where
  toText r =
    mkCmd
      "M205"
      [ mkArg 'B' r.minSegmentTime,
        mkArg 'E' r.axisExtrusion,
        mkArg 'J' r.junctionDeviation,
        mkArg 'S' r.minFeedratePrint,
        mkArg 'T' r.minFeedrateTravel,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Set Home Offsets (M206)
--- Docs: https://marlinfw.org/docs/gcode/M206.html
--------------------------------------------------------------------------------

data SetHomeOffsets (f :: Type -> Type)
  = SetHomeOffsets
  { axisA :: Maybe Mm,
    axisB :: Maybe Mm,
    axisC :: Maybe Mm,
    scaraPsi :: Maybe Mm,
    scaraTheta :: Maybe Mm,
    axisU :: Maybe Mm,
    axisV :: Maybe Mm,
    axisW :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetHomeOffsets NotDefined)

instance Upcast (SetHomeOffsets Required) GCodeCmd where
  upcast = Cmd_SetHomeOffsets

instance ToText (SetHomeOffsets Required) where
  toText r =
    mkCmd
      "M206"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'P' r.scaraPsi,
        mkArg 'T' r.scaraTheta,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Set Feedrate Percentage (M220)
--- Docs: https://marlinfw.org/docs/gcode/M220.html
--------------------------------------------------------------------------------

data SetFeedratePercentage (f :: Type -> Type)
  = SetFeedratePercentage
  { backupFactor :: Maybe Flag,
    restoreFactor :: Maybe Flag,
    feedratePercent :: Maybe Index
  }
  deriving (Generic)

instance Default (SetFeedratePercentage NotDefined)

instance Upcast (SetFeedratePercentage Required) GCodeCmd where
  upcast = Cmd_SetFeedratePercentage

instance ToText (SetFeedratePercentage Required) where
  toText r =
    mkCmd
      "M220"
      [ mkArg 'B' r.backupFactor,
        mkArg 'R' r.restoreFactor,
        mkArg 'S' r.feedratePercent
      ]

--------------------------------------------------------------------------------
--- Set Flow Percentage (M221)
--- Docs: https://marlinfw.org/docs/gcode/M221.html
--------------------------------------------------------------------------------

data SetFlowPercentage (f :: Type -> Type)
  = SetFlowPercentage
  { flowPercent :: f Index,
    targetExtruder :: Maybe Index
  }
  deriving (Generic)

instance Default (SetFlowPercentage NotDefined)

instance Upcast (SetFlowPercentage Required) GCodeCmd where
  upcast = Cmd_SetFlowPercentage

instance ToText (SetFlowPercentage Required) where
  toText r =
    mkCmd
      "M221"
      [ mkReqArg 'S' r.flowPercent,
        mkArg 'T' r.targetExtruder
      ]

--------------------------------------------------------------------------------
--- Finish Moves (M400)
--- Docs: https://marlinfw.org/docs/gcode/M400.html
--------------------------------------------------------------------------------

data FinishMoves (f :: Type -> Type)
  = FinishMoves
  {}
  deriving (Generic)

instance Default (FinishMoves NotDefined)

instance Upcast (FinishMoves Required) GCodeCmd where
  upcast = Cmd_FinishMoves

instance ToText (FinishMoves Required) where
  toText r = mkCmd "M400" []

--------------------------------------------------------------------------------
--- Deploy Probe (M401)
--- Docs: https://marlinfw.org/docs/gcode/M401.html
--------------------------------------------------------------------------------

data DeployProbe (f :: Type -> Type)
  = DeployProbe
  { reportHSMode :: Maybe Flag,
    remainInPlace :: Maybe Flag,
    setHSMode :: Maybe Flag
  }
  deriving (Generic)

instance Default (DeployProbe NotDefined)

instance Upcast (DeployProbe Required) GCodeCmd where
  upcast = Cmd_DeployProbe

instance ToText (DeployProbe Required) where
  toText r =
    mkCmd
      "M401"
      [ mkArg 'H' r.reportHSMode,
        mkArg 'R' r.remainInPlace,
        mkArg 'S' r.setHSMode
      ]

--------------------------------------------------------------------------------
--- Stow Probe (M402)
--- Docs: https://marlinfw.org/docs/gcode/M402.html
--------------------------------------------------------------------------------

data StowProbe (f :: Type -> Type)
  = StowProbe
  { remainInPlace :: Maybe Flag
  }
  deriving (Generic)

instance Default (StowProbe NotDefined)

instance Upcast (StowProbe Required) GCodeCmd where
  upcast = Cmd_StowProbe

instance ToText (StowProbe Required) where
  toText r = mkCmd "M402" [mkArg 'R' r.remainInPlace]

--------------------------------------------------------------------------------
--- Quickstop (M410)
--- Docs: https://marlinfw.org/docs/gcode/M410.html
--------------------------------------------------------------------------------

data Quickstop (f :: Type -> Type)
  = Quickstop
  {}
  deriving (Generic)

instance Default (Quickstop NotDefined)

instance Upcast (Quickstop Required) GCodeCmd where
  upcast = Cmd_Quickstop

instance ToText (Quickstop Required) where
  toText r = mkCmd "M410" []

--------------------------------------------------------------------------------
--- Save Settings (M500)
--- Docs: https://marlinfw.org/docs/gcode/M500.html
--------------------------------------------------------------------------------

data SaveSettings (f :: Type -> Type)
  = SaveSettings
  {}
  deriving (Generic)

instance Default (SaveSettings NotDefined)

instance Upcast (SaveSettings Required) GCodeCmd where
  upcast = Cmd_SaveSettings

instance ToText (SaveSettings Required) where
  toText r = mkCmd "M500" []

--------------------------------------------------------------------------------
--- Restore Settings (M501)
--- Docs: https://marlinfw.org/docs/gcode/M501.html
--------------------------------------------------------------------------------

data RestoreSettings (f :: Type -> Type)
  = RestoreSettings
  {}
  deriving (Generic)

instance Default (RestoreSettings NotDefined)

instance Upcast (RestoreSettings Required) GCodeCmd where
  upcast = Cmd_RestoreSettings

instance ToText (RestoreSettings Required) where
  toText r = mkCmd "M501" []

--------------------------------------------------------------------------------
--- Factory Reset (M502)
--- Docs: https://marlinfw.org/docs/gcode/M502.html
--------------------------------------------------------------------------------

data FactoryReset (f :: Type -> Type)
  = FactoryReset
  {}
  deriving (Generic)

instance Default (FactoryReset NotDefined)

instance Upcast (FactoryReset Required) GCodeCmd where
  upcast = Cmd_FactoryReset

instance ToText (FactoryReset Required) where
  toText r = mkCmd "M502" []

--------------------------------------------------------------------------------
--- Report Settings (M503)
--- Docs: https://marlinfw.org/docs/gcode/M503.html
--------------------------------------------------------------------------------

data ReportSettings (f :: Type -> Type)
  = ReportSettings
  { saveConfig :: Maybe Flag,
    detailedOutput :: Maybe Flag
  }
  deriving (Generic)

instance Default (ReportSettings NotDefined)

instance Upcast (ReportSettings Required) GCodeCmd where
  upcast = Cmd_ReportSettings

instance ToText (ReportSettings Required) where
  toText r =
    mkCmd
      "M503"
      [ mkArg 'C' r.saveConfig,
        mkArg 'S' r.detailedOutput
      ]

--------------------------------------------------------------------------------
--- STOP Restart (M999)
--- Docs: https://marlinfw.org/docs/gcode/M999.html
--------------------------------------------------------------------------------

data STOPRestart (f :: Type -> Type)
  = STOPRestart
  { resumeWithoutFlush :: Maybe Flag
  }
  deriving (Generic)

instance Default (STOPRestart NotDefined)

instance Upcast (STOPRestart Required) GCodeCmd where
  upcast = Cmd_STOPRestart

instance ToText (STOPRestart Required) where
  toText r = mkCmd "M999" [mkArg 'S' r.resumeWithoutFlush]

--------------------------------------------------------------------------------
--- Free Memory (M100)
--- Docs: https://marlinfw.org/docs/gcode/M100.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data FreeMemory (f :: Type -> Type)
  = FreeMemory
  {}
  deriving (Generic)

instance Default (FreeMemory NotDefined)

instance Upcast (FreeMemory Required) GCodeCmd where
  upcast = Cmd_FreeMemory

instance ToText (FreeMemory Required) where
  toText r = mkCmd "M100" []

--------------------------------------------------------------------------------
--- Configure Bed Distance Sensor (M102)
--- Docs: https://marlinfw.org/docs/gcode/M102.html
--------------------------------------------------------------------------------

data ConfigureBedDistanceSensor (f :: Type -> Type)
  = ConfigureBedDistanceSensor
  { state :: f Index
  }
  deriving (Generic)

instance Default (ConfigureBedDistanceSensor NotDefined)

instance Upcast (ConfigureBedDistanceSensor Required) GCodeCmd where
  upcast = Cmd_ConfigureBedDistanceSensor

instance ToText (ConfigureBedDistanceSensor Required) where
  toText r = mkCmd "M102" [mkReqArg 'S' r.state]

--------------------------------------------------------------------------------
--- TMC Debugging (M122)
--- Docs: https://marlinfw.org/docs/gcode/M122.html
--------------------------------------------------------------------------------

data TMCDebugging (f :: Type -> Type)
  = TMCDebugging
  { axisExtrusion :: Maybe Flag,
    reinitialize :: Maybe Flag,
    reportInterval :: Maybe Milliseconds,
    enableDebug :: Maybe Flag,
    rawRegisters :: Maybe Flag,
    axisX :: Maybe Flag,
    axisY :: Maybe Flag,
    axisZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (TMCDebugging NotDefined)

instance Upcast (TMCDebugging Required) GCodeCmd where
  upcast = Cmd_TMCDebugging

instance ToText (TMCDebugging Required) where
  toText r =
    mkCmd
      "M122"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'I' r.reinitialize,
        mkArg 'P' r.reportInterval,
        mkArg 'S' r.enableDebug,
        mkArg 'V' r.rawRegisters,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Fan Tachometers (M123)
--- Docs: https://marlinfw.org/docs/gcode/M123.html
--------------------------------------------------------------------------------

data FanTachometers (f :: Type -> Type)
  = FanTachometers
  { autoReportInterval :: Maybe Seconds
  }
  deriving (Generic)

instance Default (FanTachometers NotDefined)

instance Upcast (FanTachometers Required) GCodeCmd where
  upcast = Cmd_FanTachometers

instance ToText (FanTachometers Required) where
  toText r = mkCmd "M123" [mkArg 'S' r.autoReportInterval]

--------------------------------------------------------------------------------
--- Park Head (M125)
--- Docs: https://marlinfw.org/docs/gcode/M125.html
--------------------------------------------------------------------------------

data ParkHead (f :: Type -> Type)
  = ParkHead
  { retractLength :: Maybe Mm,
    showPrompt :: Maybe Flag,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    zRaise :: Maybe Mm
  }
  deriving (Generic)

instance Default (ParkHead NotDefined)

instance Upcast (ParkHead Required) GCodeCmd where
  upcast = Cmd_ParkHead

instance ToText (ParkHead Required) where
  toText r =
    mkCmd
      "M125"
      [ mkArg 'L' r.retractLength,
        mkArg 'P' r.showPrompt,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.zRaise
      ]

--------------------------------------------------------------------------------
--- Baricuda 1 Open (M126)
--- Docs: https://marlinfw.org/docs/gcode/M126.html
--------------------------------------------------------------------------------

data Baricuda1Open (f :: Type -> Type)
  = Baricuda1Open
  { pressure :: Maybe Index
  }
  deriving (Generic)

instance Default (Baricuda1Open NotDefined)

instance Upcast (Baricuda1Open Required) GCodeCmd where
  upcast = Cmd_Baricuda1Open

instance ToText (Baricuda1Open Required) where
  toText r = mkCmd "M126" [mkArg 'S' r.pressure]

--------------------------------------------------------------------------------
--- Baricuda 1 Close (M127)
--- Docs: https://marlinfw.org/docs/gcode/M127.html
--------------------------------------------------------------------------------

data Baricuda1Close (f :: Type -> Type)
  = Baricuda1Close
  {}
  deriving (Generic)

instance Default (Baricuda1Close NotDefined)

instance Upcast (Baricuda1Close Required) GCodeCmd where
  upcast = Cmd_Baricuda1Close

instance ToText (Baricuda1Close Required) where
  toText r = mkCmd "M127" []

--------------------------------------------------------------------------------
--- Baricuda 2 Open (M128)
--- Docs: https://marlinfw.org/docs/gcode/M128.html
--------------------------------------------------------------------------------

data Baricuda2Open (f :: Type -> Type)
  = Baricuda2Open
  { pressure :: Maybe Index
  }
  deriving (Generic)

instance Default (Baricuda2Open NotDefined)

instance Upcast (Baricuda2Open Required) GCodeCmd where
  upcast = Cmd_Baricuda2Open

instance ToText (Baricuda2Open Required) where
  toText r = mkCmd "M128" [mkArg 'S' r.pressure]

--------------------------------------------------------------------------------
--- Baricuda 2 Close (M129)
--- Docs: https://marlinfw.org/docs/gcode/M129.html
--------------------------------------------------------------------------------

data Baricuda2Close (f :: Type -> Type)
  = Baricuda2Close
  {}
  deriving (Generic)

instance Default (Baricuda2Close NotDefined)

instance Upcast (Baricuda2Close Required) GCodeCmd where
  upcast = Cmd_Baricuda2Close

instance ToText (Baricuda2Close Required) where
  toText r = mkCmd "M129" []

--------------------------------------------------------------------------------
--- Set Laser Cooler Temperature (M143)
--- Docs: https://marlinfw.org/docs/gcode/M143.html
--------------------------------------------------------------------------------

data SetLaserCoolerTemperature (f :: Type -> Type)
  = SetLaserCoolerTemperature
  { targetTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (SetLaserCoolerTemperature NotDefined)

instance Upcast (SetLaserCoolerTemperature Required) GCodeCmd where
  upcast = Cmd_SetLaserCoolerTemperature

instance ToText (SetLaserCoolerTemperature Required) where
  toText r = mkCmd "M143" [mkArg 'S' r.targetTemp]

--------------------------------------------------------------------------------
--- Set Material Preset (M145)
--- Docs: https://marlinfw.org/docs/gcode/M145.html
--------------------------------------------------------------------------------

data SetMaterialPreset (f :: Type -> Type)
  = SetMaterialPreset
  { bedTemp :: Maybe Celsius,
    fanSpeed :: Maybe Index,
    hotendTemp :: Maybe Celsius,
    materialIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (SetMaterialPreset NotDefined)

instance Upcast (SetMaterialPreset Required) GCodeCmd where
  upcast = Cmd_SetMaterialPreset

instance ToText (SetMaterialPreset Required) where
  toText r =
    mkCmd
      "M145"
      [ mkArg 'B' r.bedTemp,
        mkArg 'F' r.fanSpeed,
        mkArg 'H' r.hotendTemp,
        mkArg 'S' r.materialIndex
      ]

--------------------------------------------------------------------------------
--- Set Temperature Units (M149)
--- Docs: https://marlinfw.org/docs/gcode/M149.html
--------------------------------------------------------------------------------

data SetTemperatureUnits (f :: Type -> Type)
  = SetTemperatureUnits
  { celsius :: Maybe Flag,
    fahrenheit :: Maybe Flag,
    kelvin :: Maybe Flag
  }
  deriving (Generic)

instance Default (SetTemperatureUnits NotDefined)

instance Upcast (SetTemperatureUnits Required) GCodeCmd where
  upcast = Cmd_SetTemperatureUnits

instance ToText (SetTemperatureUnits Required) where
  toText r =
    mkCmd
      "M149"
      [ mkArg 'C' r.celsius,
        mkArg 'F' r.fahrenheit,
        mkArg 'K' r.kelvin
      ]

--------------------------------------------------------------------------------
--- Set RGB(W) Color (M150)
--- Docs: https://marlinfw.org/docs/gcode/M150.html
--------------------------------------------------------------------------------

data SetRGBWColor (f :: Type -> Type)
  = SetRGBWColor
  { blue :: Maybe Index,
    pixelIndex :: Maybe Index,
    keepUnspecified :: Maybe Flag,
    brightness :: Maybe Index,
    red :: Maybe Index,
    stripIndex :: Maybe Index,
    green :: Maybe Index,
    white :: Maybe Index
  }
  deriving (Generic)

instance Default (SetRGBWColor NotDefined)

instance Upcast (SetRGBWColor Required) GCodeCmd where
  upcast = Cmd_SetRGBWColor

instance ToText (SetRGBWColor Required) where
  toText r =
    mkCmd
      "M150"
      [ mkArg 'B' r.blue,
        mkArg 'I' r.pixelIndex,
        mkArg 'K' r.keepUnspecified,
        mkArg 'P' r.brightness,
        mkArg 'R' r.red,
        mkArg 'S' r.stripIndex,
        mkArg 'U' r.green,
        mkArg 'W' r.white
      ]

--------------------------------------------------------------------------------
--- Position Auto-Report (M154)
--- Docs: https://marlinfw.org/docs/gcode/M154.html
--------------------------------------------------------------------------------

data PositionAuto_Report (f :: Type -> Type)
  = PositionAuto_Report
  { intervalSeconds :: Maybe Seconds
  }
  deriving (Generic)

instance Default (PositionAuto_Report NotDefined)

instance Upcast (PositionAuto_Report Required) GCodeCmd where
  upcast = Cmd_PositionAuto_Report

instance ToText (PositionAuto_Report Required) where
  toText r = mkCmd "M154" [mkArg 'S' r.intervalSeconds]

--------------------------------------------------------------------------------
--- Temperature Auto-Report (M155)
--- Docs: https://marlinfw.org/docs/gcode/M155.html
--------------------------------------------------------------------------------

data TemperatureAuto_Report (f :: Type -> Type)
  = TemperatureAuto_Report
  { intervalSeconds :: Maybe Seconds
  }
  deriving (Generic)

instance Default (TemperatureAuto_Report NotDefined)

instance Upcast (TemperatureAuto_Report Required) GCodeCmd where
  upcast = Cmd_TemperatureAuto_Report

instance ToText (TemperatureAuto_Report Required) where
  toText r = mkCmd "M155" [mkArg 'S' r.intervalSeconds]

--------------------------------------------------------------------------------
--- Set Mix Factor (M163)
--- Docs: https://marlinfw.org/docs/gcode/M163.html
--------------------------------------------------------------------------------

data SetMixFactor (f :: Type -> Type)
  = SetMixFactor
  { mixFactor :: Maybe Mm,
    componentIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (SetMixFactor NotDefined)

instance Upcast (SetMixFactor Required) GCodeCmd where
  upcast = Cmd_SetMixFactor

instance ToText (SetMixFactor Required) where
  toText r =
    mkCmd
      "M163"
      [ mkArg 'P' r.mixFactor,
        mkArg 'S' r.componentIndex
      ]

--------------------------------------------------------------------------------
--- Save Mix (M164)
--- Docs: https://marlinfw.org/docs/gcode/M164.html
--------------------------------------------------------------------------------

data SaveMix (f :: Type -> Type)
  = SaveMix
  { toolIndex :: f Index
  }
  deriving (Generic)

instance Default (SaveMix NotDefined)

instance Upcast (SaveMix Required) GCodeCmd where
  upcast = Cmd_SaveMix

instance ToText (SaveMix Required) where
  toText r = mkCmd "M164" [mkReqArg 'S' r.toolIndex]

--------------------------------------------------------------------------------
--- Set Mix (M165)
--- Docs: https://marlinfw.org/docs/gcode/M165.html
--------------------------------------------------------------------------------

data SetMix (f :: Type -> Type)
  = SetMix
  { mixFactor1 :: Maybe Mm,
    mixFactor2 :: Maybe Mm,
    mixFactor3 :: Maybe Mm,
    mixFactor4 :: Maybe Mm,
    mixFactor5 :: Maybe Mm,
    mixFactor6 :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetMix NotDefined)

instance Upcast (SetMix Required) GCodeCmd where
  upcast = Cmd_SetMix

instance ToText (SetMix Required) where
  toText r =
    mkCmd
      "M165"
      [ mkArg 'A' r.mixFactor1,
        mkArg 'B' r.mixFactor2,
        mkArg 'C' r.mixFactor3,
        mkArg 'D' r.mixFactor4,
        mkArg 'H' r.mixFactor5,
        mkArg 'I' r.mixFactor6
      ]

--------------------------------------------------------------------------------
--- Gradient Mix (M166)
--- Docs: https://marlinfw.org/docs/gcode/M166.html
--------------------------------------------------------------------------------

data GradientMix (f :: Type -> Type)
  = GradientMix
  { startingZ :: f Mm,
    startingTool :: f Index,
    endingTool :: f Index,
    enable :: Maybe Flag,
    toolIndex :: Maybe Index,
    endingZ :: f Mm
  }
  deriving (Generic)

instance Default (GradientMix NotDefined)

instance Upcast (GradientMix Required) GCodeCmd where
  upcast = Cmd_GradientMix

instance ToText (GradientMix Required) where
  toText r =
    mkCmd
      "M166"
      [ mkReqArg 'A' r.startingZ,
        mkReqArg 'I' r.startingTool,
        mkReqArg 'J' r.endingTool,
        mkArg 'S' r.enable,
        mkArg 'T' r.toolIndex,
        mkReqArg 'Z' r.endingZ
      ]

--------------------------------------------------------------------------------
--- Wait for Chamber Temperature (M191)
--- Docs: https://marlinfw.org/docs/gcode/M191.html
--------------------------------------------------------------------------------

data WaitforChamberTemperature (f :: Type -> Type)
  = WaitforChamberTemperature
  { targetTempWait :: Maybe Celsius,
    targetTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (WaitforChamberTemperature NotDefined)

instance Upcast (WaitforChamberTemperature Required) GCodeCmd where
  upcast = Cmd_WaitforChamberTemperature

instance ToText (WaitforChamberTemperature Required) where
  toText r =
    mkCmd
      "M191"
      [ mkArg 'R' r.targetTempWait,
        mkArg 'S' r.targetTemp
      ]

--------------------------------------------------------------------------------
--- Wait for Probe Temperature (M192)
--- Docs: https://marlinfw.org/docs/gcode/M192.html
--------------------------------------------------------------------------------

data WaitforProbeTemperature (f :: Type -> Type)
  = WaitforProbeTemperature
  { targetTemp :: Maybe Celsius,
    minTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (WaitforProbeTemperature NotDefined)

instance Upcast (WaitforProbeTemperature Required) GCodeCmd where
  upcast = Cmd_WaitforProbeTemperature

instance ToText (WaitforProbeTemperature Required) where
  toText r =
    mkCmd
      "M192"
      [ mkArg 'R' r.targetTemp,
        mkArg 'S' r.minTemp
      ]

--------------------------------------------------------------------------------
--- Wait For Laser Cooler Temperature (M193)
--- Docs: https://marlinfw.org/docs/gcode/M193.html
--------------------------------------------------------------------------------

data WaitForLaserCoolerTemperature (f :: Type -> Type)
  = WaitForLaserCoolerTemperature
  { targetTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (WaitForLaserCoolerTemperature NotDefined)

instance Upcast (WaitForLaserCoolerTemperature Required) GCodeCmd where
  upcast = Cmd_WaitForLaserCoolerTemperature

instance ToText (WaitForLaserCoolerTemperature Required) where
  toText r = mkCmd "M193" [mkArg 'S' r.targetTemp]

--------------------------------------------------------------------------------
--- Firmware Retraction Settings (M207)
--- Docs: https://marlinfw.org/docs/gcode/M207.html
--------------------------------------------------------------------------------

data FirmwareRetractionSettings (f :: Type -> Type)
  = FirmwareRetractionSettings
  { retractFeedrate :: Maybe MmPerMin,
    retractLength :: Maybe Mm,
    retractSwapLength :: Maybe Mm,
    zLift :: Maybe Mm
  }
  deriving (Generic)

instance Default (FirmwareRetractionSettings NotDefined)

instance Upcast (FirmwareRetractionSettings Required) GCodeCmd where
  upcast = Cmd_FirmwareRetractionSettings

instance ToText (FirmwareRetractionSettings Required) where
  toText r =
    mkCmd
      "M207"
      [ mkArg 'F' r.retractFeedrate,
        mkArg 'S' r.retractLength,
        mkArg 'W' r.retractSwapLength,
        mkArg 'Z' r.zLift
      ]

--------------------------------------------------------------------------------
--- Firmware Recover Settings (M208)
--- Docs: https://marlinfw.org/docs/gcode/M208.html
--------------------------------------------------------------------------------

data FirmwareRecoverSettings (f :: Type -> Type)
  = FirmwareRecoverSettings
  { recoverFeedrate :: Maybe MmPerMin,
    swapRecoverFeedrate :: Maybe MmPerMin,
    additionalRecoverLength :: Maybe Mm,
    additionalRecoverSwapLength :: Maybe Mm
  }
  deriving (Generic)

instance Default (FirmwareRecoverSettings NotDefined)

instance Upcast (FirmwareRecoverSettings Required) GCodeCmd where
  upcast = Cmd_FirmwareRecoverSettings

instance ToText (FirmwareRecoverSettings Required) where
  toText r =
    mkCmd
      "M208"
      [ mkArg 'F' r.recoverFeedrate,
        mkArg 'R' r.swapRecoverFeedrate,
        mkArg 'S' r.additionalRecoverLength,
        mkArg 'W' r.additionalRecoverSwapLength
      ]

--------------------------------------------------------------------------------
--- Set Auto Retract (M209)
--- Docs: https://marlinfw.org/docs/gcode/M209.html
--------------------------------------------------------------------------------

data SetAutoRetract (f :: Type -> Type)
  = SetAutoRetract
  { enable :: f Flag
  }
  deriving (Generic)

instance Default (SetAutoRetract NotDefined)

instance Upcast (SetAutoRetract Required) GCodeCmd where
  upcast = Cmd_SetAutoRetract

instance ToText (SetAutoRetract Required) where
  toText r = mkCmd "M209" [mkReqArg 'S' r.enable]

--------------------------------------------------------------------------------
--- Homing Feedrate (M210)
--- Docs: https://marlinfw.org/docs/gcode/M210.html
--------------------------------------------------------------------------------

data HomingFeedrate (f :: Type -> Type)
  = HomingFeedrate
  { axisA :: Maybe MmPerMin,
    axisB :: Maybe MmPerMin,
    axisC :: Maybe MmPerMin,
    axisU :: Maybe MmPerMin,
    axisV :: Maybe MmPerMin,
    axisW :: Maybe MmPerMin,
    axisX :: Maybe MmPerMin,
    axisY :: Maybe MmPerMin,
    axisZ :: Maybe MmPerMin
  }
  deriving (Generic)

instance Default (HomingFeedrate NotDefined)

instance Upcast (HomingFeedrate Required) GCodeCmd where
  upcast = Cmd_HomingFeedrate

instance ToText (HomingFeedrate Required) where
  toText r =
    mkCmd
      "M210"
      [ mkArg 'A' r.axisA,
        mkArg 'B' r.axisB,
        mkArg 'C' r.axisC,
        mkArg 'U' r.axisU,
        mkArg 'V' r.axisV,
        mkArg 'W' r.axisW,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Software Endstops (M211)
--- Docs: https://marlinfw.org/docs/gcode/M211.html
--------------------------------------------------------------------------------

data SoftwareEndstops (f :: Type -> Type)
  = SoftwareEndstops
  { enable :: Maybe Flag
  }
  deriving (Generic)

instance Default (SoftwareEndstops NotDefined)

instance Upcast (SoftwareEndstops Required) GCodeCmd where
  upcast = Cmd_SoftwareEndstops

instance ToText (SoftwareEndstops Required) where
  toText r = mkCmd "M211" [mkArg 'S' r.enable]

--------------------------------------------------------------------------------
--- Filament Swap Parameters (M217)
--- Docs: https://marlinfw.org/docs/gcode/M217.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data FilamentSwapParameters (f :: Type -> Type)
  = FilamentSwapParameters
  {}
  deriving (Generic)

instance Default (FilamentSwapParameters NotDefined)

instance Upcast (FilamentSwapParameters Required) GCodeCmd where
  upcast = Cmd_FilamentSwapParameters

instance ToText (FilamentSwapParameters Required) where
  toText r = mkCmd "M217" []

--------------------------------------------------------------------------------
--- Set Hotend Offset (M218)
--- Docs: https://marlinfw.org/docs/gcode/M218.html
--------------------------------------------------------------------------------

data SetHotendOffset (f :: Type -> Type)
  = SetHotendOffset
  { hotendIndex :: Maybe Index,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetHotendOffset NotDefined)

instance Upcast (SetHotendOffset Required) GCodeCmd where
  upcast = Cmd_SetHotendOffset

instance ToText (SetHotendOffset Required) where
  toText r =
    mkCmd
      "M218"
      [ mkArg 'T' r.hotendIndex,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Wait for Pin State (M226)
--- Docs: https://marlinfw.org/docs/gcode/M226.html
--------------------------------------------------------------------------------

data WaitforPinState (f :: Type -> Type)
  = WaitforPinState
  { pin :: f Index,
    state :: Maybe Index
  }
  deriving (Generic)

instance Default (WaitforPinState NotDefined)

instance Upcast (WaitforPinState Required) GCodeCmd where
  upcast = Cmd_WaitforPinState

instance ToText (WaitforPinState Required) where
  toText r =
    mkCmd
      "M226"
      [ mkReqArg 'P' r.pin,
        mkArg 'S' r.state
      ]

--------------------------------------------------------------------------------
--- Trigger Camera (M240)
--- Docs: https://marlinfw.org/docs/gcode/M240.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TriggerCamera (f :: Type -> Type)
  = TriggerCamera
  {}
  deriving (Generic)

instance Default (TriggerCamera NotDefined)

instance Upcast (TriggerCamera Required) GCodeCmd where
  upcast = Cmd_TriggerCamera

instance ToText (TriggerCamera Required) where
  toText r = mkCmd "M240" []

--------------------------------------------------------------------------------
--- LCD Contrast (M250)
--- Docs: https://marlinfw.org/docs/gcode/M250.html
--------------------------------------------------------------------------------

data LCDContrast (f :: Type -> Type)
  = LCDContrast
  { contrast :: Maybe Index
  }
  deriving (Generic)

instance Default (LCDContrast NotDefined)

instance Upcast (LCDContrast Required) GCodeCmd where
  upcast = Cmd_LCDContrast

instance ToText (LCDContrast Required) where
  toText r = mkCmd "M250" [mkArg 'C' r.contrast]

--------------------------------------------------------------------------------
--- LCD Sleep/Backlight Timeout (M255)
--- Docs: https://marlinfw.org/docs/gcode/M255.html
--------------------------------------------------------------------------------

data LCDSleep_BacklightTimeout (f :: Type -> Type)
  = LCDSleep_BacklightTimeout
  { timeoutMinutes :: f Count
  }
  deriving (Generic)

instance Default (LCDSleep_BacklightTimeout NotDefined)

instance Upcast (LCDSleep_BacklightTimeout Required) GCodeCmd where
  upcast = Cmd_LCDSleep_BacklightTimeout

instance ToText (LCDSleep_BacklightTimeout Required) where
  toText r = mkCmd "M255" [mkReqArg 'S' r.timeoutMinutes]

--------------------------------------------------------------------------------
--- LCD Brightness (M256)
--- Docs: https://marlinfw.org/docs/gcode/M256.html
--------------------------------------------------------------------------------

data LCDBrightness (f :: Type -> Type)
  = LCDBrightness
  { brightness :: Maybe Index
  }
  deriving (Generic)

instance Default (LCDBrightness NotDefined)

instance Upcast (LCDBrightness Required) GCodeCmd where
  upcast = Cmd_LCDBrightness

instance ToText (LCDBrightness Required) where
  toText r = mkCmd "M256" [mkArg 'B' r.brightness]

--------------------------------------------------------------------------------
--- I2C Send (M260)
--- Docs: https://marlinfw.org/docs/gcode/M260.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data I2CSend (f :: Type -> Type)
  = I2CSend
  {}
  deriving (Generic)

instance Default (I2CSend NotDefined)

instance Upcast (I2CSend Required) GCodeCmd where
  upcast = Cmd_I2CSend

instance ToText (I2CSend Required) where
  toText r = mkCmd "M260" []

--------------------------------------------------------------------------------
--- I2C Request (M261)
--- Docs: https://marlinfw.org/docs/gcode/M261.html
--------------------------------------------------------------------------------

data I2CRequest (f :: Type -> Type)
  = I2CRequest
  { address :: f Index,
    byteCount :: f Count,
    outputStyle :: Maybe Index
  }
  deriving (Generic)

instance Default (I2CRequest NotDefined)

instance Upcast (I2CRequest Required) GCodeCmd where
  upcast = Cmd_I2CRequest

instance ToText (I2CRequest Required) where
  toText r =
    mkCmd
      "M261"
      [ mkReqArg 'A' r.address,
        mkReqArg 'B' r.byteCount,
        mkArg 'S' r.outputStyle
      ]

--------------------------------------------------------------------------------
--- Scan I2C Bus (M265)
--- Docs: https://marlinfw.org/docs/gcode/M265.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ScanI2CBus (f :: Type -> Type)
  = ScanI2CBus
  {}
  deriving (Generic)

instance Default (ScanI2CBus NotDefined)

instance Upcast (ScanI2CBus Required) GCodeCmd where
  upcast = Cmd_ScanI2CBus

instance ToText (ScanI2CBus Required) where
  toText r = mkCmd "M265" []

--------------------------------------------------------------------------------
--- Servo Position (M280)
--- Docs: https://marlinfw.org/docs/gcode/M280.html
--------------------------------------------------------------------------------

data ServoPosition (f :: Type -> Type)
  = ServoPosition
  { servoIndex :: f Index,
    position :: Maybe Index
  }
  deriving (Generic)

instance Default (ServoPosition NotDefined)

instance Upcast (ServoPosition Required) GCodeCmd where
  upcast = Cmd_ServoPosition

instance ToText (ServoPosition Required) where
  toText r =
    mkCmd
      "M280"
      [ mkReqArg 'P' r.servoIndex,
        mkArg 'S' r.position
      ]

--------------------------------------------------------------------------------
--- Edit Servo Angles (M281)
--- Docs: https://marlinfw.org/docs/gcode/M281.html
--------------------------------------------------------------------------------

data EditServoAngles (f :: Type -> Type)
  = EditServoAngles
  { deployAngle :: Maybe Degrees,
    servoIndex :: f Index,
    stowAngle :: Maybe Degrees
  }
  deriving (Generic)

instance Default (EditServoAngles NotDefined)

instance Upcast (EditServoAngles Required) GCodeCmd where
  upcast = Cmd_EditServoAngles

instance ToText (EditServoAngles Required) where
  toText r =
    mkCmd
      "M281"
      [ mkArg 'L' r.deployAngle,
        mkReqArg 'P' r.servoIndex,
        mkArg 'U' r.stowAngle
      ]

--------------------------------------------------------------------------------
--- Detach Servo (M282)
--- Docs: https://marlinfw.org/docs/gcode/M282.html
--------------------------------------------------------------------------------

data DetachServo (f :: Type -> Type)
  = DetachServo
  { servoIndex :: f Index
  }
  deriving (Generic)

instance Default (DetachServo NotDefined)

instance Upcast (DetachServo Required) GCodeCmd where
  upcast = Cmd_DetachServo

instance ToText (DetachServo Required) where
  toText r = mkCmd "M282" [mkReqArg 'P' r.servoIndex]

--------------------------------------------------------------------------------
--- Babystep (M290)
--- Docs: https://marlinfw.org/docs/gcode/M290.html
--------------------------------------------------------------------------------

data Babystep (f :: Type -> Type)
  = Babystep
  { affectProbeOffset :: Maybe Flag,
    axisZAlias :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (Babystep NotDefined)

instance Upcast (Babystep Required) GCodeCmd where
  upcast = Cmd_Babystep

instance ToText (Babystep Required) where
  toText r =
    mkCmd
      "M290"
      [ mkArg 'P' r.affectProbeOffset,
        mkArg 'S' r.axisZAlias,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Play Tone (M300)
--- Docs: https://marlinfw.org/docs/gcode/M300.html
--------------------------------------------------------------------------------

data PlayTone (f :: Type -> Type)
  = PlayTone
  { durationMs :: Maybe Milliseconds,
    frequencyHz :: Maybe Count
  }
  deriving (Generic)

instance Default (PlayTone NotDefined)

instance Upcast (PlayTone Required) GCodeCmd where
  upcast = Cmd_PlayTone

instance ToText (PlayTone Required) where
  toText r =
    mkCmd
      "M300"
      [ mkArg 'P' r.durationMs,
        mkArg 'S' r.frequencyHz
      ]

--------------------------------------------------------------------------------
--- Set Hotend PID (M301)
--- Docs: https://marlinfw.org/docs/gcode/M301.html
--------------------------------------------------------------------------------

data SetHotendPID (f :: Type -> Type)
  = SetHotendPID
  { cTerm :: Maybe Mm,
    derivative :: Maybe Mm,
    extruderIndex :: Maybe Index,
    fTerm :: Maybe Mm,
    integral :: Maybe Mm,
    extrusionScalingLength :: Maybe Mm,
    proportional :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetHotendPID NotDefined)

instance Upcast (SetHotendPID Required) GCodeCmd where
  upcast = Cmd_SetHotendPID

instance ToText (SetHotendPID Required) where
  toText r =
    mkCmd
      "M301"
      [ mkArg 'C' r.cTerm,
        mkArg 'D' r.derivative,
        mkArg 'E' r.extruderIndex,
        mkArg 'F' r.fTerm,
        mkArg 'I' r.integral,
        mkArg 'L' r.extrusionScalingLength,
        mkArg 'P' r.proportional
      ]

--------------------------------------------------------------------------------
--- Cold Extrude (M302)
--- Docs: https://marlinfw.org/docs/gcode/M302.html
--------------------------------------------------------------------------------

data ColdExtrude (f :: Type -> Type)
  = ColdExtrude
  { allowAnyTemp :: Maybe Flag,
    minTemp :: Maybe Celsius
  }
  deriving (Generic)

instance Default (ColdExtrude NotDefined)

instance Upcast (ColdExtrude Required) GCodeCmd where
  upcast = Cmd_ColdExtrude

instance ToText (ColdExtrude Required) where
  toText r =
    mkCmd
      "M302"
      [ mkArg 'P' r.allowAnyTemp,
        mkArg 'S' r.minTemp
      ]

--------------------------------------------------------------------------------
--- PID Autotune (M303)
--- Docs: https://marlinfw.org/docs/gcode/M303.html
--------------------------------------------------------------------------------

data PIDAutotune (f :: Type -> Type)
  = PIDAutotune
  { cycles :: Maybe Count,
    toggleDebug :: Maybe Flag,
    hotendIndex :: Maybe Index,
    targetTemp :: Maybe Celsius,
    useResult :: Maybe Flag
  }
  deriving (Generic)

instance Default (PIDAutotune NotDefined)

instance Upcast (PIDAutotune Required) GCodeCmd where
  upcast = Cmd_PIDAutotune

instance ToText (PIDAutotune Required) where
  toText r =
    mkCmd
      "M303"
      [ mkArg 'C' r.cycles,
        mkArg 'D' r.toggleDebug,
        mkArg 'E' r.hotendIndex,
        mkArg 'S' r.targetTemp,
        mkArg 'U' r.useResult
      ]

--------------------------------------------------------------------------------
--- Set Bed PID (M304)
--- Docs: https://marlinfw.org/docs/gcode/M304.html
--------------------------------------------------------------------------------

data SetBedPID (f :: Type -> Type)
  = SetBedPID
  { derivative :: Maybe Mm,
    integral :: Maybe Mm,
    proportional :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetBedPID NotDefined)

instance Upcast (SetBedPID Required) GCodeCmd where
  upcast = Cmd_SetBedPID

instance ToText (SetBedPID Required) where
  toText r =
    mkCmd
      "M304"
      [ mkArg 'D' r.derivative,
        mkArg 'I' r.integral,
        mkArg 'P' r.proportional
      ]

--------------------------------------------------------------------------------
--- User Thermistor Parameters (M305)
--- Docs: https://marlinfw.org/docs/gcode/M305.html
--------------------------------------------------------------------------------

data UserThermistorParameters (f :: Type -> Type)
  = UserThermistorParameters
  { beta :: Maybe Count,
    coefficientC :: Maybe Mm,
    tableIndex :: Maybe Index,
    pullupResistor :: Maybe Count,
    resistanceAt25C :: Maybe Count
  }
  deriving (Generic)

instance Default (UserThermistorParameters NotDefined)

instance Upcast (UserThermistorParameters Required) GCodeCmd where
  upcast = Cmd_UserThermistorParameters

instance ToText (UserThermistorParameters Required) where
  toText r =
    mkCmd
      "M305"
      [ mkArg 'B' r.beta,
        mkArg 'C' r.coefficientC,
        mkArg 'P' r.tableIndex,
        mkArg 'R' r.pullupResistor,
        mkArg 'T' r.resistanceAt25C
      ]

--------------------------------------------------------------------------------
--- Model Predictive Temp. Control (M306)
--- Docs: https://marlinfw.org/docs/gcode/M306.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ModelPredictiveTempControl (f :: Type -> Type)
  = ModelPredictiveTempControl
  {}
  deriving (Generic)

instance Default (ModelPredictiveTempControl NotDefined)

instance Upcast (ModelPredictiveTempControl Required) GCodeCmd where
  upcast = Cmd_ModelPredictiveTempControl

instance ToText (ModelPredictiveTempControl Required) where
  toText r = mkCmd "M306" []

--------------------------------------------------------------------------------
--- Set Chamber PID (M309)
--- Docs: https://marlinfw.org/docs/gcode/M309.html
--------------------------------------------------------------------------------

data SetChamberPID (f :: Type -> Type)
  = SetChamberPID
  { derivative :: Maybe Mm,
    integral :: Maybe Mm,
    proportional :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetChamberPID NotDefined)

instance Upcast (SetChamberPID Required) GCodeCmd where
  upcast = Cmd_SetChamberPID

instance ToText (SetChamberPID Required) where
  toText r =
    mkCmd
      "M309"
      [ mkArg 'D' r.derivative,
        mkArg 'I' r.integral,
        mkArg 'P' r.proportional
      ]

--------------------------------------------------------------------------------
--- Set Micro-stepping (M350)
--- Docs: https://marlinfw.org/docs/gcode/M350.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetMicro_stepping (f :: Type -> Type)
  = SetMicro_stepping
  {}
  deriving (Generic)

instance Default (SetMicro_stepping NotDefined)

instance Upcast (SetMicro_stepping Required) GCodeCmd where
  upcast = Cmd_SetMicro_stepping

instance ToText (SetMicro_stepping Required) where
  toText r = mkCmd "M350" []

--------------------------------------------------------------------------------
--- Set Microstep Pins (M351)
--- Docs: https://marlinfw.org/docs/gcode/M351.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetMicrostepPins (f :: Type -> Type)
  = SetMicrostepPins
  {}
  deriving (Generic)

instance Default (SetMicrostepPins NotDefined)

instance Upcast (SetMicrostepPins Required) GCodeCmd where
  upcast = Cmd_SetMicrostepPins

instance ToText (SetMicrostepPins Required) where
  toText r = mkCmd "M351" []

--------------------------------------------------------------------------------
--- Case Light Control (M355)
--- Docs: https://marlinfw.org/docs/gcode/M355.html
--------------------------------------------------------------------------------

data CaseLightControl (f :: Type -> Type)
  = CaseLightControl
  { brightness :: Maybe Index,
    on :: Maybe Flag
  }
  deriving (Generic)

instance Default (CaseLightControl NotDefined)

instance Upcast (CaseLightControl Required) GCodeCmd where
  upcast = Cmd_CaseLightControl

instance ToText (CaseLightControl Required) where
  toText r =
    mkCmd
      "M355"
      [ mkArg 'P' r.brightness,
        mkArg 'S' r.on
      ]

--------------------------------------------------------------------------------
--- SCARA Theta A (M360)
--- Docs: https://marlinfw.org/docs/gcode/M360.html
--------------------------------------------------------------------------------

data SCARAThetaA (f :: Type -> Type)
  = SCARAThetaA
  {}
  deriving (Generic)

instance Default (SCARAThetaA NotDefined)

instance Upcast (SCARAThetaA Required) GCodeCmd where
  upcast = Cmd_SCARAThetaA

instance ToText (SCARAThetaA Required) where
  toText r = mkCmd "M360" []

--------------------------------------------------------------------------------
--- SCARA Theta-B (M361)
--- Docs: https://marlinfw.org/docs/gcode/M361.html
--------------------------------------------------------------------------------

data SCARATheta_B (f :: Type -> Type)
  = SCARATheta_B
  {}
  deriving (Generic)

instance Default (SCARATheta_B NotDefined)

instance Upcast (SCARATheta_B Required) GCodeCmd where
  upcast = Cmd_SCARATheta_B

instance ToText (SCARATheta_B Required) where
  toText r = mkCmd "M361" []

--------------------------------------------------------------------------------
--- SCARA Psi-A (M362)
--- Docs: https://marlinfw.org/docs/gcode/M362.html
--------------------------------------------------------------------------------

data SCARAPsi_A (f :: Type -> Type)
  = SCARAPsi_A
  {}
  deriving (Generic)

instance Default (SCARAPsi_A NotDefined)

instance Upcast (SCARAPsi_A Required) GCodeCmd where
  upcast = Cmd_SCARAPsi_A

instance ToText (SCARAPsi_A Required) where
  toText r = mkCmd "M362" []

--------------------------------------------------------------------------------
--- SCARA Psi-B (M363)
--- Docs: https://marlinfw.org/docs/gcode/M363.html
--------------------------------------------------------------------------------

data SCARAPsi_B (f :: Type -> Type)
  = SCARAPsi_B
  {}
  deriving (Generic)

instance Default (SCARAPsi_B NotDefined)

instance Upcast (SCARAPsi_B Required) GCodeCmd where
  upcast = Cmd_SCARAPsi_B

instance ToText (SCARAPsi_B Required) where
  toText r = mkCmd "M363" []

--------------------------------------------------------------------------------
--- SCARA Psi-C (M364)
--- Docs: https://marlinfw.org/docs/gcode/M364.html
--------------------------------------------------------------------------------

data SCARAPsi_C (f :: Type -> Type)
  = SCARAPsi_C
  {}
  deriving (Generic)

instance Default (SCARAPsi_C NotDefined)

instance Upcast (SCARAPsi_C Required) GCodeCmd where
  upcast = Cmd_SCARAPsi_C

instance ToText (SCARAPsi_C Required) where
  toText r = mkCmd "M364" []

--------------------------------------------------------------------------------
--- Activate Solenoid (M380)
--- Docs: https://marlinfw.org/docs/gcode/M380.html
--------------------------------------------------------------------------------

data ActivateSolenoid (f :: Type -> Type)
  = ActivateSolenoid
  { solenoidIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (ActivateSolenoid NotDefined)

instance Upcast (ActivateSolenoid Required) GCodeCmd where
  upcast = Cmd_ActivateSolenoid

instance ToText (ActivateSolenoid Required) where
  toText r = mkCmd "M380" [mkArg 'S' r.solenoidIndex]

--------------------------------------------------------------------------------
--- Deactivate Solenoids (M381)
--- Docs: https://marlinfw.org/docs/gcode/M381.html
--------------------------------------------------------------------------------

data DeactivateSolenoids (f :: Type -> Type)
  = DeactivateSolenoids
  { solenoidIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (DeactivateSolenoids NotDefined)

instance Upcast (DeactivateSolenoids Required) GCodeCmd where
  upcast = Cmd_DeactivateSolenoids

instance ToText (DeactivateSolenoids Required) where
  toText r = mkCmd "M381" [mkArg 'S' r.solenoidIndex]

--------------------------------------------------------------------------------
--- MMU2 Filament Type (M403)
--- Docs: https://marlinfw.org/docs/gcode/M403.html
--------------------------------------------------------------------------------

data MMU2FilamentType (f :: Type -> Type)
  = MMU2FilamentType
  { slotIndex :: f Index,
    filamentType :: f Index
  }
  deriving (Generic)

instance Default (MMU2FilamentType NotDefined)

instance Upcast (MMU2FilamentType Required) GCodeCmd where
  upcast = Cmd_MMU2FilamentType

instance ToText (MMU2FilamentType Required) where
  toText r =
    mkCmd
      "M403"
      [ mkReqArg 'E' r.slotIndex,
        mkReqArg 'F' r.filamentType
      ]

--------------------------------------------------------------------------------
--- Filament Width Sensor Nominal Diameter (M404)
--- Docs: https://marlinfw.org/docs/gcode/M404.html
--------------------------------------------------------------------------------

data FilamentWidthSensorNominalDiameter (f :: Type -> Type)
  = FilamentWidthSensorNominalDiameter
  { nominalWidth :: Maybe Mm
  }
  deriving (Generic)

instance Default (FilamentWidthSensorNominalDiameter NotDefined)

instance Upcast (FilamentWidthSensorNominalDiameter Required) GCodeCmd where
  upcast = Cmd_FilamentWidthSensorNominalDiameter

instance ToText (FilamentWidthSensorNominalDiameter Required) where
  toText r = mkCmd "M404" [mkArg 'W' r.nominalWidth]

--------------------------------------------------------------------------------
--- Filament Width Sensor On (M405)
--- Docs: https://marlinfw.org/docs/gcode/M405.html
--------------------------------------------------------------------------------

data FilamentWidthSensorOn (f :: Type -> Type)
  = FilamentWidthSensorOn
  { distanceCm :: Maybe Count
  }
  deriving (Generic)

instance Default (FilamentWidthSensorOn NotDefined)

instance Upcast (FilamentWidthSensorOn Required) GCodeCmd where
  upcast = Cmd_FilamentWidthSensorOn

instance ToText (FilamentWidthSensorOn Required) where
  toText r = mkCmd "M405" [mkArg 'D' r.distanceCm]

--------------------------------------------------------------------------------
--- Filament Width Sensor Off (M406)
--- Docs: https://marlinfw.org/docs/gcode/M406.html
--------------------------------------------------------------------------------

data FilamentWidthSensorOff (f :: Type -> Type)
  = FilamentWidthSensorOff
  {}
  deriving (Generic)

instance Default (FilamentWidthSensorOff NotDefined)

instance Upcast (FilamentWidthSensorOff Required) GCodeCmd where
  upcast = Cmd_FilamentWidthSensorOff

instance ToText (FilamentWidthSensorOff Required) where
  toText r = mkCmd "M406" []

--------------------------------------------------------------------------------
--- Read Filament Width (M407)
--- Docs: https://marlinfw.org/docs/gcode/M407.html
--------------------------------------------------------------------------------

data ReadFilamentWidth (f :: Type -> Type)
  = ReadFilamentWidth
  {}
  deriving (Generic)

instance Default (ReadFilamentWidth NotDefined)

instance Upcast (ReadFilamentWidth Required) GCodeCmd where
  upcast = Cmd_ReadFilamentWidth

instance ToText (ReadFilamentWidth Required) where
  toText r = mkCmd "M407" []

--------------------------------------------------------------------------------
--- Filament Runout (M412)
--- Docs: https://marlinfw.org/docs/gcode/M412.html
--------------------------------------------------------------------------------

data FilamentRunout (f :: Type -> Type)
  = FilamentRunout
  { runoutDistance :: Maybe Mm,
    hostHandling :: Maybe Flag,
    motionSensorLength :: Maybe Mm,
    resetSensor :: Maybe Flag,
    enable :: Maybe Flag
  }
  deriving (Generic)

instance Default (FilamentRunout NotDefined)

instance Upcast (FilamentRunout Required) GCodeCmd where
  upcast = Cmd_FilamentRunout

instance ToText (FilamentRunout Required) where
  toText r =
    mkCmd
      "M412"
      [ mkArg 'D' r.runoutDistance,
        mkArg 'H' r.hostHandling,
        mkArg 'L' r.motionSensorLength,
        mkArg 'R' r.resetSensor,
        mkArg 'S' r.enable
      ]

--------------------------------------------------------------------------------
--- Power-loss Recovery (M413)
--- Docs: https://marlinfw.org/docs/gcode/M413.html
--------------------------------------------------------------------------------

data Power_lossRecovery (f :: Type -> Type)
  = Power_lossRecovery
  { enable :: Maybe Flag
  }
  deriving (Generic)

instance Default (Power_lossRecovery NotDefined)

instance Upcast (Power_lossRecovery Required) GCodeCmd where
  upcast = Cmd_Power_lossRecovery

instance ToText (Power_lossRecovery Required) where
  toText r = mkCmd "M413" [mkArg 'S' r.enable]

--------------------------------------------------------------------------------
--- LCD Language (M414)
--- Docs: https://marlinfw.org/docs/gcode/M414.html
--------------------------------------------------------------------------------

data LCDLanguage (f :: Type -> Type)
  = LCDLanguage
  { languageIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (LCDLanguage NotDefined)

instance Upcast (LCDLanguage Required) GCodeCmd where
  upcast = Cmd_LCDLanguage

instance ToText (LCDLanguage Required) where
  toText r = mkCmd "M414" [mkArg 'S' r.languageIndex]

--------------------------------------------------------------------------------
--- Bed Leveling State (M420)
--- Docs: https://marlinfw.org/docs/gcode/M420.html
--------------------------------------------------------------------------------

data BedLevelingState (f :: Type -> Type)
  = BedLevelingState
  { centerMesh :: Maybe Flag,
    loadMeshIndex :: Maybe Index,
    enable :: Maybe Flag,
    format :: Maybe Index,
    verbose :: Maybe Flag,
    fadeHeight :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedLevelingState NotDefined)

instance Upcast (BedLevelingState Required) GCodeCmd where
  upcast = Cmd_BedLevelingState

instance ToText (BedLevelingState Required) where
  toText r =
    mkCmd
      "M420"
      [ mkArg 'C' r.centerMesh,
        mkArg 'L' r.loadMeshIndex,
        mkArg 'S' r.enable,
        mkArg 'T' r.format,
        mkArg 'V' r.verbose,
        mkArg 'Z' r.fadeHeight
      ]

--------------------------------------------------------------------------------
--- Set Mesh Value (M421)
--- Docs: https://marlinfw.org/docs/gcode/M421.html
--------------------------------------------------------------------------------

data SetMeshValue (f :: Type -> Type)
  = SetMeshValue
  { setClosest :: Maybe Flag,
    xIndex :: Maybe Index,
    yIndex :: Maybe Index,
    setUndefined :: Maybe Flag,
    addToZ :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    zValue :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetMeshValue NotDefined)

instance Upcast (SetMeshValue Required) GCodeCmd where
  upcast = Cmd_SetMeshValue

instance ToText (SetMeshValue Required) where
  toText r =
    mkCmd
      "M421"
      [ mkArg 'C' r.setClosest,
        mkArg 'I' r.xIndex,
        mkArg 'J' r.yIndex,
        mkArg 'N' r.setUndefined,
        mkArg 'Q' r.addToZ,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.zValue
      ]

--------------------------------------------------------------------------------
--- Set Z Motor XY (M422)
--- Docs: https://marlinfw.org/docs/gcode/M422.html
--------------------------------------------------------------------------------

data SetZMotorXY (f :: Type -> Type)
  = SetZMotorXY
  { reset :: Maybe Flag,
    stepperIndex :: Maybe Index,
    knownPositionIndex :: Maybe Index,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm
  }
  deriving (Generic)

instance Default (SetZMotorXY NotDefined)

instance Upcast (SetZMotorXY Required) GCodeCmd where
  upcast = Cmd_SetZMotorXY

instance ToText (SetZMotorXY Required) where
  toText r =
    mkCmd
      "M422"
      [ mkArg 'R' r.reset,
        mkArg 'S' r.stepperIndex,
        mkArg 'W' r.knownPositionIndex,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY
      ]

--------------------------------------------------------------------------------
--- X Twist Compensation (M423)
--- Docs: https://marlinfw.org/docs/gcode/M423.html
--------------------------------------------------------------------------------

data XTwistCompensation (f :: Type -> Type)
  = XTwistCompensation
  { startingX :: Maybe Mm,
    endingX :: Maybe Mm,
    xSpacing :: Maybe Mm,
    reset :: Maybe Flag,
    arrayIndex :: Maybe Index,
    zOffset :: Maybe Mm
  }
  deriving (Generic)

instance Default (XTwistCompensation NotDefined)

instance Upcast (XTwistCompensation Required) GCodeCmd where
  upcast = Cmd_XTwistCompensation

instance ToText (XTwistCompensation Required) where
  toText r =
    mkCmd
      "M423"
      [ mkArg 'A' r.startingX,
        mkArg 'E' r.endingX,
        mkArg 'I' r.xSpacing,
        mkArg 'R' r.reset,
        mkArg 'X' r.arrayIndex,
        mkArg 'Z' r.zOffset
      ]

--------------------------------------------------------------------------------
--- Backlash Compensation (M425)
--- Docs: https://marlinfw.org/docs/gcode/M425.html
--------------------------------------------------------------------------------

data BacklashCompensation (f :: Type -> Type)
  = BacklashCompensation
  { correctionFactor :: Maybe Mm,
    smoothingDistance :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (BacklashCompensation NotDefined)

instance Upcast (BacklashCompensation Required) GCodeCmd where
  upcast = Cmd_BacklashCompensation

instance ToText (BacklashCompensation Required) where
  toText r =
    mkCmd
      "M425"
      [ mkArg 'F' r.correctionFactor,
        mkArg 'S' r.smoothingDistance,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Home Offsets Here (M428)
--- Docs: https://marlinfw.org/docs/gcode/M428.html
--------------------------------------------------------------------------------

data HomeOffsetsHere (f :: Type -> Type)
  = HomeOffsetsHere
  {}
  deriving (Generic)

instance Default (HomeOffsetsHere NotDefined)

instance Upcast (HomeOffsetsHere Required) GCodeCmd where
  upcast = Cmd_HomeOffsetsHere

instance ToText (HomeOffsetsHere Required) where
  toText r = mkCmd "M428" []

--------------------------------------------------------------------------------
--- Power Monitor (M430)
--- Docs: https://marlinfw.org/docs/gcode/M430.html
--------------------------------------------------------------------------------

data PowerMonitor (f :: Type -> Type)
  = PowerMonitor
  { displayCurrent :: Maybe Flag,
    displayVoltage :: Maybe Flag,
    displayPower :: Maybe Flag
  }
  deriving (Generic)

instance Default (PowerMonitor NotDefined)

instance Upcast (PowerMonitor Required) GCodeCmd where
  upcast = Cmd_PowerMonitor

instance ToText (PowerMonitor Required) where
  toText r =
    mkCmd
      "M430"
      [ mkArg 'I' r.displayCurrent,
        mkArg 'V' r.displayVoltage,
        mkArg 'W' r.displayPower
      ]

--------------------------------------------------------------------------------
--- Cancel Objects (M486)
--- Docs: https://marlinfw.org/docs/gcode/M486.html
--------------------------------------------------------------------------------

data CancelObjects (f :: Type -> Type)
  = CancelObjects
  { cancelCurrent :: Maybe Flag,
    cancelIndex :: Maybe Index,
    currentObjectIndex :: Maybe Index,
    objectCount :: Maybe Count,
    uncancelIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (CancelObjects NotDefined)

instance Upcast (CancelObjects Required) GCodeCmd where
  upcast = Cmd_CancelObjects

instance ToText (CancelObjects Required) where
  toText r =
    mkCmd
      "M486"
      [ mkArg 'C' r.cancelCurrent,
        mkArg 'P' r.cancelIndex,
        mkArg 'S' r.currentObjectIndex,
        mkArg 'T' r.objectCount,
        mkArg 'U' r.uncancelIndex
      ]

--------------------------------------------------------------------------------
--- Fixed-Time Motion (M493)
--- Docs: https://marlinfw.org/docs/gcode/M493.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data Fixed_TimeMotion (f :: Type -> Type)
  = Fixed_TimeMotion
  {}
  deriving (Generic)

instance Default (Fixed_TimeMotion NotDefined)

instance Upcast (Fixed_TimeMotion Required) GCodeCmd where
  upcast = Cmd_Fixed_TimeMotion

instance ToText (Fixed_TimeMotion Required) where
  toText r = mkCmd "M493" []

--------------------------------------------------------------------------------
--- FT Motion Trajectory Smoothing (M494)
--- Docs: https://marlinfw.org/docs/gcode/M494.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data FTMotionTrajectorySmoothing (f :: Type -> Type)
  = FTMotionTrajectorySmoothing
  {}
  deriving (Generic)

instance Default (FTMotionTrajectorySmoothing NotDefined)

instance Upcast (FTMotionTrajectorySmoothing Required) GCodeCmd where
  upcast = Cmd_FTMotionTrajectorySmoothing

instance ToText (FTMotionTrajectorySmoothing Required) where
  toText r = mkCmd "M494" []

--------------------------------------------------------------------------------
--- Validate EEPROM Contents (M504)
--- Docs: https://marlinfw.org/docs/gcode/M504.html
--------------------------------------------------------------------------------

data ValidateEEPROMContents (f :: Type -> Type)
  = ValidateEEPROMContents
  {}
  deriving (Generic)

instance Default (ValidateEEPROMContents NotDefined)

instance Upcast (ValidateEEPROMContents Required) GCodeCmd where
  upcast = Cmd_ValidateEEPROMContents

instance ToText (ValidateEEPROMContents Required) where
  toText r = mkCmd "M504" []

--------------------------------------------------------------------------------
--- Lock Machine (M510)
--- Docs: https://marlinfw.org/docs/gcode/M510.html
--------------------------------------------------------------------------------

data LockMachine (f :: Type -> Type)
  = LockMachine
  {}
  deriving (Generic)

instance Default (LockMachine NotDefined)

instance Upcast (LockMachine Required) GCodeCmd where
  upcast = Cmd_LockMachine

instance ToText (LockMachine Required) where
  toText r = mkCmd "M510" []

--------------------------------------------------------------------------------
--- Unlock Machine (M511)
--- Docs: https://marlinfw.org/docs/gcode/M511.html
--------------------------------------------------------------------------------

data UnlockMachine (f :: Type -> Type)
  = UnlockMachine
  { passcode :: f Count
  }
  deriving (Generic)

instance Default (UnlockMachine NotDefined)

instance Upcast (UnlockMachine Required) GCodeCmd where
  upcast = Cmd_UnlockMachine

instance ToText (UnlockMachine Required) where
  toText r = mkCmd "M511" [mkReqArg 'P' r.passcode]

--------------------------------------------------------------------------------
--- Set Passcode (M512)
--- Docs: https://marlinfw.org/docs/gcode/M512.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetPasscode (f :: Type -> Type)
  = SetPasscode
  {}
  deriving (Generic)

instance Default (SetPasscode NotDefined)

instance Upcast (SetPasscode Required) GCodeCmd where
  upcast = Cmd_SetPasscode

instance ToText (SetPasscode Required) where
  toText r = mkCmd "M512" []

--------------------------------------------------------------------------------
--- Abort SD Print (M524)
--- Docs: https://marlinfw.org/docs/gcode/M524.html
--------------------------------------------------------------------------------

data AbortSDPrint (f :: Type -> Type)
  = AbortSDPrint
  {}
  deriving (Generic)

instance Default (AbortSDPrint NotDefined)

instance Upcast (AbortSDPrint Required) GCodeCmd where
  upcast = Cmd_AbortSDPrint

instance ToText (AbortSDPrint Required) where
  toText r = mkCmd "M524" []

--------------------------------------------------------------------------------
--- Endstops Abort SD (M540)
--- Docs: https://marlinfw.org/docs/gcode/M540.html
--------------------------------------------------------------------------------

data EndstopsAbortSD (f :: Type -> Type)
  = EndstopsAbortSD
  { enable :: f Flag
  }
  deriving (Generic)

instance Default (EndstopsAbortSD NotDefined)

instance Upcast (EndstopsAbortSD Required) GCodeCmd where
  upcast = Cmd_EndstopsAbortSD

instance ToText (EndstopsAbortSD Required) where
  toText r = mkCmd "M540" [mkReqArg 'S' r.enable]

--------------------------------------------------------------------------------
--- Machine Name (M550)
--- Docs: https://marlinfw.org/docs/gcode/M550.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data MachineName (f :: Type -> Type)
  = MachineName
  {}
  deriving (Generic)

instance Default (MachineName NotDefined)

instance Upcast (MachineName Required) GCodeCmd where
  upcast = Cmd_MachineName

instance ToText (MachineName Required) where
  toText r = mkCmd "M550" []

--------------------------------------------------------------------------------
--- Ethernet IP Address, Network IF (M552)
--- Docs: https://marlinfw.org/docs/gcode/M552.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data EthernetIPAddress_NetworkIF (f :: Type -> Type)
  = EthernetIPAddress_NetworkIF
  {}
  deriving (Generic)

instance Default (EthernetIPAddress_NetworkIF NotDefined)

instance Upcast (EthernetIPAddress_NetworkIF Required) GCodeCmd where
  upcast = Cmd_EthernetIPAddress_NetworkIF

instance ToText (EthernetIPAddress_NetworkIF Required) where
  toText r = mkCmd "M552" []

--------------------------------------------------------------------------------
--- Ethernet Subnet Mask (M553)
--- Docs: https://marlinfw.org/docs/gcode/M553.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data EthernetSubnetMask (f :: Type -> Type)
  = EthernetSubnetMask
  {}
  deriving (Generic)

instance Default (EthernetSubnetMask NotDefined)

instance Upcast (EthernetSubnetMask Required) GCodeCmd where
  upcast = Cmd_EthernetSubnetMask

instance ToText (EthernetSubnetMask Required) where
  toText r = mkCmd "M553" []

--------------------------------------------------------------------------------
--- Ethernet Gateway IP Address (M554)
--- Docs: https://marlinfw.org/docs/gcode/M554.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data EthernetGatewayIPAddress (f :: Type -> Type)
  = EthernetGatewayIPAddress
  {}
  deriving (Generic)

instance Default (EthernetGatewayIPAddress NotDefined)

instance Upcast (EthernetGatewayIPAddress Required) GCodeCmd where
  upcast = Cmd_EthernetGatewayIPAddress

instance ToText (EthernetGatewayIPAddress Required) where
  toText r = mkCmd "M554" []

--------------------------------------------------------------------------------
--- Set TMC Stepping Mode (M569)
--- Docs: https://marlinfw.org/docs/gcode/M569.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetTMCSteppingMode (f :: Type -> Type)
  = SetTMCSteppingMode
  {}
  deriving (Generic)

instance Default (SetTMCSteppingMode NotDefined)

instance Upcast (SetTMCSteppingMode Required) GCodeCmd where
  upcast = Cmd_SetTMCSteppingMode

instance ToText (SetTMCSteppingMode Required) where
  toText r = mkCmd "M569" []

--------------------------------------------------------------------------------
--- Serial Baud Rate (M575)
--- Docs: https://marlinfw.org/docs/gcode/M575.html
--------------------------------------------------------------------------------

data SerialBaudRate (f :: Type -> Type)
  = SerialBaudRate
  { baudRate :: f Count,
    portIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (SerialBaudRate NotDefined)

instance Upcast (SerialBaudRate Required) GCodeCmd where
  upcast = Cmd_SerialBaudRate

instance ToText (SerialBaudRate Required) where
  toText r =
    mkCmd
      "M575"
      [ mkReqArg 'B' r.baudRate,
        mkArg 'P' r.portIndex
      ]

--------------------------------------------------------------------------------
--- Nonlinear Extrusion Control (M592)
--- Docs: https://marlinfw.org/docs/gcode/M592.html
--------------------------------------------------------------------------------

data NonlinearExtrusionControl (f :: Type -> Type)
  = NonlinearExtrusionControl
  { quadraticCoeff :: Maybe Mm,
    linearCoeff :: Maybe Mm,
    constantCoeff :: Maybe Mm,
    enable :: Maybe Flag
  }
  deriving (Generic)

instance Default (NonlinearExtrusionControl NotDefined)

instance Upcast (NonlinearExtrusionControl Required) GCodeCmd where
  upcast = Cmd_NonlinearExtrusionControl

instance ToText (NonlinearExtrusionControl Required) where
  toText r =
    mkCmd
      "M592"
      [ mkArg 'A' r.quadraticCoeff,
        mkArg 'B' r.linearCoeff,
        mkArg 'C' r.constantCoeff,
        mkArg 'S' r.enable
      ]

--------------------------------------------------------------------------------
--- ZV Input Shaping (M593)
--- Docs: https://marlinfw.org/docs/gcode/M593.html
--------------------------------------------------------------------------------

data ZVInputShaping (f :: Type -> Type)
  = ZVInputShaping
  { zeta :: Maybe Mm,
    frequencyHz :: Maybe Mm,
    axisX :: Maybe Flag,
    axisY :: Maybe Flag,
    axisZ :: Maybe Flag
  }
  deriving (Generic)

instance Default (ZVInputShaping NotDefined)

instance Upcast (ZVInputShaping Required) GCodeCmd where
  upcast = Cmd_ZVInputShaping

instance ToText (ZVInputShaping Required) where
  toText r =
    mkCmd
      "M593"
      [ mkArg 'D' r.zeta,
        mkArg 'F' r.frequencyHz,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Filament Change (M600)
--- Docs: https://marlinfw.org/docs/gcode/M600.html
--------------------------------------------------------------------------------

data FilamentChange (f :: Type -> Type)
  = FilamentChange
  { beeps :: Maybe Count,
    retractLength :: Maybe Mm,
    loadLength :: Maybe Mm,
    resumeTemp :: Maybe Celsius,
    targetExtruder :: Maybe Index,
    unloadLength :: Maybe Mm,
    axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    zLift :: Maybe Mm
  }
  deriving (Generic)

instance Default (FilamentChange NotDefined)

instance Upcast (FilamentChange Required) GCodeCmd where
  upcast = Cmd_FilamentChange

instance ToText (FilamentChange Required) where
  toText r =
    mkCmd
      "M600"
      [ mkArg 'B' r.beeps,
        mkArg 'E' r.retractLength,
        mkArg 'L' r.loadLength,
        mkArg 'R' r.resumeTemp,
        mkArg 'T' r.targetExtruder,
        mkArg 'U' r.unloadLength,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.zLift
      ]

--------------------------------------------------------------------------------
--- Configure Filament Change (M603)
--- Docs: https://marlinfw.org/docs/gcode/M603.html
--------------------------------------------------------------------------------

data ConfigureFilamentChange (f :: Type -> Type)
  = ConfigureFilamentChange
  { loadLength :: Maybe Mm,
    targetExtruder :: Maybe Index,
    unloadLength :: Maybe Mm
  }
  deriving (Generic)

instance Default (ConfigureFilamentChange NotDefined)

instance Upcast (ConfigureFilamentChange Required) GCodeCmd where
  upcast = Cmd_ConfigureFilamentChange

instance ToText (ConfigureFilamentChange Required) where
  toText r =
    mkCmd
      "M603"
      [ mkArg 'L' r.loadLength,
        mkArg 'T' r.targetExtruder,
        mkArg 'U' r.unloadLength
      ]

--------------------------------------------------------------------------------
--- Multi Nozzle Mode (M605)
--- Docs: https://marlinfw.org/docs/gcode/M605.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data MultiNozzleMode (f :: Type -> Type)
  = MultiNozzleMode
  {}
  deriving (Generic)

instance Default (MultiNozzleMode NotDefined)

instance Upcast (MultiNozzleMode Required) GCodeCmd where
  upcast = Cmd_MultiNozzleMode

instance ToText (MultiNozzleMode Required) where
  toText r = mkCmd "M605" []

--------------------------------------------------------------------------------
--- Delta Configuration (M665)
--- Docs: https://marlinfw.org/docs/gcode/M665.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data DeltaConfiguration (f :: Type -> Type)
  = DeltaConfiguration
  {}
  deriving (Generic)

instance Default (DeltaConfiguration NotDefined)

instance Upcast (DeltaConfiguration Required) GCodeCmd where
  upcast = Cmd_DeltaConfiguration

instance ToText (DeltaConfiguration Required) where
  toText r = mkCmd "M665" []

--------------------------------------------------------------------------------
--- Set Delta Endstop Adjustments (M666)
--- Docs: https://marlinfw.org/docs/gcode/M666.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetDeltaEndstopAdjustments (f :: Type -> Type)
  = SetDeltaEndstopAdjustments
  {}
  deriving (Generic)

instance Default (SetDeltaEndstopAdjustments NotDefined)

instance Upcast (SetDeltaEndstopAdjustments Required) GCodeCmd where
  upcast = Cmd_SetDeltaEndstopAdjustments

instance ToText (SetDeltaEndstopAdjustments Required) where
  toText r = mkCmd "M666" []

--------------------------------------------------------------------------------
--- Duet Smart Effector Sensitivity (M672)
--- Docs: https://marlinfw.org/docs/gcode/M672.html
--------------------------------------------------------------------------------

data DuetSmartEffectorSensitivity (f :: Type -> Type)
  = DuetSmartEffectorSensitivity
  { revertFactory :: Maybe Flag,
    sensitivity :: Maybe Index
  }
  deriving (Generic)

instance Default (DuetSmartEffectorSensitivity NotDefined)

instance Upcast (DuetSmartEffectorSensitivity Required) GCodeCmd where
  upcast = Cmd_DuetSmartEffectorSensitivity

instance ToText (DuetSmartEffectorSensitivity Required) where
  toText r =
    mkCmd
      "M672"
      [ mkArg 'R' r.revertFactory,
        mkArg 'S' r.sensitivity
      ]

--------------------------------------------------------------------------------
--- Load Filament (M701)
--- Docs: https://marlinfw.org/docs/gcode/M701.html
--------------------------------------------------------------------------------

data LoadFilament (f :: Type -> Type)
  = LoadFilament
  { extrudeDistance :: f Mm,
    extruderIndex :: Maybe Index,
    zMove :: Maybe Mm
  }
  deriving (Generic)

instance Default (LoadFilament NotDefined)

instance Upcast (LoadFilament Required) GCodeCmd where
  upcast = Cmd_LoadFilament

instance ToText (LoadFilament Required) where
  toText r =
    mkCmd
      "M701"
      [ mkReqArg 'L' r.extrudeDistance,
        mkArg 'T' r.extruderIndex,
        mkArg 'Z' r.zMove
      ]

--------------------------------------------------------------------------------
--- Unload Filament (M702)
--- Docs: https://marlinfw.org/docs/gcode/M702.html
--------------------------------------------------------------------------------

data UnloadFilament (f :: Type -> Type)
  = UnloadFilament
  { extruderIndex :: Maybe Index,
    retractDistance :: f Mm,
    zMove :: Maybe Mm
  }
  deriving (Generic)

instance Default (UnloadFilament NotDefined)

instance Upcast (UnloadFilament Required) GCodeCmd where
  upcast = Cmd_UnloadFilament

instance ToText (UnloadFilament Required) where
  toText r =
    mkCmd
      "M702"
      [ mkArg 'T' r.extruderIndex,
        mkReqArg 'U' r.retractDistance,
        mkArg 'Z' r.zMove
      ]

--------------------------------------------------------------------------------
--- Controller Fan Settings (M710)
--- Docs: https://marlinfw.org/docs/gcode/M710.html
--------------------------------------------------------------------------------

data ControllerFanSettings (f :: Type -> Type)
  = ControllerFanSettings
  { autoSpeed :: Maybe Flag,
    extraDuration :: Maybe Seconds,
    idleSpeed :: Maybe Index,
    reset :: Maybe Flag,
    activeSpeed :: Maybe Index
  }
  deriving (Generic)

instance Default (ControllerFanSettings NotDefined)

instance Upcast (ControllerFanSettings Required) GCodeCmd where
  upcast = Cmd_ControllerFanSettings

instance ToText (ControllerFanSettings Required) where
  toText r =
    mkCmd
      "M710"
      [ mkArg 'A' r.autoSpeed,
        mkArg 'D' r.extraDuration,
        mkArg 'I' r.idleSpeed,
        mkArg 'R' r.reset,
        mkArg 'S' r.activeSpeed
      ]

--------------------------------------------------------------------------------
--- Repeat Marker (M808)
--- Docs: https://marlinfw.org/docs/gcode/M808.html
--------------------------------------------------------------------------------

data RepeatMarker (f :: Type -> Type)
  = RepeatMarker
  { loopCount :: Maybe Count
  }
  deriving (Generic)

instance Default (RepeatMarker NotDefined)

instance Upcast (RepeatMarker Required) GCodeCmd where
  upcast = Cmd_RepeatMarker

instance ToText (RepeatMarker Required) where
  toText r = mkCmd "M808" [mkArg 'L' r.loopCount]

--------------------------------------------------------------------------------
--- G-code Macros (M810)
--- Docs: https://marlinfw.org/docs/gcode/M810-M819.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data G_codeMacros (f :: Type -> Type)
  = G_codeMacros
  {}
  deriving (Generic)

instance Default (G_codeMacros NotDefined)

instance Upcast (G_codeMacros Required) GCodeCmd where
  upcast = Cmd_G_codeMacros

instance ToText (G_codeMacros Required) where
  toText r = mkCmd "M810" []

--------------------------------------------------------------------------------
--- Report G-code Macros (M820)
--- Docs: https://marlinfw.org/docs/gcode/M820.html
--------------------------------------------------------------------------------

data ReportG_codeMacros (f :: Type -> Type)
  = ReportG_codeMacros
  {}
  deriving (Generic)

instance Default (ReportG_codeMacros NotDefined)

instance Upcast (ReportG_codeMacros Required) GCodeCmd where
  upcast = Cmd_ReportG_codeMacros

instance ToText (ReportG_codeMacros Required) where
  toText r = mkCmd "M820" []

--------------------------------------------------------------------------------
--- XYZ Probe Offset (M851)
--- Docs: https://marlinfw.org/docs/gcode/M851.html
--------------------------------------------------------------------------------

data XYZProbeOffset (f :: Type -> Type)
  = XYZProbeOffset
  { axisX :: Maybe Mm,
    axisY :: Maybe Mm,
    axisZ :: Maybe Mm
  }
  deriving (Generic)

instance Default (XYZProbeOffset NotDefined)

instance Upcast (XYZProbeOffset Required) GCodeCmd where
  upcast = Cmd_XYZProbeOffset

instance ToText (XYZProbeOffset Required) where
  toText r =
    mkCmd
      "M851"
      [ mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Bed Skew Compensation (M852)
--- Docs: https://marlinfw.org/docs/gcode/M852.html
--------------------------------------------------------------------------------

data BedSkewCompensation (f :: Type -> Type)
  = BedSkewCompensation
  { xySkew :: Maybe Mm,
    xzSkew :: Maybe Mm,
    yzSkew :: Maybe Mm,
    xySkewAlias :: Maybe Mm
  }
  deriving (Generic)

instance Default (BedSkewCompensation NotDefined)

instance Upcast (BedSkewCompensation Required) GCodeCmd where
  upcast = Cmd_BedSkewCompensation

instance ToText (BedSkewCompensation Required) where
  toText r =
    mkCmd
      "M852"
      [ mkArg 'I' r.xySkew,
        mkArg 'J' r.xzSkew,
        mkArg 'K' r.yzSkew,
        mkArg 'S' r.xySkewAlias
      ]

--------------------------------------------------------------------------------
--- I2C Position Encoders (M860)
--- Docs: https://marlinfw.org/docs/gcode/M860-M869.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data I2CPositionEncoders (f :: Type -> Type)
  = I2CPositionEncoders
  {}
  deriving (Generic)

instance Default (I2CPositionEncoders NotDefined)

instance Upcast (I2CPositionEncoders Required) GCodeCmd where
  upcast = Cmd_I2CPositionEncoders

instance ToText (I2CPositionEncoders Required) where
  toText r = mkCmd "M860" []

--------------------------------------------------------------------------------
--- Probe Temperature Config (M871)
--- Docs: https://marlinfw.org/docs/gcode/M871.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ProbeTemperatureConfig (f :: Type -> Type)
  = ProbeTemperatureConfig
  {}
  deriving (Generic)

instance Default (ProbeTemperatureConfig NotDefined)

instance Upcast (ProbeTemperatureConfig Required) GCodeCmd where
  upcast = Cmd_ProbeTemperatureConfig

instance ToText (ProbeTemperatureConfig Required) where
  toText r = mkCmd "M871" []

--------------------------------------------------------------------------------
--- Handle Prompt Response (M876)
--- Docs: https://marlinfw.org/docs/gcode/M876.html
--------------------------------------------------------------------------------

data HandlePromptResponse (f :: Type -> Type)
  = HandlePromptResponse
  { response :: f Index
  }
  deriving (Generic)

instance Default (HandlePromptResponse NotDefined)

instance Upcast (HandlePromptResponse Required) GCodeCmd where
  upcast = Cmd_HandlePromptResponse

instance ToText (HandlePromptResponse Required) where
  toText r = mkCmd "M876" [mkReqArg 'S' r.response]

--------------------------------------------------------------------------------
--- Linear Advance Factor (M900)
--- Docs: https://marlinfw.org/docs/gcode/M900.html
--------------------------------------------------------------------------------

data LinearAdvanceFactor (f :: Type -> Type)
  = LinearAdvanceFactor
  { kFactor :: Maybe Mm,
    secondKFactor :: Maybe Mm,
    slot :: Maybe Index,
    extruderIndex :: Maybe Index
  }
  deriving (Generic)

instance Default (LinearAdvanceFactor NotDefined)

instance Upcast (LinearAdvanceFactor Required) GCodeCmd where
  upcast = Cmd_LinearAdvanceFactor

instance ToText (LinearAdvanceFactor Required) where
  toText r =
    mkCmd
      "M900"
      [ mkArg 'K' r.kFactor,
        mkArg 'L' r.secondKFactor,
        mkArg 'S' r.slot,
        mkArg 'T' r.extruderIndex
      ]

--------------------------------------------------------------------------------
--- Stepper Motor Current (M906)
--- Docs: https://marlinfw.org/docs/gcode/M906.html
--------------------------------------------------------------------------------

data StepperMotorCurrent (f :: Type -> Type)
  = StepperMotorCurrent
  { axisExtrusion :: Maybe Count,
    stepperIndex :: Maybe Index,
    extruderIndex :: Maybe Index,
    axisX :: Maybe Count,
    axisY :: Maybe Count,
    axisZ :: Maybe Count
  }
  deriving (Generic)

instance Default (StepperMotorCurrent NotDefined)

instance Upcast (StepperMotorCurrent Required) GCodeCmd where
  upcast = Cmd_StepperMotorCurrent

instance ToText (StepperMotorCurrent Required) where
  toText r =
    mkCmd
      "M906"
      [ mkArg 'E' r.axisExtrusion,
        mkArg 'I' r.stepperIndex,
        mkArg 'T' r.extruderIndex,
        mkArg 'X' r.axisX,
        mkArg 'Y' r.axisY,
        mkArg 'Z' r.axisZ
      ]

--------------------------------------------------------------------------------
--- Trimpot Stepper Motor Current (M907)
--- Docs: https://marlinfw.org/docs/gcode/M907.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TrimpotStepperMotorCurrent (f :: Type -> Type)
  = TrimpotStepperMotorCurrent
  {}
  deriving (Generic)

instance Default (TrimpotStepperMotorCurrent NotDefined)

instance Upcast (TrimpotStepperMotorCurrent Required) GCodeCmd where
  upcast = Cmd_TrimpotStepperMotorCurrent

instance ToText (TrimpotStepperMotorCurrent Required) where
  toText r = mkCmd "M907" []

--------------------------------------------------------------------------------
--- Set Trimpot Pins (M908)
--- Docs: https://marlinfw.org/docs/gcode/M908.html
--------------------------------------------------------------------------------

data SetTrimpotPins (f :: Type -> Type)
  = SetTrimpotPins
  { pin :: f Index,
    current :: f Index
  }
  deriving (Generic)

instance Default (SetTrimpotPins NotDefined)

instance Upcast (SetTrimpotPins Required) GCodeCmd where
  upcast = Cmd_SetTrimpotPins

instance ToText (SetTrimpotPins Required) where
  toText r =
    mkCmd
      "M908"
      [ mkReqArg 'P' r.pin,
        mkReqArg 'S' r.current
      ]

--------------------------------------------------------------------------------
--- Report DAC Stepper Current (M909)
--- Docs: https://marlinfw.org/docs/gcode/M909.html
--------------------------------------------------------------------------------

data ReportDACStepperCurrent (f :: Type -> Type)
  = ReportDACStepperCurrent
  {}
  deriving (Generic)

instance Default (ReportDACStepperCurrent NotDefined)

instance Upcast (ReportDACStepperCurrent Required) GCodeCmd where
  upcast = Cmd_ReportDACStepperCurrent

instance ToText (ReportDACStepperCurrent Required) where
  toText r = mkCmd "M909" []

--------------------------------------------------------------------------------
--- Commit DAC to EEPROM (M910)
--- Docs: https://marlinfw.org/docs/gcode/M910.html
--------------------------------------------------------------------------------

data CommitDACtoEEPROM (f :: Type -> Type)
  = CommitDACtoEEPROM
  {}
  deriving (Generic)

instance Default (CommitDACtoEEPROM NotDefined)

instance Upcast (CommitDACtoEEPROM Required) GCodeCmd where
  upcast = Cmd_CommitDACtoEEPROM

instance ToText (CommitDACtoEEPROM Required) where
  toText r = mkCmd "M910" []

--------------------------------------------------------------------------------
--- TMC OT Pre-Warn Condition (M911)
--- Docs: https://marlinfw.org/docs/gcode/M911.html
--------------------------------------------------------------------------------

data TMCOTPre_WarnCondition (f :: Type -> Type)
  = TMCOTPre_WarnCondition
  {}
  deriving (Generic)

instance Default (TMCOTPre_WarnCondition NotDefined)

instance Upcast (TMCOTPre_WarnCondition Required) GCodeCmd where
  upcast = Cmd_TMCOTPre_WarnCondition

instance ToText (TMCOTPre_WarnCondition Required) where
  toText r = mkCmd "M911" []

--------------------------------------------------------------------------------
--- Clear TMC OT Pre-Warn (M912)
--- Docs: https://marlinfw.org/docs/gcode/M912.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data ClearTMCOTPre_Warn (f :: Type -> Type)
  = ClearTMCOTPre_Warn
  {}
  deriving (Generic)

instance Default (ClearTMCOTPre_Warn NotDefined)

instance Upcast (ClearTMCOTPre_Warn Required) GCodeCmd where
  upcast = Cmd_ClearTMCOTPre_Warn

instance ToText (ClearTMCOTPre_Warn Required) where
  toText r = mkCmd "M912" []

--------------------------------------------------------------------------------
--- Set Hybrid Threshold Speed (M913)
--- Docs: https://marlinfw.org/docs/gcode/M913.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data SetHybridThresholdSpeed (f :: Type -> Type)
  = SetHybridThresholdSpeed
  {}
  deriving (Generic)

instance Default (SetHybridThresholdSpeed NotDefined)

instance Upcast (SetHybridThresholdSpeed Required) GCodeCmd where
  upcast = Cmd_SetHybridThresholdSpeed

instance ToText (SetHybridThresholdSpeed Required) where
  toText r = mkCmd "M913" []

--------------------------------------------------------------------------------
--- TMC Bump Sensitivity (M914)
--- Docs: https://marlinfw.org/docs/gcode/M914.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TMCBumpSensitivity (f :: Type -> Type)
  = TMCBumpSensitivity
  {}
  deriving (Generic)

instance Default (TMCBumpSensitivity NotDefined)

instance Upcast (TMCBumpSensitivity Required) GCodeCmd where
  upcast = Cmd_TMCBumpSensitivity

instance ToText (TMCBumpSensitivity Required) where
  toText r = mkCmd "M914" []

--------------------------------------------------------------------------------
--- TMC Z Axis Calibration (M915)
--- Docs: https://marlinfw.org/docs/gcode/M915.html
--------------------------------------------------------------------------------

data TMCZAxisCalibration (f :: Type -> Type)
  = TMCZAxisCalibration
  { current :: Maybe Count,
    extraHeight :: Maybe Mm
  }
  deriving (Generic)

instance Default (TMCZAxisCalibration NotDefined)

instance Upcast (TMCZAxisCalibration Required) GCodeCmd where
  upcast = Cmd_TMCZAxisCalibration

instance ToText (TMCZAxisCalibration Required) where
  toText r =
    mkCmd
      "M915"
      [ mkArg 'S' r.current,
        mkArg 'Z' r.extraHeight
      ]

--------------------------------------------------------------------------------
--- L6474 Thermal Warning Test (M916)
--- Docs: https://marlinfw.org/docs/gcode/M916.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data L6474ThermalWarningTest (f :: Type -> Type)
  = L6474ThermalWarningTest
  {}
  deriving (Generic)

instance Default (L6474ThermalWarningTest NotDefined)

instance Upcast (L6474ThermalWarningTest Required) GCodeCmd where
  upcast = Cmd_L6474ThermalWarningTest

instance ToText (L6474ThermalWarningTest Required) where
  toText r = mkCmd "M916" []

--------------------------------------------------------------------------------
--- L6474 Overcurrent Warning Test (M917)
--- Docs: https://marlinfw.org/docs/gcode/M917.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data L6474OvercurrentWarningTest (f :: Type -> Type)
  = L6474OvercurrentWarningTest
  {}
  deriving (Generic)

instance Default (L6474OvercurrentWarningTest NotDefined)

instance Upcast (L6474OvercurrentWarningTest Required) GCodeCmd where
  upcast = Cmd_L6474OvercurrentWarningTest

instance ToText (L6474OvercurrentWarningTest Required) where
  toText r = mkCmd "M917" []

--------------------------------------------------------------------------------
--- L6474 Speed Warning Test (M918)
--- Docs: https://marlinfw.org/docs/gcode/M918.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data L6474SpeedWarningTest (f :: Type -> Type)
  = L6474SpeedWarningTest
  {}
  deriving (Generic)

instance Default (L6474SpeedWarningTest NotDefined)

instance Upcast (L6474SpeedWarningTest Required) GCodeCmd where
  upcast = Cmd_L6474SpeedWarningTest

instance ToText (L6474SpeedWarningTest Required) where
  toText r = mkCmd "M918" []

--------------------------------------------------------------------------------
--- TMC Chopper Timing (M919)
--- Docs: https://marlinfw.org/docs/gcode/M919.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TMCChopperTiming (f :: Type -> Type)
  = TMCChopperTiming
  {}
  deriving (Generic)

instance Default (TMCChopperTiming NotDefined)

instance Upcast (TMCChopperTiming Required) GCodeCmd where
  upcast = Cmd_TMCChopperTiming

instance ToText (TMCChopperTiming Required) where
  toText r = mkCmd "M919" []

--------------------------------------------------------------------------------
--- TMC Homing Current (M920)
--- Docs: https://marlinfw.org/docs/gcode/M920.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data TMCHomingCurrent (f :: Type -> Type)
  = TMCHomingCurrent
  {}
  deriving (Generic)

instance Default (TMCHomingCurrent NotDefined)

instance Upcast (TMCHomingCurrent Required) GCodeCmd where
  upcast = Cmd_TMCHomingCurrent

instance ToText (TMCHomingCurrent Required) where
  toText r = mkCmd "M920" []

--------------------------------------------------------------------------------
--- Start SD Logging (M928)
--- Docs: https://marlinfw.org/docs/gcode/M928.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data StartSDLogging (f :: Type -> Type)
  = StartSDLogging
  {}
  deriving (Generic)

instance Default (StartSDLogging NotDefined)

instance Upcast (StartSDLogging Required) GCodeCmd where
  upcast = Cmd_StartSDLogging

instance ToText (StartSDLogging Required) where
  toText r = mkCmd "M928" []

--------------------------------------------------------------------------------
--- Magnetic Parking Extruder (M951)
--- Docs: https://marlinfw.org/docs/gcode/M951.html
--------------------------------------------------------------------------------

data MagneticParkingExtruder (f :: Type -> Type)
  = MagneticParkingExtruder
  { compensationFactor :: Maybe Mm,
    travelFeedrate :: Maybe Mm,
    fastFeedrate :: Maybe MmPerMin,
    grabDistance :: Maybe Mm,
    slowFeedrate :: Maybe MmPerMin,
    x0Position :: Maybe Mm,
    x1Position :: Maybe Mm
  }
  deriving (Generic)

instance Default (MagneticParkingExtruder NotDefined)

instance Upcast (MagneticParkingExtruder Required) GCodeCmd where
  upcast = Cmd_MagneticParkingExtruder

instance ToText (MagneticParkingExtruder Required) where
  toText r =
    mkCmd
      "M951"
      [ mkArg 'C' r.compensationFactor,
        mkArg 'D' r.travelFeedrate,
        mkArg 'H' r.fastFeedrate,
        mkArg 'I' r.grabDistance,
        mkArg 'J' r.slowFeedrate,
        mkArg 'L' r.x0Position,
        mkArg 'R' r.x1Position
      ]

--------------------------------------------------------------------------------
--- Back Up Flash Settings to SD (M993)
--- Docs: https://marlinfw.org/docs/gcode/M993.html
--------------------------------------------------------------------------------

data BackUpFlashSettingstoSD (f :: Type -> Type)
  = BackUpFlashSettingstoSD
  {}
  deriving (Generic)

instance Default (BackUpFlashSettingstoSD NotDefined)

instance Upcast (BackUpFlashSettingstoSD Required) GCodeCmd where
  upcast = Cmd_BackUpFlashSettingstoSD

instance ToText (BackUpFlashSettingstoSD Required) where
  toText r = mkCmd "M993" []

--------------------------------------------------------------------------------
--- Restore Flash from SD (M994)
--- Docs: https://marlinfw.org/docs/gcode/M994.html
--------------------------------------------------------------------------------

data RestoreFlashfromSD (f :: Type -> Type)
  = RestoreFlashfromSD
  {}
  deriving (Generic)

instance Default (RestoreFlashfromSD NotDefined)

instance Upcast (RestoreFlashfromSD Required) GCodeCmd where
  upcast = Cmd_RestoreFlashfromSD

instance ToText (RestoreFlashfromSD Required) where
  toText r = mkCmd "M994" []

--------------------------------------------------------------------------------
--- Touch Screen Calibration (M995)
--- Docs: https://marlinfw.org/docs/gcode/M995.html
--------------------------------------------------------------------------------

data TouchScreenCalibration (f :: Type -> Type)
  = TouchScreenCalibration
  {}
  deriving (Generic)

instance Default (TouchScreenCalibration NotDefined)

instance Upcast (TouchScreenCalibration Required) GCodeCmd where
  upcast = Cmd_TouchScreenCalibration

instance ToText (TouchScreenCalibration Required) where
  toText r = mkCmd "M995" []

--------------------------------------------------------------------------------
--- Firmware Update (M997)
--- Docs: https://marlinfw.org/docs/gcode/M997.html
--------------------------------------------------------------------------------

data FirmwareUpdate (f :: Type -> Type)
  = FirmwareUpdate
  {}
  deriving (Generic)

instance Default (FirmwareUpdate NotDefined)

instance Upcast (FirmwareUpdate Required) GCodeCmd where
  upcast = Cmd_FirmwareUpdate

instance ToText (FirmwareUpdate Required) where
  toText r = mkCmd "M997" []

--------------------------------------------------------------------------------
--- MAX7219 Control (M7219)
--- Docs: https://marlinfw.org/docs/gcode/M7219.html
--- Status: UNIMPLEMENTED
--------------------------------------------------------------------------------

data MAX7219Control (f :: Type -> Type)
  = MAX7219Control
  {}
  deriving (Generic)

instance Default (MAX7219Control NotDefined)

instance Upcast (MAX7219Control Required) GCodeCmd where
  upcast = Cmd_MAX7219Control

instance ToText (MAX7219Control Required) where
  toText r = mkCmd "M7219" []

--------------------------------------------------------------------------------
--- Utils
--------------------------------------------------------------------------------

mkArg :: (Upcast a ArgValue) => Char -> Maybe a -> Maybe (Char, ArgValue)
mkArg c = fmap (\a -> (c, upcast a))

mkReqArg :: (Upcast a ArgValue) => Char -> Required a -> Maybe (Char, ArgValue)
mkReqArg c (Req a) = Just (c, upcast a)

mkCmd :: Text -> [Maybe (Char, ArgValue)] -> Text
mkCmd c args = if null args then c else c <> " " <> T.unwords (map (\(c, a) -> T.singleton c <> toText a) (catMaybes args))