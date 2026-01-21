#!/bin/bash
docker run --net=host -it --rm \
           --privileged \
           --gpus all \
           -e DISPLAY=$DISPLAY \
           -v $HOME/.Xauthority:/root/.Xauthority \
           -v $(realpath ..):/root/catkin_ws/src/DMSA_LIDAR_SLAM \
           -v /home/nakao/dataset/rosbag/MulRan:/tmp/rosbag \
           -v /home/nakao/dataset/evaluation/MulRan/DMSA_LIDAR_SLAM:/tmp/evaluation \
           $@ \
           dmsa_lidar_slam
