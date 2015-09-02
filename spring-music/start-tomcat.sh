#!/usr/bin/env bash
set -ex

export JAVA_OPTS="-Dport.http=$PORT"
/usr/local/tomcat/bin/catalina.sh run
