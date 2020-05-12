
"use strict";

let RawImu = require('./RawImu.js');
let Altimeter = require('./Altimeter.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let MotorPWM = require('./MotorPWM.js');
let RawRC = require('./RawRC.js');
let ThrustCommand = require('./ThrustCommand.js');
let RC = require('./RC.js');
let HeightCommand = require('./HeightCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let Supply = require('./Supply.js');
let ServoCommand = require('./ServoCommand.js');
let Altitude = require('./Altitude.js');
let MotorCommand = require('./MotorCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let Compass = require('./Compass.js');
let MotorStatus = require('./MotorStatus.js');
let ControllerState = require('./ControllerState.js');
let RawMagnetic = require('./RawMagnetic.js');

module.exports = {
  RawImu: RawImu,
  Altimeter: Altimeter,
  VelocityXYCommand: VelocityXYCommand,
  AttitudeCommand: AttitudeCommand,
  RuddersCommand: RuddersCommand,
  MotorPWM: MotorPWM,
  RawRC: RawRC,
  ThrustCommand: ThrustCommand,
  RC: RC,
  HeightCommand: HeightCommand,
  YawrateCommand: YawrateCommand,
  Supply: Supply,
  ServoCommand: ServoCommand,
  Altitude: Altitude,
  MotorCommand: MotorCommand,
  PositionXYCommand: PositionXYCommand,
  VelocityZCommand: VelocityZCommand,
  HeadingCommand: HeadingCommand,
  Compass: Compass,
  MotorStatus: MotorStatus,
  ControllerState: ControllerState,
  RawMagnetic: RawMagnetic,
};
