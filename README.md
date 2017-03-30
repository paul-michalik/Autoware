# Autoware

Integrated open-source software for urban autonomous driving, maintained by [Tier IV](http://www.tier4.jp). The following functions are supported:

- 3D Localization
- 3D Mapping
- Path Planning
- Path Following
- Accel/Brake/Steering Control
- Data Logging
- Car/Pedestrian/Object Detection
- Traffic Signal Detection
- Traffic Light Recognition
- Lane Detection
- Object Tracking
- Sensor Calibration
- Sensor Fusion
- Cloud-oriented Maps
- Connected Automation
- Smartphone Navigation
- Software Simulation
- Virtual Reality

Autoware is protected by BSD License. Please use it on your own responsibility. For safe use, we provide a ROSBAG-based simulation method for those who do not own real autonomous vehicles. In case that you use Autoware with real autonomous vehicles, **please formulate safety measures and assessment of risk before field testing.**

## License

* New BSD License
    * See LICENSE

## Spec Recommendation

- # of CPU cores: 8
- RAM size: 32GB
- Storage size: 30GB

## Requirements

- ROS indigo(Ubuntu 14.04) or ROS jade(Ubuntu 15.04)
- OpenCV 2.4.10 or higher **NOTE: As of Octber 2016, Autoware does not support OpenCV 3 or higher. Please use OpenCV 2**
- Qt 5.2.1 or higher
- CUDA(Optional)
- FlyCapture2(optional)
- Armadillo

**Please use checkout revision before 2015/OCT/21 if you use Autoware on ROS hydro or Ubuntu 13.04, 13.10.**

### Install dependencies for Ubuntu 14.04 indigo

```
% sudo apt-get install ros-indigo-desktop-full ros-indigo-nmea-msgs ros-indigo-nmea-navsat-driver ros-indigo-sound-play ros-indigo-jsk-visualization ros-indigo-grid-map
% sudo apt-get install ros-indigo-controller-manager ros-indigo-ros-control ros-indigo-ros-controllers ros-indigo-gazebo-ros-control ros-indigo-sicktoolbox ros-indigo-sicktoolbox-wrapper ros-indigo-joystick-drivers ros-indigo-novatel-span-driver
% sudo apt-get install libnlopt-dev freeglut3-dev qtbase5-dev libqt5opengl5-dev libssh2-1-dev libarmadillo-dev libpcap-dev gksu libgl1-mesa-dev
```

**NOTE: Please do not install ros-indigo-velodyne-pointcloud package. Please uninstall it if you already installed.**


### Install dependencies for Ubuntu 15.04 jade

```
% sudo apt-get install ros-jade-desktop-full ros-jade-nmea-msgs ros-jade-nmea-navsat-driver ros-jade-sound-play
% sudo apt-get install ros-jade-controller-manager ros-jade-ros-control ros-jade-ros-controllers ros-jade-gazebo-ros-control ros-jade-sicktoolbox ros-jade-sicktoolbox-wrapper ros-jade-joystick-drivers ros-jade-novatel-span-driver
% sudo apt-get install libnlopt-dev freeglut3-dev qt5-default libqt5opengl5-dev libssh2-1-dev libarmadillo-dev libpcap-dev gksu libgl1-mesa-dev
```

**NOTE: jsk_visualization and grid_map is not provided in Ubuntu15.04 Jade. Please download it from the following repository and build it by yourself.
https://github.com/jsk-ros-pkg/jsk_visualization**
https://github.com/ethz-asl/grid_map

## How to Build

Initialize ros (if required):
```
$ sudo rosdep init
$ rosdep update$ 
```
Prepare current shell for using ros tools. This will modify environment variables and prepare the ros tools for usage:
```
source /opt/ros/indigo/setup.sh
```
In the same shell invoke:
```
$ cd $HOME
$ git clone https://github.com/CPFL/Autoware.git
$ cd ~/Autoware/ros/src
$ catkin_init_workspace
$ cd ../
$ ./catkin_make_release
```
###Caffe based object detectors
CV based detectors RCNN and SSD nodes are not automatically built.

To build these nodes please follow the respective node's README
[SSD](ros/src/computing/perception/detection/packages/cv_tracker/nodes/ssd/README.md)
[RCNN](ros/src/computing/perception/detection/lib/image/librcnn/README.md)


## How to Start

```
$ cd $HOME/Autoware/ros
$ ./run
```

## For Developers

Be careful for changing files under `ros/src/sensing/drivers/lidar/packages/velodyne`. There is **subtree**.
Original repository is [here](https://github.com/CPFL/velodyne). If you change those files from this
repository, you must use **git subtree push**. (Please never change and push code if you don't understand
`git subtree` well).

GitFlow, git branching model, is introduced in Autoware repository.
- When you adding new features, you can branch off your feature branch from `develop`.  
  you can use the following command.  
  `$ git checkout -b feature/[your_branch_name] develop`
- When you find bugs in `master` branch, you can branch off your hotfix branch from `master`.  
  you can use the following command.  
  `$ git checkout -b hotfix/[your_branch_name] master`

More Details [here](http://nvie.com/posts/a-successful-git-branching-model/)

## Documents

See Autoware/docs. As of Aug 2015, we provide only Japanese documents. English documents will be added shortly.

## Main Packages

### Localization
- ndt_localizer
- icp_localizer

### Detection
- lidar_tracker
- cv_tracker
- road_wizard

### Mission (Global) Planning
- lane_planner
- way_planner
- freespace_planner

### Motion (Local) Planning
- astar_planner
- lattice_planner
- dp_planner

### Vehicle Control
- waypoint_follower
- waypoint_maker

## Research Papers for Citation

1. S. Kato, E. Takeuchi, Y. Ishiguro, Y. Ninomiya, K. Takeda, and T. Hamada. "An Open Approach to Autonomous Vehicles", IEEE Micro, Vol. 35, No. 6, pp. 60-69, 2015. [![Link](http://online.qmags.com/MIC1115/default.aspx?sessionID=7CF18C36BF00A40746B87387B&cid=3230522&eid=19656&pg=62&mode=2#pg62&mode2)](http://online.qmags.com/MIC1115/default.aspx?sessionID=7CF18C36BF00A40746B87387B&cid=3230522&eid=19656&pg=62&mode=2#pg62&mode2)

## Demo Videos

### Public Road Testing
[![Public Road Testing](http://img.youtube.com/vi/EcRdoJATdzE/0.jpg)](https://www.youtube.com/watch?v=EcRdoJATdzE)

## Instruction Videos

### Quick Start
[![Quick Start](http://img.youtube.com/vi/m-4U84K7lvg/0.jpg)](https://www.youtube.com/watch?v=m-4U84K7lvg)

### Loading Map Data
[![Loading Map Data](http://img.youtube.com/vi/EJa4PHnjdRY/0.jpg)](https://www.youtube.com/watch?v=EJa4PHnjdRY)

### Localization with GNSS
[![Localization with GNSS](http://img.youtube.com/vi/5bj7gkFlul0/0.jpg)](https://www.youtube.com/watch?v=5bj7gkFlul0)

### Localization without GNSS
[![Localization without GNSS](http://img.youtube.com/vi/ODlxMzGTJzw/0.jpg)](https://www.youtube.com/watch?v=ODlxMzGTJzw)

### Mapping
[![Mapping](http://img.youtube.com/vi/HlQ0ohxvlgA/0.jpg)](https://www.youtube.com/watch?v=HlQ0ohxvlgA)

### Detection with SSD
[![SSD](http://img.youtube.com/vi/EjamMJjkjBA/0.jpg)](https://youtu.be/EjamMJjkjBA)

### Detection with DPM
[![DPM](http://img.youtube.com/vi/P_BFQNbudlg/0.jpg)](https://youtu.be/P_BFQNbudlg)

### Detection with Euclidean Clustering
[![Clustering](http://img.youtube.com/vi/Tma2DKMxt4Y/0.jpg)](https://youtu.be/Tma2DKMxt4Y)

### Traffic Light Recognition
[![Traffic Light Recognition](http://img.youtube.com/vi/KmOdBms9r2w/0.jpg)](https://youtu.be/KmOdBms9r2w)

### Planning with ROSBAG
[![Planning with ROSBAG](http://img.youtube.com/vi/LZTCDbcjIdw/0.jpg)](https://www.youtube.com/watch?v=LZTCDbcjIdw)

### Planning with wf_simulator
[![Planning with wf_simulator](http://img.youtube.com/vi/HwB2NKqj2yg/0.jpg)](https://www.youtube.com/watch?v=HwB2NKqj2yg)

### Planning with Hybrid State A*
[![Planning with wf_simulator](http://img.youtube.com/vi/1WiqAHZHj8U/0.jpg)](https://www.youtube.com/watch?v=1WiqAHZHj8U)

### Calibration Toolkit
[![Calibration Toolkit](http://img.youtube.com/vi/pfBmfgHf6zg/0.jpg)](https://www.youtube.com/watch?v=pfBmfgHf6zg)

## Sample Data

[3D map of Moriyama in Nagoya](http://db3.ertl.jp/autoware/sample_data/sample_moriyama_data.tar.gz)

[ROSBAG data of Moriyama driving](http://db3.ertl.jp/autoware/sample_data/sample_moriyama_150324.tar.gz)

[Script for generating demo launch files of Moriyama](http://db3.ertl.jp/autoware/sample_data/my_launch.sh)

[ROSBAG data for Calibration](http://db3.ertl.jp/autoware/sample_data/kotacho-calibration-sample_20160621.bag.bz2)

## IROS 2016 Data

[ROSBAG data of Nagoya driving](http://db3.ertl.jp/autoware/sample_data/iros2016_two_vehicle_data.tar.gz)

## Contact

Autoware Developers (<autoware@googlegroups.com>)

To subscribe the Autoware Developers ML,
- If you have a Google account, go to https://groups.google.com/d/forum/autoware, and click the **Apply to Join Group** button.
- If you don't have a Google account, send an email to autoware+subscribe@googlegroups.com.
