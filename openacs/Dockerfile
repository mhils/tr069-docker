FROM ubuntu:14.04

COPY ./openacs /opt/openacs
RUN \
	apt-get update &&\
	apt-get install -y sudo &&\
	cd /opt/openacs/install &&\
	/opt/openacs/install/install.sh
RUN \
	cd /opt/openacs &&\
	ant -f b.xml clean make deploy

EXPOSE 8080
CMD \
	service mysql start &&\
	echo "create database openacs" | mysql -uroot &&\
	/opt/jboss/bin/run.sh -c default -b 0.0.0.0
