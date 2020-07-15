#!/usr/bin/env bash
docker run --ip 172.19.0.101 -p 8761:8761 --name eureka-server melon-eureka-server:latest