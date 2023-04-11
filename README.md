# com3014_meowstagram
This repository builds and runs the whole app

## Requirements
The following packages must be configured for your system:
- `make`
- `docker`
- `docker compose`

Please consult the relevant documentation for guidance setting these up
## Cloning
Since the microservices are linked as git submodules, extra steps are needed to correctly clone the repository.

Option one is to clone the submodules along with the repository, using `git clone --recurse-submodules https://github.com/com3014-group9/com3014_meowstagram.git`

Option two is to first clone the repository without submodules using `git clone https://github.com/com3014-group9/com3014_meowstagram.git`, and then clone the submodules using `git submodule update --init --recursive`

## Pulling changes
When new changes to this repository are pulled, the submodules must be updated at the same time. Either use `git pull --recurse-submodules` to do this in one step or use `git pull` and then `git submodule update --init --recursive`.

## Updating the submodules
The above instructions will pull whichever versions of the submodules were last committed to this repository. To update to the latest versions of the submodules, use `git submodule update --remote`. If you only want to update one submodule, use `git submodule update --remote <submodule name>`

## Building and running the app
A Makefile is provided to build and run the app. It has been tested on an Ubuntu system, and may or may not work on other platforms.

Since the Makefile makes calls to docker commands, it is likely that you will need to use `sudo make` as opposed to `make`.

Each microservice has `make` targets to build, start, stop and clean the service. You can either build and start the microservices individually or all at once.

To target all the services at once, use
- `make build-all`
- `make start-all`
- `make stop-all`
- `make clean-all`

To target individual services, you can use
- `make build-auth`
- `make start-auth`
- `make stop-auth`
- `make clean-auth`
- `make build-frontend`
- `make start-frontend`
- `make stop-frontend`
- `make clean-frontend`
- `make build-image-storage`
- `make start-image-storage`
- `make stop-image-storage`
- `make clean-image-storage`
- `make build-profile`
- `make start-profile`
- `make stop-profile`
- `make clean-profile`