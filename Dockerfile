#
# Gani Utomo Ubuntu Dockerfile
#
# https://github.com/ganiutomo/ubuntu-jmeter
#

# Pull base image.
FROM ubuntu:14.04

MAINTAINER Gani Utomo <ganiutomo@gmail.com>

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install openjdk-7-jre-headless && \
  rm -rf /var/lib/apt/lists/*
  
ADD apache-jmeter-2.11.tgz /usr/local/

RUN mv /usr/local/apache-jmeter-2.11 /usr/local/jmeter

ENV PATH /usr/local/jmeter/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
