#!/bin/sh

set -e
SCRIPT_PATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
cd "${SCRIPT_PATH}"

URL="http://localhost:9000/2015-03-31/functions/function/invocations"

command -v jq \
  && (curl -XPOST "${URL}" -d '{"key": "value", "multiplyMe": 4}' | jq) \
  || (curl -XPOST "${URL}" -d '{"key": "value", "multiplyMe": 4}')
