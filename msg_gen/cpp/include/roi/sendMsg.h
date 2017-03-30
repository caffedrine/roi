/* Auto-generated by genmsg_cpp for file /home/curiosul/ROS_Workspace/sandbox/roi/msg/sendMsg.msg */
#ifndef ROI_MESSAGE_SENDMSG_H
#define ROI_MESSAGE_SENDMSG_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "sensor_msgs/Image.h"
#include "roi/IMU.h"
#include "roi/ROIS.h"

namespace roi
{
template <class ContainerAllocator>
struct sendMsg_ {
  typedef sendMsg_<ContainerAllocator> Type;

  sendMsg_()
  : image()
  , imu()
  , rois()
  {
  }

  sendMsg_(const ContainerAllocator& _alloc)
  : image(_alloc)
  , imu(_alloc)
  , rois(_alloc)
  {
  }

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
   ::sensor_msgs::Image_<ContainerAllocator>  image;

  typedef  ::roi::IMU_<ContainerAllocator>  _imu_type;
   ::roi::IMU_<ContainerAllocator>  imu;

  typedef  ::roi::ROIS_<ContainerAllocator>  _rois_type;
   ::roi::ROIS_<ContainerAllocator>  rois;


  typedef boost::shared_ptr< ::roi::sendMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roi::sendMsg_<ContainerAllocator>  const> ConstPtr;
}; // struct sendMsg
typedef  ::roi::sendMsg_<std::allocator<void> > sendMsg;

typedef boost::shared_ptr< ::roi::sendMsg> sendMsgPtr;
typedef boost::shared_ptr< ::roi::sendMsg const> sendMsgConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::roi::sendMsg_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::roi::sendMsg_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace roi

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::roi::sendMsg_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::roi::sendMsg_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::roi::sendMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b81ee14b2a1fb34ae211ed812f1ab031";
  }

  static const char* value(const  ::roi::sendMsg_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb81ee14b2a1fb34aULL;
  static const uint64_t static_value2 = 0xe211ed812f1ab031ULL;
};

template<class ContainerAllocator>
struct DataType< ::roi::sendMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "roi/sendMsg";
  }

  static const char* value(const  ::roi::sendMsg_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::roi::sendMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#FRAME data structure; defined in FRAME.msg\n\
sensor_msgs/Image image\n\
\n\
#IMU data structure; defined in IMU.msg\n\
IMU imu\n\
\n\
#Region of interest data structure; defined in ROIS.msg\n\
ROIS rois\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: roi/IMU\n\
#IMU Data, we may have to pass those infos too!\n\
\n\
bool isValidIMU\n\
sensor_msgs/Imu imu\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Imu\n\
# This is a message to hold data from an IMU (Inertial Measurement Unit)\n\
#\n\
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec\n\
#\n\
# If the covariance of the measurement is known, it should be filled in (if all you know is the \n\
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)\n\
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n\
# data a covariance will have to be assumed or gotten from some other source\n\
#\n\
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation \n\
# estimate), please set element 0 of the associated covariance matrix to -1\n\
# If you are interpreting this message, please check for a value of -1 in the first element of each \n\
# covariance matrix, and disregard the associated estimate.\n\
\n\
Header header\n\
\n\
geometry_msgs/Quaternion orientation\n\
float64[9] orientation_covariance # Row major about x, y, z axes\n\
\n\
geometry_msgs/Vector3 angular_velocity\n\
float64[9] angular_velocity_covariance # Row major about x, y, z axes\n\
\n\
geometry_msgs/Vector3 linear_acceleration\n\
float64[9] linear_acceleration_covariance # Row major x, y z \n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: roi/ROIS\n\
#Numar regiuni de interes\n\
uint32 nr\n\
\n\
#Vector de lungime variabila cu regiunile de interes\n\
sensor_msgs/RegionOfInterest[] rois\n\
\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
\n\
";
  }

  static const char* value(const  ::roi::sendMsg_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::roi::sendMsg_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.image);
    stream.next(m.imu);
    stream.next(m.rois);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct sendMsg_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roi::sendMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::roi::sendMsg_<ContainerAllocator> & v) 
  {
    s << indent << "image: ";
s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "imu: ";
s << std::endl;
    Printer< ::roi::IMU_<ContainerAllocator> >::stream(s, indent + "  ", v.imu);
    s << indent << "rois: ";
s << std::endl;
    Printer< ::roi::ROIS_<ContainerAllocator> >::stream(s, indent + "  ", v.rois);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ROI_MESSAGE_SENDMSG_H

