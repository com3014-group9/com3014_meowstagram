# com3014_meowstagram
This repository provides scripts to build and run the Meowstagram app.

The repositories for the individual microservices that make up the app can be found by following these links:
- [Frontend](https://github.com/com3014-group9/com3014_frontend)
- [Authentication Service](https://github.com/com3014-group9/com3014_auth)
- [Image Storage Service](https://github.com/com3014-group9/com3014_image_storage)
- [Profile Service https](https://github.com/com3014-group9/com3014_profile)
- [Image Tagging Service](https://github.com/com3014-group9/com3014_image_tagging)


## Requirements
The following packages must be configured for your system:
- `make`
- `sh`
- `git`
- `docker`
- `docker compose`

Please consult the relevant documentation for guidance setting these up. If you are using Ubuntu, most of these packages should already be installed.

IMPORTANT: The Makefile is written with docker compose v2 in mind, invoked using `docker compose`. If you install docker compose v1, which is invoked using `docker-compose`, the Makefile will not work.

## Building and running the app
A Makefile is provided to build and run the app. It has been tested on an Ubuntu system, and may or may not work on other platforms.

Since the Makefile makes calls to docker commands, it is likely that you will need to use `sudo make` as opposed to `make`.

Each microservice has `make` targets to build, start, stop, test and clean the service. You can either build and start the microservices individually or all at once.

The latest versions of the microservices will be pulled from GitHub as part of the build process.

To target the app as a whole, use the following `make` targets:
- `make build-all`
- `make start-all`
- `make stop-all`
- `make test-all`
- `make clean-all`

An example usage would be:
- `sudo make build-all` - build the app
- `sudo make start-all` - start the app
- `sudo make stop-all` - stop the app once you are done with it

Once the app is running, it can be accessed at `http://localhost:4173/`

To target individual services, the following additional `make` targets are provided:
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
- `make build-image-tagging`
- `make start-image-tagging`
- `make stop-image-tagging`
- `make test-image-tagging`
- `make clean-image-tagging`
