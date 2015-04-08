FROM     tomcat:8.0
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

ENV TOMCAT_HOME /usr/local/tomcat
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN rm -rf /usr/local/tomcat/webapps/*
RUN mkdir /usr/local/tomcat/webapps/ROOT
RUN ls -lrta
RUN curl -o /usr/local/tomcat/webapps/ROOT/spring-music.war https://s3.amazonaws.com/spring-music/spring-music.war
RUN cd /usr/local/tomcat/webapps/ROOT && jar -xvf spring-music.war && rm -rf spring-music.war
#RUN curl -o /usr/local/spring-music.war https://s3.amazonaws.com/spring-music/spring-music.war
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
