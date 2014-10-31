#
# Gani Utomo Ubuntu Dockerfile
#
# https://github.com/ganiutomo/ubuntu-jmeter
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install openjdk-7-jre-headless && \
  rm -rf /var/lib/apt/lists/*
  
ADD apache-jmeter-2.11.tgz apache-jmeter-2.11.tgz

RUN \
  tar -xzf apache-jmeter-2.11.tgz /usr/local/ && \
  mv /usr/local/apache-jmeter-2.11 /usr/local/jmeter

ENV PATH=$PATH:/usr/local/jmeter/bin