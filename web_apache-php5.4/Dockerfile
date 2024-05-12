FROM php:5.4-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY start.sh /start.sh
COPY src/ /var/www/html/

RUN a2enmod rewrite \
	&& chmod +x /start.sh \
	&& cp /usr/src/php/php.ini-production /usr/local/etc/php/php.ini \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]
