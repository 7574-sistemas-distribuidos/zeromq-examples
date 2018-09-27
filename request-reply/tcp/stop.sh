#!/bin/bash
docker-compose stop
docker-compose down

# docker rm -f $(docker ps -a | grep request-reply_ | awk '{print $1'})
