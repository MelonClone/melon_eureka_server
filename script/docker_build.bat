@echo off
pushd "%~dp0"

cd ../
call ./gradlew.bat clean build
cd ./docker
docker build -t melon-eureka-server:latest .
docker container stop eureka-server
docker container rm eureka-server
docker run -d --ip 172.19.0.101 -p 8761:8761 --name eureka-server melon-eureka-server:latest
cd ../

:exit
popd
@echo on