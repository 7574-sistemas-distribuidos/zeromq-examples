#!/bin/bash
docker run --rm --volume $(pwd):/tmp --name inproc_example -it zeromq-python-base:0.0.1 bash 
