FROM     tomcat:8.0
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

ENV TOMCAT_HOME /usr/local/tomcat
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN rm -rf /usr/local/tomcat/webapps/*
RUN rm -rf /usr/local/tomcat/conf/server.xml
RUN mkdir /usr/local/tomcat/webapps/ROOT
ADD spring-music.war /usr/local/tomcat/webapps/ROOT/
ADD server.xml /usr/local/tomcat/conf/
ADD start-tomcat.sh /usr/local/tomcat/bin/
RUN cd /usr/local/tomcat/webapps/ROOT && jar -xvf spring-music.war && rm -rf spring-music.war
RUN useradd vcap
RUN chown -R vcap /usr/local/tomcat
CMD ["/usr/local/tomcat/bin/start-tomcat.sh"]
