# Custom lambda

## What is it?

A demo application that sets up a custom Alpine/Nodejs container and provides scripts for testing the container.

### Requirements

Curl, docker, nodejs

### Setup

Install local aws-lambda rie with `./dl-lambda-rie.sh` script.

### Usage

1. Build and start container in development mode `./dev.sh`
2. Invoke the lambda within the container with `./invoke.sh`

### Screenshot

![Demo container](https://github.com/relicode/aws-custom-lambda/blob/master/media/demo-container.png?raw=true)

