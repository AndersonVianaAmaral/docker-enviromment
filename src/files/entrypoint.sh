#!/bin/sh
composer install
php artisan key:generate 
dockerize -template ./ENTRYPOINT/.env:.env -wait tcp://database:3306 -timeout 40s
php artisan migrate
php artisan serve --host=0.0.0.0 --port=8000