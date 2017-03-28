#!/usr/bin/env bash

apt-get update && apt-get install -y \
	ros-indigo-desktop-full \
	ros-indigo-nmea-msgs \
	ros-indigo-nmea-navsat-driver \
	ros-indigo-sound-play \
	ros-indigo-jsk-visualization \
	ros-indigo-grid-map

apt-get update && apt-get install -y \
	ros-indigo-controller-manager \
	ros-indigo-ros-control \
	ros-indigo-ros-controllers \
	ros-indigo-gazebo-ros-control \
	ros-indigo-sicktoolbox \
	ros-indigo-sicktoolbox-wrapper \
	ros-indigo-joystick-drivers \
	ros-indigo-novatel-span-driver

apt-get update && apt-get install -y \
	libnlopt-dev \
	freeglut3-dev \
	qtbase5-dev \
	libqt5opengl5-dev \
	libssh2-1-dev \
	libarmadillo-dev \
	libpcap-dev \
	gksu \
	libgl1-mesa-dev
