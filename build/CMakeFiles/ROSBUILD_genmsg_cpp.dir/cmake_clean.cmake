FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/roi/msg"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/roi/recvMsg.h"
  "../msg_gen/cpp/include/roi/IMU.h"
  "../msg_gen/cpp/include/roi/ROIS.h"
  "../msg_gen/cpp/include/roi/sendMsg.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
