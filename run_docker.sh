#!/usr/bin/env bash


docker build --tag=image_demo .

docker images

docker run -p 8000:80 image_demo