#!/bin/sh

set -e
SCRIPT_PATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
cd "${SCRIPT_PATH}"

BASE_URL="https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie"
URL="${BASE_URL}$(node -e "process.exit(['aarch64', 'arm64'].includes(process.arch) ? 0 : 1)" && echo '-arm64')"

[ ! -d lambda-rie ] && mkdir lambda-rie

curl -Lo lambda-rie/aws-lambda-rie "${URL}"
chmod +x lambda-rie/aws-lambda-rie
