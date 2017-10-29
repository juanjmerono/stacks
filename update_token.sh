#!/bin/bash
curl -X GET 'http://'$1'/updateToken' -H 'Authorization: '$2 -H 'NewAuthorization: '$3
