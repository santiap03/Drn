// Auto-generated. Do not edit!

// (in-package cvg_sim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RuddersCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.aileron = null;
      this.elevator = null;
      this.rudder = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('aileron')) {
        this.aileron = initObj.aileron
      }
      else {
        this.aileron = 0.0;
      }
      if (initObj.hasOwnProperty('elevator')) {
        this.elevator = initObj.elevator
      }
      else {
        this.elevator = 0.0;
      }
      if (initObj.hasOwnProperty('rudder')) {
        this.rudder = initObj.rudder
      }
      else {
        this.rudder = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RuddersCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [aileron]
    bufferOffset = _serializer.float32(obj.aileron, buffer, bufferOffset);
    // Serialize message field [elevator]
    bufferOffset = _serializer.float32(obj.elevator, buffer, bufferOffset);
    // Serialize message field [rudder]
    bufferOffset = _serializer.float32(obj.rudder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RuddersCommand
    let len;
    let data = new RuddersCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [aileron]
    data.aileron = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevator]
    data.elevator = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rudder]
    data.rudder = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cvg_sim_msgs/RuddersCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e136cb8cfffc2233e404b320c27bca6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 aileron
    float32 elevator
    float32 rudder
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RuddersCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.aileron !== undefined) {
      resolved.aileron = msg.aileron;
    }
    else {
      resolved.aileron = 0.0
    }

    if (msg.elevator !== undefined) {
      resolved.elevator = msg.elevator;
    }
    else {
      resolved.elevator = 0.0
    }

    if (msg.rudder !== undefined) {
      resolved.rudder = msg.rudder;
    }
    else {
      resolved.rudder = 0.0
    }

    return resolved;
    }
};

module.exports = RuddersCommand;
