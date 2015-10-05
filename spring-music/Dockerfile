FROM     tomcat:8.0.27-jre8
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

ENV TOMCAT_HOME /usr/local/tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
RUN rm -rf /usr/local/tomcat/conf/server.xml
RUN rm /etc/alternatives/java && cd /usr/lib/jvm/ && rm -rf * && wget https://download.run.pivotal.io/openjdk/trusty/x86_64/openjdk-1.8.0_60.tar.gz && tar -xvf openjdk-1.8.0_60.tar.gz && ln -s /usr/lib/jvm/bin/java /etc/alternatives/java && ln -s /usr/lib/jvm/bin/jar /usr/bin/jar
RUN mkdir /usr/local/tomcat/webapps/ROOT
ADD spring-music.war /usr/local/tomcat/webapps/ROOT/
ADD server.xml /usr/local/tomcat/conf/
ADD start-tomcat.sh /usr/local/tomcat/bin/
RUN cd /usr/local/tomcat/webapps/ROOT && unzip spring-music.war && rm -rf spring-music.war
#RUN adduser --disabled-password --gecos "" vcap
#RUN chown -R vcap /usr/local/tomcat
RUN chmod -R og+rw /usr/local/tomcat
ENTRYPOINT ["/usr/local/tomcat/bin/start-tomcat.sh"]
