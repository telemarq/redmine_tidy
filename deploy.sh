#! /bin/bash
docker --context telemarq stack deploy -c docker-compose-production.yml redmine_tidy
