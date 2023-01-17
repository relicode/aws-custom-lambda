#!/bin/sh

URL="http://localhost:9000/2015-03-31/functions/function/invocations"

command -v jq \
  && (curl -XPOST "${URL}" -d '{"key": "value", "multiplyMe": 4}' | jq) \
  || (curl -XPOST "${URL}" -d '{"key": "value", "multiplyMe": 4}')

