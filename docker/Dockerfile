FROM ros:noetic-perception

ENV CATKIN_WS=/root/catkin_ws
ENV LIBRARY=/root/library

RUN mkdir -p $CATKIN_WS/src
RUN mkdir -p $LIBRARY

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR $CATKIN_WS
COPY ./ $CATKIN_WS/src/DMSA_LIDAR_SLAM
RUN ./src/DMSA_LIDAR_SLAM/helpers/updateEigenUbuntu20.04.sh

RUN /bin/bash -c "source /opt/ros/noetic/setup.bash; catkin_make" && \
    sed -i '/exec "$@"/i source "/root/catkin_ws/devel/setup.bash"' /ros_entrypoint.sh
