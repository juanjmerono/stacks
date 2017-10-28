#!/bin/bash
docker run --rm -it -v ${PWD}:/app -w /app node:8.2.1-alpine npm install
docker run --rm -it -v ${PWD}:/app -v /var/run/docker.sock:/var/run/docker.sock -w /app node:8.2.1-alpine node download.js $*
