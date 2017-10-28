# Some Swarm Stacks

Store some stack definitions to deploy in your swarm.

## Create the swarm and add some nodes on it

```
docker swarm init --advertise-addr eth0
docker swarm join ....
docker swarm join ....
....
```
*or*

[![Try in PWD](https://cdn.rawgit.com/play-with-docker/stacks/cff22438/assets/images/button.png)](http://play-with-docker.com/?stack=https://raw.githubusercontent.com/juanjmerono/stacks/master/visualizer-compose.yml&stack_name=visualizer)

Use: `docker swarm join-token worker` to get the command to add worker nodes to your swarm.

## Connect to the swarm manager and clone the repo

```
git clone https://github.com/juanjmerono/stacks.git
```

## Now pull some images from your gitlab registry

```
./download_images.sh <gitlab-token>
```
*Note:* Repeat this process on each worker too.

## Deploy the visualizer stack

```
docker stack deploy -c visualizer-compose.xml visualizer
```
*or*
```
./run_stack.sh start visualizer
```

## Now you are ready to start other stacks

```
docker stack deploy -c testingdesa-compose.xml testingdesa
```
*or*
```
./run_stack.sh start testingdesa
```
