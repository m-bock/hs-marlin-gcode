<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Marlin G-Code API Reference](#marlin-g-code-api-reference)
  - [`LinearMove_NoExtrusion` (G0)](#linearmove_noextrusion-g0)
  - [`LinearMove_WithExtrusion` (G1)](#linearmove_withextrusion-g1)
  - [`ArcCircleMove_Clockwise` (G2)](#arccirclemove_clockwise-g2)
  - [`ArcCircleMove_CounterClockwise` (G3)](#arccirclemove_counterclockwise-g3)
  - [`Dwell` (G4)](#dwell-g4)
  - [`BezierCubicSplineMove` (G5)](#beziercubicsplinemove-g5)
  - [`DirectStepperMove` (G6)](#directsteppermove-g6)
  - [`Retract` (G10)](#retract-g10)
  - [`Recover` (G11)](#recover-g11)
  - [`CleanNozzle` (G12)](#cleannozzle-g12)
  - [`CNCWorkspacePlanes_XY` (G17)](#cncworkspaceplanes_xy-g17)
  - [`CNCWorkspacePlanes_ZX` (G18)](#cncworkspaceplanes_zx-g18)
  - [`CNCWorkspacePlanes_YZ` (G19)](#cncworkspaceplanes_yz-g19)
  - [`InchUnits` (G20)](#inchunits-g20)
  - [`MillimeterUnits` (G21)](#millimeterunits-g21)
  - [`MeshValidationPattern` (G26)](#meshvalidationpattern-g26)
  - [`ParkToolehead` (G27)](#parktoolehead-g27)
  - [`AutoHome` (G28)](#autohome-g28)
  - [`BedLeveling_3Point` (G29)](#bedleveling_3point-g29)
  - [`BedLeveling_Bilinear` (G29)](#bedleveling_bilinear-g29)
  - [`BedLeveling_Linear` (G29)](#bedleveling_linear-g29)
  - [`BedLeveling_Manual` (G29)](#bedleveling_manual-g29)
  - [`BedLeveling_Unified` (G29)](#bedleveling_unified-g29)
  - [`SingleZProbe` (G30)](#singlezprobe-g30)
  - [`DockSled` (G31)](#docksled-g31)
  - [`UndockSled` (G32)](#undocksled-g32)
  - [`DeltaAutoCalibration` (G33)](#deltaautocalibration-g33)
  - [`ZSteppersAutoAlignment` (G34)](#zsteppersautoalignment-g34)
  - [`MechanicalGantryCalibration` (G34)](#mechanicalgantrycalibration-g34)
  - [`TrammingAssistant` (G35)](#trammingassistant-g35)
  - [`ProbeTarget_ErrorOnFail` (G38.2)](#probetarget_erroronfail-g382)
  - [`ProbeTarget_NoErrorOnFail` (G38.3)](#probetarget_noerroronfail-g383)
  - [`ProbeTarget_AwayErrorOnFail` (G38.4)](#probetarget_awayerroronfail-g384)
  - [`ProbeTarget_AwayNoErrorOnFail` (G38.5)](#probetarget_awaynoerroronfail-g385)
  - [`MovetoMeshCoordinate` (G42)](#movetomeshcoordinate-g42)
  - [`MoveinMachineCoordinates` (G53)](#moveinmachinecoordinates-g53)
  - [`SelectWorkspace_1` (G54)](#selectworkspace_1-g54)
  - [`SelectWorkspace_2` (G55)](#selectworkspace_2-g55)
  - [`SelectWorkspace_3` (G56)](#selectworkspace_3-g56)
  - [`SelectWorkspace_4` (G57)](#selectworkspace_4-g57)
  - [`SelectWorkspace_5` (G58)](#selectworkspace_5-g58)
  - [`SelectWorkspace_6` (G59)](#selectworkspace_6-g59)
  - [`SelectWorkspace_7` (G59.1)](#selectworkspace_7-g591)
  - [`SelectWorkspace_8` (G59.2)](#selectworkspace_8-g592)
  - [`SelectWorkspace_9` (G59.3)](#selectworkspace_9-g593)
  - [`StoredPositions` (G60)](#storedpositions-g60)
  - [`ReturntoSavedPosition` (G61)](#returntosavedposition-g61)
  - [`ProbeTemperatureCalibration` (G76)](#probetemperaturecalibration-g76)
  - [`CancelCurrentMotionMode` (G80)](#cancelcurrentmotionmode-g80)
  - [`AbsolutePositioning` (G90)](#absolutepositioning-g90)
  - [`RelativePositioning` (G91)](#relativepositioning-g91)
  - [`SetPosition` (G92)](#setposition-g92)
  - [`BacklashCalibration` (G425)](#backlashcalibration-g425)
  - [`UnconditionalStop` (M0)](#unconditionalstop-m0)
  - [`SpindleCWLaserOn` (M3)](#spindlecwlaseron-m3)
  - [`SpindleCCWLaserOn` (M4)](#spindleccwlaseron-m4)
  - [`SpindleLaserOff` (M5)](#spindlelaseroff-m5)
  - [`CoolantControls_Mist` (M7)](#coolantcontrols_mist-m7)
  - [`CoolantControls_Flood` (M8)](#coolantcontrols_flood-m8)
  - [`CoolantControls_Off` (M9)](#coolantcontrols_off-m9)
  - [`VacuumBlowerControl_On` (M10)](#vacuumblowercontrol_on-m10)
  - [`VacuumBlowerControl_Off` (M11)](#vacuumblowercontrol_off-m11)
  - [`ExpectedPrinterCheck` (M16)](#expectedprintercheck-m16)
  - [`EnableSteppers` (M17)](#enablesteppers-m17)
  - [`DisableSteppers` (M18)](#disablesteppers-m18)
  - [`ListSDCard` (M20)](#listsdcard-m20)
  - [`InitSDCard` (M21)](#initsdcard-m21)
  - [`ReleaseSDCard` (M22)](#releasesdcard-m22)
  - [`SelectSDFile` (M23)](#selectsdfile-m23)
  - [`StartorResumeSDPrint` (M24)](#startorresumesdprint-m24)
  - [`PauseSDPrint` (M25)](#pausesdprint-m25)
  - [`SetSDPosition` (M26)](#setsdposition-m26)
  - [`ReportSDPrintStatus` (M27)](#reportsdprintstatus-m27)
  - [`StartSDWrite` (M28)](#startsdwrite-m28)
  - [`StopSDWrite` (M29)](#stopsdwrite-m29)
  - [`DeleteSDFile` (M30)](#deletesdfile-m30)
  - [`ReportPrintTime` (M31)](#reportprinttime-m31)
  - [`SelectandStart` (M32)](#selectandstart-m32)
  - [`GetLongPath` (M33)](#getlongpath-m33)
  - [`SDCardSorting` (M34)](#sdcardsorting-m34)
  - [`SetPinState` (M42)](#setpinstate-m42)
  - [`PinsDebugging` (M43)](#pinsdebugging-m43)
  - [`ProbeRepeatabilityTest` (M48)](#proberepeatabilitytest-m48)
  - [`SetPrintProgress` (M73)](#setprintprogress-m73)
  - [`StartPrintJobTimer` (M75)](#startprintjobtimer-m75)
  - [`PausePrintJobTimer` (M76)](#pauseprintjobtimer-m76)
  - [`StopPrintJobTimer` (M77)](#stopprintjobtimer-m77)
  - [`PrintJobStats` (M78)](#printjobstats-m78)
  - [`PowerOn` (M80)](#poweron-m80)
  - [`PowerOff` (M81)](#poweroff-m81)
  - [`EAbsolute` (M82)](#eabsolute-m82)
  - [`ERelative` (M83)](#erelative-m83)
  - [`InactivityShutdown` (M85)](#inactivityshutdown-m85)
  - [`HotendIdleTimeout` (M86)](#hotendidletimeout-m86)
  - [`DisableHotendIdleTimeout` (M87)](#disablehotendidletimeout-m87)
  - [`SetAxisStepsperunit` (M92)](#setaxisstepsperunit-m92)
  - [`FreeMemory` (M100)](#freememory-m100)
  - [`ConfigureBedDistanceSensor` (M102)](#configurebeddistancesensor-m102)
  - [`SetHotendTemperature` (M104)](#sethotendtemperature-m104)
  - [`ReportTemperatures` (M105)](#reporttemperatures-m105)
  - [`SetFanSpeed` (M106)](#setfanspeed-m106)
  - [`FanOff` (M107)](#fanoff-m107)
  - [`BreakandContinue` (M108)](#breakandcontinue-m108)
  - [`WaitforHotendTemperature` (M109)](#waitforhotendtemperature-m109)
  - [`SetGetLineNumber` (M110)](#setgetlinenumber-m110)
  - [`DebugLevel` (M111)](#debuglevel-m111)
  - [`FullShutdown` (M112)](#fullshutdown-m112)
  - [`HostKeepalive` (M113)](#hostkeepalive-m113)
  - [`GetCurrentPosition` (M114)](#getcurrentposition-m114)
  - [`FirmwareInfo` (M115)](#firmwareinfo-m115)
  - [`SetLCDMessage` (M117)](#setlcdmessage-m117)
  - [`SerialPrint` (M118)](#serialprint-m118)
  - [`EndstopStates` (M119)](#endstopstates-m119)
  - [`EnableEndstops` (M120)](#enableendstops-m120)
  - [`DisableEndstops` (M121)](#disableendstops-m121)
  - [`TMCDebugging` (M122)](#tmcdebugging-m122)
  - [`FanTachometers` (M123)](#fantachometers-m123)
  - [`ParkHead` (M125)](#parkhead-m125)
  - [`Baricuda1Open` (M126)](#baricuda1open-m126)
  - [`Baricuda1Close` (M127)](#baricuda1close-m127)
  - [`Baricuda2Open` (M128)](#baricuda2open-m128)
  - [`Baricuda2Close` (M129)](#baricuda2close-m129)
  - [`SetBedTemperature` (M140)](#setbedtemperature-m140)
  - [`SetChamberTemperature` (M141)](#setchambertemperature-m141)
  - [`SetLaserCoolerTemperature` (M143)](#setlasercoolertemperature-m143)
  - [`SetMaterialPreset` (M145)](#setmaterialpreset-m145)
  - [`SetTemperatureUnits` (M149)](#settemperatureunits-m149)
  - [`SetRGBWColor` (M150)](#setrgbwcolor-m150)
  - [`PositionAutoReport` (M154)](#positionautoreport-m154)
  - [`TemperatureAutoReport` (M155)](#temperatureautoreport-m155)
  - [`SetMixFactor` (M163)](#setmixfactor-m163)
  - [`SaveMix` (M164)](#savemix-m164)
  - [`SetMix` (M165)](#setmix-m165)
  - [`GradientMix` (M166)](#gradientmix-m166)
  - [`WaitforBedTemperature` (M190)](#waitforbedtemperature-m190)
  - [`WaitforChamberTemperature` (M191)](#waitforchambertemperature-m191)
  - [`WaitforProbeTemperature` (M192)](#waitforprobetemperature-m192)
  - [`WaitForLaserCoolerTemperature` (M193)](#waitforlasercoolertemperature-m193)
  - [`VolumetricExtrusionDiameter` (M200)](#volumetricextrusiondiameter-m200)
  - [`PrintTravelMoveLimits` (M201)](#printtravelmovelimits-m201)
  - [`SetMaxFeedrate` (M203)](#setmaxfeedrate-m203)
  - [`SetStartingAcceleration` (M204)](#setstartingacceleration-m204)
  - [`SetAdvancedSettings` (M205)](#setadvancedsettings-m205)
  - [`SetHomeOffsets` (M206)](#sethomeoffsets-m206)
  - [`FirmwareRetractionSettings` (M207)](#firmwareretractionsettings-m207)
  - [`FirmwareRecoverSettings` (M208)](#firmwarerecoversettings-m208)
  - [`SetAutoRetract` (M209)](#setautoretract-m209)
  - [`HomingFeedrate` (M210)](#homingfeedrate-m210)
  - [`SoftwareEndstops` (M211)](#softwareendstops-m211)
  - [`FilamentSwapParameters` (M217)](#filamentswapparameters-m217)
  - [`SetHotendOffset` (M218)](#sethotendoffset-m218)
  - [`SetFeedratePercentage` (M220)](#setfeedratepercentage-m220)
  - [`SetFlowPercentage` (M221)](#setflowpercentage-m221)
  - [`WaitforPinState` (M226)](#waitforpinstate-m226)
  - [`TriggerCamera` (M240)](#triggercamera-m240)
  - [`LCDContrast` (M250)](#lcdcontrast-m250)
  - [`LCDSleepBacklightTimeout` (M255)](#lcdsleepbacklighttimeout-m255)
  - [`LCDBrightness` (M256)](#lcdbrightness-m256)
  - [`I2CSend` (M260)](#i2csend-m260)
  - [`I2CRequest` (M261)](#i2crequest-m261)
  - [`ScanI2CBus` (M265)](#scani2cbus-m265)
  - [`ServoPosition` (M280)](#servoposition-m280)
  - [`EditServoAngles` (M281)](#editservoangles-m281)
  - [`DetachServo` (M282)](#detachservo-m282)
  - [`Babystep` (M290)](#babystep-m290)
  - [`PlayTone` (M300)](#playtone-m300)
  - [`SetHotendPID` (M301)](#sethotendpid-m301)
  - [`ColdExtrude` (M302)](#coldextrude-m302)
  - [`PIDAutotune` (M303)](#pidautotune-m303)
  - [`SetBedPID` (M304)](#setbedpid-m304)
  - [`UserThermistorParameters` (M305)](#userthermistorparameters-m305)
  - [`ModelPredictiveTempControl` (M306)](#modelpredictivetempcontrol-m306)
  - [`SetChamberPID` (M309)](#setchamberpid-m309)
  - [`SetMicrostepping` (M350)](#setmicrostepping-m350)
  - [`SetMicrostepPins` (M351)](#setmicrosteppins-m351)
  - [`CaseLightControl` (M355)](#caselightcontrol-m355)
  - [`SCARAThetaA` (M360)](#scarathetaa-m360)
  - [`SCARAThetaB` (M361)](#scarathetab-m361)
  - [`SCARAPsiA` (M362)](#scarapsia-m362)
  - [`SCARAPsiB` (M363)](#scarapsib-m363)
  - [`SCARAPsiC` (M364)](#scarapsic-m364)
  - [`ActivateSolenoid` (M380)](#activatesolenoid-m380)
  - [`DeactivateSolenoids` (M381)](#deactivatesolenoids-m381)
  - [`FinishMoves` (M400)](#finishmoves-m400)
  - [`DeployProbe` (M401)](#deployprobe-m401)
  - [`StowProbe` (M402)](#stowprobe-m402)
  - [`MMU2FilamentType` (M403)](#mmu2filamenttype-m403)
  - [`FilamentWidthSensorNominalDiameter` (M404)](#filamentwidthsensornominaldiameter-m404)
  - [`FilamentWidthSensorOn` (M405)](#filamentwidthsensoron-m405)
  - [`FilamentWidthSensorOff` (M406)](#filamentwidthsensoroff-m406)
  - [`ReadFilamentWidth` (M407)](#readfilamentwidth-m407)
  - [`Quickstop` (M410)](#quickstop-m410)
  - [`FilamentRunout` (M412)](#filamentrunout-m412)
  - [`PowerlossRecovery` (M413)](#powerlossrecovery-m413)
  - [`LCDLanguage` (M414)](#lcdlanguage-m414)
  - [`BedLevelingState` (M420)](#bedlevelingstate-m420)
  - [`SetMeshValue` (M421)](#setmeshvalue-m421)
  - [`SetZMotorXY` (M422)](#setzmotorxy-m422)
  - [`XTwistCompensation` (M423)](#xtwistcompensation-m423)
  - [`BacklashCompensation` (M425)](#backlashcompensation-m425)
  - [`HomeOffsetsHere` (M428)](#homeoffsetshere-m428)
  - [`PowerMonitor` (M430)](#powermonitor-m430)
  - [`CancelObjects` (M486)](#cancelobjects-m486)
  - [`FixedTimeMotion` (M493)](#fixedtimemotion-m493)
  - [`FTMotionTrajectorySmoothing` (M494)](#ftmotiontrajectorysmoothing-m494)
  - [`SaveSettings` (M500)](#savesettings-m500)
  - [`RestoreSettings` (M501)](#restoresettings-m501)
  - [`FactoryReset` (M502)](#factoryreset-m502)
  - [`ReportSettings` (M503)](#reportsettings-m503)
  - [`ValidateEEPROMContents` (M504)](#validateeepromcontents-m504)
  - [`LockMachine` (M510)](#lockmachine-m510)
  - [`UnlockMachine` (M511)](#unlockmachine-m511)
  - [`SetPasscode` (M512)](#setpasscode-m512)
  - [`AbortSDPrint` (M524)](#abortsdprint-m524)
  - [`EndstopsAbortSD` (M540)](#endstopsabortsd-m540)
  - [`MachineName` (M550)](#machinename-m550)
  - [`EthernetIPAddressNetworkIF` (M552)](#ethernetipaddressnetworkif-m552)
  - [`EthernetSubnetMask` (M553)](#ethernetsubnetmask-m553)
  - [`EthernetGatewayIPAddress` (M554)](#ethernetgatewayipaddress-m554)
  - [`SetTMCSteppingMode` (M569)](#settmcsteppingmode-m569)
  - [`SerialBaudRate` (M575)](#serialbaudrate-m575)
  - [`NonlinearExtrusionControl` (M592)](#nonlinearextrusioncontrol-m592)
  - [`ZVInputShaping` (M593)](#zvinputshaping-m593)
  - [`FilamentChange` (M600)](#filamentchange-m600)
  - [`ConfigureFilamentChange` (M603)](#configurefilamentchange-m603)
  - [`MultiNozzleMode` (M605)](#multinozzlemode-m605)
  - [`DeltaConfiguration` (M665)](#deltaconfiguration-m665)
  - [`SetDeltaEndstopAdjustments` (M666)](#setdeltaendstopadjustments-m666)
  - [`DuetSmartEffectorSensitivity` (M672)](#duetsmarteffectorsensitivity-m672)
  - [`LoadFilament` (M701)](#loadfilament-m701)
  - [`UnloadFilament` (M702)](#unloadfilament-m702)
  - [`ControllerFanSettings` (M710)](#controllerfansettings-m710)
  - [`RepeatMarker` (M808)](#repeatmarker-m808)
  - [`GcodeMacros` (M810)](#gcodemacros-m810)
  - [`ReportGcodeMacros` (M820)](#reportgcodemacros-m820)
  - [`XYZProbeOffset` (M851)](#xyzprobeoffset-m851)
  - [`BedSkewCompensation` (M852)](#bedskewcompensation-m852)
  - [`I2CPositionEncoders` (M860)](#i2cpositionencoders-m860)
  - [`ProbeTemperatureConfig` (M871)](#probetemperatureconfig-m871)
  - [`HandlePromptResponse` (M876)](#handlepromptresponse-m876)
  - [`LinearAdvanceFactor` (M900)](#linearadvancefactor-m900)
  - [`StepperMotorCurrent` (M906)](#steppermotorcurrent-m906)
  - [`TrimpotStepperMotorCurrent` (M907)](#trimpotsteppermotorcurrent-m907)
  - [`SetTrimpotPins` (M908)](#settrimpotpins-m908)
  - [`ReportDACStepperCurrent` (M909)](#reportdacsteppercurrent-m909)
  - [`CommitDACtoEEPROM` (M910)](#commitdactoeeprom-m910)
  - [`TMCOTPreWarnCondition` (M911)](#tmcotprewarncondition-m911)
  - [`ClearTMCOTPreWarn` (M912)](#cleartmcotprewarn-m912)
  - [`SetHybridThresholdSpeed` (M913)](#sethybridthresholdspeed-m913)
  - [`TMCBumpSensitivity` (M914)](#tmcbumpsensitivity-m914)
  - [`TMCZAxisCalibration` (M915)](#tmczaxiscalibration-m915)
  - [`L6474ThermalWarningTest` (M916)](#l6474thermalwarningtest-m916)
  - [`L6474OvercurrentWarningTest` (M917)](#l6474overcurrentwarningtest-m917)
  - [`L6474SpeedWarningTest` (M918)](#l6474speedwarningtest-m918)
  - [`TMCChopperTiming` (M919)](#tmcchoppertiming-m919)
  - [`TMCHomingCurrent` (M920)](#tmchomingcurrent-m920)
  - [`StartSDLogging` (M928)](#startsdlogging-m928)
  - [`MagneticParkingExtruder` (M951)](#magneticparkingextruder-m951)
  - [`BackUpFlashSettingstoSD` (M993)](#backupflashsettingstosd-m993)
  - [`RestoreFlashfromSD` (M994)](#restoreflashfromsd-m994)
  - [`TouchScreenCalibration` (M995)](#touchscreencalibration-m995)
  - [`FirmwareUpdate` (M997)](#firmwareupdate-m997)
  - [`STOPRestart` (M999)](#stoprestart-m999)
  - [`MAX7219Control` (M7219)](#max7219control-m7219)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Marlin G-Code API Reference

Generated from `assets/spec.json` on 2026-01-22

**Total commands:** 264
**Implemented:** 234
**Unimplemented:** 30

---

## `LinearMove_NoExtrusion` (G0)

**Documentation:** [https://marlinfw.org/docs/gcode/G000-G001.html](https://marlinfw.org/docs/gcode/G000-G001.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Mm** (A)
- `axisB` :: **Mm** (B)
- `axisC` :: **Mm** (C)
- `feedrate` :: **MmPerMin** (F)
- `laser` :: **LaserPower** (S)
- `axisU` :: **Mm** (U)
- `axisV` :: **Mm** (V)
- `axisW` :: **Mm** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `LinearMove_WithExtrusion` (G1)

**Documentation:** [https://marlinfw.org/docs/gcode/G000-G001.html](https://marlinfw.org/docs/gcode/G000-G001.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `axisExtrusion` :: **Mm** (E)

**Optional:**

- `axisA` :: **Mm** (A)
- `axisB` :: **Mm** (B)
- `axisC` :: **Mm** (C)
- `feedrate` :: **MmPerMin** (F)
- `laser` :: **LaserPower** (S)
- `axisU` :: **Mm** (U)
- `axisV` :: **Mm** (V)
- `axisW` :: **Mm** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `ArcCircleMove_Clockwise` (G2)

**Documentation:** [https://marlinfw.org/docs/gcode/G002-G003.html](https://marlinfw.org/docs/gcode/G002-G003.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA **Mm** (A)
- axisB **Mm** (B)
- axisC **Mm** (C)
- axisExtrusion **Mm** (E)
- feedrate **MmPerMin** (F)
- offsetX **Mm** (I)
- offsetY **Mm** (J)
- count **Count** (P)
- radius **Mm** (R)
- laser **LaserPower** (S)
- axisU **Mm** (U)
- axisV **Mm** (V)
- axisW **Mm** (W)
- axisX **Mm** (X)
- axisY **Mm** (Y)
- axisZ **Mm** (Z)

## `ArcCircleMove_CounterClockwise` (G3)

**Documentation:** [https://marlinfw.org/docs/gcode/G002-G003.html](https://marlinfw.org/docs/gcode/G002-G003.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA **Mm** (A)
- axisB **Mm** (B)
- axisC **Mm** (C)
- axisExtrusion **Mm** (E)
- feedrate **MmPerMin** (F)
- offsetX **Mm** (I)
- offsetY **Mm** (J)
- count **Count** (P)
- radius **Mm** (R)
- laser **LaserPower** (S)
- axisU **Mm** (U)
- axisV **Mm** (V)
- axisW **Mm** (W)
- axisX **Mm** (X)
- axisY **Mm** (Y)
- axisZ **Mm** (Z)

## `Dwell` (G4)

**Documentation:** [https://marlinfw.org/docs/gcode/G004.html](https://marlinfw.org/docs/gcode/G004.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `timeSeconds` :: **Seconds** (S)
- `timeMilliseconds` :: **Milliseconds** (P)

## `BezierCubicSplineMove` (G5)

**Documentation:** [https://marlinfw.org/docs/gcode/G005.html](https://marlinfw.org/docs/gcode/G005.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisExtrusion **Mm** (E)
- feedrate **MmPerMin** (F)
- offsetX1 **Mm** (I)
- offsetY1 **Mm** (J)
- offsetX2 **Mm** (P)
- offsetY2 **Mm** (Q)
- laser **LaserPower** (S)
- axisX **Mm** (X)
- axisY **Mm** (Y)

## `DirectStepperMove` (G6)

**Documentation:** [https://marlinfw.org/docs/gcode/G006.html](https://marlinfw.org/docs/gcode/G006.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `directionE` :: **Flag** (E)
- `pageIndex` :: **Index** (I)
- `stepRate` :: **MmPerSec** (R)
- `stepCount` :: **Count** (S)
- `directionX` :: **Flag** (X)
- `directionY` :: **Flag** (Y)
- `directionZ` :: **Flag** (Z)

## `Retract` (G10)

**Documentation:** [https://marlinfw.org/docs/gcode/G010.html](https://marlinfw.org/docs/gcode/G010.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `swapRetract` :: **Flag** (S)

## `Recover` (G11)

**Documentation:** [https://marlinfw.org/docs/gcode/G011.html](https://marlinfw.org/docs/gcode/G011.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CleanNozzle` (G12)

**Documentation:** [https://marlinfw.org/docs/gcode/G012.html](https://marlinfw.org/docs/gcode/G012.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `pattern` :: **Index** (P)
- `radius` :: **Mm** (R)
- `repetitions` :: **Count** (S)
- `triangles` :: **Count** (T)
- `includeX` :: **Flag** (X)
- `includeY` :: **Flag** (Y)
- `includeZ` :: **Flag** (Z)

## `CNCWorkspacePlanes_XY` (G17)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CNCWorkspacePlanes_ZX` (G18)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CNCWorkspacePlanes_YZ` (G19)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## `InchUnits` (G20)

**Documentation:** [https://marlinfw.org/docs/gcode/G020.html](https://marlinfw.org/docs/gcode/G020.html)

✅ **Status:** Fully Implemented

*No arguments*

## `MillimeterUnits` (G21)

**Documentation:** [https://marlinfw.org/docs/gcode/G021.html](https://marlinfw.org/docs/gcode/G021.html)

✅ **Status:** Fully Implemented

*No arguments*

## `MeshValidationPattern` (G26)

**Documentation:** [https://marlinfw.org/docs/gcode/G026.html](https://marlinfw.org/docs/gcode/G026.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `bedTemp` :: **Celsius** (B)
- `continueClosest` :: **Flag** (C)
- `disableLeveling` :: **Flag** (D)
- `filamentDiameter` :: **Mm** (F)
- `hotendTemp` :: **Celsius** (H)
- `materialPreset` :: **Index** (I)
- `keepHeatersOn` :: **Flag** (K)
- `layerHeight` :: **Mm** (L)
- `oozeAmount` :: **Mm** (O)
- `primeLength` :: **Mm** (P)
- `retractionMultiplier` :: **Mm** (Q)
- `repetitions` :: **Count** (R)
- `nozzleSize` :: **Mm** (S)
- `randomDeviation` :: **Mm** (U)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)

## `ParkToolehead` (G27)

**Documentation:** [https://marlinfw.org/docs/gcode/G027.html](https://marlinfw.org/docs/gcode/G027.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `parkingBehavior` :: **Index** (P)

## `AutoHome` (G28)

**Documentation:** [https://marlinfw.org/docs/gcode/G028.html](https://marlinfw.org/docs/gcode/G028.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `homeA` :: **Flag** (A)
- `homeB` :: **Flag** (B)
- `homeC` :: **Flag** (C)
- `holdXY` :: **Flag** (H)
- `restoreLeveling` :: **Flag** (L)
- `skipIfTrusted` :: **Flag** (O)
- `raiseDistance` :: **Mm** (R)
- `homeU` :: **Flag** (U)
- `homeV` :: **Flag** (V)
- `homeW` :: **Flag** (W)
- `homeX` :: **Flag** (X)
- `homeY` :: **Flag** (Y)
- `homeZ` :: **Flag** (Z)

## `BedLeveling_3Point` (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-3point.html](https://marlinfw.org/docs/gcode/G029-abl-3point.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `abort` :: **Flag** (A)
- `createFake` :: **Flag** (C)
- `dryRun` :: **Flag** (D)
- `engageEach` :: **Flag** (E)
- `jettison` :: **Flag** (J)
- `optional` :: **Flag** (O)
- `query` :: **Flag** (Q)
- `verbosity` :: **Index** (V)

## `BedLeveling_Bilinear` (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-bilinear.html](https://marlinfw.org/docs/gcode/G029-abl-bilinear.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `abort` :: **Flag** (A)
- `backLimit` :: **Mm** (B)
- `createFake` :: **Flag** (C)
- `dryRun` :: **Flag** (D)
- `engageEach` :: **Flag** (E)
- `frontLimit` :: **Mm** (F)
- `areaSize` :: **Mm** (H)
- `meshX` :: **Index** (I)
- `jettison` :: **Flag** (J)
- `meshY` :: **Index** (K)
- `leftLimit` :: **Mm** (L)
- `optional` :: **Flag** (O)
- `query` :: **Flag** (Q)
- `rightLimit` :: **Mm** (R)
- `travelSpeed` :: **MmPerMin** (S)
- `verbosity` :: **Index** (V)
- `writeMesh` :: **Flag** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `meshZ` :: **Mm** (Z)

## `BedLeveling_Linear` (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-linear.html](https://marlinfw.org/docs/gcode/G029-abl-linear.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `abort` :: **Flag** (A)
- `backLimit` :: **Mm** (B)
- `createFake` :: **Flag** (C)
- `dryRun` :: **Flag** (D)
- `engageEach` :: **Flag** (E)
- `frontLimit` :: **Mm** (F)
- `areaSize` :: **Mm** (H)
- `jettison` :: **Flag** (J)
- `leftLimit` :: **Mm** (L)
- `optional` :: **Flag** (O)
- `gridSize` :: **Index** (P)
- `query` :: **Flag** (Q)
- `rightLimit` :: **Mm** (R)
- `travelSpeed` :: **MmPerMin** (S)
- `topology` :: **Flag** (T)
- `verbosity` :: **Index** (V)
- `columns` :: **Index** (X)
- `rows` :: **Index** (Y)

## `BedLeveling_Manual` (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-mbl.html](https://marlinfw.org/docs/gcode/G029-mbl.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `state` :: **Index** (S)

**Optional:**

- `meshX` :: **Index** (I)
- `meshY` :: **Index** (J)
- `meshXOld` :: **Count** (X)
- `meshYOld` :: **Count** (Y)
- `meshZ` :: **Mm** (Z)

## `BedLeveling_Unified` (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-ubl.html](https://marlinfw.org/docs/gcode/G029-ubl.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `activate` :: **Flag** (A)
- `businessCard` :: **Mm** (B)
- `constant` :: **Mm** (C)
- `disable` :: **Flag** (D)
- `stowEach` :: **Flag** (E)
- `fadeHeight` :: **Mm** (F)
- `height` :: **Mm** (H)
- `invalidate` :: **Index** (I)
- `grid` :: **Index** (J)
- `kompare` :: **Index** (K)
- `load` :: **Index** (L)
- `phase` :: **Index** (P)
- `testPattern` :: **Index** (Q)
- `repeat` :: **Count** (R)
- `save` :: **Index** (S)
- `topology` :: **Index** (T)
- `unlevel` :: **Flag** (U)
- `verbosity` :: **Index** (V)
- `what` :: **Flag** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)

## `SingleZProbe` (G30)

**Documentation:** [https://marlinfw.org/docs/gcode/G030.html](https://marlinfw.org/docs/gcode/G030.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `temperatureCompensation` :: **Flag** (C)
- `engageEach` :: **Flag** (E)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)

## `DockSled` (G31)

**Documentation:** [https://marlinfw.org/docs/gcode/G031.html](https://marlinfw.org/docs/gcode/G031.html)

✅ **Status:** Fully Implemented

*No arguments*

## `UndockSled` (G32)

**Documentation:** [https://marlinfw.org/docs/gcode/G032.html](https://marlinfw.org/docs/gcode/G032.html)

✅ **Status:** Fully Implemented

*No arguments*

## `DeltaAutoCalibration` (G33)

**Documentation:** [https://marlinfw.org/docs/gcode/G033.html](https://marlinfw.org/docs/gcode/G033.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `precision` :: **Mm** (C)
- `engageEach` :: **Flag** (E)
- `iterations` :: **Count** (F)
- `probeOffsetRelative` :: **Flag** (O)
- `probePoints` :: **Index** (P)
- `reduceGrid` :: **Mm** (R)
- `saveSensorless` :: **Flag** (S)
- `disableTowerAngles` :: **Flag** (T)
- `verbosity` :: **Index** (V)
- `disableStallguardX` :: **Flag** (X)
- `disableStallguardY` :: **Flag** (Y)
- `disableStallguardZ` :: **Flag** (Z)

## `ZSteppersAutoAlignment` (G34)

**Documentation:** [https://marlinfw.org/docs/gcode/G034-zsaa.html](https://marlinfw.org/docs/gcode/G034-zsaa.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `amplification` :: **Mm** (A)
- `stowEach` :: **Flag** (E)
- `iterations` :: **Index** (I)
- `unlockAll` :: **Flag** (L)
- `recalculate` :: **Flag** (R)
- `lockState` :: **Flag** (S)
- `targetAccuracy` :: **Mm** (T)
- `stepper` :: **Index** (Z)

## `MechanicalGantryCalibration` (G34)

**Documentation:** [https://marlinfw.org/docs/gcode/G034-mgc.html](https://marlinfw.org/docs/gcode/G034-mgc.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `current` :: **Index** (S)
- `extraHeight` :: **Mm** (Z)

## `TrammingAssistant` (G35)

**Documentation:** [https://marlinfw.org/docs/gcode/G035.html](https://marlinfw.org/docs/gcode/G035.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `screwThreadType` :: **Index** (S)

## `ProbeTarget_ErrorOnFail` (G38.2)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `feedrate` :: **MmPerMin** (F)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `ProbeTarget_NoErrorOnFail` (G38.3)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `feedrate` :: **MmPerMin** (F)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `ProbeTarget_AwayErrorOnFail` (G38.4)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `feedrate` :: **MmPerMin** (F)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `ProbeTarget_AwayNoErrorOnFail` (G38.5)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `feedrate` :: **MmPerMin** (F)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `MovetoMeshCoordinate` (G42)

**Documentation:** [https://marlinfw.org/docs/gcode/G042.html](https://marlinfw.org/docs/gcode/G042.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `feedrate` :: **MmPerMin** (F)
- `meshColumn` :: **Index** (I)
- `meshRow` :: **Index** (J)
- `moveProbe` :: **Flag** (P)

## `MoveinMachineCoordinates` (G53)

**Documentation:** [https://marlinfw.org/docs/gcode/G053.html](https://marlinfw.org/docs/gcode/G053.html)

⚠️ **Status:** Unimplemented - Works as a modifier prefix to other G commands, requires special handling of command composition (complexity: 7)

*No arguments*

## `SelectWorkspace_1` (G54)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_2` (G55)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_3` (G56)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_4` (G57)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_5` (G58)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_6` (G59)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_7` (G59.1)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_8` (G59.2)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectWorkspace_9` (G59.3)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## `StoredPositions` (G60)

**Documentation:** [https://marlinfw.org/docs/gcode/G060.html](https://marlinfw.org/docs/gcode/G060.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `deleteSlot` :: **Index** (D)
- `restoreE` :: **Mm** (E)
- `feedrate` :: **MmPerMin** (F)
- `restoreSlot` :: **Index** (Q)
- `saveSlot` :: **Index** (S)
- `restoreX` :: **Mm** (X)
- `restoreY` :: **Mm** (Y)
- `restoreZ` :: **Mm** (Z)

## `ReturntoSavedPosition` (G61)

**Documentation:** [https://marlinfw.org/docs/gcode/G061.html](https://marlinfw.org/docs/gcode/G061.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `restoreE` :: **Mm** (E)
- `feedrate` :: **MmPerMin** (F)
- `slot` :: **Index** (S)
- `restoreX` :: **Mm** (X)
- `restoreY` :: **Mm** (Y)
- `restoreZ` :: **Mm** (Z)

## `ProbeTemperatureCalibration` (G76)

**Documentation:** [https://marlinfw.org/docs/gcode/G076.html](https://marlinfw.org/docs/gcode/G076.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `calibrateBed` :: **Flag** (B)
- `calibrateProbe` :: **Flag** (P)

## `CancelCurrentMotionMode` (G80)

**Documentation:** [https://marlinfw.org/docs/gcode/G080.html](https://marlinfw.org/docs/gcode/G080.html)

✅ **Status:** Fully Implemented

*No arguments*

## `AbsolutePositioning` (G90)

**Documentation:** [https://marlinfw.org/docs/gcode/G090.html](https://marlinfw.org/docs/gcode/G090.html)

✅ **Status:** Fully Implemented

*No arguments*

## `RelativePositioning` (G91)

**Documentation:** [https://marlinfw.org/docs/gcode/G091.html](https://marlinfw.org/docs/gcode/G091.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SetPosition` (G92)

**Documentation:** [https://marlinfw.org/docs/gcode/G092.html](https://marlinfw.org/docs/gcode/G092.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Mm** (A)
- `axisB` :: **Mm** (B)
- `axisC` :: **Mm** (C)
- `axisExtrusion` :: **Mm** (E)
- `axisU` :: **Mm** (U)
- `axisV` :: **Mm** (V)
- `axisW` :: **Mm** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `BacklashCalibration` (G425)

**Documentation:** [https://marlinfw.org/docs/gcode/G425.html](https://marlinfw.org/docs/gcode/G425.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `backlashOnly` :: **Flag** (B)
- `toolheadIndex` :: **Index** (T)
- `uncertainty` :: **Mm** (U)
- `report` :: **Flag** (V)


---

## `UnconditionalStop` (M0)

**Documentation:** [https://marlinfw.org/docs/gcode/M000-M001.html](https://marlinfw.org/docs/gcode/M000-M001.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `expireMilliseconds` :: **Milliseconds** (P)
- `expireSeconds` :: **Seconds** (S)
- `text` :: **TextValue** (_)

## `SpindleCWLaserOn` (M3)

**Documentation:** [https://marlinfw.org/docs/gcode/M003.html](https://marlinfw.org/docs/gcode/M003.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `inlineMode` :: **Flag** (I)
- `powerPWM` :: **Index** (O)
- `power` :: **Index** (S)

## `SpindleCCWLaserOn` (M4)

**Documentation:** [https://marlinfw.org/docs/gcode/M004.html](https://marlinfw.org/docs/gcode/M004.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `inlineMode` :: **Flag** (I)
- `powerPWM` :: **Index** (O)
- `power` :: **Index** (S)

## `SpindleLaserOff` (M5)

**Documentation:** [https://marlinfw.org/docs/gcode/M005.html](https://marlinfw.org/docs/gcode/M005.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CoolantControls_Mist` (M7)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CoolantControls_Flood` (M8)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CoolantControls_Off` (M9)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## `VacuumBlowerControl_On` (M10)

**Documentation:** [https://marlinfw.org/docs/gcode/M010-M011.html](https://marlinfw.org/docs/gcode/M010-M011.html)

✅ **Status:** Fully Implemented

*No arguments*

## `VacuumBlowerControl_Off` (M11)

**Documentation:** [https://marlinfw.org/docs/gcode/M010-M011.html](https://marlinfw.org/docs/gcode/M010-M011.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ExpectedPrinterCheck` (M16)

**Documentation:** [https://marlinfw.org/docs/gcode/M016.html](https://marlinfw.org/docs/gcode/M016.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `text` :: **TextValue** (_)

## `EnableSteppers` (M17)

**Documentation:** [https://marlinfw.org/docs/gcode/M017.html](https://marlinfw.org/docs/gcode/M017.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Flag** (A)
- `axisB` :: **Flag** (B)
- `axisC` :: **Flag** (C)
- `axisExtrusion` :: **Flag** (E)
- `axisU` :: **Flag** (U)
- `axisV` :: **Flag** (V)
- `axisW` :: **Flag** (W)
- `axisX` :: **Flag** (X)
- `axisY` :: **Flag** (Y)
- `axisZ` :: **Flag** (Z)

## `DisableSteppers` (M18)

**Documentation:** [https://marlinfw.org/docs/gcode/M018.html](https://marlinfw.org/docs/gcode/M018.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Flag** (A)
- `axisB` :: **Flag** (B)
- `axisC` :: **Flag** (C)
- `axisExtrusion` :: **Flag** (E)
- `timeoutSeconds` :: **Seconds** (S)
- `axisU` :: **Flag** (U)
- `axisV` :: **Flag** (V)
- `axisW` :: **Flag** (W)
- `axisX` :: **Flag** (X)
- `axisY` :: **Flag** (Y)
- `axisZ` :: **Flag** (Z)

## `ListSDCard` (M20)

**Documentation:** [https://marlinfw.org/docs/gcode/M020.html](https://marlinfw.org/docs/gcode/M020.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `binFilesOnly` :: **Flag** (F)
- `longFilenames` :: **Flag** (L)
- `timestamp` :: **Flag** (T)

## `InitSDCard` (M21)

**Documentation:** [https://marlinfw.org/docs/gcode/M021.html](https://marlinfw.org/docs/gcode/M021.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ReleaseSDCard` (M22)

**Documentation:** [https://marlinfw.org/docs/gcode/M022.html](https://marlinfw.org/docs/gcode/M022.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectSDFile` (M23)

**Documentation:** [https://marlinfw.org/docs/gcode/M023.html](https://marlinfw.org/docs/gcode/M023.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `filename` :: **Filename** (_)

## `StartorResumeSDPrint` (M24)

**Documentation:** [https://marlinfw.org/docs/gcode/M024.html](https://marlinfw.org/docs/gcode/M024.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `resumePosition` :: **Count** (S)
- `elapsedTime` :: **Count** (T)

## `PauseSDPrint` (M25)

**Documentation:** [https://marlinfw.org/docs/gcode/M025.html](https://marlinfw.org/docs/gcode/M025.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SetSDPosition` (M26)

**Documentation:** [https://marlinfw.org/docs/gcode/M026.html](https://marlinfw.org/docs/gcode/M026.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `position` :: **Count** (S)

## `ReportSDPrintStatus` (M27)

**Documentation:** [https://marlinfw.org/docs/gcode/M027.html](https://marlinfw.org/docs/gcode/M027.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `reportFilename` :: **Flag** (C)
- `autoReportInterval` :: **Seconds** (S)

## `StartSDWrite` (M28)

**Documentation:** [https://marlinfw.org/docs/gcode/M028.html](https://marlinfw.org/docs/gcode/M028.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `filename` :: **Filename** (_)

**Optional:**

- `binaryMode` :: **Flag** (B)

## `StopSDWrite` (M29)

**Documentation:** [https://marlinfw.org/docs/gcode/M029.html](https://marlinfw.org/docs/gcode/M029.html)

✅ **Status:** Fully Implemented

*No arguments*

## `DeleteSDFile` (M30)

**Documentation:** [https://marlinfw.org/docs/gcode/M030.html](https://marlinfw.org/docs/gcode/M030.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `filename` :: **Filename** (_)

## `ReportPrintTime` (M31)

**Documentation:** [https://marlinfw.org/docs/gcode/M031.html](https://marlinfw.org/docs/gcode/M031.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SelectandStart` (M32)

**Documentation:** [https://marlinfw.org/docs/gcode/M032.html](https://marlinfw.org/docs/gcode/M032.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `filename` :: **Filename** (_)

**Optional:**

- `subProgramType` :: **Index** (P)
- `startingOffset` :: **Count** (S)

## `GetLongPath` (M33)

**Documentation:** [https://marlinfw.org/docs/gcode/M033.html](https://marlinfw.org/docs/gcode/M033.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `path` :: **Filename** (_)

## `SDCardSorting` (M34)

**Documentation:** [https://marlinfw.org/docs/gcode/M034.html](https://marlinfw.org/docs/gcode/M034.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `folderSorting` :: **Index** (F)
- `sortingOrder` :: **Index** (S)

## `SetPinState` (M42)

**Documentation:** [https://marlinfw.org/docs/gcode/M042.html](https://marlinfw.org/docs/gcode/M042.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `state` :: **Index** (S)

**Optional:**

- `ignoreProtection` :: **Flag** (I)
- `pin` :: **Index** (P)
- `pinMode` :: **Index** (T)

## `PinsDebugging` (M43)

**Documentation:** [https://marlinfw.org/docs/gcode/M043.html](https://marlinfw.org/docs/gcode/M043.html)

⚠️ **Status:** Unimplemented - Pins debugging with complex pin configuration and state management (complexity: 6)

*No arguments*

## `ProbeRepeatabilityTest` (M48)

**Documentation:** [https://marlinfw.org/docs/gcode/M048.html](https://marlinfw.org/docs/gcode/M048.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `temperatureCompensation` :: **Flag** (C)
- `engageEach` :: **Flag** (E)
- `legs` :: **Count** (L)
- `probeCount` :: **Count** (P)
- `starPattern` :: **Index** (S)
- `verbosity` :: **Index** (V)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)

## `SetPrintProgress` (M73)

**Documentation:** [https://marlinfw.org/docs/gcode/M073.html](https://marlinfw.org/docs/gcode/M073.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `interactionCountdown` :: **Count** (C)
- `progressPercent` :: **Index** (P)
- `remainingTime` :: **Count** (R)

## `StartPrintJobTimer` (M75)

**Documentation:** [https://marlinfw.org/docs/gcode/M075.html](https://marlinfw.org/docs/gcode/M075.html)

✅ **Status:** Fully Implemented

*No arguments*

## `PausePrintJobTimer` (M76)

**Documentation:** [https://marlinfw.org/docs/gcode/M076.html](https://marlinfw.org/docs/gcode/M076.html)

✅ **Status:** Fully Implemented

*No arguments*

## `StopPrintJobTimer` (M77)

**Documentation:** [https://marlinfw.org/docs/gcode/M077.html](https://marlinfw.org/docs/gcode/M077.html)

✅ **Status:** Fully Implemented

*No arguments*

## `PrintJobStats` (M78)

**Documentation:** [https://marlinfw.org/docs/gcode/M078.html](https://marlinfw.org/docs/gcode/M078.html)

✅ **Status:** Fully Implemented

*No arguments*

## `PowerOn` (M80)

**Documentation:** [https://marlinfw.org/docs/gcode/M080.html](https://marlinfw.org/docs/gcode/M080.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `reportState` :: **Flag** (S)

## `PowerOff` (M81)

**Documentation:** [https://marlinfw.org/docs/gcode/M081.html](https://marlinfw.org/docs/gcode/M081.html)

✅ **Status:** Fully Implemented

*No arguments*

## `EAbsolute` (M82)

**Documentation:** [https://marlinfw.org/docs/gcode/M082.html](https://marlinfw.org/docs/gcode/M082.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ERelative` (M83)

**Documentation:** [https://marlinfw.org/docs/gcode/M083.html](https://marlinfw.org/docs/gcode/M083.html)

✅ **Status:** Fully Implemented

*No arguments*

## `InactivityShutdown` (M85)

**Documentation:** [https://marlinfw.org/docs/gcode/M085.html](https://marlinfw.org/docs/gcode/M085.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `maxInactiveSeconds` :: **Seconds** (S)

## `HotendIdleTimeout` (M86)

**Documentation:** [https://marlinfw.org/docs/gcode/M086.html](https://marlinfw.org/docs/gcode/M086.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `bedIdleTemp` :: **Celsius** (B)
- `extruderIdleTemp` :: **Celsius** (E)
- `timeoutSeconds` :: **Seconds** (S)
- `temperatureTrigger` :: **Celsius** (T)

## `DisableHotendIdleTimeout` (M87)

**Documentation:** [https://marlinfw.org/docs/gcode/M087.html](https://marlinfw.org/docs/gcode/M087.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SetAxisStepsperunit` (M92)

**Documentation:** [https://marlinfw.org/docs/gcode/M092.html](https://marlinfw.org/docs/gcode/M092.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Mm** (A)
- `axisB` :: **Mm** (B)
- `axisC` :: **Mm** (C)
- `axisExtrusion` :: **Mm** (E)
- `targetExtruder` :: **Index** (T)
- `axisU` :: **Mm** (U)
- `axisV` :: **Mm** (V)
- `axisW` :: **Mm** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `FreeMemory` (M100)

**Documentation:** [https://marlinfw.org/docs/gcode/M100.html](https://marlinfw.org/docs/gcode/M100.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `corruptLocations` :: **Count** (C)
- `dumpMemory` :: **Flag** (D)
- `reportFreeBytes` :: **Flag** (F)
- `initializePool` :: **Flag** (I)

## `ConfigureBedDistanceSensor` (M102)

**Documentation:** [https://marlinfw.org/docs/gcode/M102.html](https://marlinfw.org/docs/gcode/M102.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `state` :: **Index** (S)

## `SetHotendTemperature` (M104)

**Documentation:** [https://marlinfw.org/docs/gcode/M104.html](https://marlinfw.org/docs/gcode/M104.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `maxAutoTemp` :: **Celsius** (B)
- `autotempFactor` :: **Mm** (F)
- `materialPreset` :: **Index** (I)
- `targetTemp` :: **Celsius** (S)
- `hotendIndex` :: **Index** (T)

## `ReportTemperatures` (M105)

**Documentation:** [https://marlinfw.org/docs/gcode/M105.html](https://marlinfw.org/docs/gcode/M105.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `includeRedundant` :: **Flag** (R)
- `hotendIndex` :: **Index** (T)

## `SetFanSpeed` (M106)

**Documentation:** [https://marlinfw.org/docs/gcode/M106.html](https://marlinfw.org/docs/gcode/M106.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `materialPreset` :: **Index** (I)
- `fanIndex` :: **Index** (P)
- `speed` :: **Index** (S)
- `secondarySpeed` :: **Index** (T)

## `FanOff` (M107)

**Documentation:** [https://marlinfw.org/docs/gcode/M107.html](https://marlinfw.org/docs/gcode/M107.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `fanIndex` :: **Index** (P)

## `BreakandContinue` (M108)

**Documentation:** [https://marlinfw.org/docs/gcode/M108.html](https://marlinfw.org/docs/gcode/M108.html)

✅ **Status:** Fully Implemented

*No arguments*

## `WaitforHotendTemperature` (M109)

**Documentation:** [https://marlinfw.org/docs/gcode/M109.html](https://marlinfw.org/docs/gcode/M109.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `maxAutoTemp` :: **Celsius** (B)
- `autotempFactor` :: **Mm** (F)
- `materialPreset` :: **Index** (I)
- `targetTempWait` :: **Celsius** (R)
- `targetTemp` :: **Celsius** (S)
- `hotendIndex` :: **Index** (T)

## `SetGetLineNumber` (M110)

**Documentation:** [https://marlinfw.org/docs/gcode/M110.html](https://marlinfw.org/docs/gcode/M110.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `lineNumber` :: **Count** (N)

## `DebugLevel` (M111)

**Documentation:** [https://marlinfw.org/docs/gcode/M111.html](https://marlinfw.org/docs/gcode/M111.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `debugFlags` :: **Index** (S)

## `FullShutdown` (M112)

**Documentation:** [https://marlinfw.org/docs/gcode/M112.html](https://marlinfw.org/docs/gcode/M112.html)

✅ **Status:** Fully Implemented

*No arguments*

## `HostKeepalive` (M113)

**Documentation:** [https://marlinfw.org/docs/gcode/M113.html](https://marlinfw.org/docs/gcode/M113.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `keepaliveInterval` :: **Seconds** (S)

## `GetCurrentPosition` (M114)

**Documentation:** [https://marlinfw.org/docs/gcode/M114.html](https://marlinfw.org/docs/gcode/M114.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `detailedInfo` :: **Flag** (D)
- `reportEStepper` :: **Flag** (E)
- `realPosition` :: **Flag** (R)

## `FirmwareInfo` (M115)

**Documentation:** [https://marlinfw.org/docs/gcode/M115.html](https://marlinfw.org/docs/gcode/M115.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SetLCDMessage` (M117)

**Documentation:** [https://marlinfw.org/docs/gcode/M117.html](https://marlinfw.org/docs/gcode/M117.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `message` :: **TextValue** (_)

## `SerialPrint` (M118)

**Documentation:** [https://marlinfw.org/docs/gcode/M118.html](https://marlinfw.org/docs/gcode/M118.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `actionCommand` :: **Flag** (A)
- `echoPrefix` :: **Flag** (E)
- `portIndex` :: **Index** (P)
- `message` :: **TextValue** (_)

## `EndstopStates` (M119)

**Documentation:** [https://marlinfw.org/docs/gcode/M119.html](https://marlinfw.org/docs/gcode/M119.html)

✅ **Status:** Fully Implemented

*No arguments*

## `EnableEndstops` (M120)

**Documentation:** [https://marlinfw.org/docs/gcode/M120.html](https://marlinfw.org/docs/gcode/M120.html)

✅ **Status:** Fully Implemented

*No arguments*

## `DisableEndstops` (M121)

**Documentation:** [https://marlinfw.org/docs/gcode/M121.html](https://marlinfw.org/docs/gcode/M121.html)

✅ **Status:** Fully Implemented

*No arguments*

## `TMCDebugging` (M122)

**Documentation:** [https://marlinfw.org/docs/gcode/M122.html](https://marlinfw.org/docs/gcode/M122.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisExtrusion` :: **Flag** (E)
- `reinitialize` :: **Flag** (I)
- `reportInterval` :: **Milliseconds** (P)
- `enableDebug` :: **Flag** (S)
- `rawRegisters` :: **Flag** (V)
- `axisX` :: **Flag** (X)
- `axisY` :: **Flag** (Y)
- `axisZ` :: **Flag** (Z)

## `FanTachometers` (M123)

**Documentation:** [https://marlinfw.org/docs/gcode/M123.html](https://marlinfw.org/docs/gcode/M123.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `autoReportInterval` :: **Seconds** (S)

## `ParkHead` (M125)

**Documentation:** [https://marlinfw.org/docs/gcode/M125.html](https://marlinfw.org/docs/gcode/M125.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `retractLength` :: **Mm** (L)
- `showPrompt` :: **Flag** (P)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `zRaise` :: **Mm** (Z)

## `Baricuda1Open` (M126)

**Documentation:** [https://marlinfw.org/docs/gcode/M126.html](https://marlinfw.org/docs/gcode/M126.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `pressure` :: **Index** (S)

## `Baricuda1Close` (M127)

**Documentation:** [https://marlinfw.org/docs/gcode/M127.html](https://marlinfw.org/docs/gcode/M127.html)

✅ **Status:** Fully Implemented

*No arguments*

## `Baricuda2Open` (M128)

**Documentation:** [https://marlinfw.org/docs/gcode/M128.html](https://marlinfw.org/docs/gcode/M128.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `pressure` :: **Index** (S)

## `Baricuda2Close` (M129)

**Documentation:** [https://marlinfw.org/docs/gcode/M129.html](https://marlinfw.org/docs/gcode/M129.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SetBedTemperature` (M140)

**Documentation:** [https://marlinfw.org/docs/gcode/M140.html](https://marlinfw.org/docs/gcode/M140.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `materialPreset` :: **Index** (I)
- `targetTemp` :: **Celsius** (S)

## `SetChamberTemperature` (M141)

**Documentation:** [https://marlinfw.org/docs/gcode/M141.html](https://marlinfw.org/docs/gcode/M141.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `targetTemp` :: **Celsius** (S)

## `SetLaserCoolerTemperature` (M143)

**Documentation:** [https://marlinfw.org/docs/gcode/M143.html](https://marlinfw.org/docs/gcode/M143.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `targetTemp` :: **Celsius** (S)

## `SetMaterialPreset` (M145)

**Documentation:** [https://marlinfw.org/docs/gcode/M145.html](https://marlinfw.org/docs/gcode/M145.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `bedTemp` :: **Celsius** (B)
- `fanSpeed` :: **Index** (F)
- `hotendTemp` :: **Celsius** (H)
- `materialIndex` :: **Index** (S)

## `SetTemperatureUnits` (M149)

**Documentation:** [https://marlinfw.org/docs/gcode/M149.html](https://marlinfw.org/docs/gcode/M149.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `celsius` :: **Flag** (C)
- `fahrenheit` :: **Flag** (F)
- `kelvin` :: **Flag** (K)

## `SetRGBWColor` (M150)

**Documentation:** [https://marlinfw.org/docs/gcode/M150.html](https://marlinfw.org/docs/gcode/M150.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `blue` :: **Index** (B)
- `pixelIndex` :: **Index** (I)
- `keepUnspecified` :: **Flag** (K)
- `brightness` :: **Index** (P)
- `red` :: **Index** (R)
- `stripIndex` :: **Index** (S)
- `green` :: **Index** (U)
- `white` :: **Index** (W)

## `PositionAutoReport` (M154)

**Documentation:** [https://marlinfw.org/docs/gcode/M154.html](https://marlinfw.org/docs/gcode/M154.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `intervalSeconds` :: **Seconds** (S)

## `TemperatureAutoReport` (M155)

**Documentation:** [https://marlinfw.org/docs/gcode/M155.html](https://marlinfw.org/docs/gcode/M155.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `intervalSeconds` :: **Seconds** (S)

## `SetMixFactor` (M163)

**Documentation:** [https://marlinfw.org/docs/gcode/M163.html](https://marlinfw.org/docs/gcode/M163.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `mixFactor` :: **Mm** (P)
- `componentIndex` :: **Index** (S)

## `SaveMix` (M164)

**Documentation:** [https://marlinfw.org/docs/gcode/M164.html](https://marlinfw.org/docs/gcode/M164.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `toolIndex` :: **Index** (S)

## `SetMix` (M165)

**Documentation:** [https://marlinfw.org/docs/gcode/M165.html](https://marlinfw.org/docs/gcode/M165.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `mixFactor1` :: **Mm** (A)
- `mixFactor2` :: **Mm** (B)
- `mixFactor3` :: **Mm** (C)
- `mixFactor4` :: **Mm** (D)
- `mixFactor5` :: **Mm** (H)
- `mixFactor6` :: **Mm** (I)

## `GradientMix` (M166)

**Documentation:** [https://marlinfw.org/docs/gcode/M166.html](https://marlinfw.org/docs/gcode/M166.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `startingZ` :: **Mm** (A)
- `startingTool` :: **Index** (I)
- `endingTool` :: **Index** (J)
- `endingZ` :: **Mm** (Z)

**Optional:**

- `enable` :: **Flag** (S)
- `toolIndex` :: **Index** (T)

## `WaitforBedTemperature` (M190)

**Documentation:** [https://marlinfw.org/docs/gcode/M190.html](https://marlinfw.org/docs/gcode/M190.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `materialPreset` :: **Index** (I)
- `targetTempWait` :: **Celsius** (R)
- `targetTemp` :: **Celsius** (S)
- `coolingTime` :: **Seconds** (T)

## `WaitforChamberTemperature` (M191)

**Documentation:** [https://marlinfw.org/docs/gcode/M191.html](https://marlinfw.org/docs/gcode/M191.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `targetTempWait` :: **Celsius** (R)
- `targetTemp` :: **Celsius** (S)

## `WaitforProbeTemperature` (M192)

**Documentation:** [https://marlinfw.org/docs/gcode/M192.html](https://marlinfw.org/docs/gcode/M192.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `targetTemp` :: **Celsius** (R)
- `minTemp` :: **Celsius** (S)

## `WaitForLaserCoolerTemperature` (M193)

**Documentation:** [https://marlinfw.org/docs/gcode/M193.html](https://marlinfw.org/docs/gcode/M193.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `targetTemp` :: **Celsius** (S)

## `VolumetricExtrusionDiameter` (M200)

**Documentation:** [https://marlinfw.org/docs/gcode/M200.html](https://marlinfw.org/docs/gcode/M200.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `filamentDiameter` :: **Mm** (D)
- `extruderLimit` :: **Mm** (L)
- `volumetricOn` :: **Flag** (S)
- `extruderIndex` :: **Index** (T)

## `PrintTravelMoveLimits` (M201)

**Documentation:** [https://marlinfw.org/docs/gcode/M201.html](https://marlinfw.org/docs/gcode/M201.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisExtrusion` :: **Mm** (E)
- `frequencyLimit` :: **Count** (F)
- `frequencyMinSpeed` :: **Mm** (S)
- `targetExtruder` :: **Index** (T)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `SetMaxFeedrate` (M203)

**Documentation:** [https://marlinfw.org/docs/gcode/M203.html](https://marlinfw.org/docs/gcode/M203.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisExtrusion` :: **MmPerSec** (E)
- `targetExtruder` :: **Index** (T)
- `axisX` :: **MmPerSec** (X)
- `axisY` :: **MmPerSec** (Y)
- `axisZ` :: **MmPerSec** (Z)

## `SetStartingAcceleration` (M204)

**Documentation:** [https://marlinfw.org/docs/gcode/M204.html](https://marlinfw.org/docs/gcode/M204.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `printingAccel` :: **Mm** (P)
- `retractAccel` :: **Mm** (R)
- `legacyAccel` :: **Mm** (S)
- `travelAccel` :: **Mm** (T)

## `SetAdvancedSettings` (M205)

**Documentation:** [https://marlinfw.org/docs/gcode/M205.html](https://marlinfw.org/docs/gcode/M205.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `minSegmentTime` :: **Milliseconds** (B)
- `axisExtrusion` :: **Mm** (E)
- `junctionDeviation` :: **Mm** (J)
- `minFeedratePrint` :: **MmPerSec** (S)
- `minFeedrateTravel` :: **MmPerSec** (T)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `SetHomeOffsets` (M206)

**Documentation:** [https://marlinfw.org/docs/gcode/M206.html](https://marlinfw.org/docs/gcode/M206.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **Mm** (A)
- `axisB` :: **Mm** (B)
- `axisC` :: **Mm** (C)
- `scaraPsi` :: **Mm** (P)
- `scaraTheta` :: **Mm** (T)
- `axisU` :: **Mm** (U)
- `axisV` :: **Mm** (V)
- `axisW` :: **Mm** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `FirmwareRetractionSettings` (M207)

**Documentation:** [https://marlinfw.org/docs/gcode/M207.html](https://marlinfw.org/docs/gcode/M207.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `retractFeedrate` :: **MmPerMin** (F)
- `retractLength` :: **Mm** (S)
- `retractSwapLength` :: **Mm** (W)
- `zLift` :: **Mm** (Z)

## `FirmwareRecoverSettings` (M208)

**Documentation:** [https://marlinfw.org/docs/gcode/M208.html](https://marlinfw.org/docs/gcode/M208.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `recoverFeedrate` :: **MmPerMin** (F)
- `swapRecoverFeedrate` :: **MmPerMin** (R)
- `additionalRecoverLength` :: **Mm** (S)
- `additionalRecoverSwapLength` :: **Mm** (W)

## `SetAutoRetract` (M209)

**Documentation:** [https://marlinfw.org/docs/gcode/M209.html](https://marlinfw.org/docs/gcode/M209.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `enable` :: **Flag** (S)

## `HomingFeedrate` (M210)

**Documentation:** [https://marlinfw.org/docs/gcode/M210.html](https://marlinfw.org/docs/gcode/M210.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisA` :: **MmPerMin** (A)
- `axisB` :: **MmPerMin** (B)
- `axisC` :: **MmPerMin** (C)
- `axisU` :: **MmPerMin** (U)
- `axisV` :: **MmPerMin** (V)
- `axisW` :: **MmPerMin** (W)
- `axisX` :: **MmPerMin** (X)
- `axisY` :: **MmPerMin** (Y)
- `axisZ` :: **MmPerMin** (Z)

## `SoftwareEndstops` (M211)

**Documentation:** [https://marlinfw.org/docs/gcode/M211.html](https://marlinfw.org/docs/gcode/M211.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `enable` :: **Flag** (S)

## `FilamentSwapParameters` (M217)

**Documentation:** [https://marlinfw.org/docs/gcode/M217.html](https://marlinfw.org/docs/gcode/M217.html)

⚠️ **Status:** Unimplemented - Filament swap parameters with complex state-dependent behavior (complexity: 6)

*No arguments*

## `SetHotendOffset` (M218)

**Documentation:** [https://marlinfw.org/docs/gcode/M218.html](https://marlinfw.org/docs/gcode/M218.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `hotendIndex` :: **Index** (T)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `SetFeedratePercentage` (M220)

**Documentation:** [https://marlinfw.org/docs/gcode/M220.html](https://marlinfw.org/docs/gcode/M220.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `backupFactor` :: **Flag** (B)
- `restoreFactor` :: **Flag** (R)
- `feedratePercent` :: **Index** (S)

## `SetFlowPercentage` (M221)

**Documentation:** [https://marlinfw.org/docs/gcode/M221.html](https://marlinfw.org/docs/gcode/M221.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `flowPercent` :: **Index** (S)

**Optional:**

- `targetExtruder` :: **Index** (T)

## `WaitforPinState` (M226)

**Documentation:** [https://marlinfw.org/docs/gcode/M226.html](https://marlinfw.org/docs/gcode/M226.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `pin` :: **Index** (P)

**Optional:**

- `state` :: **Index** (S)

## `TriggerCamera` (M240)

**Documentation:** [https://marlinfw.org/docs/gcode/M240.html](https://marlinfw.org/docs/gcode/M240.html)

⚠️ **Status:** Unimplemented - Camera trigger with many conditional parameters based on compile-time flags (complexity: 7)

*No arguments*

## `LCDContrast` (M250)

**Documentation:** [https://marlinfw.org/docs/gcode/M250.html](https://marlinfw.org/docs/gcode/M250.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `contrast` :: **Index** (C)

## `LCDSleepBacklightTimeout` (M255)

**Documentation:** [https://marlinfw.org/docs/gcode/M255.html](https://marlinfw.org/docs/gcode/M255.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `timeoutMinutes` :: **Count** (S)

## `LCDBrightness` (M256)

**Documentation:** [https://marlinfw.org/docs/gcode/M256.html](https://marlinfw.org/docs/gcode/M256.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `brightness` :: **Index** (B)

## `I2CSend` (M260)

**Documentation:** [https://marlinfw.org/docs/gcode/M260.html](https://marlinfw.org/docs/gcode/M260.html)

⚠️ **Status:** Unimplemented - I2C send with stateful buffer management, requires tracking buffer state across multiple commands (complexity: 8)

*No arguments*

## `I2CRequest` (M261)

**Documentation:** [https://marlinfw.org/docs/gcode/M261.html](https://marlinfw.org/docs/gcode/M261.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `address` :: **Index** (A)
- `byteCount` :: **Count** (B)

**Optional:**

- `outputStyle` :: **Index** (S)

## `ScanI2CBus` (M265)

**Documentation:** [https://marlinfw.org/docs/gcode/M265.html](https://marlinfw.org/docs/gcode/M265.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ServoPosition` (M280)

**Documentation:** [https://marlinfw.org/docs/gcode/M280.html](https://marlinfw.org/docs/gcode/M280.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `servoIndex` :: **Index** (P)

**Optional:**

- `position` :: **Index** (S)

## `EditServoAngles` (M281)

**Documentation:** [https://marlinfw.org/docs/gcode/M281.html](https://marlinfw.org/docs/gcode/M281.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `servoIndex` :: **Index** (P)

**Optional:**

- `deployAngle` :: **Degrees** (L)
- `stowAngle` :: **Degrees** (U)

## `DetachServo` (M282)

**Documentation:** [https://marlinfw.org/docs/gcode/M282.html](https://marlinfw.org/docs/gcode/M282.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `servoIndex` :: **Index** (P)

## `Babystep` (M290)

**Documentation:** [https://marlinfw.org/docs/gcode/M290.html](https://marlinfw.org/docs/gcode/M290.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `affectProbeOffset` :: **Flag** (P)
- `axisZAlias` :: **Mm** (S)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `PlayTone` (M300)

**Documentation:** [https://marlinfw.org/docs/gcode/M300.html](https://marlinfw.org/docs/gcode/M300.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `durationMs` :: **Milliseconds** (P)
- `frequencyHz` :: **Count** (S)

## `SetHotendPID` (M301)

**Documentation:** [https://marlinfw.org/docs/gcode/M301.html](https://marlinfw.org/docs/gcode/M301.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `cTerm` :: **Mm** (C)
- `derivative` :: **Mm** (D)
- `extruderIndex` :: **Index** (E)
- `fTerm` :: **Mm** (F)
- `integral` :: **Mm** (I)
- `extrusionScalingLength` :: **Mm** (L)
- `proportional` :: **Mm** (P)

## `ColdExtrude` (M302)

**Documentation:** [https://marlinfw.org/docs/gcode/M302.html](https://marlinfw.org/docs/gcode/M302.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `allowAnyTemp` :: **Flag** (P)
- `minTemp` :: **Celsius** (S)

## `PIDAutotune` (M303)

**Documentation:** [https://marlinfw.org/docs/gcode/M303.html](https://marlinfw.org/docs/gcode/M303.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `cycles` :: **Count** (C)
- `toggleDebug` :: **Flag** (D)
- `hotendIndex` :: **Index** (E)
- `targetTemp` :: **Celsius** (S)
- `useResult` :: **Flag** (U)

## `SetBedPID` (M304)

**Documentation:** [https://marlinfw.org/docs/gcode/M304.html](https://marlinfw.org/docs/gcode/M304.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `derivative` :: **Mm** (D)
- `integral` :: **Mm** (I)
- `proportional` :: **Mm** (P)

## `UserThermistorParameters` (M305)

**Documentation:** [https://marlinfw.org/docs/gcode/M305.html](https://marlinfw.org/docs/gcode/M305.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `beta` :: **Count** (B)
- `coefficientC` :: **Mm** (C)
- `tableIndex` :: **Index** (P)
- `pullupResistor` :: **Count** (R)
- `resistanceAt25C` :: **Count** (T)

## `ModelPredictiveTempControl` (M306)

**Documentation:** [https://marlinfw.org/docs/gcode/M306.html](https://marlinfw.org/docs/gcode/M306.html)

⚠️ **Status:** Unimplemented - Model Predictive Temperature Control with complex parameter configuration (complexity: 9)

*No arguments*

## `SetChamberPID` (M309)

**Documentation:** [https://marlinfw.org/docs/gcode/M309.html](https://marlinfw.org/docs/gcode/M309.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `derivative` :: **Mm** (D)
- `integral` :: **Mm** (I)
- `proportional` :: **Mm** (P)

## `SetMicrostepping` (M350)

**Documentation:** [https://marlinfw.org/docs/gcode/M350.html](https://marlinfw.org/docs/gcode/M350.html)

⚠️ **Status:** Unimplemented - Set micro-stepping with complex stepper driver configuration (complexity: 7)

*No arguments*

## `SetMicrostepPins` (M351)

**Documentation:** [https://marlinfw.org/docs/gcode/M351.html](https://marlinfw.org/docs/gcode/M351.html)

⚠️ **Status:** Unimplemented - Set microstep pins with hardware-specific pin configuration (complexity: 6)

*No arguments*

## `CaseLightControl` (M355)

**Documentation:** [https://marlinfw.org/docs/gcode/M355.html](https://marlinfw.org/docs/gcode/M355.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `brightness` :: **Index** (P)
- `on` :: **Flag** (S)

## `SCARAThetaA` (M360)

**Documentation:** [https://marlinfw.org/docs/gcode/M360.html](https://marlinfw.org/docs/gcode/M360.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SCARAThetaB` (M361)

**Documentation:** [https://marlinfw.org/docs/gcode/M361.html](https://marlinfw.org/docs/gcode/M361.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SCARAPsiA` (M362)

**Documentation:** [https://marlinfw.org/docs/gcode/M362.html](https://marlinfw.org/docs/gcode/M362.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SCARAPsiB` (M363)

**Documentation:** [https://marlinfw.org/docs/gcode/M363.html](https://marlinfw.org/docs/gcode/M363.html)

✅ **Status:** Fully Implemented

*No arguments*

## `SCARAPsiC` (M364)

**Documentation:** [https://marlinfw.org/docs/gcode/M364.html](https://marlinfw.org/docs/gcode/M364.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ActivateSolenoid` (M380)

**Documentation:** [https://marlinfw.org/docs/gcode/M380.html](https://marlinfw.org/docs/gcode/M380.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `solenoidIndex` :: **Index** (S)

## `DeactivateSolenoids` (M381)

**Documentation:** [https://marlinfw.org/docs/gcode/M381.html](https://marlinfw.org/docs/gcode/M381.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `solenoidIndex` :: **Index** (S)

## `FinishMoves` (M400)

**Documentation:** [https://marlinfw.org/docs/gcode/M400.html](https://marlinfw.org/docs/gcode/M400.html)

✅ **Status:** Fully Implemented

*No arguments*

## `DeployProbe` (M401)

**Documentation:** [https://marlinfw.org/docs/gcode/M401.html](https://marlinfw.org/docs/gcode/M401.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `reportHSMode` :: **Flag** (H)
- `remainInPlace` :: **Flag** (R)
- `setHSMode` :: **Flag** (S)

## `StowProbe` (M402)

**Documentation:** [https://marlinfw.org/docs/gcode/M402.html](https://marlinfw.org/docs/gcode/M402.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `remainInPlace` :: **Flag** (R)

## `MMU2FilamentType` (M403)

**Documentation:** [https://marlinfw.org/docs/gcode/M403.html](https://marlinfw.org/docs/gcode/M403.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `slotIndex` :: **Index** (E)
- `filamentType` :: **Index** (F)

## `FilamentWidthSensorNominalDiameter` (M404)

**Documentation:** [https://marlinfw.org/docs/gcode/M404.html](https://marlinfw.org/docs/gcode/M404.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `nominalWidth` :: **Mm** (W)

## `FilamentWidthSensorOn` (M405)

**Documentation:** [https://marlinfw.org/docs/gcode/M405.html](https://marlinfw.org/docs/gcode/M405.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `distanceCm` :: **Count** (D)

## `FilamentWidthSensorOff` (M406)

**Documentation:** [https://marlinfw.org/docs/gcode/M406.html](https://marlinfw.org/docs/gcode/M406.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ReadFilamentWidth` (M407)

**Documentation:** [https://marlinfw.org/docs/gcode/M407.html](https://marlinfw.org/docs/gcode/M407.html)

✅ **Status:** Fully Implemented

*No arguments*

## `Quickstop` (M410)

**Documentation:** [https://marlinfw.org/docs/gcode/M410.html](https://marlinfw.org/docs/gcode/M410.html)

✅ **Status:** Fully Implemented

*No arguments*

## `FilamentRunout` (M412)

**Documentation:** [https://marlinfw.org/docs/gcode/M412.html](https://marlinfw.org/docs/gcode/M412.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `runoutDistance` :: **Mm** (D)
- `hostHandling` :: **Flag** (H)
- `motionSensorLength` :: **Mm** (L)
- `resetSensor` :: **Flag** (R)
- `enable` :: **Flag** (S)

## `PowerlossRecovery` (M413)

**Documentation:** [https://marlinfw.org/docs/gcode/M413.html](https://marlinfw.org/docs/gcode/M413.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `enable` :: **Flag** (S)

## `LCDLanguage` (M414)

**Documentation:** [https://marlinfw.org/docs/gcode/M414.html](https://marlinfw.org/docs/gcode/M414.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `languageIndex` :: **Index** (S)

## `BedLevelingState` (M420)

**Documentation:** [https://marlinfw.org/docs/gcode/M420.html](https://marlinfw.org/docs/gcode/M420.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `centerMesh` :: **Flag** (C)
- `loadMeshIndex` :: **Index** (L)
- `enable` :: **Flag** (S)
- `format` :: **Index** (T)
- `verbose` :: **Flag** (V)
- `fadeHeight` :: **Mm** (Z)

## `SetMeshValue` (M421)

**Documentation:** [https://marlinfw.org/docs/gcode/M421.html](https://marlinfw.org/docs/gcode/M421.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `setClosest` :: **Flag** (C)
- `xIndex` :: **Index** (I)
- `yIndex` :: **Index** (J)
- `setUndefined` :: **Flag** (N)
- `addToZ` :: **Mm** (Q)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `zValue` :: **Mm** (Z)

## `SetZMotorXY` (M422)

**Documentation:** [https://marlinfw.org/docs/gcode/M422.html](https://marlinfw.org/docs/gcode/M422.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `reset` :: **Flag** (R)
- `stepperIndex` :: **Index** (S)
- `knownPositionIndex` :: **Index** (W)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)

## `XTwistCompensation` (M423)

**Documentation:** [https://marlinfw.org/docs/gcode/M423.html](https://marlinfw.org/docs/gcode/M423.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `startingX` :: **Mm** (A)
- `endingX` :: **Mm** (E)
- `xSpacing` :: **Mm** (I)
- `reset` :: **Flag** (R)
- `arrayIndex` :: **Index** (X)
- `zOffset` :: **Mm** (Z)

## `BacklashCompensation` (M425)

**Documentation:** [https://marlinfw.org/docs/gcode/M425.html](https://marlinfw.org/docs/gcode/M425.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `correctionFactor` :: **Mm** (F)
- `smoothingDistance` :: **Mm** (S)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Flag** (Z)

## `HomeOffsetsHere` (M428)

**Documentation:** [https://marlinfw.org/docs/gcode/M428.html](https://marlinfw.org/docs/gcode/M428.html)

✅ **Status:** Fully Implemented

*No arguments*

## `PowerMonitor` (M430)

**Documentation:** [https://marlinfw.org/docs/gcode/M430.html](https://marlinfw.org/docs/gcode/M430.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `displayCurrent` :: **Flag** (I)
- `displayVoltage` :: **Flag** (V)
- `displayPower` :: **Flag** (W)

## `CancelObjects` (M486)

**Documentation:** [https://marlinfw.org/docs/gcode/M486.html](https://marlinfw.org/docs/gcode/M486.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `cancelCurrent` :: **Flag** (C)
- `cancelIndex` :: **Index** (P)
- `currentObjectIndex` :: **Index** (S)
- `objectCount` :: **Count** (T)
- `uncancelIndex` :: **Index** (U)

## `FixedTimeMotion` (M493)

**Documentation:** [https://marlinfw.org/docs/gcode/M493.html](https://marlinfw.org/docs/gcode/M493.html)

⚠️ **Status:** Unimplemented - Fixed-Time Motion configuration with many interdependent parameters and complex state (complexity: 9)

*No arguments*

## `FTMotionTrajectorySmoothing` (M494)

**Documentation:** [https://marlinfw.org/docs/gcode/M494.html](https://marlinfw.org/docs/gcode/M494.html)

⚠️ **Status:** Unimplemented - FT Motion Trajectory Smoothing with complex motion planning parameters (complexity: 9)

*No arguments*

## `SaveSettings` (M500)

**Documentation:** [https://marlinfw.org/docs/gcode/M500.html](https://marlinfw.org/docs/gcode/M500.html)

✅ **Status:** Fully Implemented

*No arguments*

## `RestoreSettings` (M501)

**Documentation:** [https://marlinfw.org/docs/gcode/M501.html](https://marlinfw.org/docs/gcode/M501.html)

✅ **Status:** Fully Implemented

*No arguments*

## `FactoryReset` (M502)

**Documentation:** [https://marlinfw.org/docs/gcode/M502.html](https://marlinfw.org/docs/gcode/M502.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ReportSettings` (M503)

**Documentation:** [https://marlinfw.org/docs/gcode/M503.html](https://marlinfw.org/docs/gcode/M503.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `saveConfig` :: **Flag** (C)
- `detailedOutput` :: **Flag** (S)

## `ValidateEEPROMContents` (M504)

**Documentation:** [https://marlinfw.org/docs/gcode/M504.html](https://marlinfw.org/docs/gcode/M504.html)

✅ **Status:** Fully Implemented

*No arguments*

## `LockMachine` (M510)

**Documentation:** [https://marlinfw.org/docs/gcode/M510.html](https://marlinfw.org/docs/gcode/M510.html)

✅ **Status:** Fully Implemented

*No arguments*

## `UnlockMachine` (M511)

**Documentation:** [https://marlinfw.org/docs/gcode/M511.html](https://marlinfw.org/docs/gcode/M511.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `passcode` :: **Count** (P)

## `SetPasscode` (M512)

**Documentation:** [https://marlinfw.org/docs/gcode/M512.html](https://marlinfw.org/docs/gcode/M512.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `passcode` :: **TextValue** (_)

## `AbortSDPrint` (M524)

**Documentation:** [https://marlinfw.org/docs/gcode/M524.html](https://marlinfw.org/docs/gcode/M524.html)

✅ **Status:** Fully Implemented

*No arguments*

## `EndstopsAbortSD` (M540)

**Documentation:** [https://marlinfw.org/docs/gcode/M540.html](https://marlinfw.org/docs/gcode/M540.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `enable` :: **Flag** (S)

## `MachineName` (M550)

**Documentation:** [https://marlinfw.org/docs/gcode/M550.html](https://marlinfw.org/docs/gcode/M550.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `machineName` :: **TextValue** (_)

## `EthernetIPAddressNetworkIF` (M552)

**Documentation:** [https://marlinfw.org/docs/gcode/M552.html](https://marlinfw.org/docs/gcode/M552.html)

⚠️ **Status:** Unimplemented - Ethernet IP address configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## `EthernetSubnetMask` (M553)

**Documentation:** [https://marlinfw.org/docs/gcode/M553.html](https://marlinfw.org/docs/gcode/M553.html)

⚠️ **Status:** Unimplemented - Ethernet subnet mask configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## `EthernetGatewayIPAddress` (M554)

**Documentation:** [https://marlinfw.org/docs/gcode/M554.html](https://marlinfw.org/docs/gcode/M554.html)

⚠️ **Status:** Unimplemented - Ethernet gateway IP address configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## `SetTMCSteppingMode` (M569)

**Documentation:** [https://marlinfw.org/docs/gcode/M569.html](https://marlinfw.org/docs/gcode/M569.html)

⚠️ **Status:** Unimplemented - Set TMC stepping mode with complex stepper driver configuration (complexity: 7)

*No arguments*

## `SerialBaudRate` (M575)

**Documentation:** [https://marlinfw.org/docs/gcode/M575.html](https://marlinfw.org/docs/gcode/M575.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `baudRate` :: **Count** (B)

**Optional:**

- `portIndex` :: **Index** (P)

## `NonlinearExtrusionControl` (M592)

**Documentation:** [https://marlinfw.org/docs/gcode/M592.html](https://marlinfw.org/docs/gcode/M592.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `quadraticCoeff` :: **Mm** (A)
- `linearCoeff` :: **Mm** (B)
- `constantCoeff` :: **Mm** (C)
- `enable` :: **Flag** (S)

## `ZVInputShaping` (M593)

**Documentation:** [https://marlinfw.org/docs/gcode/M593.html](https://marlinfw.org/docs/gcode/M593.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `zeta` :: **Mm** (D)
- `frequencyHz` :: **Mm** (F)
- `axisX` :: **Flag** (X)
- `axisY` :: **Flag** (Y)
- `axisZ` :: **Flag** (Z)

## `FilamentChange` (M600)

**Documentation:** [https://marlinfw.org/docs/gcode/M600.html](https://marlinfw.org/docs/gcode/M600.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `beeps` :: **Count** (B)
- `retractLength` :: **Mm** (E)
- `loadLength` :: **Mm** (L)
- `resumeTemp` :: **Celsius** (R)
- `targetExtruder` :: **Index** (T)
- `unloadLength` :: **Mm** (U)
- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `zLift` :: **Mm** (Z)

## `ConfigureFilamentChange` (M603)

**Documentation:** [https://marlinfw.org/docs/gcode/M603.html](https://marlinfw.org/docs/gcode/M603.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `loadLength` :: **Mm** (L)
- `targetExtruder` :: **Index** (T)
- `unloadLength` :: **Mm** (U)

## `MultiNozzleMode` (M605)

**Documentation:** [https://marlinfw.org/docs/gcode/M605.html](https://marlinfw.org/docs/gcode/M605.html)

⚠️ **Status:** Unimplemented - Multi-nozzle mode configuration with complex multi-extruder setup (complexity: 8)

*No arguments*

## `DeltaConfiguration` (M665)

**Documentation:** [https://marlinfw.org/docs/gcode/M665.html](https://marlinfw.org/docs/gcode/M665.html)

⚠️ **Status:** Unimplemented - Delta configuration with many interdependent geometry parameters (complexity: 8)

*No arguments*

## `SetDeltaEndstopAdjustments` (M666)

**Documentation:** [https://marlinfw.org/docs/gcode/M666.html](https://marlinfw.org/docs/gcode/M666.html)

⚠️ **Status:** Unimplemented - Set Delta endstop adjustments with complex delta-specific calibration (complexity: 7)

*No arguments*

## `DuetSmartEffectorSensitivity` (M672)

**Documentation:** [https://marlinfw.org/docs/gcode/M672.html](https://marlinfw.org/docs/gcode/M672.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `revertFactory` :: **Flag** (R)
- `sensitivity` :: **Index** (S)

## `LoadFilament` (M701)

**Documentation:** [https://marlinfw.org/docs/gcode/M701.html](https://marlinfw.org/docs/gcode/M701.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `extrudeDistance` :: **Mm** (L)

**Optional:**

- `extruderIndex` :: **Index** (T)
- `zMove` :: **Mm** (Z)

## `UnloadFilament` (M702)

**Documentation:** [https://marlinfw.org/docs/gcode/M702.html](https://marlinfw.org/docs/gcode/M702.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `retractDistance` :: **Mm** (U)

**Optional:**

- `extruderIndex` :: **Index** (T)
- `zMove` :: **Mm** (Z)

## `ControllerFanSettings` (M710)

**Documentation:** [https://marlinfw.org/docs/gcode/M710.html](https://marlinfw.org/docs/gcode/M710.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `autoSpeed` :: **Flag** (A)
- `extraDuration` :: **Seconds** (D)
- `idleSpeed` :: **Index** (I)
- `reset` :: **Flag** (R)
- `activeSpeed` :: **Index** (S)

## `RepeatMarker` (M808)

**Documentation:** [https://marlinfw.org/docs/gcode/M808.html](https://marlinfw.org/docs/gcode/M808.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `loopCount` :: **Count** (L)

## `GcodeMacros` (M810)

**Documentation:** [https://marlinfw.org/docs/gcode/M810-M819.html](https://marlinfw.org/docs/gcode/M810-M819.html)

⚠️ **Status:** Unimplemented - G-code macros with complex string parsing and macro definition/execution (complexity: 10)

*No arguments*

## `ReportGcodeMacros` (M820)

**Documentation:** [https://marlinfw.org/docs/gcode/M820.html](https://marlinfw.org/docs/gcode/M820.html)

✅ **Status:** Fully Implemented

*No arguments*

## `XYZProbeOffset` (M851)

**Documentation:** [https://marlinfw.org/docs/gcode/M851.html](https://marlinfw.org/docs/gcode/M851.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisX` :: **Mm** (X)
- `axisY` :: **Mm** (Y)
- `axisZ` :: **Mm** (Z)

## `BedSkewCompensation` (M852)

**Documentation:** [https://marlinfw.org/docs/gcode/M852.html](https://marlinfw.org/docs/gcode/M852.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `xySkew` :: **Mm** (I)
- `xzSkew` :: **Mm** (J)
- `yzSkew` :: **Mm** (K)
- `xySkewAlias` :: **Mm** (S)

## `I2CPositionEncoders` (M860)

**Documentation:** [https://marlinfw.org/docs/gcode/M860-M869.html](https://marlinfw.org/docs/gcode/M860-M869.html)

⚠️ **Status:** Unimplemented - I2C position encoders with complex encoder configuration and state management (complexity: 8)

*No arguments*

## `ProbeTemperatureConfig` (M871)

**Documentation:** [https://marlinfw.org/docs/gcode/M871.html](https://marlinfw.org/docs/gcode/M871.html)

⚠️ **Status:** Unimplemented - Probe temperature configuration with complex temperature compensation parameters (complexity: 7)

*No arguments*

## `HandlePromptResponse` (M876)

**Documentation:** [https://marlinfw.org/docs/gcode/M876.html](https://marlinfw.org/docs/gcode/M876.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `response` :: **Index** (S)

## `LinearAdvanceFactor` (M900)

**Documentation:** [https://marlinfw.org/docs/gcode/M900.html](https://marlinfw.org/docs/gcode/M900.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `kFactor` :: **Mm** (K)
- `secondKFactor` :: **Mm** (L)
- `slot` :: **Index** (S)
- `extruderIndex` :: **Index** (T)

## `StepperMotorCurrent` (M906)

**Documentation:** [https://marlinfw.org/docs/gcode/M906.html](https://marlinfw.org/docs/gcode/M906.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `axisExtrusion` :: **Count** (E)
- `stepperIndex` :: **Index** (I)
- `extruderIndex` :: **Index** (T)
- `axisX` :: **Count** (X)
- `axisY` :: **Count** (Y)
- `axisZ` :: **Count** (Z)

## `TrimpotStepperMotorCurrent` (M907)

**Documentation:** [https://marlinfw.org/docs/gcode/M907.html](https://marlinfw.org/docs/gcode/M907.html)

⚠️ **Status:** Unimplemented - Trimpot stepper motor current with hardware-specific analog control (complexity: 6)

*No arguments*

## `SetTrimpotPins` (M908)

**Documentation:** [https://marlinfw.org/docs/gcode/M908.html](https://marlinfw.org/docs/gcode/M908.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `pin` :: **Index** (P)
- `current` :: **Index** (S)

## `ReportDACStepperCurrent` (M909)

**Documentation:** [https://marlinfw.org/docs/gcode/M909.html](https://marlinfw.org/docs/gcode/M909.html)

✅ **Status:** Fully Implemented

*No arguments*

## `CommitDACtoEEPROM` (M910)

**Documentation:** [https://marlinfw.org/docs/gcode/M910.html](https://marlinfw.org/docs/gcode/M910.html)

✅ **Status:** Fully Implemented

*No arguments*

## `TMCOTPreWarnCondition` (M911)

**Documentation:** [https://marlinfw.org/docs/gcode/M911.html](https://marlinfw.org/docs/gcode/M911.html)

✅ **Status:** Fully Implemented

*No arguments*

## `ClearTMCOTPreWarn` (M912)

**Documentation:** [https://marlinfw.org/docs/gcode/M912.html](https://marlinfw.org/docs/gcode/M912.html)

⚠️ **Status:** Unimplemented - Clear TMC OT Pre-Warn with TMC driver state management (complexity: 5)

*No arguments*

## `SetHybridThresholdSpeed` (M913)

**Documentation:** [https://marlinfw.org/docs/gcode/M913.html](https://marlinfw.org/docs/gcode/M913.html)

⚠️ **Status:** Unimplemented - Set Hybrid Threshold Speed with TMC hybrid mode configuration (complexity: 6)

*No arguments*

## `TMCBumpSensitivity` (M914)

**Documentation:** [https://marlinfw.org/docs/gcode/M914.html](https://marlinfw.org/docs/gcode/M914.html)

⚠️ **Status:** Unimplemented - TMC Bump Sensitivity with complex TMC driver tuning parameters (complexity: 7)

*No arguments*

## `TMCZAxisCalibration` (M915)

**Documentation:** [https://marlinfw.org/docs/gcode/M915.html](https://marlinfw.org/docs/gcode/M915.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `current` :: **Count** (S)
- `extraHeight` :: **Mm** (Z)

## `L6474ThermalWarningTest` (M916)

**Documentation:** [https://marlinfw.org/docs/gcode/M916.html](https://marlinfw.org/docs/gcode/M916.html)

⚠️ **Status:** Unimplemented - L6474 Thermal Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## `L6474OvercurrentWarningTest` (M917)

**Documentation:** [https://marlinfw.org/docs/gcode/M917.html](https://marlinfw.org/docs/gcode/M917.html)

⚠️ **Status:** Unimplemented - L6474 Overcurrent Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## `L6474SpeedWarningTest` (M918)

**Documentation:** [https://marlinfw.org/docs/gcode/M918.html](https://marlinfw.org/docs/gcode/M918.html)

⚠️ **Status:** Unimplemented - L6474 Speed Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## `TMCChopperTiming` (M919)

**Documentation:** [https://marlinfw.org/docs/gcode/M919.html](https://marlinfw.org/docs/gcode/M919.html)

⚠️ **Status:** Unimplemented - TMC Chopper Timing with complex TMC driver register configuration (complexity: 7)

*No arguments*

## `TMCHomingCurrent` (M920)

**Documentation:** [https://marlinfw.org/docs/gcode/M920.html](https://marlinfw.org/docs/gcode/M920.html)

⚠️ **Status:** Unimplemented - TMC Homing Current with TMC driver current configuration for homing (complexity: 6)

*No arguments*

## `StartSDLogging` (M928)

**Documentation:** [https://marlinfw.org/docs/gcode/M928.html](https://marlinfw.org/docs/gcode/M928.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- `filename` :: **Filename** (_)

## `MagneticParkingExtruder` (M951)

**Documentation:** [https://marlinfw.org/docs/gcode/M951.html](https://marlinfw.org/docs/gcode/M951.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `compensationFactor` :: **Mm** (C)
- `travelFeedrate` :: **Mm** (D)
- `fastFeedrate` :: **MmPerMin** (H)
- `grabDistance` :: **Mm** (I)
- `slowFeedrate` :: **MmPerMin** (J)
- `x0Position` :: **Mm** (L)
- `x1Position` :: **Mm** (R)

## `BackUpFlashSettingstoSD` (M993)

**Documentation:** [https://marlinfw.org/docs/gcode/M993.html](https://marlinfw.org/docs/gcode/M993.html)

✅ **Status:** Fully Implemented

*No arguments*

## `RestoreFlashfromSD` (M994)

**Documentation:** [https://marlinfw.org/docs/gcode/M994.html](https://marlinfw.org/docs/gcode/M994.html)

✅ **Status:** Fully Implemented

*No arguments*

## `TouchScreenCalibration` (M995)

**Documentation:** [https://marlinfw.org/docs/gcode/M995.html](https://marlinfw.org/docs/gcode/M995.html)

✅ **Status:** Fully Implemented

*No arguments*

## `FirmwareUpdate` (M997)

**Documentation:** [https://marlinfw.org/docs/gcode/M997.html](https://marlinfw.org/docs/gcode/M997.html)

✅ **Status:** Fully Implemented

*No arguments*

## `STOPRestart` (M999)

**Documentation:** [https://marlinfw.org/docs/gcode/M999.html](https://marlinfw.org/docs/gcode/M999.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- `resumeWithoutFlush` :: **Flag** (S)

## `MAX7219Control` (M7219)

**Documentation:** [https://marlinfw.org/docs/gcode/M7219.html](https://marlinfw.org/docs/gcode/M7219.html)

⚠️ **Status:** Unimplemented - MAX7219 LED matrix control with complex display buffer management (complexity: 7)

*No arguments*
