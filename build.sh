#!/bin/bash

set -ex
IMAGE_NAME="waterscape/prometheus"
NEXUS_REPOSITORY="docker-hosted.nexus.wtrscape.com"
TAG="${1}"
docker build -t ${IMAGE_NAME}:"${TAG}" .
docker tag ${IMAGE_NAME}:"${TAG}" ${NEXUS_REPOSITORY}/${IMAGE_NAME}:"${TAG}"
docker push ${NEXUS_REPOSITORY}/${IMAGE_NAME}:"${TAG}"
