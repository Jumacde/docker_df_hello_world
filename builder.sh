#!/bin/bash

# build container
# image name: hello_image
docker build -t hello_image \
	-f Dockerfile \
	.

# stop and remove the docker container.
docker stop hello_container >/dev/null 2>&1
docker rm hello_container >/dev/null 2>&1

# run docker 
# docker container name: hello_container.
docker run \
	--name hello_container \
	-p 8080:80 \
	hello_image
