FROM node:0.10

MAINTAINER LUXNETWORK Engineering <eng@luxnetwork.lu>

# Required packages
RUN apt-get -y install git

# Download GenieACS
RUN cd /opt && git clone https://github.com/zaidka/genieacs.git

# Setup GenieACS
WORKDIR /opt/genieacs
RUN npm install && npm run configure && npm run compile
COPY config.json config/config.json
