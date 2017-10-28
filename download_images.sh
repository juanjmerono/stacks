#!/bin/bash
while read in; do curl -X GET 'http://'$1'/imageUpdate?image='$in -H 'Authorization: '$2'' -H 'X-Registry-Authorization: '$3''; done < images