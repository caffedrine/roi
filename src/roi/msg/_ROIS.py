# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roi/ROIS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg

class ROIS(genpy.Message):
  _md5sum = "c6b1a3b2f390bd44cdbe0b0a182aebc3"
  _type = "roi/ROIS"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#Numar regiuni de interes
uint32 nr

#Vector de lungime variabila cu regiunile de interes
sensor_msgs/RegionOfInterest[] rois

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
"""
  __slots__ = ['nr','rois']
  _slot_types = ['uint32','sensor_msgs/RegionOfInterest[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nr,rois

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ROIS, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.nr is None:
        self.nr = 0
      if self.rois is None:
        self.rois = []
    else:
      self.nr = 0
      self.rois = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_I.pack(self.nr))
      length = len(self.rois)
      buff.write(_struct_I.pack(length))
      for val1 in self.rois:
        _x = val1
        buff.write(_struct_4IB.pack(_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.rois is None:
        self.rois = None
      end = 0
      start = end
      end += 4
      (self.nr,) = _struct_I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rois = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.RegionOfInterest()
        _x = val1
        start = end
        end += 17
        (_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify,) = _struct_4IB.unpack(str[start:end])
        val1.do_rectify = bool(val1.do_rectify)
        self.rois.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_I.pack(self.nr))
      length = len(self.rois)
      buff.write(_struct_I.pack(length))
      for val1 in self.rois:
        _x = val1
        buff.write(_struct_4IB.pack(_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.rois is None:
        self.rois = None
      end = 0
      start = end
      end += 4
      (self.nr,) = _struct_I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rois = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.RegionOfInterest()
        _x = val1
        start = end
        end += 17
        (_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify,) = _struct_4IB.unpack(str[start:end])
        val1.do_rectify = bool(val1.do_rectify)
        self.rois.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4IB = struct.Struct("<4IB")
