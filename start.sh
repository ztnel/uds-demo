#!/bin/bash
IMAGE=linux

docker build -t "$IMAGE" .
docker run --rm -it --mount type=bind,source="$(pwd)",target=/app "$IMAGE"