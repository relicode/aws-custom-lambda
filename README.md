# Custom lambda

## What is it?

A demo application that sets up a custom Alpine/Nodejs container and provides scripts for testing the container.

### Requirements

Nodejs, docker, curl, aws-lambda-rie

### Setup

Install local aws-lambda rie with `./dl-lambda-rie.sh` script.

### Development

1. Build and start container in development mode `./dev.sh`
2. Invoke the lambda within the container with `./invoke.sh`
