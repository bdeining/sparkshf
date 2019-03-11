FROM archlinux/base

MAINTAINER Benjamin Deininger "https://github.com/bdeining"

# User
RUN useradd -m archlinuxuser
RUN su archlinuxuser

RUN pacman -Sy --noconfirm tar
RUN pacman -Sy --noconfirm git
RUN pacman -Sy --noconfirm jdk8-openjdk


RUN git clone https://aur.archlinux.org/hadoop.git
RUN cd hadoop

# JAVA
RUN archlinux-java set java-8-openjdk

# HADOOP
RUN export HADOOP_HOME=/hadoop-3.2.0/
RUN export HADOOP_CONF_DIR=/hadoop-3.2.0/etc/hadoop
RUN export HADOOP_MAPRED_HOME=/hadoop-3.2.0/
RUN export HADOOP_COMMON_HOME=/hadoop-3.2.0/
RUN export HADOOP_HDFS_HOME=/hadoop-3.2.0/
RUN export YARN_HOME=/hadoop-3.2.0/
RUN export PATH=$PATH:$HOME/hadoop-3.2.0/bin