cmake_minimum_required(VERSION 3.0.2)
project(autlab2)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  controller_manager
  dynamic_reconfigure
  effort_controllers
  gazebo_plugins
  gazebo_ros
  gazebo_ros_control
  joint_state_controller
  joint_state_publisher
  pcl_conversions
  pcl_ros
  position_controllers
  robot_state_publisher
  rospy
)

catkin_package()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

