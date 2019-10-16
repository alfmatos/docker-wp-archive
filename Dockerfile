FROM wordpress:latest

VOLUME /var/www/html

COPY ./wp-archive /wp-archive
COPY ./docker-entrypoint.sh /usr/local/bin/archive-entrypoint.sh

ENTRYPOINT ["archive-entrypoint.sh"]
CMD ["apache2-foreground"]
