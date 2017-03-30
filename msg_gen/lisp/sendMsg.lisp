; Auto-generated. Do not edit!


(cl:in-package roi-msg)


;//! \htmlinclude sendMsg.msg.html

(cl:defclass <sendMsg> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (imu
    :reader imu
    :initarg :imu
    :type roi-msg:IMU
    :initform (cl:make-instance 'roi-msg:IMU))
   (rois
    :reader rois
    :initarg :rois
    :type roi-msg:ROIS
    :initform (cl:make-instance 'roi-msg:ROIS)))
)

(cl:defclass sendMsg (<sendMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sendMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sendMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roi-msg:<sendMsg> is deprecated: use roi-msg:sendMsg instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <sendMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roi-msg:image-val is deprecated.  Use roi-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <sendMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roi-msg:imu-val is deprecated.  Use roi-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'rois-val :lambda-list '(m))
(cl:defmethod rois-val ((m <sendMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roi-msg:rois-val is deprecated.  Use roi-msg:rois instead.")
  (rois m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sendMsg>) ostream)
  "Serializes a message object of type '<sendMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rois) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sendMsg>) istream)
  "Deserializes a message object of type '<sendMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rois) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sendMsg>)))
  "Returns string type for a message object of type '<sendMsg>"
  "roi/sendMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sendMsg)))
  "Returns string type for a message object of type 'sendMsg"
  "roi/sendMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sendMsg>)))
  "Returns md5sum for a message object of type '<sendMsg>"
  "b81ee14b2a1fb34ae211ed812f1ab031")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sendMsg)))
  "Returns md5sum for a message object of type 'sendMsg"
  "b81ee14b2a1fb34ae211ed812f1ab031")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sendMsg>)))
  "Returns full string definition for message of type '<sendMsg>"
  (cl:format cl:nil "#FRAME data structure; defined in FRAME.msg~%sensor_msgs/Image image~%~%#IMU data structure; defined in IMU.msg~%IMU imu~%~%#Region of interest data structure; defined in ROIS.msg~%ROIS rois~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: roi/IMU~%#IMU Data, we may have to pass those infos too!~%~%bool isValidIMU~%sensor_msgs/Imu imu~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: roi/ROIS~%#Numar regiuni de interes~%uint32 nr~%~%#Vector de lungime variabila cu regiunile de interes~%sensor_msgs/RegionOfInterest[] rois~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sendMsg)))
  "Returns full string definition for message of type 'sendMsg"
  (cl:format cl:nil "#FRAME data structure; defined in FRAME.msg~%sensor_msgs/Image image~%~%#IMU data structure; defined in IMU.msg~%IMU imu~%~%#Region of interest data structure; defined in ROIS.msg~%ROIS rois~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: roi/IMU~%#IMU Data, we may have to pass those infos too!~%~%bool isValidIMU~%sensor_msgs/Imu imu~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: roi/ROIS~%#Numar regiuni de interes~%uint32 nr~%~%#Vector de lungime variabila cu regiunile de interes~%sensor_msgs/RegionOfInterest[] rois~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sendMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rois))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sendMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'sendMsg
    (cl:cons ':image (image msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':rois (rois msg))
))
