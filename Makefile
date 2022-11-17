# Makefile for Docker swarm deploy
# Usage:
#   make build push deploy
#
# You may also need AWS_PROFILE so you can access the container registry:
#
#   AWS_PROFILE=telemarq make build push deploy

COMPOSE_FILE := docker-compose-production.yml
STACK_NAME := redmine_tidy

.PHONY: build push deploy


# By default 'build' does not use the docker layer cache.

build:
	docker-compose -f ${COMPOSE_FILE} build

push:
	docker-compose -f ${COMPOSE_FILE} push

# If the images have been built elsewhere, e.g. by the CI system, we can
# just get them from the repository.
pull:
	docker-compose -f ${COMPOSE_FILE} pull

deploy:
	docker -c telemarq stack deploy -c $(COMPOSE_FILE) ${STACK_NAME} --with-registry-auth

# Shut down the stack
remove:
	docker -c telemarq stack rm  ${STACK_NAME}


