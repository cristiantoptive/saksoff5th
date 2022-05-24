# Saksoff5th Docker Setup

This repository contains all the necessary files for running the demo app using docker images and containers.

It has two git submodules referencing the Client and the API repositories which must be initialized and updated before start or update when there are new changes on them.

## Prerequisites

* First download and install Git [Install Tutorial](https://www.atlassian.com/git/tutorials/install-git)
* Download and install Docker https://www.docker.com/get-started/
  * **NOTE:** Before proceed ensure that your Docker resources setup has at least 4GB of ram memory assigned to run.

## How to initialize submodules

To initialize and update the submodules run the next commands using your terminal

`git submodule update --init --recursive && git submodule update --remote`

## How to run the app
### Running the app manually

Using your terminal run:

`docker-compose build && docker-compose up -d`

to build and download all the necessary docker images and create and start all the containers. Now wait until all the process are started and navigate to http://localhost:4200/ to access the main app or http://localhost:3000/docs/ to access to the API docs.

**NOTE:** This could take several minutes (5~10) to complete the bootup routine, the first time will install all the dependencies for each project and run the DB migrations and fixtures.

**NOTE:** Ports 3000 and 4200 must be free/available to correctly run this app.

### Using the included bash files and commands

This project includes two bash files (for Unix saks.sh and for Windows saks.cmd) with some usefull commands to build, run and access the Docker containers.

#### Command to run the app

Run the next command on your Unix terminal to build the docker images and start the app:

`sh ./saks.sh build && sh ./saks.sh saks start`

#### Available commands

Use the custom saks script to run the base commands

* `saks build`   build-rebuild base docker image
* `saks start`   start all related docker instances / server
* `saks stop`    stop all related docker instances / server
* `saks bash-cli`    enter to Client docker instance bash where the app is running. (write exit to quit from the instance bash)
* `saks bash-api`    enter to API docker instance bash where the app is running. (write exit to quit from the instance bash)
* `saks test-api`   run API endpoints test suite
* `saks mysql`   enter and connect to mysql docker instance to inspect the database
