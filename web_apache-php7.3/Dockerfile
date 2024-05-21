FROM php:7.3-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY config/start.sh /start.sh
COPY config/php.ini /usr/local/etc/php/php.ini
COPY src /var/www/html/

RUN a2enmod rewrite \
	&& chmod +x /start.sh \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]
