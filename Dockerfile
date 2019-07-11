FROM archlinux/base

MAINTAINER Benjamin Deininger "https://github.com/bdeining"

RUN useradd -m archlinuxuser -p password

RUN pacman -Syu --noconfirm

RUN pacman -Sy --noconfirm awk file tar git jdk8-openjdk sudo openssh apache-ant polkit fakeroot binutils nano wget nettle

RUN archlinux-java set java-8-openjdk

USER archlinuxuser

WORKDIR /home/archlinuxuser/

RUN wget http://apache.claz.org/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.6.tgz

RUN tar -zxvf spark-2.4.3-bin-hadoop2.6.tgz

RUN ./spark-2.4.3-bin-hadoop2.6/bin/spark-shell


# HADOOP
# RUN export HADOOP_HOME=/hadoop-3.2.0/
# RUN export HADOOP_CONF_DIR=/hadoop-3.2.0/etc/hadoop
# RUN export HADOOP_MAPRED_HOME=/hadoop-3.2.0/
# RUN export HADOOP_COMMON_HOME=/hadoop-3.2.0/
# RUN export HADOOP_HDFS_HOME=/hadoop-3.2.0/
# RUN export YARN_HOME=/hadoop-3.2.0/
# RUN export PATH=$PATH:$HOME/hadoop-3.2.0/bin