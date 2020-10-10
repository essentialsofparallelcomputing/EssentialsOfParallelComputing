#!/bin/sh
docker kill $(docker ps -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q -f dangling=true)
docker rmi -f $(docker images -q)

