# Docker infrastructure to run GenieACS

Build and create a production ready GenieACS using containers to isolate
processes and data.

This will setup all the requirements to run GenieACS and its GUI including
MongoDB and Redis.

## Requirements

  * [docker](https://docs.docker.com/engine/installation/)
  * [docker-compose](https://docs.docker.com/compose/overview/)

## Building steps

Build the **genieacs-base** container. This container will be used as a base
for each GenieACS process.
`sudo docker build -t genieacs-base ./genieacs-base`

Then, bring the infrastructure up with docker-compose.
`sudo docker-compose up -d`

## Removing steps

Stop all the containers.
`sudo docker-compose stop`

Remove all containers.
`sudo docker-compose rm --all`

You can also remove images using the `docker rmi` command.
