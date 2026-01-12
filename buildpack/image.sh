#!/usr/bin/env bash
set -e

IMAGE_NAME=${IMAGE_NAME:-etl-internal}
IMAGE_TAG=${IMAGE_TAG:-latest}

echo "Building OCP-compatible image: $IMAGE_NAME:$IMAGE_TAG"

mkdir -p etl-build
cp -r /tmp/etl-build/* etl-build/

docker build \
  -f docker/Dockerfile.ocp \
  -t ${IMAGE_NAME}:${IMAGE_TAG} .

echo "Image build complete"
