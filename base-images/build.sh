#!/bin/bash

# Base images
docker build -f base.dockerfile -t zeromq-base:0.0.1 .
docker build -f golang-base.dockerfile -t zeromq-golang-base:0.0.1 .
docker build -f python-base.dockerfile -t zeromq-python-base:0.0.1 .