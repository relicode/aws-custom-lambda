#!/bin/sh

set -e
SCRIPT_PATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
cd "${SCRIPT_PATH}"

[ -z "$NO_BUILD" ] && NODE_ENV=development ./build.sh

[ ! -d lambda-rie ] && ./dl-lambda-rie.sh

docker run \
  -v "$(pwd -P)/lambda-rie:/aws-lambda:ro" \
  -p 9000:8080 \
  --entrypoint /aws-lambda/aws-lambda-rie \
  myfunction:latest \
  /usr/local/bin/npx aws-lambda-ric index.handler
