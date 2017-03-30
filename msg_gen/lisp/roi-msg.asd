
(cl:in-package :asdf)

(defsystem "roi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "recvMsg" :depends-on ("_package_recvMsg"))
    (:file "_package_recvMsg" :depends-on ("_package"))
    (:file "IMU" :depends-on ("_package_IMU"))
    (:file "_package_IMU" :depends-on ("_package"))
    (:file "ROIS" :depends-on ("_package_ROIS"))
    (:file "_package_ROIS" :depends-on ("_package"))
    (:file "sendMsg" :depends-on ("_package_sendMsg"))
    (:file "_package_sendMsg" :depends-on ("_package"))
  ))