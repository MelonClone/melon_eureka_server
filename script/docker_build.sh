#!/usr/bin/env bash
./gradlew clean build
docker build -t melon-eureka-server:latest .
docker container stop eureka-server
docker container rm eureka-server
docker run --ip 172.19.0.101 -p 8761:8761 --name eureka-server melon-eureka-server:latest