#!/bin/bash

docker run -d -p 9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker
DOCKERUI=$(docker port $(docker ps -lq) 9000)
echo $DOCKERUI
open http://$DOCKERUI
