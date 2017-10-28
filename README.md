# Some Swarm Stacks

Store some stack definitions to deploy in your swarm.

## Create the swarm and add some nodes on it

```
docker swarm init --advertise-addr eth0
docker swarm join ....
docker swarm join ....
....
```

## Connect to the swarm manager and clone the repo

```
git clone https://github.com/juanjmerono/stacks.git
```

## Deploy the visualizer stack

```
docker pull yoanyo/swarm-visualizer:latest
docker stack deploy -c visualizer-compose.xml visualizer
```
*or*
```
./run_stack.sh start visualizer
```

## Now you can pull images from your gitlab registry

```
curl -X GET 'http://swarm-manager:9090/imageUpdate?image=<image-tag>' \
  -H 'Authorization: <visualizer-token>' \
  -H 'X-Registry-Authorization: <gitlab-token>'
```
*or*
```
./download_images.sh swarm-manager:9090 visualizer-token gitlab-token
```

## Now you are ready to start other stacks

```
docker stack deploy -c testingdesa-compose.xml testingdesa
```
*or*
```
./run_stack.sh start testingdesa
```
