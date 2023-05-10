#!/usr/bin/env bash
set -e

chmod +x mvnw
./mvnw spring-boot:build-image

