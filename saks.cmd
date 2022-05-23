@echo off
set action=%1

if "%action%"=="build" (
  echo "BUILDING DOCKER IMAGES"
  start docker-compose build
)

if "%action%"=="start" (
  echo "RUNNING DOCKER INSTANCES"
  start docker-compose up -d
)

if "%action%"=="stop" (
  echo "STOPPING DOCKER INSTANCES"
  start docker-compose down
)

if "%action%"=="bash-cli" (
  echo "SAKSOFF5TH CLIENT BASH"
  start docker exec -it client bash
)

if "%action%"=="bash-api" (
  echo "SAKSOFF5TH BACKEND BASH"
  start docker exec -it api bash
)

if "%action%"=="test-api" (
  echo "SAKSOFF5TH BACKEND BASH"
  start docker exec -it api bash -c "npm run test"
)

if "%action%"=="mysql" (
  echo "SAKSOFF5TH MYSQL BASH"
  start docker exec -it db mysql -uroot -psecurerootpassword
)
