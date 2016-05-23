FROM ubuntu:14.04

MAINTAINER LUXNETWORK Engineering <eng@luxnetwork.lu>

# Make some upgrade
RUN apt-get -y update
RUN apt-get -y dist-upgrade

# Required packages
RUN apt-get -y install git nodejs-legacy npm build-essential

# Download GenieACS
RUN cd /opt && git clone https://github.com/zaidka/genieacs.git

# Setup GenieACS
RUN cd /opt/genieacs && npm install && npm run configure && npm run compile
COPY config.json /opt/genieacs/config/config.json
