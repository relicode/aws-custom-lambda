#!/bin/sh

set -e

NODE_ENV=development ./build.sh

docker run \
  -v "$(pwd -P)"/lambda-rie:/aws-lambda \
  -p 9000:8080 \
  --entrypoint /aws-lambda/aws-lambda-rie \
  myfunction:latest \
  /usr/local/bin/npx aws-lambda-ric index.handler
