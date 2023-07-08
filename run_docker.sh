#!/usr/bin/env bash


docker build --tag=latest .

docker images

docker run -p 8000:80 latest