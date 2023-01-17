#!/bin/sh

set -e
SCRIPT_PATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
cd "${SCRIPT_PATH}"

docker build --build-arg NODE_ENV="${NODE_ENV:-production}" -t myfunction:latest .
