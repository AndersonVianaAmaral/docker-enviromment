#!/bin/sh
dockerize -template ./fileToChange/nginx.conf:nginx.conf -wait tcp://php-app:9000 -timeout 120s
nginx -g "daemon off;"