#!/usr/bin/env python
# Software License Agreement (BSD License)

#Subscribe and Publish at the same time

import rospy
from std_msgs.msg import String

from roi_py.msg import sendmsg
#from roi_py.py import recvMsg

#Callback function - called everytime a new message is recieved
def callback(data):
	print "<<---Recv data: %s" % data.data

	#publishing message we just received
	sendMsg = "--->>" + data.data
	print sendMsg

	hPublisher.publish(sendMsg)

#Main function
if __name__ == '__main__':

	#Initializing node
	rospy.init_node('roi_node', anonymous=True)

	#Defining publisher and subscriber handles
	hSubscriber = rospy.Subscriber("camera_and_imu", String, callback)			#Subscriber handler
	hPublisher  = rospy.Publisher("camera_and_imu_roi", String, queue_size=1)	#Publisher handler

	rospy.spin()
