<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Marlin G-Code API Reference](#marlin-g-code-api-reference)
  - [Linear Move (G0)](#linear-move-g0)
  - [Linear Move (G1)](#linear-move-g1)
  - [Linear Move (G2)](#linear-move-g2)
  - [Linear Move (G3)](#linear-move-g3)
  - [Dwell (G4)](#dwell-g4)
  - [Bezier Cubic Spline Move (G5)](#bezier-cubic-spline-move-g5)
  - [Direct Stepper Move (G6)](#direct-stepper-move-g6)
  - [Retract (G10)](#retract-g10)
  - [Recover (G11)](#recover-g11)
  - [Clean Nozzle (G12)](#clean-nozzle-g12)
  - [CNC Workspace Planes (G17)](#cnc-workspace-planes-g17)
  - [CNC Workspace Planes (G18)](#cnc-workspace-planes-g18)
  - [CNC Workspace Planes (G19)](#cnc-workspace-planes-g19)
  - [Inch Units (G20)](#inch-units-g20)
  - [Millimeter Units (G21)](#millimeter-units-g21)
  - [Mesh Validation Pattern (G26)](#mesh-validation-pattern-g26)
  - [Park Toolehead (G27)](#park-toolehead-g27)
  - [Auto Home (G28)](#auto-home-g28)
  - [Bed Leveling (G29)](#bed-leveling-g29)
  - [Bed Leveling (G29)](#bed-leveling-g29-1)
  - [Bed Leveling (G29)](#bed-leveling-g29-2)
  - [Bed Leveling (G29)](#bed-leveling-g29-3)
  - [Bed Leveling (G29)](#bed-leveling-g29-4)
  - [Single Z-Probe (G30)](#single-z-probe-g30)
  - [Dock Sled (G31)](#dock-sled-g31)
  - [Undock Sled (G32)](#undock-sled-g32)
  - [Delta Auto Calibration (G33)](#delta-auto-calibration-g33)
  - [Z Steppers Auto-Alignment (G34)](#z-steppers-auto-alignment-g34)
  - [Mechanical Gantry Calibration (G34)](#mechanical-gantry-calibration-g34)
  - [Tramming Assistant (G35)](#tramming-assistant-g35)
  - [Probe Target (G38.2)](#probe-target-g382)
  - [Probe Target (G38.3)](#probe-target-g383)
  - [Probe Target (G38.4)](#probe-target-g384)
  - [Probe Target (G38.5)](#probe-target-g385)
  - [Move to Mesh Coordinate (G42)](#move-to-mesh-coordinate-g42)
  - [Move in Machine Coordinates (G53)](#move-in-machine-coordinates-g53)
  - [Select Workspace (G54)](#select-workspace-g54)
  - [Select Workspace (G55)](#select-workspace-g55)
  - [Select Workspace (G56)](#select-workspace-g56)
  - [Select Workspace (G57)](#select-workspace-g57)
  - [Select Workspace (G58)](#select-workspace-g58)
  - [Select Workspace (G59)](#select-workspace-g59)
  - [Select Workspace (G59.1)](#select-workspace-g591)
  - [Select Workspace (G59.2)](#select-workspace-g592)
  - [Select Workspace (G59.3)](#select-workspace-g593)
  - [Stored Positions (G60)](#stored-positions-g60)
  - [Return to Saved Position (G61)](#return-to-saved-position-g61)
  - [Probe Temperature Calibration (G76)](#probe-temperature-calibration-g76)
  - [Cancel Current Motion Mode (G80)](#cancel-current-motion-mode-g80)
  - [Absolute Positioning (G90)](#absolute-positioning-g90)
  - [Relative Positioning (G91)](#relative-positioning-g91)
  - [Set Position (G92)](#set-position-g92)
  - [Backlash Calibration (G425)](#backlash-calibration-g425)
  - [Unconditional Stop (M0)](#unconditional-stop-m0)
  - [Spindle CW / Laser On (M3)](#spindle-cw--laser-on-m3)
  - [Spindle CCW / Laser On (M4)](#spindle-ccw--laser-on-m4)
  - [Spindle / Laser Off (M5)](#spindle--laser-off-m5)
  - [Coolant Controls (M7)](#coolant-controls-m7)
  - [Coolant Controls (M8)](#coolant-controls-m8)
  - [Coolant Controls (M9)](#coolant-controls-m9)
  - [Vacuum / Blower Control (M10)](#vacuum--blower-control-m10)
  - [Vacuum / Blower Control (M11)](#vacuum--blower-control-m11)
  - [Expected Printer Check (M16)](#expected-printer-check-m16)
  - [Enable Steppers (M17)](#enable-steppers-m17)
  - [Disable Steppers (M18)](#disable-steppers-m18)
  - [List SD Card (M20)](#list-sd-card-m20)
  - [Init SD Card (M21)](#init-sd-card-m21)
  - [Release SD Card (M22)](#release-sd-card-m22)
  - [Select SD File (M23)](#select-sd-file-m23)
  - [Start or Resume SD Print (M24)](#start-or-resume-sd-print-m24)
  - [Pause SD Print (M25)](#pause-sd-print-m25)
  - [Set SD Position (M26)](#set-sd-position-m26)
  - [Report SD Print Status (M27)](#report-sd-print-status-m27)
  - [Start SD Write (M28)](#start-sd-write-m28)
  - [Stop SD Write (M29)](#stop-sd-write-m29)
  - [Delete SD File (M30)](#delete-sd-file-m30)
  - [Report Print Time (M31)](#report-print-time-m31)
  - [Select and Start (M32)](#select-and-start-m32)
  - [Get Long Path (M33)](#get-long-path-m33)
  - [SDCard Sorting (M34)](#sdcard-sorting-m34)
  - [Set Pin State (M42)](#set-pin-state-m42)
  - [Pins Debugging (M43)](#pins-debugging-m43)
  - [Probe Repeatability Test (M48)](#probe-repeatability-test-m48)
  - [Set Print Progress (M73)](#set-print-progress-m73)
  - [Start Print Job Timer (M75)](#start-print-job-timer-m75)
  - [Pause Print Job Timer (M76)](#pause-print-job-timer-m76)
  - [Stop Print Job Timer (M77)](#stop-print-job-timer-m77)
  - [Print Job Stats (M78)](#print-job-stats-m78)
  - [Power On (M80)](#power-on-m80)
  - [Power Off (M81)](#power-off-m81)
  - [E Absolute (M82)](#e-absolute-m82)
  - [E Relative (M83)](#e-relative-m83)
  - [Inactivity Shutdown (M85)](#inactivity-shutdown-m85)
  - [Hotend Idle Timeout (M86)](#hotend-idle-timeout-m86)
  - [Disable Hotend Idle Timeout (M87)](#disable-hotend-idle-timeout-m87)
  - [Set Axis Steps-per-unit (M92)](#set-axis-steps-per-unit-m92)
  - [Free Memory (M100)](#free-memory-m100)
  - [Configure Bed Distance Sensor (M102)](#configure-bed-distance-sensor-m102)
  - [Set Hotend Temperature (M104)](#set-hotend-temperature-m104)
  - [Report Temperatures (M105)](#report-temperatures-m105)
  - [Set Fan Speed (M106)](#set-fan-speed-m106)
  - [Fan Off (M107)](#fan-off-m107)
  - [Break and Continue (M108)](#break-and-continue-m108)
  - [Wait for Hotend Temperature (M109)](#wait-for-hotend-temperature-m109)
  - [Set / Get Line Number (M110)](#set--get-line-number-m110)
  - [Debug Level (M111)](#debug-level-m111)
  - [Full Shutdown (M112)](#full-shutdown-m112)
  - [Host Keepalive (M113)](#host-keepalive-m113)
  - [Get Current Position (M114)](#get-current-position-m114)
  - [Firmware Info (M115)](#firmware-info-m115)
  - [Set LCD Message (M117)](#set-lcd-message-m117)
  - [Serial Print (M118)](#serial-print-m118)
  - [Endstop States (M119)](#endstop-states-m119)
  - [Enable Endstops (M120)](#enable-endstops-m120)
  - [Disable Endstops (M121)](#disable-endstops-m121)
  - [TMC Debugging (M122)](#tmc-debugging-m122)
  - [Fan Tachometers (M123)](#fan-tachometers-m123)
  - [Park Head (M125)](#park-head-m125)
  - [Baricuda 1 Open (M126)](#baricuda-1-open-m126)
  - [Baricuda 1 Close (M127)](#baricuda-1-close-m127)
  - [Baricuda 2 Open (M128)](#baricuda-2-open-m128)
  - [Baricuda 2 Close (M129)](#baricuda-2-close-m129)
  - [Set Bed Temperature (M140)](#set-bed-temperature-m140)
  - [Set Chamber Temperature (M141)](#set-chamber-temperature-m141)
  - [Set Laser Cooler Temperature (M143)](#set-laser-cooler-temperature-m143)
  - [Set Material Preset (M145)](#set-material-preset-m145)
  - [Set Temperature Units (M149)](#set-temperature-units-m149)
  - [Set RGB(W) Color (M150)](#set-rgbw-color-m150)
  - [Position Auto-Report (M154)](#position-auto-report-m154)
  - [Temperature Auto-Report (M155)](#temperature-auto-report-m155)
  - [Set Mix Factor (M163)](#set-mix-factor-m163)
  - [Save Mix (M164)](#save-mix-m164)
  - [Set Mix (M165)](#set-mix-m165)
  - [Gradient Mix (M166)](#gradient-mix-m166)
  - [Wait for Bed Temperature (M190)](#wait-for-bed-temperature-m190)
  - [Wait for Chamber Temperature (M191)](#wait-for-chamber-temperature-m191)
  - [Wait for Probe Temperature (M192)](#wait-for-probe-temperature-m192)
  - [Wait For Laser Cooler Temperature (M193)](#wait-for-laser-cooler-temperature-m193)
  - [Volumetric Extrusion Diameter (M200)](#volumetric-extrusion-diameter-m200)
  - [Print / Travel Move Limits (M201)](#print--travel-move-limits-m201)
  - [Set Max Feedrate (M203)](#set-max-feedrate-m203)
  - [Set Starting Acceleration (M204)](#set-starting-acceleration-m204)
  - [Set Advanced Settings (M205)](#set-advanced-settings-m205)
  - [Set Home Offsets (M206)](#set-home-offsets-m206)
  - [Firmware Retraction Settings (M207)](#firmware-retraction-settings-m207)
  - [Firmware Recover Settings (M208)](#firmware-recover-settings-m208)
  - [Set Auto Retract (M209)](#set-auto-retract-m209)
  - [Homing Feedrate (M210)](#homing-feedrate-m210)
  - [Software Endstops (M211)](#software-endstops-m211)
  - [Filament Swap Parameters (M217)](#filament-swap-parameters-m217)
  - [Set Hotend Offset (M218)](#set-hotend-offset-m218)
  - [Set Feedrate Percentage (M220)](#set-feedrate-percentage-m220)
  - [Set Flow Percentage (M221)](#set-flow-percentage-m221)
  - [Wait for Pin State (M226)](#wait-for-pin-state-m226)
  - [Trigger Camera (M240)](#trigger-camera-m240)
  - [LCD Contrast (M250)](#lcd-contrast-m250)
  - [LCD Sleep/Backlight Timeout (M255)](#lcd-sleepbacklight-timeout-m255)
  - [LCD Brightness (M256)](#lcd-brightness-m256)
  - [I2C Send (M260)](#i2c-send-m260)
  - [I2C Request (M261)](#i2c-request-m261)
  - [Scan I2C Bus (M265)](#scan-i2c-bus-m265)
  - [Servo Position (M280)](#servo-position-m280)
  - [Edit Servo Angles (M281)](#edit-servo-angles-m281)
  - [Detach Servo (M282)](#detach-servo-m282)
  - [Babystep (M290)](#babystep-m290)
  - [Play Tone (M300)](#play-tone-m300)
  - [Set Hotend PID (M301)](#set-hotend-pid-m301)
  - [Cold Extrude (M302)](#cold-extrude-m302)
  - [PID Autotune (M303)](#pid-autotune-m303)
  - [Set Bed PID (M304)](#set-bed-pid-m304)
  - [User Thermistor Parameters (M305)](#user-thermistor-parameters-m305)
  - [Model Predictive Temp. Control (M306)](#model-predictive-temp-control-m306)
  - [Set Chamber PID (M309)](#set-chamber-pid-m309)
  - [Set Micro-stepping (M350)](#set-micro-stepping-m350)
  - [Set Microstep Pins (M351)](#set-microstep-pins-m351)
  - [Case Light Control (M355)](#case-light-control-m355)
  - [SCARA Theta A (M360)](#scara-theta-a-m360)
  - [SCARA Theta-B (M361)](#scara-theta-b-m361)
  - [SCARA Psi-A (M362)](#scara-psi-a-m362)
  - [SCARA Psi-B (M363)](#scara-psi-b-m363)
  - [SCARA Psi-C (M364)](#scara-psi-c-m364)
  - [Activate Solenoid (M380)](#activate-solenoid-m380)
  - [Deactivate Solenoids (M381)](#deactivate-solenoids-m381)
  - [Finish Moves (M400)](#finish-moves-m400)
  - [Deploy Probe (M401)](#deploy-probe-m401)
  - [Stow Probe (M402)](#stow-probe-m402)
  - [MMU2 Filament Type (M403)](#mmu2-filament-type-m403)
  - [Filament Width Sensor Nominal Diameter (M404)](#filament-width-sensor-nominal-diameter-m404)
  - [Filament Width Sensor On (M405)](#filament-width-sensor-on-m405)
  - [Filament Width Sensor Off (M406)](#filament-width-sensor-off-m406)
  - [Read Filament Width (M407)](#read-filament-width-m407)
  - [Quickstop (M410)](#quickstop-m410)
  - [Filament Runout (M412)](#filament-runout-m412)
  - [Power-loss Recovery (M413)](#power-loss-recovery-m413)
  - [LCD Language (M414)](#lcd-language-m414)
  - [Bed Leveling State (M420)](#bed-leveling-state-m420)
  - [Set Mesh Value (M421)](#set-mesh-value-m421)
  - [Set Z Motor XY (M422)](#set-z-motor-xy-m422)
  - [X Twist Compensation (M423)](#x-twist-compensation-m423)
  - [Backlash Compensation (M425)](#backlash-compensation-m425)
  - [Home Offsets Here (M428)](#home-offsets-here-m428)
  - [Power Monitor (M430)](#power-monitor-m430)
  - [Cancel Objects (M486)](#cancel-objects-m486)
  - [Fixed-Time Motion (M493)](#fixed-time-motion-m493)
  - [FT Motion Trajectory Smoothing (M494)](#ft-motion-trajectory-smoothing-m494)
  - [Save Settings (M500)](#save-settings-m500)
  - [Restore Settings (M501)](#restore-settings-m501)
  - [Factory Reset (M502)](#factory-reset-m502)
  - [Report Settings (M503)](#report-settings-m503)
  - [Validate EEPROM Contents (M504)](#validate-eeprom-contents-m504)
  - [Lock Machine (M510)](#lock-machine-m510)
  - [Unlock Machine (M511)](#unlock-machine-m511)
  - [Set Passcode (M512)](#set-passcode-m512)
  - [Abort SD Print (M524)](#abort-sd-print-m524)
  - [Endstops Abort SD (M540)](#endstops-abort-sd-m540)
  - [Machine Name (M550)](#machine-name-m550)
  - [Ethernet IP Address, Network IF (M552)](#ethernet-ip-address-network-if-m552)
  - [Ethernet Subnet Mask (M553)](#ethernet-subnet-mask-m553)
  - [Ethernet Gateway IP Address (M554)](#ethernet-gateway-ip-address-m554)
  - [Set TMC Stepping Mode (M569)](#set-tmc-stepping-mode-m569)
  - [Serial Baud Rate (M575)](#serial-baud-rate-m575)
  - [Nonlinear Extrusion Control (M592)](#nonlinear-extrusion-control-m592)
  - [ZV Input Shaping (M593)](#zv-input-shaping-m593)
  - [Filament Change (M600)](#filament-change-m600)
  - [Configure Filament Change (M603)](#configure-filament-change-m603)
  - [Multi Nozzle Mode (M605)](#multi-nozzle-mode-m605)
  - [Delta Configuration (M665)](#delta-configuration-m665)
  - [Set Delta Endstop Adjustments (M666)](#set-delta-endstop-adjustments-m666)
  - [Duet Smart Effector Sensitivity (M672)](#duet-smart-effector-sensitivity-m672)
  - [Load Filament (M701)](#load-filament-m701)
  - [Unload Filament (M702)](#unload-filament-m702)
  - [Controller Fan Settings (M710)](#controller-fan-settings-m710)
  - [Repeat Marker (M808)](#repeat-marker-m808)
  - [G-code Macros (M810)](#g-code-macros-m810)
  - [Report G-code Macros (M820)](#report-g-code-macros-m820)
  - [XYZ Probe Offset (M851)](#xyz-probe-offset-m851)
  - [Bed Skew Compensation (M852)](#bed-skew-compensation-m852)
  - [I2C Position Encoders (M860)](#i2c-position-encoders-m860)
  - [Probe Temperature Config (M871)](#probe-temperature-config-m871)
  - [Handle Prompt Response (M876)](#handle-prompt-response-m876)
  - [Linear Advance Factor (M900)](#linear-advance-factor-m900)
  - [Stepper Motor Current (M906)](#stepper-motor-current-m906)
  - [Trimpot Stepper Motor Current (M907)](#trimpot-stepper-motor-current-m907)
  - [Set Trimpot Pins (M908)](#set-trimpot-pins-m908)
  - [Report DAC Stepper Current (M909)](#report-dac-stepper-current-m909)
  - [Commit DAC to EEPROM (M910)](#commit-dac-to-eeprom-m910)
  - [TMC OT Pre-Warn Condition (M911)](#tmc-ot-pre-warn-condition-m911)
  - [Clear TMC OT Pre-Warn (M912)](#clear-tmc-ot-pre-warn-m912)
  - [Set Hybrid Threshold Speed (M913)](#set-hybrid-threshold-speed-m913)
  - [TMC Bump Sensitivity (M914)](#tmc-bump-sensitivity-m914)
  - [TMC Z Axis Calibration (M915)](#tmc-z-axis-calibration-m915)
  - [L6474 Thermal Warning Test (M916)](#l6474-thermal-warning-test-m916)
  - [L6474 Overcurrent Warning Test (M917)](#l6474-overcurrent-warning-test-m917)
  - [L6474 Speed Warning Test (M918)](#l6474-speed-warning-test-m918)
  - [TMC Chopper Timing (M919)](#tmc-chopper-timing-m919)
  - [TMC Homing Current (M920)](#tmc-homing-current-m920)
  - [Start SD Logging (M928)](#start-sd-logging-m928)
  - [Magnetic Parking Extruder (M951)](#magnetic-parking-extruder-m951)
  - [Back Up Flash Settings to SD (M993)](#back-up-flash-settings-to-sd-m993)
  - [Restore Flash from SD (M994)](#restore-flash-from-sd-m994)
  - [Touch Screen Calibration (M995)](#touch-screen-calibration-m995)
  - [Firmware Update (M997)](#firmware-update-m997)
  - [STOP Restart (M999)](#stop-restart-m999)
  - [MAX7219 Control (M7219)](#max7219-control-m7219)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Marlin G-Code API Reference

Generated from `assets/spec.json` on 2026-01-22

**Total commands:** 264
**Implemented:** 234
**Unimplemented:** 30

---

## Linear Move (G0)

**Documentation:** [https://marlinfw.org/docs/gcode/G000-G001.html](https://marlinfw.org/docs/gcode/G000-G001.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Mm** (A)
- axisB :: **Mm** (B)
- axisC :: **Mm** (C)
- feedrate :: **MmPerMin** (F)
- laser :: **LaserPower** (S)
- axisU :: **Mm** (U)
- axisV :: **Mm** (V)
- axisW :: **Mm** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Linear Move (G1)

**Documentation:** [https://marlinfw.org/docs/gcode/G000-G001.html](https://marlinfw.org/docs/gcode/G000-G001.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- axisExtrusion **Mm** (E)

**Optional:**

- axisA :: **Mm** (A)
- axisB :: **Mm** (B)
- axisC :: **Mm** (C)
- feedrate :: **MmPerMin** (F)
- laser :: **LaserPower** (S)
- axisU :: **Mm** (U)
- axisV :: **Mm** (V)
- axisW :: **Mm** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Linear Move (G2)

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

## Linear Move (G3)

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

## Dwell (G4)

**Documentation:** [https://marlinfw.org/docs/gcode/G004.html](https://marlinfw.org/docs/gcode/G004.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- timeSeconds :: **Seconds** (S)
- timeMilliseconds :: **Milliseconds** (P)

## Bezier Cubic Spline Move (G5)

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

## Direct Stepper Move (G6)

**Documentation:** [https://marlinfw.org/docs/gcode/G006.html](https://marlinfw.org/docs/gcode/G006.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- directionE :: **Flag** (E)
- pageIndex :: **Index** (I)
- stepRate :: **MmPerSec** (R)
- stepCount :: **Count** (S)
- directionX :: **Flag** (X)
- directionY :: **Flag** (Y)
- directionZ :: **Flag** (Z)

## Retract (G10)

**Documentation:** [https://marlinfw.org/docs/gcode/G010.html](https://marlinfw.org/docs/gcode/G010.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- swapRetract :: **Flag** (S)

## Recover (G11)

**Documentation:** [https://marlinfw.org/docs/gcode/G011.html](https://marlinfw.org/docs/gcode/G011.html)

✅ **Status:** Fully Implemented

*No arguments*

## Clean Nozzle (G12)

**Documentation:** [https://marlinfw.org/docs/gcode/G012.html](https://marlinfw.org/docs/gcode/G012.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- pattern :: **Index** (P)
- radius :: **Mm** (R)
- repetitions :: **Count** (S)
- triangles :: **Count** (T)
- includeX :: **Flag** (X)
- includeY :: **Flag** (Y)
- includeZ :: **Flag** (Z)

## CNC Workspace Planes (G17)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## CNC Workspace Planes (G18)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## CNC Workspace Planes (G19)

**Documentation:** [https://marlinfw.org/docs/gcode/G017-G019.html](https://marlinfw.org/docs/gcode/G017-G019.html)

✅ **Status:** Fully Implemented

*No arguments*

## Inch Units (G20)

**Documentation:** [https://marlinfw.org/docs/gcode/G020.html](https://marlinfw.org/docs/gcode/G020.html)

✅ **Status:** Fully Implemented

*No arguments*

## Millimeter Units (G21)

**Documentation:** [https://marlinfw.org/docs/gcode/G021.html](https://marlinfw.org/docs/gcode/G021.html)

✅ **Status:** Fully Implemented

*No arguments*

## Mesh Validation Pattern (G26)

**Documentation:** [https://marlinfw.org/docs/gcode/G026.html](https://marlinfw.org/docs/gcode/G026.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- bedTemp :: **Celsius** (B)
- continueClosest :: **Flag** (C)
- disableLeveling :: **Flag** (D)
- filamentDiameter :: **Mm** (F)
- hotendTemp :: **Celsius** (H)
- materialPreset :: **Index** (I)
- keepHeatersOn :: **Flag** (K)
- layerHeight :: **Mm** (L)
- oozeAmount :: **Mm** (O)
- primeLength :: **Mm** (P)
- retractionMultiplier :: **Mm** (Q)
- repetitions :: **Count** (R)
- nozzleSize :: **Mm** (S)
- randomDeviation :: **Mm** (U)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)

## Park Toolehead (G27)

**Documentation:** [https://marlinfw.org/docs/gcode/G027.html](https://marlinfw.org/docs/gcode/G027.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- parkingBehavior :: **Index** (P)

## Auto Home (G28)

**Documentation:** [https://marlinfw.org/docs/gcode/G028.html](https://marlinfw.org/docs/gcode/G028.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- homeA :: **Flag** (A)
- homeB :: **Flag** (B)
- homeC :: **Flag** (C)
- holdXY :: **Flag** (H)
- restoreLeveling :: **Flag** (L)
- skipIfTrusted :: **Flag** (O)
- raiseDistance :: **Mm** (R)
- homeU :: **Flag** (U)
- homeV :: **Flag** (V)
- homeW :: **Flag** (W)
- homeX :: **Flag** (X)
- homeY :: **Flag** (Y)
- homeZ :: **Flag** (Z)

## Bed Leveling (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-3point.html](https://marlinfw.org/docs/gcode/G029-abl-3point.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- abort :: **Flag** (A)
- createFake :: **Flag** (C)
- dryRun :: **Flag** (D)
- engageEach :: **Flag** (E)
- jettison :: **Flag** (J)
- optional :: **Flag** (O)
- query :: **Flag** (Q)
- verbosity :: **Index** (V)

## Bed Leveling (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-bilinear.html](https://marlinfw.org/docs/gcode/G029-abl-bilinear.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- abort :: **Flag** (A)
- backLimit :: **Mm** (B)
- createFake :: **Flag** (C)
- dryRun :: **Flag** (D)
- engageEach :: **Flag** (E)
- frontLimit :: **Mm** (F)
- areaSize :: **Mm** (H)
- meshX :: **Index** (I)
- jettison :: **Flag** (J)
- meshY :: **Index** (K)
- leftLimit :: **Mm** (L)
- optional :: **Flag** (O)
- query :: **Flag** (Q)
- rightLimit :: **Mm** (R)
- travelSpeed :: **MmPerMin** (S)
- verbosity :: **Index** (V)
- writeMesh :: **Flag** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- meshZ :: **Mm** (Z)

## Bed Leveling (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-abl-linear.html](https://marlinfw.org/docs/gcode/G029-abl-linear.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- abort :: **Flag** (A)
- backLimit :: **Mm** (B)
- createFake :: **Flag** (C)
- dryRun :: **Flag** (D)
- engageEach :: **Flag** (E)
- frontLimit :: **Mm** (F)
- areaSize :: **Mm** (H)
- jettison :: **Flag** (J)
- leftLimit :: **Mm** (L)
- optional :: **Flag** (O)
- gridSize :: **Index** (P)
- query :: **Flag** (Q)
- rightLimit :: **Mm** (R)
- travelSpeed :: **MmPerMin** (S)
- topology :: **Flag** (T)
- verbosity :: **Index** (V)
- columns :: **Index** (X)
- rows :: **Index** (Y)

## Bed Leveling (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-mbl.html](https://marlinfw.org/docs/gcode/G029-mbl.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- state **Index** (S)

**Optional:**

- meshX :: **Index** (I)
- meshY :: **Index** (J)
- meshXOld :: **Count** (X)
- meshYOld :: **Count** (Y)
- meshZ :: **Mm** (Z)

## Bed Leveling (G29)

**Documentation:** [https://marlinfw.org/docs/gcode/G029-ubl.html](https://marlinfw.org/docs/gcode/G029-ubl.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- activate :: **Flag** (A)
- businessCard :: **Mm** (B)
- constant :: **Mm** (C)
- disable :: **Flag** (D)
- stowEach :: **Flag** (E)
- fadeHeight :: **Mm** (F)
- height :: **Mm** (H)
- invalidate :: **Index** (I)
- grid :: **Index** (J)
- kompare :: **Index** (K)
- load :: **Index** (L)
- phase :: **Index** (P)
- testPattern :: **Index** (Q)
- repeat :: **Count** (R)
- save :: **Index** (S)
- topology :: **Index** (T)
- unlevel :: **Flag** (U)
- verbosity :: **Index** (V)
- what :: **Flag** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)

## Single Z-Probe (G30)

**Documentation:** [https://marlinfw.org/docs/gcode/G030.html](https://marlinfw.org/docs/gcode/G030.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- temperatureCompensation :: **Flag** (C)
- engageEach :: **Flag** (E)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)

## Dock Sled (G31)

**Documentation:** [https://marlinfw.org/docs/gcode/G031.html](https://marlinfw.org/docs/gcode/G031.html)

✅ **Status:** Fully Implemented

*No arguments*

## Undock Sled (G32)

**Documentation:** [https://marlinfw.org/docs/gcode/G032.html](https://marlinfw.org/docs/gcode/G032.html)

✅ **Status:** Fully Implemented

*No arguments*

## Delta Auto Calibration (G33)

**Documentation:** [https://marlinfw.org/docs/gcode/G033.html](https://marlinfw.org/docs/gcode/G033.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- precision :: **Mm** (C)
- engageEach :: **Flag** (E)
- iterations :: **Count** (F)
- probeOffsetRelative :: **Flag** (O)
- probePoints :: **Index** (P)
- reduceGrid :: **Mm** (R)
- saveSensorless :: **Flag** (S)
- disableTowerAngles :: **Flag** (T)
- verbosity :: **Index** (V)
- disableStallguardX :: **Flag** (X)
- disableStallguardY :: **Flag** (Y)
- disableStallguardZ :: **Flag** (Z)

## Z Steppers Auto-Alignment (G34)

**Documentation:** [https://marlinfw.org/docs/gcode/G034-zsaa.html](https://marlinfw.org/docs/gcode/G034-zsaa.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- amplification :: **Mm** (A)
- stowEach :: **Flag** (E)
- iterations :: **Index** (I)
- unlockAll :: **Flag** (L)
- recalculate :: **Flag** (R)
- lockState :: **Flag** (S)
- targetAccuracy :: **Mm** (T)
- stepper :: **Index** (Z)

## Mechanical Gantry Calibration (G34)

**Documentation:** [https://marlinfw.org/docs/gcode/G034-mgc.html](https://marlinfw.org/docs/gcode/G034-mgc.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- current :: **Index** (S)
- extraHeight :: **Mm** (Z)

## Tramming Assistant (G35)

**Documentation:** [https://marlinfw.org/docs/gcode/G035.html](https://marlinfw.org/docs/gcode/G035.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- screwThreadType :: **Index** (S)

## Probe Target (G38.2)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- feedrate :: **MmPerMin** (F)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Probe Target (G38.3)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- feedrate :: **MmPerMin** (F)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Probe Target (G38.4)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- feedrate :: **MmPerMin** (F)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Probe Target (G38.5)

**Documentation:** [https://marlinfw.org/docs/gcode/G038.html](https://marlinfw.org/docs/gcode/G038.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- feedrate :: **MmPerMin** (F)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Move to Mesh Coordinate (G42)

**Documentation:** [https://marlinfw.org/docs/gcode/G042.html](https://marlinfw.org/docs/gcode/G042.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- feedrate :: **MmPerMin** (F)
- meshColumn :: **Index** (I)
- meshRow :: **Index** (J)
- moveProbe :: **Flag** (P)

## Move in Machine Coordinates (G53)

**Documentation:** [https://marlinfw.org/docs/gcode/G053.html](https://marlinfw.org/docs/gcode/G053.html)

⚠️ **Status:** Unimplemented - Works as a modifier prefix to other G commands, requires special handling of command composition (complexity: 7)

*No arguments*

## Select Workspace (G54)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G55)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G56)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G57)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G58)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G59)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G59.1)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G59.2)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select Workspace (G59.3)

**Documentation:** [https://marlinfw.org/docs/gcode/G054-G059.html](https://marlinfw.org/docs/gcode/G054-G059.html)

✅ **Status:** Fully Implemented

*No arguments*

## Stored Positions (G60)

**Documentation:** [https://marlinfw.org/docs/gcode/G060.html](https://marlinfw.org/docs/gcode/G060.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- deleteSlot :: **Index** (D)
- restoreE :: **Mm** (E)
- feedrate :: **MmPerMin** (F)
- restoreSlot :: **Index** (Q)
- saveSlot :: **Index** (S)
- restoreX :: **Mm** (X)
- restoreY :: **Mm** (Y)
- restoreZ :: **Mm** (Z)

## Return to Saved Position (G61)

**Documentation:** [https://marlinfw.org/docs/gcode/G061.html](https://marlinfw.org/docs/gcode/G061.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- restoreE :: **Mm** (E)
- feedrate :: **MmPerMin** (F)
- slot :: **Index** (S)
- restoreX :: **Mm** (X)
- restoreY :: **Mm** (Y)
- restoreZ :: **Mm** (Z)

## Probe Temperature Calibration (G76)

**Documentation:** [https://marlinfw.org/docs/gcode/G076.html](https://marlinfw.org/docs/gcode/G076.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- calibrateBed :: **Flag** (B)
- calibrateProbe :: **Flag** (P)

## Cancel Current Motion Mode (G80)

**Documentation:** [https://marlinfw.org/docs/gcode/G080.html](https://marlinfw.org/docs/gcode/G080.html)

✅ **Status:** Fully Implemented

*No arguments*

## Absolute Positioning (G90)

**Documentation:** [https://marlinfw.org/docs/gcode/G090.html](https://marlinfw.org/docs/gcode/G090.html)

✅ **Status:** Fully Implemented

*No arguments*

## Relative Positioning (G91)

**Documentation:** [https://marlinfw.org/docs/gcode/G091.html](https://marlinfw.org/docs/gcode/G091.html)

✅ **Status:** Fully Implemented

*No arguments*

## Set Position (G92)

**Documentation:** [https://marlinfw.org/docs/gcode/G092.html](https://marlinfw.org/docs/gcode/G092.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Mm** (A)
- axisB :: **Mm** (B)
- axisC :: **Mm** (C)
- axisExtrusion :: **Mm** (E)
- axisU :: **Mm** (U)
- axisV :: **Mm** (V)
- axisW :: **Mm** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Backlash Calibration (G425)

**Documentation:** [https://marlinfw.org/docs/gcode/G425.html](https://marlinfw.org/docs/gcode/G425.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- backlashOnly :: **Flag** (B)
- toolheadIndex :: **Index** (T)
- uncertainty :: **Mm** (U)
- report :: **Flag** (V)


---

## Unconditional Stop (M0)

**Documentation:** [https://marlinfw.org/docs/gcode/M000-M001.html](https://marlinfw.org/docs/gcode/M000-M001.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- expireMilliseconds :: **Milliseconds** (P)
- expireSeconds :: **Seconds** (S)
- text :: **TextValue** (_)

## Spindle CW / Laser On (M3)

**Documentation:** [https://marlinfw.org/docs/gcode/M003.html](https://marlinfw.org/docs/gcode/M003.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- inlineMode :: **Flag** (I)
- powerPWM :: **Index** (O)
- power :: **Index** (S)

## Spindle CCW / Laser On (M4)

**Documentation:** [https://marlinfw.org/docs/gcode/M004.html](https://marlinfw.org/docs/gcode/M004.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- inlineMode :: **Flag** (I)
- powerPWM :: **Index** (O)
- power :: **Index** (S)

## Spindle / Laser Off (M5)

**Documentation:** [https://marlinfw.org/docs/gcode/M005.html](https://marlinfw.org/docs/gcode/M005.html)

✅ **Status:** Fully Implemented

*No arguments*

## Coolant Controls (M7)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## Coolant Controls (M8)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## Coolant Controls (M9)

**Documentation:** [https://marlinfw.org/docs/gcode/M007-M009.html](https://marlinfw.org/docs/gcode/M007-M009.html)

✅ **Status:** Fully Implemented

*No arguments*

## Vacuum / Blower Control (M10)

**Documentation:** [https://marlinfw.org/docs/gcode/M010-M011.html](https://marlinfw.org/docs/gcode/M010-M011.html)

✅ **Status:** Fully Implemented

*No arguments*

## Vacuum / Blower Control (M11)

**Documentation:** [https://marlinfw.org/docs/gcode/M010-M011.html](https://marlinfw.org/docs/gcode/M010-M011.html)

✅ **Status:** Fully Implemented

*No arguments*

## Expected Printer Check (M16)

**Documentation:** [https://marlinfw.org/docs/gcode/M016.html](https://marlinfw.org/docs/gcode/M016.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- text **TextValue** (_)

## Enable Steppers (M17)

**Documentation:** [https://marlinfw.org/docs/gcode/M017.html](https://marlinfw.org/docs/gcode/M017.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Flag** (A)
- axisB :: **Flag** (B)
- axisC :: **Flag** (C)
- axisExtrusion :: **Flag** (E)
- axisU :: **Flag** (U)
- axisV :: **Flag** (V)
- axisW :: **Flag** (W)
- axisX :: **Flag** (X)
- axisY :: **Flag** (Y)
- axisZ :: **Flag** (Z)

## Disable Steppers (M18)

**Documentation:** [https://marlinfw.org/docs/gcode/M018.html](https://marlinfw.org/docs/gcode/M018.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Flag** (A)
- axisB :: **Flag** (B)
- axisC :: **Flag** (C)
- axisExtrusion :: **Flag** (E)
- timeoutSeconds :: **Seconds** (S)
- axisU :: **Flag** (U)
- axisV :: **Flag** (V)
- axisW :: **Flag** (W)
- axisX :: **Flag** (X)
- axisY :: **Flag** (Y)
- axisZ :: **Flag** (Z)

## List SD Card (M20)

**Documentation:** [https://marlinfw.org/docs/gcode/M020.html](https://marlinfw.org/docs/gcode/M020.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- binFilesOnly :: **Flag** (F)
- longFilenames :: **Flag** (L)
- timestamp :: **Flag** (T)

## Init SD Card (M21)

**Documentation:** [https://marlinfw.org/docs/gcode/M021.html](https://marlinfw.org/docs/gcode/M021.html)

✅ **Status:** Fully Implemented

*No arguments*

## Release SD Card (M22)

**Documentation:** [https://marlinfw.org/docs/gcode/M022.html](https://marlinfw.org/docs/gcode/M022.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select SD File (M23)

**Documentation:** [https://marlinfw.org/docs/gcode/M023.html](https://marlinfw.org/docs/gcode/M023.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- filename **Filename** (_)

## Start or Resume SD Print (M24)

**Documentation:** [https://marlinfw.org/docs/gcode/M024.html](https://marlinfw.org/docs/gcode/M024.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- resumePosition :: **Count** (S)
- elapsedTime :: **Count** (T)

## Pause SD Print (M25)

**Documentation:** [https://marlinfw.org/docs/gcode/M025.html](https://marlinfw.org/docs/gcode/M025.html)

✅ **Status:** Fully Implemented

*No arguments*

## Set SD Position (M26)

**Documentation:** [https://marlinfw.org/docs/gcode/M026.html](https://marlinfw.org/docs/gcode/M026.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- position :: **Count** (S)

## Report SD Print Status (M27)

**Documentation:** [https://marlinfw.org/docs/gcode/M027.html](https://marlinfw.org/docs/gcode/M027.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- reportFilename :: **Flag** (C)
- autoReportInterval :: **Seconds** (S)

## Start SD Write (M28)

**Documentation:** [https://marlinfw.org/docs/gcode/M028.html](https://marlinfw.org/docs/gcode/M028.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- filename **Filename** (_)

**Optional:**

- binaryMode :: **Flag** (B)

## Stop SD Write (M29)

**Documentation:** [https://marlinfw.org/docs/gcode/M029.html](https://marlinfw.org/docs/gcode/M029.html)

✅ **Status:** Fully Implemented

*No arguments*

## Delete SD File (M30)

**Documentation:** [https://marlinfw.org/docs/gcode/M030.html](https://marlinfw.org/docs/gcode/M030.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- filename **Filename** (_)

## Report Print Time (M31)

**Documentation:** [https://marlinfw.org/docs/gcode/M031.html](https://marlinfw.org/docs/gcode/M031.html)

✅ **Status:** Fully Implemented

*No arguments*

## Select and Start (M32)

**Documentation:** [https://marlinfw.org/docs/gcode/M032.html](https://marlinfw.org/docs/gcode/M032.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- filename **Filename** (_)

**Optional:**

- subProgramType :: **Index** (P)
- startingOffset :: **Count** (S)

## Get Long Path (M33)

**Documentation:** [https://marlinfw.org/docs/gcode/M033.html](https://marlinfw.org/docs/gcode/M033.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- path **Filename** (_)

## SDCard Sorting (M34)

**Documentation:** [https://marlinfw.org/docs/gcode/M034.html](https://marlinfw.org/docs/gcode/M034.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- folderSorting :: **Index** (F)
- sortingOrder :: **Index** (S)

## Set Pin State (M42)

**Documentation:** [https://marlinfw.org/docs/gcode/M042.html](https://marlinfw.org/docs/gcode/M042.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- state **Index** (S)

**Optional:**

- ignoreProtection :: **Flag** (I)
- pin :: **Index** (P)
- pinMode :: **Index** (T)

## Pins Debugging (M43)

**Documentation:** [https://marlinfw.org/docs/gcode/M043.html](https://marlinfw.org/docs/gcode/M043.html)

⚠️ **Status:** Unimplemented - Pins debugging with complex pin configuration and state management (complexity: 6)

*No arguments*

## Probe Repeatability Test (M48)

**Documentation:** [https://marlinfw.org/docs/gcode/M048.html](https://marlinfw.org/docs/gcode/M048.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- temperatureCompensation :: **Flag** (C)
- engageEach :: **Flag** (E)
- legs :: **Count** (L)
- probeCount :: **Count** (P)
- starPattern :: **Index** (S)
- verbosity :: **Index** (V)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)

## Set Print Progress (M73)

**Documentation:** [https://marlinfw.org/docs/gcode/M073.html](https://marlinfw.org/docs/gcode/M073.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- interactionCountdown :: **Count** (C)
- progressPercent :: **Index** (P)
- remainingTime :: **Count** (R)

## Start Print Job Timer (M75)

**Documentation:** [https://marlinfw.org/docs/gcode/M075.html](https://marlinfw.org/docs/gcode/M075.html)

✅ **Status:** Fully Implemented

*No arguments*

## Pause Print Job Timer (M76)

**Documentation:** [https://marlinfw.org/docs/gcode/M076.html](https://marlinfw.org/docs/gcode/M076.html)

✅ **Status:** Fully Implemented

*No arguments*

## Stop Print Job Timer (M77)

**Documentation:** [https://marlinfw.org/docs/gcode/M077.html](https://marlinfw.org/docs/gcode/M077.html)

✅ **Status:** Fully Implemented

*No arguments*

## Print Job Stats (M78)

**Documentation:** [https://marlinfw.org/docs/gcode/M078.html](https://marlinfw.org/docs/gcode/M078.html)

✅ **Status:** Fully Implemented

*No arguments*

## Power On (M80)

**Documentation:** [https://marlinfw.org/docs/gcode/M080.html](https://marlinfw.org/docs/gcode/M080.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- reportState :: **Flag** (S)

## Power Off (M81)

**Documentation:** [https://marlinfw.org/docs/gcode/M081.html](https://marlinfw.org/docs/gcode/M081.html)

✅ **Status:** Fully Implemented

*No arguments*

## E Absolute (M82)

**Documentation:** [https://marlinfw.org/docs/gcode/M082.html](https://marlinfw.org/docs/gcode/M082.html)

✅ **Status:** Fully Implemented

*No arguments*

## E Relative (M83)

**Documentation:** [https://marlinfw.org/docs/gcode/M083.html](https://marlinfw.org/docs/gcode/M083.html)

✅ **Status:** Fully Implemented

*No arguments*

## Inactivity Shutdown (M85)

**Documentation:** [https://marlinfw.org/docs/gcode/M085.html](https://marlinfw.org/docs/gcode/M085.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- maxInactiveSeconds **Seconds** (S)

## Hotend Idle Timeout (M86)

**Documentation:** [https://marlinfw.org/docs/gcode/M086.html](https://marlinfw.org/docs/gcode/M086.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- bedIdleTemp :: **Celsius** (B)
- extruderIdleTemp :: **Celsius** (E)
- timeoutSeconds :: **Seconds** (S)
- temperatureTrigger :: **Celsius** (T)

## Disable Hotend Idle Timeout (M87)

**Documentation:** [https://marlinfw.org/docs/gcode/M087.html](https://marlinfw.org/docs/gcode/M087.html)

✅ **Status:** Fully Implemented

*No arguments*

## Set Axis Steps-per-unit (M92)

**Documentation:** [https://marlinfw.org/docs/gcode/M092.html](https://marlinfw.org/docs/gcode/M092.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Mm** (A)
- axisB :: **Mm** (B)
- axisC :: **Mm** (C)
- axisExtrusion :: **Mm** (E)
- targetExtruder :: **Index** (T)
- axisU :: **Mm** (U)
- axisV :: **Mm** (V)
- axisW :: **Mm** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Free Memory (M100)

**Documentation:** [https://marlinfw.org/docs/gcode/M100.html](https://marlinfw.org/docs/gcode/M100.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- corruptLocations :: **Count** (C)
- dumpMemory :: **Flag** (D)
- reportFreeBytes :: **Flag** (F)
- initializePool :: **Flag** (I)

## Configure Bed Distance Sensor (M102)

**Documentation:** [https://marlinfw.org/docs/gcode/M102.html](https://marlinfw.org/docs/gcode/M102.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- state **Index** (S)

## Set Hotend Temperature (M104)

**Documentation:** [https://marlinfw.org/docs/gcode/M104.html](https://marlinfw.org/docs/gcode/M104.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- maxAutoTemp :: **Celsius** (B)
- autotempFactor :: **Mm** (F)
- materialPreset :: **Index** (I)
- targetTemp :: **Celsius** (S)
- hotendIndex :: **Index** (T)

## Report Temperatures (M105)

**Documentation:** [https://marlinfw.org/docs/gcode/M105.html](https://marlinfw.org/docs/gcode/M105.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- includeRedundant :: **Flag** (R)
- hotendIndex :: **Index** (T)

## Set Fan Speed (M106)

**Documentation:** [https://marlinfw.org/docs/gcode/M106.html](https://marlinfw.org/docs/gcode/M106.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- materialPreset :: **Index** (I)
- fanIndex :: **Index** (P)
- speed :: **Index** (S)
- secondarySpeed :: **Index** (T)

## Fan Off (M107)

**Documentation:** [https://marlinfw.org/docs/gcode/M107.html](https://marlinfw.org/docs/gcode/M107.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- fanIndex :: **Index** (P)

## Break and Continue (M108)

**Documentation:** [https://marlinfw.org/docs/gcode/M108.html](https://marlinfw.org/docs/gcode/M108.html)

✅ **Status:** Fully Implemented

*No arguments*

## Wait for Hotend Temperature (M109)

**Documentation:** [https://marlinfw.org/docs/gcode/M109.html](https://marlinfw.org/docs/gcode/M109.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- maxAutoTemp :: **Celsius** (B)
- autotempFactor :: **Mm** (F)
- materialPreset :: **Index** (I)
- targetTempWait :: **Celsius** (R)
- targetTemp :: **Celsius** (S)
- hotendIndex :: **Index** (T)

## Set / Get Line Number (M110)

**Documentation:** [https://marlinfw.org/docs/gcode/M110.html](https://marlinfw.org/docs/gcode/M110.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- lineNumber :: **Count** (N)

## Debug Level (M111)

**Documentation:** [https://marlinfw.org/docs/gcode/M111.html](https://marlinfw.org/docs/gcode/M111.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- debugFlags :: **Index** (S)

## Full Shutdown (M112)

**Documentation:** [https://marlinfw.org/docs/gcode/M112.html](https://marlinfw.org/docs/gcode/M112.html)

✅ **Status:** Fully Implemented

*No arguments*

## Host Keepalive (M113)

**Documentation:** [https://marlinfw.org/docs/gcode/M113.html](https://marlinfw.org/docs/gcode/M113.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- keepaliveInterval :: **Seconds** (S)

## Get Current Position (M114)

**Documentation:** [https://marlinfw.org/docs/gcode/M114.html](https://marlinfw.org/docs/gcode/M114.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- detailedInfo :: **Flag** (D)
- reportEStepper :: **Flag** (E)
- realPosition :: **Flag** (R)

## Firmware Info (M115)

**Documentation:** [https://marlinfw.org/docs/gcode/M115.html](https://marlinfw.org/docs/gcode/M115.html)

✅ **Status:** Fully Implemented

*No arguments*

## Set LCD Message (M117)

**Documentation:** [https://marlinfw.org/docs/gcode/M117.html](https://marlinfw.org/docs/gcode/M117.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- message :: **TextValue** (_)

## Serial Print (M118)

**Documentation:** [https://marlinfw.org/docs/gcode/M118.html](https://marlinfw.org/docs/gcode/M118.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- actionCommand :: **Flag** (A)
- echoPrefix :: **Flag** (E)
- portIndex :: **Index** (P)
- message :: **TextValue** (_)

## Endstop States (M119)

**Documentation:** [https://marlinfw.org/docs/gcode/M119.html](https://marlinfw.org/docs/gcode/M119.html)

✅ **Status:** Fully Implemented

*No arguments*

## Enable Endstops (M120)

**Documentation:** [https://marlinfw.org/docs/gcode/M120.html](https://marlinfw.org/docs/gcode/M120.html)

✅ **Status:** Fully Implemented

*No arguments*

## Disable Endstops (M121)

**Documentation:** [https://marlinfw.org/docs/gcode/M121.html](https://marlinfw.org/docs/gcode/M121.html)

✅ **Status:** Fully Implemented

*No arguments*

## TMC Debugging (M122)

**Documentation:** [https://marlinfw.org/docs/gcode/M122.html](https://marlinfw.org/docs/gcode/M122.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisExtrusion :: **Flag** (E)
- reinitialize :: **Flag** (I)
- reportInterval :: **Milliseconds** (P)
- enableDebug :: **Flag** (S)
- rawRegisters :: **Flag** (V)
- axisX :: **Flag** (X)
- axisY :: **Flag** (Y)
- axisZ :: **Flag** (Z)

## Fan Tachometers (M123)

**Documentation:** [https://marlinfw.org/docs/gcode/M123.html](https://marlinfw.org/docs/gcode/M123.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- autoReportInterval :: **Seconds** (S)

## Park Head (M125)

**Documentation:** [https://marlinfw.org/docs/gcode/M125.html](https://marlinfw.org/docs/gcode/M125.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- retractLength :: **Mm** (L)
- showPrompt :: **Flag** (P)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- zRaise :: **Mm** (Z)

## Baricuda 1 Open (M126)

**Documentation:** [https://marlinfw.org/docs/gcode/M126.html](https://marlinfw.org/docs/gcode/M126.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- pressure :: **Index** (S)

## Baricuda 1 Close (M127)

**Documentation:** [https://marlinfw.org/docs/gcode/M127.html](https://marlinfw.org/docs/gcode/M127.html)

✅ **Status:** Fully Implemented

*No arguments*

## Baricuda 2 Open (M128)

**Documentation:** [https://marlinfw.org/docs/gcode/M128.html](https://marlinfw.org/docs/gcode/M128.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- pressure :: **Index** (S)

## Baricuda 2 Close (M129)

**Documentation:** [https://marlinfw.org/docs/gcode/M129.html](https://marlinfw.org/docs/gcode/M129.html)

✅ **Status:** Fully Implemented

*No arguments*

## Set Bed Temperature (M140)

**Documentation:** [https://marlinfw.org/docs/gcode/M140.html](https://marlinfw.org/docs/gcode/M140.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- materialPreset :: **Index** (I)
- targetTemp :: **Celsius** (S)

## Set Chamber Temperature (M141)

**Documentation:** [https://marlinfw.org/docs/gcode/M141.html](https://marlinfw.org/docs/gcode/M141.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- targetTemp :: **Celsius** (S)

## Set Laser Cooler Temperature (M143)

**Documentation:** [https://marlinfw.org/docs/gcode/M143.html](https://marlinfw.org/docs/gcode/M143.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- targetTemp :: **Celsius** (S)

## Set Material Preset (M145)

**Documentation:** [https://marlinfw.org/docs/gcode/M145.html](https://marlinfw.org/docs/gcode/M145.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- bedTemp :: **Celsius** (B)
- fanSpeed :: **Index** (F)
- hotendTemp :: **Celsius** (H)
- materialIndex :: **Index** (S)

## Set Temperature Units (M149)

**Documentation:** [https://marlinfw.org/docs/gcode/M149.html](https://marlinfw.org/docs/gcode/M149.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- celsius :: **Flag** (C)
- fahrenheit :: **Flag** (F)
- kelvin :: **Flag** (K)

## Set RGB(W) Color (M150)

**Documentation:** [https://marlinfw.org/docs/gcode/M150.html](https://marlinfw.org/docs/gcode/M150.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- blue :: **Index** (B)
- pixelIndex :: **Index** (I)
- keepUnspecified :: **Flag** (K)
- brightness :: **Index** (P)
- red :: **Index** (R)
- stripIndex :: **Index** (S)
- green :: **Index** (U)
- white :: **Index** (W)

## Position Auto-Report (M154)

**Documentation:** [https://marlinfw.org/docs/gcode/M154.html](https://marlinfw.org/docs/gcode/M154.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- intervalSeconds :: **Seconds** (S)

## Temperature Auto-Report (M155)

**Documentation:** [https://marlinfw.org/docs/gcode/M155.html](https://marlinfw.org/docs/gcode/M155.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- intervalSeconds :: **Seconds** (S)

## Set Mix Factor (M163)

**Documentation:** [https://marlinfw.org/docs/gcode/M163.html](https://marlinfw.org/docs/gcode/M163.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- mixFactor :: **Mm** (P)
- componentIndex :: **Index** (S)

## Save Mix (M164)

**Documentation:** [https://marlinfw.org/docs/gcode/M164.html](https://marlinfw.org/docs/gcode/M164.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- toolIndex **Index** (S)

## Set Mix (M165)

**Documentation:** [https://marlinfw.org/docs/gcode/M165.html](https://marlinfw.org/docs/gcode/M165.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- mixFactor1 :: **Mm** (A)
- mixFactor2 :: **Mm** (B)
- mixFactor3 :: **Mm** (C)
- mixFactor4 :: **Mm** (D)
- mixFactor5 :: **Mm** (H)
- mixFactor6 :: **Mm** (I)

## Gradient Mix (M166)

**Documentation:** [https://marlinfw.org/docs/gcode/M166.html](https://marlinfw.org/docs/gcode/M166.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- startingZ **Mm** (A)
- startingTool **Index** (I)
- endingTool **Index** (J)
- endingZ **Mm** (Z)

**Optional:**

- enable :: **Flag** (S)
- toolIndex :: **Index** (T)

## Wait for Bed Temperature (M190)

**Documentation:** [https://marlinfw.org/docs/gcode/M190.html](https://marlinfw.org/docs/gcode/M190.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- materialPreset :: **Index** (I)
- targetTempWait :: **Celsius** (R)
- targetTemp :: **Celsius** (S)
- coolingTime :: **Seconds** (T)

## Wait for Chamber Temperature (M191)

**Documentation:** [https://marlinfw.org/docs/gcode/M191.html](https://marlinfw.org/docs/gcode/M191.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- targetTempWait :: **Celsius** (R)
- targetTemp :: **Celsius** (S)

## Wait for Probe Temperature (M192)

**Documentation:** [https://marlinfw.org/docs/gcode/M192.html](https://marlinfw.org/docs/gcode/M192.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- targetTemp :: **Celsius** (R)
- minTemp :: **Celsius** (S)

## Wait For Laser Cooler Temperature (M193)

**Documentation:** [https://marlinfw.org/docs/gcode/M193.html](https://marlinfw.org/docs/gcode/M193.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- targetTemp :: **Celsius** (S)

## Volumetric Extrusion Diameter (M200)

**Documentation:** [https://marlinfw.org/docs/gcode/M200.html](https://marlinfw.org/docs/gcode/M200.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- filamentDiameter :: **Mm** (D)
- extruderLimit :: **Mm** (L)
- volumetricOn :: **Flag** (S)
- extruderIndex :: **Index** (T)

## Print / Travel Move Limits (M201)

**Documentation:** [https://marlinfw.org/docs/gcode/M201.html](https://marlinfw.org/docs/gcode/M201.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisExtrusion :: **Mm** (E)
- frequencyLimit :: **Count** (F)
- frequencyMinSpeed :: **Mm** (S)
- targetExtruder :: **Index** (T)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Set Max Feedrate (M203)

**Documentation:** [https://marlinfw.org/docs/gcode/M203.html](https://marlinfw.org/docs/gcode/M203.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisExtrusion :: **MmPerSec** (E)
- targetExtruder :: **Index** (T)
- axisX :: **MmPerSec** (X)
- axisY :: **MmPerSec** (Y)
- axisZ :: **MmPerSec** (Z)

## Set Starting Acceleration (M204)

**Documentation:** [https://marlinfw.org/docs/gcode/M204.html](https://marlinfw.org/docs/gcode/M204.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- printingAccel :: **Mm** (P)
- retractAccel :: **Mm** (R)
- legacyAccel :: **Mm** (S)
- travelAccel :: **Mm** (T)

## Set Advanced Settings (M205)

**Documentation:** [https://marlinfw.org/docs/gcode/M205.html](https://marlinfw.org/docs/gcode/M205.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- minSegmentTime :: **Milliseconds** (B)
- axisExtrusion :: **Mm** (E)
- junctionDeviation :: **Mm** (J)
- minFeedratePrint :: **MmPerSec** (S)
- minFeedrateTravel :: **MmPerSec** (T)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Set Home Offsets (M206)

**Documentation:** [https://marlinfw.org/docs/gcode/M206.html](https://marlinfw.org/docs/gcode/M206.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **Mm** (A)
- axisB :: **Mm** (B)
- axisC :: **Mm** (C)
- scaraPsi :: **Mm** (P)
- scaraTheta :: **Mm** (T)
- axisU :: **Mm** (U)
- axisV :: **Mm** (V)
- axisW :: **Mm** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Firmware Retraction Settings (M207)

**Documentation:** [https://marlinfw.org/docs/gcode/M207.html](https://marlinfw.org/docs/gcode/M207.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- retractFeedrate :: **MmPerMin** (F)
- retractLength :: **Mm** (S)
- retractSwapLength :: **Mm** (W)
- zLift :: **Mm** (Z)

## Firmware Recover Settings (M208)

**Documentation:** [https://marlinfw.org/docs/gcode/M208.html](https://marlinfw.org/docs/gcode/M208.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- recoverFeedrate :: **MmPerMin** (F)
- swapRecoverFeedrate :: **MmPerMin** (R)
- additionalRecoverLength :: **Mm** (S)
- additionalRecoverSwapLength :: **Mm** (W)

## Set Auto Retract (M209)

**Documentation:** [https://marlinfw.org/docs/gcode/M209.html](https://marlinfw.org/docs/gcode/M209.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- enable **Flag** (S)

## Homing Feedrate (M210)

**Documentation:** [https://marlinfw.org/docs/gcode/M210.html](https://marlinfw.org/docs/gcode/M210.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisA :: **MmPerMin** (A)
- axisB :: **MmPerMin** (B)
- axisC :: **MmPerMin** (C)
- axisU :: **MmPerMin** (U)
- axisV :: **MmPerMin** (V)
- axisW :: **MmPerMin** (W)
- axisX :: **MmPerMin** (X)
- axisY :: **MmPerMin** (Y)
- axisZ :: **MmPerMin** (Z)

## Software Endstops (M211)

**Documentation:** [https://marlinfw.org/docs/gcode/M211.html](https://marlinfw.org/docs/gcode/M211.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- enable :: **Flag** (S)

## Filament Swap Parameters (M217)

**Documentation:** [https://marlinfw.org/docs/gcode/M217.html](https://marlinfw.org/docs/gcode/M217.html)

⚠️ **Status:** Unimplemented - Filament swap parameters with complex state-dependent behavior (complexity: 6)

*No arguments*

## Set Hotend Offset (M218)

**Documentation:** [https://marlinfw.org/docs/gcode/M218.html](https://marlinfw.org/docs/gcode/M218.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- hotendIndex :: **Index** (T)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Set Feedrate Percentage (M220)

**Documentation:** [https://marlinfw.org/docs/gcode/M220.html](https://marlinfw.org/docs/gcode/M220.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- backupFactor :: **Flag** (B)
- restoreFactor :: **Flag** (R)
- feedratePercent :: **Index** (S)

## Set Flow Percentage (M221)

**Documentation:** [https://marlinfw.org/docs/gcode/M221.html](https://marlinfw.org/docs/gcode/M221.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- flowPercent **Index** (S)

**Optional:**

- targetExtruder :: **Index** (T)

## Wait for Pin State (M226)

**Documentation:** [https://marlinfw.org/docs/gcode/M226.html](https://marlinfw.org/docs/gcode/M226.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- pin **Index** (P)

**Optional:**

- state :: **Index** (S)

## Trigger Camera (M240)

**Documentation:** [https://marlinfw.org/docs/gcode/M240.html](https://marlinfw.org/docs/gcode/M240.html)

⚠️ **Status:** Unimplemented - Camera trigger with many conditional parameters based on compile-time flags (complexity: 7)

*No arguments*

## LCD Contrast (M250)

**Documentation:** [https://marlinfw.org/docs/gcode/M250.html](https://marlinfw.org/docs/gcode/M250.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- contrast :: **Index** (C)

## LCD Sleep/Backlight Timeout (M255)

**Documentation:** [https://marlinfw.org/docs/gcode/M255.html](https://marlinfw.org/docs/gcode/M255.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- timeoutMinutes **Count** (S)

## LCD Brightness (M256)

**Documentation:** [https://marlinfw.org/docs/gcode/M256.html](https://marlinfw.org/docs/gcode/M256.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- brightness :: **Index** (B)

## I2C Send (M260)

**Documentation:** [https://marlinfw.org/docs/gcode/M260.html](https://marlinfw.org/docs/gcode/M260.html)

⚠️ **Status:** Unimplemented - I2C send with stateful buffer management, requires tracking buffer state across multiple commands (complexity: 8)

*No arguments*

## I2C Request (M261)

**Documentation:** [https://marlinfw.org/docs/gcode/M261.html](https://marlinfw.org/docs/gcode/M261.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- address **Index** (A)
- byteCount **Count** (B)

**Optional:**

- outputStyle :: **Index** (S)

## Scan I2C Bus (M265)

**Documentation:** [https://marlinfw.org/docs/gcode/M265.html](https://marlinfw.org/docs/gcode/M265.html)

✅ **Status:** Fully Implemented

*No arguments*

## Servo Position (M280)

**Documentation:** [https://marlinfw.org/docs/gcode/M280.html](https://marlinfw.org/docs/gcode/M280.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- servoIndex **Index** (P)

**Optional:**

- position :: **Index** (S)

## Edit Servo Angles (M281)

**Documentation:** [https://marlinfw.org/docs/gcode/M281.html](https://marlinfw.org/docs/gcode/M281.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- servoIndex **Index** (P)

**Optional:**

- deployAngle :: **Degrees** (L)
- stowAngle :: **Degrees** (U)

## Detach Servo (M282)

**Documentation:** [https://marlinfw.org/docs/gcode/M282.html](https://marlinfw.org/docs/gcode/M282.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- servoIndex **Index** (P)

## Babystep (M290)

**Documentation:** [https://marlinfw.org/docs/gcode/M290.html](https://marlinfw.org/docs/gcode/M290.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- affectProbeOffset :: **Flag** (P)
- axisZAlias :: **Mm** (S)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Play Tone (M300)

**Documentation:** [https://marlinfw.org/docs/gcode/M300.html](https://marlinfw.org/docs/gcode/M300.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- durationMs :: **Milliseconds** (P)
- frequencyHz :: **Count** (S)

## Set Hotend PID (M301)

**Documentation:** [https://marlinfw.org/docs/gcode/M301.html](https://marlinfw.org/docs/gcode/M301.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- cTerm :: **Mm** (C)
- derivative :: **Mm** (D)
- extruderIndex :: **Index** (E)
- fTerm :: **Mm** (F)
- integral :: **Mm** (I)
- extrusionScalingLength :: **Mm** (L)
- proportional :: **Mm** (P)

## Cold Extrude (M302)

**Documentation:** [https://marlinfw.org/docs/gcode/M302.html](https://marlinfw.org/docs/gcode/M302.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- allowAnyTemp :: **Flag** (P)
- minTemp :: **Celsius** (S)

## PID Autotune (M303)

**Documentation:** [https://marlinfw.org/docs/gcode/M303.html](https://marlinfw.org/docs/gcode/M303.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- cycles :: **Count** (C)
- toggleDebug :: **Flag** (D)
- hotendIndex :: **Index** (E)
- targetTemp :: **Celsius** (S)
- useResult :: **Flag** (U)

## Set Bed PID (M304)

**Documentation:** [https://marlinfw.org/docs/gcode/M304.html](https://marlinfw.org/docs/gcode/M304.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- derivative :: **Mm** (D)
- integral :: **Mm** (I)
- proportional :: **Mm** (P)

## User Thermistor Parameters (M305)

**Documentation:** [https://marlinfw.org/docs/gcode/M305.html](https://marlinfw.org/docs/gcode/M305.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- beta :: **Count** (B)
- coefficientC :: **Mm** (C)
- tableIndex :: **Index** (P)
- pullupResistor :: **Count** (R)
- resistanceAt25C :: **Count** (T)

## Model Predictive Temp. Control (M306)

**Documentation:** [https://marlinfw.org/docs/gcode/M306.html](https://marlinfw.org/docs/gcode/M306.html)

⚠️ **Status:** Unimplemented - Model Predictive Temperature Control with complex parameter configuration (complexity: 9)

*No arguments*

## Set Chamber PID (M309)

**Documentation:** [https://marlinfw.org/docs/gcode/M309.html](https://marlinfw.org/docs/gcode/M309.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- derivative :: **Mm** (D)
- integral :: **Mm** (I)
- proportional :: **Mm** (P)

## Set Micro-stepping (M350)

**Documentation:** [https://marlinfw.org/docs/gcode/M350.html](https://marlinfw.org/docs/gcode/M350.html)

⚠️ **Status:** Unimplemented - Set micro-stepping with complex stepper driver configuration (complexity: 7)

*No arguments*

## Set Microstep Pins (M351)

**Documentation:** [https://marlinfw.org/docs/gcode/M351.html](https://marlinfw.org/docs/gcode/M351.html)

⚠️ **Status:** Unimplemented - Set microstep pins with hardware-specific pin configuration (complexity: 6)

*No arguments*

## Case Light Control (M355)

**Documentation:** [https://marlinfw.org/docs/gcode/M355.html](https://marlinfw.org/docs/gcode/M355.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- brightness :: **Index** (P)
- on :: **Flag** (S)

## SCARA Theta A (M360)

**Documentation:** [https://marlinfw.org/docs/gcode/M360.html](https://marlinfw.org/docs/gcode/M360.html)

✅ **Status:** Fully Implemented

*No arguments*

## SCARA Theta-B (M361)

**Documentation:** [https://marlinfw.org/docs/gcode/M361.html](https://marlinfw.org/docs/gcode/M361.html)

✅ **Status:** Fully Implemented

*No arguments*

## SCARA Psi-A (M362)

**Documentation:** [https://marlinfw.org/docs/gcode/M362.html](https://marlinfw.org/docs/gcode/M362.html)

✅ **Status:** Fully Implemented

*No arguments*

## SCARA Psi-B (M363)

**Documentation:** [https://marlinfw.org/docs/gcode/M363.html](https://marlinfw.org/docs/gcode/M363.html)

✅ **Status:** Fully Implemented

*No arguments*

## SCARA Psi-C (M364)

**Documentation:** [https://marlinfw.org/docs/gcode/M364.html](https://marlinfw.org/docs/gcode/M364.html)

✅ **Status:** Fully Implemented

*No arguments*

## Activate Solenoid (M380)

**Documentation:** [https://marlinfw.org/docs/gcode/M380.html](https://marlinfw.org/docs/gcode/M380.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- solenoidIndex :: **Index** (S)

## Deactivate Solenoids (M381)

**Documentation:** [https://marlinfw.org/docs/gcode/M381.html](https://marlinfw.org/docs/gcode/M381.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- solenoidIndex :: **Index** (S)

## Finish Moves (M400)

**Documentation:** [https://marlinfw.org/docs/gcode/M400.html](https://marlinfw.org/docs/gcode/M400.html)

✅ **Status:** Fully Implemented

*No arguments*

## Deploy Probe (M401)

**Documentation:** [https://marlinfw.org/docs/gcode/M401.html](https://marlinfw.org/docs/gcode/M401.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- reportHSMode :: **Flag** (H)
- remainInPlace :: **Flag** (R)
- setHSMode :: **Flag** (S)

## Stow Probe (M402)

**Documentation:** [https://marlinfw.org/docs/gcode/M402.html](https://marlinfw.org/docs/gcode/M402.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- remainInPlace :: **Flag** (R)

## MMU2 Filament Type (M403)

**Documentation:** [https://marlinfw.org/docs/gcode/M403.html](https://marlinfw.org/docs/gcode/M403.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- slotIndex **Index** (E)
- filamentType **Index** (F)

## Filament Width Sensor Nominal Diameter (M404)

**Documentation:** [https://marlinfw.org/docs/gcode/M404.html](https://marlinfw.org/docs/gcode/M404.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- nominalWidth :: **Mm** (W)

## Filament Width Sensor On (M405)

**Documentation:** [https://marlinfw.org/docs/gcode/M405.html](https://marlinfw.org/docs/gcode/M405.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- distanceCm :: **Count** (D)

## Filament Width Sensor Off (M406)

**Documentation:** [https://marlinfw.org/docs/gcode/M406.html](https://marlinfw.org/docs/gcode/M406.html)

✅ **Status:** Fully Implemented

*No arguments*

## Read Filament Width (M407)

**Documentation:** [https://marlinfw.org/docs/gcode/M407.html](https://marlinfw.org/docs/gcode/M407.html)

✅ **Status:** Fully Implemented

*No arguments*

## Quickstop (M410)

**Documentation:** [https://marlinfw.org/docs/gcode/M410.html](https://marlinfw.org/docs/gcode/M410.html)

✅ **Status:** Fully Implemented

*No arguments*

## Filament Runout (M412)

**Documentation:** [https://marlinfw.org/docs/gcode/M412.html](https://marlinfw.org/docs/gcode/M412.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- runoutDistance :: **Mm** (D)
- hostHandling :: **Flag** (H)
- motionSensorLength :: **Mm** (L)
- resetSensor :: **Flag** (R)
- enable :: **Flag** (S)

## Power-loss Recovery (M413)

**Documentation:** [https://marlinfw.org/docs/gcode/M413.html](https://marlinfw.org/docs/gcode/M413.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- enable :: **Flag** (S)

## LCD Language (M414)

**Documentation:** [https://marlinfw.org/docs/gcode/M414.html](https://marlinfw.org/docs/gcode/M414.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- languageIndex :: **Index** (S)

## Bed Leveling State (M420)

**Documentation:** [https://marlinfw.org/docs/gcode/M420.html](https://marlinfw.org/docs/gcode/M420.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- centerMesh :: **Flag** (C)
- loadMeshIndex :: **Index** (L)
- enable :: **Flag** (S)
- format :: **Index** (T)
- verbose :: **Flag** (V)
- fadeHeight :: **Mm** (Z)

## Set Mesh Value (M421)

**Documentation:** [https://marlinfw.org/docs/gcode/M421.html](https://marlinfw.org/docs/gcode/M421.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- setClosest :: **Flag** (C)
- xIndex :: **Index** (I)
- yIndex :: **Index** (J)
- setUndefined :: **Flag** (N)
- addToZ :: **Mm** (Q)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- zValue :: **Mm** (Z)

## Set Z Motor XY (M422)

**Documentation:** [https://marlinfw.org/docs/gcode/M422.html](https://marlinfw.org/docs/gcode/M422.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- reset :: **Flag** (R)
- stepperIndex :: **Index** (S)
- knownPositionIndex :: **Index** (W)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)

## X Twist Compensation (M423)

**Documentation:** [https://marlinfw.org/docs/gcode/M423.html](https://marlinfw.org/docs/gcode/M423.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- startingX :: **Mm** (A)
- endingX :: **Mm** (E)
- xSpacing :: **Mm** (I)
- reset :: **Flag** (R)
- arrayIndex :: **Index** (X)
- zOffset :: **Mm** (Z)

## Backlash Compensation (M425)

**Documentation:** [https://marlinfw.org/docs/gcode/M425.html](https://marlinfw.org/docs/gcode/M425.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- correctionFactor :: **Mm** (F)
- smoothingDistance :: **Mm** (S)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Flag** (Z)

## Home Offsets Here (M428)

**Documentation:** [https://marlinfw.org/docs/gcode/M428.html](https://marlinfw.org/docs/gcode/M428.html)

✅ **Status:** Fully Implemented

*No arguments*

## Power Monitor (M430)

**Documentation:** [https://marlinfw.org/docs/gcode/M430.html](https://marlinfw.org/docs/gcode/M430.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- displayCurrent :: **Flag** (I)
- displayVoltage :: **Flag** (V)
- displayPower :: **Flag** (W)

## Cancel Objects (M486)

**Documentation:** [https://marlinfw.org/docs/gcode/M486.html](https://marlinfw.org/docs/gcode/M486.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- cancelCurrent :: **Flag** (C)
- cancelIndex :: **Index** (P)
- currentObjectIndex :: **Index** (S)
- objectCount :: **Count** (T)
- uncancelIndex :: **Index** (U)

## Fixed-Time Motion (M493)

**Documentation:** [https://marlinfw.org/docs/gcode/M493.html](https://marlinfw.org/docs/gcode/M493.html)

⚠️ **Status:** Unimplemented - Fixed-Time Motion configuration with many interdependent parameters and complex state (complexity: 9)

*No arguments*

## FT Motion Trajectory Smoothing (M494)

**Documentation:** [https://marlinfw.org/docs/gcode/M494.html](https://marlinfw.org/docs/gcode/M494.html)

⚠️ **Status:** Unimplemented - FT Motion Trajectory Smoothing with complex motion planning parameters (complexity: 9)

*No arguments*

## Save Settings (M500)

**Documentation:** [https://marlinfw.org/docs/gcode/M500.html](https://marlinfw.org/docs/gcode/M500.html)

✅ **Status:** Fully Implemented

*No arguments*

## Restore Settings (M501)

**Documentation:** [https://marlinfw.org/docs/gcode/M501.html](https://marlinfw.org/docs/gcode/M501.html)

✅ **Status:** Fully Implemented

*No arguments*

## Factory Reset (M502)

**Documentation:** [https://marlinfw.org/docs/gcode/M502.html](https://marlinfw.org/docs/gcode/M502.html)

✅ **Status:** Fully Implemented

*No arguments*

## Report Settings (M503)

**Documentation:** [https://marlinfw.org/docs/gcode/M503.html](https://marlinfw.org/docs/gcode/M503.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- saveConfig :: **Flag** (C)
- detailedOutput :: **Flag** (S)

## Validate EEPROM Contents (M504)

**Documentation:** [https://marlinfw.org/docs/gcode/M504.html](https://marlinfw.org/docs/gcode/M504.html)

✅ **Status:** Fully Implemented

*No arguments*

## Lock Machine (M510)

**Documentation:** [https://marlinfw.org/docs/gcode/M510.html](https://marlinfw.org/docs/gcode/M510.html)

✅ **Status:** Fully Implemented

*No arguments*

## Unlock Machine (M511)

**Documentation:** [https://marlinfw.org/docs/gcode/M511.html](https://marlinfw.org/docs/gcode/M511.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- passcode **Count** (P)

## Set Passcode (M512)

**Documentation:** [https://marlinfw.org/docs/gcode/M512.html](https://marlinfw.org/docs/gcode/M512.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- passcode **TextValue** (_)

## Abort SD Print (M524)

**Documentation:** [https://marlinfw.org/docs/gcode/M524.html](https://marlinfw.org/docs/gcode/M524.html)

✅ **Status:** Fully Implemented

*No arguments*

## Endstops Abort SD (M540)

**Documentation:** [https://marlinfw.org/docs/gcode/M540.html](https://marlinfw.org/docs/gcode/M540.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- enable **Flag** (S)

## Machine Name (M550)

**Documentation:** [https://marlinfw.org/docs/gcode/M550.html](https://marlinfw.org/docs/gcode/M550.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- machineName :: **TextValue** (_)

## Ethernet IP Address, Network IF (M552)

**Documentation:** [https://marlinfw.org/docs/gcode/M552.html](https://marlinfw.org/docs/gcode/M552.html)

⚠️ **Status:** Unimplemented - Ethernet IP address configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## Ethernet Subnet Mask (M553)

**Documentation:** [https://marlinfw.org/docs/gcode/M553.html](https://marlinfw.org/docs/gcode/M553.html)

⚠️ **Status:** Unimplemented - Ethernet subnet mask configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## Ethernet Gateway IP Address (M554)

**Documentation:** [https://marlinfw.org/docs/gcode/M554.html](https://marlinfw.org/docs/gcode/M554.html)

⚠️ **Status:** Unimplemented - Ethernet gateway IP address configuration, requires IP address string parsing (complexity: 6)

*No arguments*

## Set TMC Stepping Mode (M569)

**Documentation:** [https://marlinfw.org/docs/gcode/M569.html](https://marlinfw.org/docs/gcode/M569.html)

⚠️ **Status:** Unimplemented - Set TMC stepping mode with complex stepper driver configuration (complexity: 7)

*No arguments*

## Serial Baud Rate (M575)

**Documentation:** [https://marlinfw.org/docs/gcode/M575.html](https://marlinfw.org/docs/gcode/M575.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- baudRate **Count** (B)

**Optional:**

- portIndex :: **Index** (P)

## Nonlinear Extrusion Control (M592)

**Documentation:** [https://marlinfw.org/docs/gcode/M592.html](https://marlinfw.org/docs/gcode/M592.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- quadraticCoeff :: **Mm** (A)
- linearCoeff :: **Mm** (B)
- constantCoeff :: **Mm** (C)
- enable :: **Flag** (S)

## ZV Input Shaping (M593)

**Documentation:** [https://marlinfw.org/docs/gcode/M593.html](https://marlinfw.org/docs/gcode/M593.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- zeta :: **Mm** (D)
- frequencyHz :: **Mm** (F)
- axisX :: **Flag** (X)
- axisY :: **Flag** (Y)
- axisZ :: **Flag** (Z)

## Filament Change (M600)

**Documentation:** [https://marlinfw.org/docs/gcode/M600.html](https://marlinfw.org/docs/gcode/M600.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- beeps :: **Count** (B)
- retractLength :: **Mm** (E)
- loadLength :: **Mm** (L)
- resumeTemp :: **Celsius** (R)
- targetExtruder :: **Index** (T)
- unloadLength :: **Mm** (U)
- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- zLift :: **Mm** (Z)

## Configure Filament Change (M603)

**Documentation:** [https://marlinfw.org/docs/gcode/M603.html](https://marlinfw.org/docs/gcode/M603.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- loadLength :: **Mm** (L)
- targetExtruder :: **Index** (T)
- unloadLength :: **Mm** (U)

## Multi Nozzle Mode (M605)

**Documentation:** [https://marlinfw.org/docs/gcode/M605.html](https://marlinfw.org/docs/gcode/M605.html)

⚠️ **Status:** Unimplemented - Multi-nozzle mode configuration with complex multi-extruder setup (complexity: 8)

*No arguments*

## Delta Configuration (M665)

**Documentation:** [https://marlinfw.org/docs/gcode/M665.html](https://marlinfw.org/docs/gcode/M665.html)

⚠️ **Status:** Unimplemented - Delta configuration with many interdependent geometry parameters (complexity: 8)

*No arguments*

## Set Delta Endstop Adjustments (M666)

**Documentation:** [https://marlinfw.org/docs/gcode/M666.html](https://marlinfw.org/docs/gcode/M666.html)

⚠️ **Status:** Unimplemented - Set Delta endstop adjustments with complex delta-specific calibration (complexity: 7)

*No arguments*

## Duet Smart Effector Sensitivity (M672)

**Documentation:** [https://marlinfw.org/docs/gcode/M672.html](https://marlinfw.org/docs/gcode/M672.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- revertFactory :: **Flag** (R)
- sensitivity :: **Index** (S)

## Load Filament (M701)

**Documentation:** [https://marlinfw.org/docs/gcode/M701.html](https://marlinfw.org/docs/gcode/M701.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- extrudeDistance **Mm** (L)

**Optional:**

- extruderIndex :: **Index** (T)
- zMove :: **Mm** (Z)

## Unload Filament (M702)

**Documentation:** [https://marlinfw.org/docs/gcode/M702.html](https://marlinfw.org/docs/gcode/M702.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- retractDistance **Mm** (U)

**Optional:**

- extruderIndex :: **Index** (T)
- zMove :: **Mm** (Z)

## Controller Fan Settings (M710)

**Documentation:** [https://marlinfw.org/docs/gcode/M710.html](https://marlinfw.org/docs/gcode/M710.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- autoSpeed :: **Flag** (A)
- extraDuration :: **Seconds** (D)
- idleSpeed :: **Index** (I)
- reset :: **Flag** (R)
- activeSpeed :: **Index** (S)

## Repeat Marker (M808)

**Documentation:** [https://marlinfw.org/docs/gcode/M808.html](https://marlinfw.org/docs/gcode/M808.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- loopCount :: **Count** (L)

## G-code Macros (M810)

**Documentation:** [https://marlinfw.org/docs/gcode/M810-M819.html](https://marlinfw.org/docs/gcode/M810-M819.html)

⚠️ **Status:** Unimplemented - G-code macros with complex string parsing and macro definition/execution (complexity: 10)

*No arguments*

## Report G-code Macros (M820)

**Documentation:** [https://marlinfw.org/docs/gcode/M820.html](https://marlinfw.org/docs/gcode/M820.html)

✅ **Status:** Fully Implemented

*No arguments*

## XYZ Probe Offset (M851)

**Documentation:** [https://marlinfw.org/docs/gcode/M851.html](https://marlinfw.org/docs/gcode/M851.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisX :: **Mm** (X)
- axisY :: **Mm** (Y)
- axisZ :: **Mm** (Z)

## Bed Skew Compensation (M852)

**Documentation:** [https://marlinfw.org/docs/gcode/M852.html](https://marlinfw.org/docs/gcode/M852.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- xySkew :: **Mm** (I)
- xzSkew :: **Mm** (J)
- yzSkew :: **Mm** (K)
- xySkewAlias :: **Mm** (S)

## I2C Position Encoders (M860)

**Documentation:** [https://marlinfw.org/docs/gcode/M860-M869.html](https://marlinfw.org/docs/gcode/M860-M869.html)

⚠️ **Status:** Unimplemented - I2C position encoders with complex encoder configuration and state management (complexity: 8)

*No arguments*

## Probe Temperature Config (M871)

**Documentation:** [https://marlinfw.org/docs/gcode/M871.html](https://marlinfw.org/docs/gcode/M871.html)

⚠️ **Status:** Unimplemented - Probe temperature configuration with complex temperature compensation parameters (complexity: 7)

*No arguments*

## Handle Prompt Response (M876)

**Documentation:** [https://marlinfw.org/docs/gcode/M876.html](https://marlinfw.org/docs/gcode/M876.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- response **Index** (S)

## Linear Advance Factor (M900)

**Documentation:** [https://marlinfw.org/docs/gcode/M900.html](https://marlinfw.org/docs/gcode/M900.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- kFactor :: **Mm** (K)
- secondKFactor :: **Mm** (L)
- slot :: **Index** (S)
- extruderIndex :: **Index** (T)

## Stepper Motor Current (M906)

**Documentation:** [https://marlinfw.org/docs/gcode/M906.html](https://marlinfw.org/docs/gcode/M906.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- axisExtrusion :: **Count** (E)
- stepperIndex :: **Index** (I)
- extruderIndex :: **Index** (T)
- axisX :: **Count** (X)
- axisY :: **Count** (Y)
- axisZ :: **Count** (Z)

## Trimpot Stepper Motor Current (M907)

**Documentation:** [https://marlinfw.org/docs/gcode/M907.html](https://marlinfw.org/docs/gcode/M907.html)

⚠️ **Status:** Unimplemented - Trimpot stepper motor current with hardware-specific analog control (complexity: 6)

*No arguments*

## Set Trimpot Pins (M908)

**Documentation:** [https://marlinfw.org/docs/gcode/M908.html](https://marlinfw.org/docs/gcode/M908.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- pin **Index** (P)
- current **Index** (S)

## Report DAC Stepper Current (M909)

**Documentation:** [https://marlinfw.org/docs/gcode/M909.html](https://marlinfw.org/docs/gcode/M909.html)

✅ **Status:** Fully Implemented

*No arguments*

## Commit DAC to EEPROM (M910)

**Documentation:** [https://marlinfw.org/docs/gcode/M910.html](https://marlinfw.org/docs/gcode/M910.html)

✅ **Status:** Fully Implemented

*No arguments*

## TMC OT Pre-Warn Condition (M911)

**Documentation:** [https://marlinfw.org/docs/gcode/M911.html](https://marlinfw.org/docs/gcode/M911.html)

✅ **Status:** Fully Implemented

*No arguments*

## Clear TMC OT Pre-Warn (M912)

**Documentation:** [https://marlinfw.org/docs/gcode/M912.html](https://marlinfw.org/docs/gcode/M912.html)

⚠️ **Status:** Unimplemented - Clear TMC OT Pre-Warn with TMC driver state management (complexity: 5)

*No arguments*

## Set Hybrid Threshold Speed (M913)

**Documentation:** [https://marlinfw.org/docs/gcode/M913.html](https://marlinfw.org/docs/gcode/M913.html)

⚠️ **Status:** Unimplemented - Set Hybrid Threshold Speed with TMC hybrid mode configuration (complexity: 6)

*No arguments*

## TMC Bump Sensitivity (M914)

**Documentation:** [https://marlinfw.org/docs/gcode/M914.html](https://marlinfw.org/docs/gcode/M914.html)

⚠️ **Status:** Unimplemented - TMC Bump Sensitivity with complex TMC driver tuning parameters (complexity: 7)

*No arguments*

## TMC Z Axis Calibration (M915)

**Documentation:** [https://marlinfw.org/docs/gcode/M915.html](https://marlinfw.org/docs/gcode/M915.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- current :: **Count** (S)
- extraHeight :: **Mm** (Z)

## L6474 Thermal Warning Test (M916)

**Documentation:** [https://marlinfw.org/docs/gcode/M916.html](https://marlinfw.org/docs/gcode/M916.html)

⚠️ **Status:** Unimplemented - L6474 Thermal Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## L6474 Overcurrent Warning Test (M917)

**Documentation:** [https://marlinfw.org/docs/gcode/M917.html](https://marlinfw.org/docs/gcode/M917.html)

⚠️ **Status:** Unimplemented - L6474 Overcurrent Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## L6474 Speed Warning Test (M918)

**Documentation:** [https://marlinfw.org/docs/gcode/M918.html](https://marlinfw.org/docs/gcode/M918.html)

⚠️ **Status:** Unimplemented - L6474 Speed Warning Test with driver-specific test mode (complexity: 5)

*No arguments*

## TMC Chopper Timing (M919)

**Documentation:** [https://marlinfw.org/docs/gcode/M919.html](https://marlinfw.org/docs/gcode/M919.html)

⚠️ **Status:** Unimplemented - TMC Chopper Timing with complex TMC driver register configuration (complexity: 7)

*No arguments*

## TMC Homing Current (M920)

**Documentation:** [https://marlinfw.org/docs/gcode/M920.html](https://marlinfw.org/docs/gcode/M920.html)

⚠️ **Status:** Unimplemented - TMC Homing Current with TMC driver current configuration for homing (complexity: 6)

*No arguments*

## Start SD Logging (M928)

**Documentation:** [https://marlinfw.org/docs/gcode/M928.html](https://marlinfw.org/docs/gcode/M928.html)

✅ **Status:** Fully Implemented

### Arguments

**Required:**

- filename **Filename** (_)

## Magnetic Parking Extruder (M951)

**Documentation:** [https://marlinfw.org/docs/gcode/M951.html](https://marlinfw.org/docs/gcode/M951.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- compensationFactor :: **Mm** (C)
- travelFeedrate :: **Mm** (D)
- fastFeedrate :: **MmPerMin** (H)
- grabDistance :: **Mm** (I)
- slowFeedrate :: **MmPerMin** (J)
- x0Position :: **Mm** (L)
- x1Position :: **Mm** (R)

## Back Up Flash Settings to SD (M993)

**Documentation:** [https://marlinfw.org/docs/gcode/M993.html](https://marlinfw.org/docs/gcode/M993.html)

✅ **Status:** Fully Implemented

*No arguments*

## Restore Flash from SD (M994)

**Documentation:** [https://marlinfw.org/docs/gcode/M994.html](https://marlinfw.org/docs/gcode/M994.html)

✅ **Status:** Fully Implemented

*No arguments*

## Touch Screen Calibration (M995)

**Documentation:** [https://marlinfw.org/docs/gcode/M995.html](https://marlinfw.org/docs/gcode/M995.html)

✅ **Status:** Fully Implemented

*No arguments*

## Firmware Update (M997)

**Documentation:** [https://marlinfw.org/docs/gcode/M997.html](https://marlinfw.org/docs/gcode/M997.html)

✅ **Status:** Fully Implemented

*No arguments*

## STOP Restart (M999)

**Documentation:** [https://marlinfw.org/docs/gcode/M999.html](https://marlinfw.org/docs/gcode/M999.html)

✅ **Status:** Fully Implemented

### Arguments

**Optional:**

- resumeWithoutFlush :: **Flag** (S)

## MAX7219 Control (M7219)

**Documentation:** [https://marlinfw.org/docs/gcode/M7219.html](https://marlinfw.org/docs/gcode/M7219.html)

⚠️ **Status:** Unimplemented - MAX7219 LED matrix control with complex display buffer management (complexity: 7)

*No arguments*
