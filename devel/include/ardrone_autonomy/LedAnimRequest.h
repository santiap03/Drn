// Generated by gencpp from file ardrone_autonomy/LedAnimRequest.msg
// DO NOT EDIT!


#ifndef ARDRONE_AUTONOMY_MESSAGE_LEDANIMREQUEST_H
#define ARDRONE_AUTONOMY_MESSAGE_LEDANIMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ardrone_autonomy
{
template <class ContainerAllocator>
struct LedAnimRequest_
{
  typedef LedAnimRequest_<ContainerAllocator> Type;

  LedAnimRequest_()
    : type(0)
    , freq(0.0)
    , duration(0)  {
    }
  LedAnimRequest_(const ContainerAllocator& _alloc)
    : type(0)
    , freq(0.0)
    , duration(0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef float _freq_type;
  _freq_type freq;

   typedef uint8_t _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LedAnimRequest_

typedef ::ardrone_autonomy::LedAnimRequest_<std::allocator<void> > LedAnimRequest;

typedef boost::shared_ptr< ::ardrone_autonomy::LedAnimRequest > LedAnimRequestPtr;
typedef boost::shared_ptr< ::ardrone_autonomy::LedAnimRequest const> LedAnimRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ardrone_autonomy

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ardrone_autonomy': ['/home/santi/wsfin/src/ardrone_autonomy/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23392fc8200b12a3585ff6a32d597821";
  }

  static const char* value(const ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23392fc8200b12a3ULL;
  static const uint64_t static_value2 = 0x585ff6a32d597821ULL;
};

template<class ContainerAllocator>
struct DataType< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ardrone_autonomy/LedAnimRequest";
  }

  static const char* value(const ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
uint8 type\n\
\n\
\n\
float32 freq\n\
\n\
\n\
uint8 duration\n\
\n\
";
  }

  static const char* value(const ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.freq);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LedAnimRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ardrone_autonomy::LedAnimRequest_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "freq: ";
    Printer<float>::stream(s, indent + "  ", v.freq);
    s << indent << "duration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARDRONE_AUTONOMY_MESSAGE_LEDANIMREQUEST_H
