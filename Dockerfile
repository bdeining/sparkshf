FROM archlinux/base

MAINTAINER Benjamin Deininger "https://github.com/bdeining"

RUN pacman -Sy --noconfirm jdk8-openjdk
RUN pacman -Sy --noconfirm wget
RUN wget http://apache.claz.org/hadoop/common/hadoop-3.2.0/hadoop-3.2.0.tar.gz

# JAVA
ARG JAVA_MAJOR_VERSION=8
ARG JAVA_UPDATE_VERSION=202
ARG JAVA_BUILD_NUMBER=08
ENV JAVA_HOME /usr/jdk1.${JAVA_MAJOR_VERSION}.0_${JAVA_UPDATE_VERSION}