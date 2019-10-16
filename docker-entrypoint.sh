#!/bin/bash

set -e

archives=( "/wp-archive/*.zip" )
archive_count=${#archives[@]}

if [ ${archive_count} -eq 1 ]; then
  cp /wp-archive/installer.php /var/www/html/installer.php
  cp /wp-archive/*_archive.zip /var/www/html/
  chown -R www-data:www-data /var/www/html
fi

exec "$@"
