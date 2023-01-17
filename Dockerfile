ARG NODE_ENV="production"

### BUILD IMAGE ###

FROM node:18-buster as builder

ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV

WORKDIR /build
COPY app .

RUN \
  apt-get update && \
  apt-get install -y g++ make cmake unzip libcurl4-openssl-dev && \
  npm install

### END BUILD IMAGE ###

FROM node:18-alpine3.16

ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV

RUN apk add -U libidn2
WORKDIR /function
COPY --from=builder /build .

ENTRYPOINT ["/usr/local/bin/npx", "aws-lambda-ric"]
CMD ["index.handler"]
