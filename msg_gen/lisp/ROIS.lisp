; Auto-generated. Do not edit!


(cl:in-package roi-msg)


;//! \htmlinclude ROIS.msg.html

(cl:defclass <ROIS> (roslisp-msg-protocol:ros-message)
  ((nr
    :reader nr
    :initarg :nr
    :type cl:integer
    :initform 0)
   (rois
    :reader rois
    :initarg :rois
    :type (cl:vector sensor_msgs-msg:RegionOfInterest)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:RegionOfInterest :initial-element (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))))
)

(cl:defclass ROIS (<ROIS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROIS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROIS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roi-msg:<ROIS> is deprecated: use roi-msg:ROIS instead.")))

(cl:ensure-generic-function 'nr-val :lambda-list '(m))
(cl:defmethod nr-val ((m <ROIS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roi-msg:nr-val is deprecated.  Use roi-msg:nr instead.")
  (nr m))

(cl:ensure-generic-function 'rois-val :lambda-list '(m))
(cl:defmethod rois-val ((m <ROIS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roi-msg:rois-val is deprecated.  Use roi-msg:rois instead.")
  (rois m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROIS>) ostream)
  "Serializes a message object of type '<ROIS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nr)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rois))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rois))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROIS>) istream)
  "Deserializes a message object of type '<ROIS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nr)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rois) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rois)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROIS>)))
  "Returns string type for a message object of type '<ROIS>"
  "roi/ROIS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROIS)))
  "Returns string type for a message object of type 'ROIS"
  "roi/ROIS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROIS>)))
  "Returns md5sum for a message object of type '<ROIS>"
  "c6b1a3b2f390bd44cdbe0b0a182aebc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROIS)))
  "Returns md5sum for a message object of type 'ROIS"
  "c6b1a3b2f390bd44cdbe0b0a182aebc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROIS>)))
  "Returns full string definition for message of type '<ROIS>"
  (cl:format cl:nil "#Numar regiuni de interes~%uint32 nr~%~%#Vector de lungime variabila cu regiunile de interes~%sensor_msgs/RegionOfInterest[] rois~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROIS)))
  "Returns full string definition for message of type 'ROIS"
  (cl:format cl:nil "#Numar regiuni de interes~%uint32 nr~%~%#Vector de lungime variabila cu regiunile de interes~%sensor_msgs/RegionOfInterest[] rois~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROIS>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rois) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROIS>))
  "Converts a ROS message object to a list"
  (cl:list 'ROIS
    (cl:cons ':nr (nr msg))
    (cl:cons ':rois (rois msg))
))
