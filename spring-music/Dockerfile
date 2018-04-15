FROM     ubuntu:16.04
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ADD spring-music.jar ./
ADD start-music.sh ./
ENV SPRING_PROFILES_ACTIVE in-memory
ENTRYPOINT ["./start-music.sh"]
