# Docker to serve GitBook

This is a docker container to serve gitbook from `book/` directory. This directory will be mounted read-write inside the container.

## Building docker image

```
docker build -t docker-gitbook .
```

## Building docker container

Following command will create new container *gitbook* for the GitBook and will start it. Note than it will take some time before gitbook will start to respond, as `gitbook-cli` will be installing most recent version of the `gitbook` npm module.

```
docker run -d -p 4000:4000 --name gitbook -v $cwd/book:/app/book docker-gitbook
```

All options are mandatory only for the first execution. Once container is created it can be started by using `docker run devbook` command.

## Stopping docker container

```
docker stop devbook
```

## Deleting container

```
docker rm -f devbook
```