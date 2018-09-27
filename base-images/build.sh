#!/bin/bash
docker build -f base.dockerfile -t zeromq-base:0.0.1 .
docker build -f python-base.dockerfile -t zeromq-python-base:0.0.1 .
