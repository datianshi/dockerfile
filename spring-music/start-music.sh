#!/usr/bin/env bash
set -ex

echo "Profile is set to $SPRING_PROFILES_ACTIVE"
java -jar spring-music.jar
