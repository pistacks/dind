# dind
Docker in Docker (ARM)

## Docker Hub

Docker:

- [pistacks/docker:19.03.0](https://hub.docker.com/r/pistacks/docker)

Docker-in-Docker:

- [pistacks/docker:dind-19.03.0](https://hub.docker.com/r/pistacks/docker)

## Usage

Docker:

```
$ docker run --privileged -it -v /var/run/docker.sock:/var/run/docker.sock pistacks/docker:19.03.0 ps
CONTAINER ID        IMAGE                         COMMAND                  CREATED             STATUS                  PORTS               NAMES
```

DiD:

```
$ docker run --privileged --name did -itd pistacks/docker:dind-19.03.0
$ docker exec -it did sh
$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```
