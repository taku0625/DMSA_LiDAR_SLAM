#!/bin/bash

source ~/catkin_ws/devel/setup.bash

for i in {2..3}; do
  mkdir /tmp/evaluation/DCC0${i}_1000
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/DCC0${i}.bag result_dir:=/tmp/evaluation/DCC0${i}_1000 max_distance_ds:="1000"
  mkdir /tmp/evaluation/KAIST0${i}_1000
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/KAIST0${i}.bag result_dir:=/tmp/evaluation/KAIST0${i}_1000 max_distance_ds:="1000"
  mkdir /tmp/evaluation/Riverside0${i}_1000
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/Riverside0${i}.bag result_dir:=/tmp/evaluation/Riverside0${i}_1000 max_distance_ds:="1000"
done


for i in {1..3}; do
  mkdir /tmp/evaluation/DCC0${i}_50
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/DCC0${i}.bag result_dir:=/tmp/evaluation/DCC0${i}_50 max_distance_ds:="50"
  mkdir /tmp/evaluation/KAIST0${i}_50
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/KAIST0${i}.bag result_dir:=/tmp/evaluation/KAIST0${i}_50 max_distance_ds:="50"
  mkdir /tmp/evaluation/Riverside0${i}_50
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/Riverside0${i}.bag result_dir:=/tmp/evaluation/Riverside0${i}_50 max_distance_ds:="50"
done


for i in {1..3}; do
  mkdir /tmp/evaluation/DCC0${i}_30
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/DCC0${i}.bag result_dir:=/tmp/evaluation/DCC0${i}_30 max_distance_ds:="30"
  mkdir /tmp/evaluation/KAIST0${i}_30
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/KAIST0${i}.bag result_dir:=/tmp/evaluation/KAIST0${i}_30 max_distance_ds:="30"
  mkdir /tmp/evaluation/Riverside0${i}_30
  roslaunch dmsa_slam_ros mulran.launch bag_dirs:=/tmp/rosbag/Riverside0${i}.bag result_dir:=/tmp/evaluation/Riverside0${i}_30 max_distance_ds:="30"
done
