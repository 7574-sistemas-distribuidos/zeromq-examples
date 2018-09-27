#!/bin/bash
docker run --rm --network $(docker network ls | grep request-reply | awk '{print $1}') --volume $(pwd):/tmp -it zeromq-python-base:0.0.1 bash 
