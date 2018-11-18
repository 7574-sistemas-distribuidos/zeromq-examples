#!/bin/bash
docker run --rm --network $(docker network ls | grep tcp_default | awk '{print $1}') --volume $(pwd):/tmp -it zeromq-golang-base:0.0.1 bash 
