#!/bin/bash

TIME=`date +%Y%m%d_%H%M%S`

docker build --pull $1 $2 $3 $4 -t php74 .

echo -e "\nHint: Ignore cache with --no-cache"
