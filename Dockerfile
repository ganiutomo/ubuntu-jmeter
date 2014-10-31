#
# Gani Utomo Ubuntu Dockerfile
#
# https://github.com/ganiutomo/ubuntu
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  rm -rf /var/lib/apt/lists/*
