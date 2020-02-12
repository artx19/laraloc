#!/usr/bin/env bash

if [ ! -d laradock ]; then
    git clone --branch "v9.6" https://github.com/Laradock/laradock.git
fi

printf "Enter project name: " && read title

cp -f laradock/env-example laradock/.env
sed -i '' 's+APP_CODE_PATH_HOST=../+APP_CODE_PATH_HOST=../../app/+g' laradock/.env
sed -i '' 's+DATA_PATH_HOST=~/.laradock/data+DATA_PATH_HOST=./data+g' laradock/.env
sed -i '' "s+COMPOSE_PROJECT_NAME=laradock+COMPOSE_PROJECT_NAME=${title}+g" laradock/.env

echo "Laradock for $title installed"

