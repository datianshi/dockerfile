#!/usr/bin/env bash
set -ex

export JAVA_OPTS="-Dport.http=$PORT -Xmx382293K -XX:MaxMetaspaceSize=64M -Xss995K -Xms382293K -XX:MetaspaceSize=64M"
/usr/local/tomcat/bin/catalina.sh run
