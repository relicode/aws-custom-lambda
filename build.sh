#!/bin/sh

docker build --build-arg NODE_ENV="${NODE_ENV:-production}" -t myfunction:latest .
