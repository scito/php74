#!/bin/bash

TIME=`date +%Y%m%d_%H%M%S`

docker build --pull $1 $2 $3 $4 -t php74 .

docker build --pull $1 $2 $3 $4 -t php74-apache -f Dockerfile_apache .

echo -e "\nHint: Ignore cache with --no-cache"

# docker tag php74 php74:7.4.7
# docker tag php74-apache php74-apache:7.4.7
