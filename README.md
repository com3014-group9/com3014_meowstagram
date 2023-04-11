# com3014_meowstagram
This repository builds and runs the whole app

## Cloning
Since the microservices are linked as git submodules, extra steps are needed to correctly clone the repository.

Option one is to clone the submodules along with the repository, using `git clone --recurse-submodules https://github.com/com3014-group9/com3014_meowstagram.git`

Option two is to first clone the repository without submodules using `git clone https://github.com/com3014-group9/com3014_meowstagram.git`, and then clone the submodules using `git submodule update --init --recursive`

## Pulling changes
When new changes are pulled, the submodules must be updated at the same time. Either use `git pull --recurse-submodules` to do this in one step or use `git pull` and then `git submodule update --init --recursive`.