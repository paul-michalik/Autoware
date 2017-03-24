FROM  osrf/ros:jade-desktop-full

MAINTAINER Paul Michalik

RUN apt-get update && apt-get install -y \
	ros-jade-desktop-full ros-jade-nmea-msgs \
	ros-jade-nmea-navsat-driver ros-jade-sound-play \
	ros-jade-controller-manager ros-jade-ros-control \
	ros-jade-ros-controllers ros-jade-gazebo-ros-control \
	ros-jade-sicktoolbox ros-jade-sicktoolbox-wrapper \
	ros-jade-joystick-drivers ros-jade-novatel-span-driver
	
RUN apt-get update && apt-get install -y \	
	libnlopt-dev freeglut3-dev qt5-default libqt5opengl5-dev \
	libssh2-1-dev libarmadillo-dev libpcap-dev gksu libgl1-mesa-dev

#jsk_visualization and grid_map is not provided in Ubuntu15.04 Jade. #Please download it from the following repository and build it by #yourself.
#https://github.com/jsk-ros-pkg/jsk_visualization**
#https://github.com/ethz-asl/grid_map

CMD bash	