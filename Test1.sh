#!/bin/bash
#Test1 - Turtle Operation

#Moving the turtle up.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"

#Moving the turtle to the left.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -2.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"

#Clearing the marks made.
ros2 service call /clear std_srvs/srv/Empty

#Starts the turtle at an angle pointing up at the top right corner.
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 0.5}"

#Moving turtle diagonally to  its right side.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"

#Rotating the turtle slightly to the right.
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 0.7}"

#Moving turtle diagonally forward.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 1.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"

#Turning the turtle slightly to the left.
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 0.5}"

#Moving turtle forward to it's right.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -1.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"

#Turning the turtle slightly to the leftt.
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 0.7}"

#Moving turtle diagonally forward.
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}"



