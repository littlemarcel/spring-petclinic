#!/usr/bin/env bash
set -e

docker rm petclinic_container --force || true
docker run --name petclinic_container -d -p 8081:8080 docker.io/library/spring-petclinic:"$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)"
