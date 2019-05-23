FROM     ubuntu:18.04
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y openssh-client
RUN apt-get install -y net-tools iproute2
RUN apt-get install -y dnsutils
ADD spring-music.jar ./
ADD start-music.sh ./
ENV SPRING_PROFILES_ACTIVE in-memory
ENTRYPOINT ["./start-music.sh"]
