FROM    ubuntu:16.04
MAINTAINER Shaozhen Ding "dsz0111@gmail.com"

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y dnsutils
RUN apt-get install -y tcpdump
RUN apt-get install -y netcat
RUN apt-get install -y net-tools
RUN apt-get install -y iproute2
RUN apt-get install -y iputils-ping
RUN apt-get install -y inetutils-traceroute
RUN apt-get install -y bridge-utils
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y python3.6 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install awscli
RUN pip3 install boto3
