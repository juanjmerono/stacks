#!/bin/bash
if [ $1 == "start" ]; then
	docker stack deploy -c $2-compose.yml $2
fi
if [ $1 == "stop" ]; then
	docker stack down $2
fi
