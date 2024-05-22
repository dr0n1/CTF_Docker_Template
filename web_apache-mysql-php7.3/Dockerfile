FROM php:7.3-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY config/start.sh /start.sh
COPY config/php.ini /usr/local/etc/php/php.ini
COPY data/data.sql /tmp/
COPY src /var/www/html/


RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& a2enmod rewrite \
	&& apt-get update -y \
	&& apt-get install -y libzip-dev libwebp-dev libgd-dev \
	&& apt-get install -y mariadb-server mariadb-client \
	&& docker-php-ext-install mysqli pdo_mysql zip gd exif

RUN sh -c 'mysqld_safe &' \
	&& sleep 3s \
	&& mysqladmin -uroot password 'root' \
	&& chmod +x /start.sh \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]