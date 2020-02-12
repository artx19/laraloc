#!/usr/bin/env bash

#!/usr/bin/env bash
cd laradock

docker-compose exec workspace php artisan storage:link
docker-compose exec mysql mysql -h 127.0.0.1 -uroot -proot -e "CREATE DATABASE IF NOT EXISTS \`default\` COLLATE 'utf8_general_ci';";
docker-compose exec mysql mysql -h 127.0.0.1 -uroot -proot -e "CREATE DATABASE IF NOT EXISTS \`test\` COLLATE 'utf8_general_ci';";
docker-compose exec workspace php artisan migrate:fresh
docker-compose exec workspace php artisan db:seed --seed
docker-compose exec workspace php artisan passport:client --personal --name=web