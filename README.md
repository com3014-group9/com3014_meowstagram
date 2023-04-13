# com3014_meowstagram
This repository builds and runs the whole app

## Requirements
The following packages must be configured for your system:
- `make`
- `git`
- `docker`
- `docker compose`

Please consult the relevant documentation for guidance setting these up

## Building and running the app
A Makefile is provided to build and run the app. It has been tested on an Ubuntu system, and may or may not work on other platforms.

Since the Makefile makes calls to docker commands, it is likely that you will need to use `sudo make` as opposed to `make`.

Each microservice has `make` targets to build, start, stop, test and clean the service. You can either build and start the microservices individually or all at once.

The latest versions of the microservices will be pulled from GitHub as part of the build process.

To target all the services at once, use
- `make build-all`
- `make start-all`
- `make stop-all`
- `make test-all`
- `make clean-all`

To target individual services, you can use
- `make build-auth`
- `make start-auth`
- `make stop-auth`
- `make test-auth`
- `make clean-auth`
- `make build-frontend`
- `make start-frontend`
- `make stop-frontend`
- `make test-frontend`
- `make clean-frontend`
- `make build-image-storage`
- `make start-image-storage`
- `make stop-image-storage`
- `make test-image-storage`
- `make clean-image-storage`
- `make build-profile`
- `make start-profile`
- `make stop-profile`
- `make test-profile`
- `make clean-profile`