#!/bin/bash
./download_images.sh -ip $2 $4
curl -X GET 'http://'$1'/addWorker?host='$2 -H 'Authorization: '$3
