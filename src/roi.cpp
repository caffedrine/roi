#include "ros/ros.h"

//OpenCv and the company for working and displaying frames
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

//My custom message we will brodcast
#include "roi/recvMsg.h"
#include "roi/sendMsg.h"

#include <iostream>

ros::Publisher publisher;

void image_callback(const roi::recvMsg &recvMsg)
{
    try
    {
       //afisare frame_id
       long t_now = ros::Time::now().toNSec();
       long t_recv = recvMsg.image.header.stamp.toNSec();
       std::cout << "[" << (double)(t_now - t_recv)/1e6 << " ms] ";
       std::cout <<"[" << recvMsg.image.header.seq << "]";
       std::cout << "[" << recvMsg.imu.imu.orientation.x << " " << recvMsg.imu.imu.orientation.y << " "
                 << recvMsg.imu.imu.orientation.z << "]" << std::endl;

       //////////////////////////////////////////////////////////////////////////////////////////////
       // Image prelucration here. You jave also to publish the image here, too!
       // cv_bridge::CvImagePtr cvImg = cv_bridge::toCvCopy(recvMsg.image, "bgr8");


       //After that, we build new message and we send it!
       roi::sendMsg sendMsg;
       sendMsg.image = recvMsg.image;
       sendMsg.rois.nr = 0;
       publisher.publish(sendMsg);


       ////////////////////////////////////////////////////////////////////////////////////////////////
       //Display image - debugging only
//        cv_bridge::CvImagePtr cvImg = cv_bridge::toCvCopy(recvMsg.image, "bgr8");
//        cv::imshow("view", cvImg->image);
//        cv::waitKey(30);
    }
    catch (cv_bridge::Exception& e)
    {
        std::cout <<"Error: [" << recvMsg.image.header.seq << "]" << std::endl;
       //ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}

int main(int argc, char **argv)
{
		//Initializare ros
		ros::init(argc, argv, "roiDetector");
		ros::NodeHandle n;

		//initializare publisher
		ros::NodeHandle publishNode;
		publisher = publishNode.advertise<roi::sendMsg>("camera/roi", 1) ;

		//Starting the window to view the frames - only for debugging
		//cv::namedWindow("view");
		//cv::startWindowThread();

		//Abonare la topicul specificat
		ros::Subscriber subscriber = n.subscribe("camera/image", 1, image_callback);
		ros::spin();

		cv::destroyWindow("view");
		return 0;
}
