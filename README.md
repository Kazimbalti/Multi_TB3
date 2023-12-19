# Multi_TB3
This is the repository for Multi TB3 navigation in ROS2 and NAV2 simulation Environment

## Initial Installation
## Terminal 1
sudo apt install ros-<ros2-distro>-navigation2

sudo apt install ros-<ros2-distro>-nav2-bringup

sudo apt install ros-<ros2-distro>-turtlebot3*

source /opt/ros/<ros2-distro>/setup.bash

export TURTLEBOT3_MODEL=waffle

export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/<ros2-distro>/share/turtlebot3_gazebo/models

## Terminal 1
cd Multi_TB3

colcon build

source install/setup.bash

ros2 launch turtlebot3_gazebo multi_robot.launch.py

## Terminal 2
cd Multi_TB3

source install/setup.bash

ros2 launch localization_server multi_localization.launch.py

## Terminal 3
rviz2

Open the rviz2 of multi_riviz_config.rviz from rviz2 folder inside src

Provide the initial pose of both the robots according to the position in Gazebo

## Terminal 4
cd Multi_TB3

source install/setup.bash

ros2 launch path_planner_server multi_pathplanner.launch.py
