#!/bin/bash
docker build -f base.dockerfile -t grpc-base:0.0.1 .
docker build -f golang-base.dockerfile -t grpc-golang-base:0.0.1 .
