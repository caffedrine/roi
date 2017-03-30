FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/roi/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/roi/msg/__init__.py"
  "../src/roi/msg/_recvMsg.py"
  "../src/roi/msg/_IMU.py"
  "../src/roi/msg/_ROIS.py"
  "../src/roi/msg/_sendMsg.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
