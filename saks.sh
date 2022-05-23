#!/bin/sh -e

for i do
  if [ "$i" = "build" ];
  then
    echo BUILDING DOCKER IMAGES
    exec docker-compose build
  fi

  if [ "$i" = "start" ];
  then
    echo RUNNING DOCKER INSTANCES
    exec docker-compose up -d
  fi

  if [ "$i" = "stop" ];
  then
    echo STOPPING DOCKER INSTANCES
    exec docker-compose down
  fi

  if [ "$i" = "bash-cli" ];
  then
    echo SAKSOFF5TH CLIENT BASH
    exec docker exec -it client bash
  fi

  if [ "$i" = "bash-api" ];
  then
    echo SAKSOFF5TH BACKEND BASH
    exec docker exec -it api bash
  fi

  if [ "$i" = "test-api" ];
  then
    echo SAKSOFF5TH API TEST
    exec docker exec -it api bash -c "npm run test"
  fi

  if [ "$i" = "mysql" ];
  then
    echo SAKSOFF5TH MYSQL BASH
    exec docker exec -it db mysql -uroot -psecurerootpassword
  fi
done
