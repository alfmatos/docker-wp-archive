#!/usr/bin/env bash

IMAGE_NAME=$1


docker cp *_archive.zip $IMAGE_NAME:/var/www/html
docker cp installer.php $IMAGE_NAME:/var/www/html
docker exec -it $IMAGE_NAME rm /var/www/html/wp-config.php
docker exec -it $IMAGE_NAME chown www-data:www-data -R /var/www/html/


