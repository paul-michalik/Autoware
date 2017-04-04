#!/usr/bin/env bash

sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

apt-get update

apt-get install -y \
	ros-indigo-desktop-full \
	ros-indigo-nmea-msgs \
	ros-indigo-nmea-navsat-driver \
	ros-indigo-sound-play \
	ros-indigo-jsk-visualization \
	ros-indigo-grid-map

apt-get install -y \
	ros-indigo-controller-manager \
	ros-indigo-ros-control \
	ros-indigo-ros-controllers \
	ros-indigo-gazebo-ros-control \
	ros-indigo-sicktoolbox \
	ros-indigo-sicktoolbox-wrapper \
	ros-indigo-joystick-drivers \
	ros-indigo-novatel-span-driver

apt-get install -y \
	libnlopt-dev \
	freeglut3-dev \
	qtbase5-dev \
	libqt5opengl5-dev \
	libssh2-1-dev \
	libarmadillo-dev \
	libpcap-dev \
	gksu \
	libgl1-mesa-dev \
	libglew-dev \
	git
	