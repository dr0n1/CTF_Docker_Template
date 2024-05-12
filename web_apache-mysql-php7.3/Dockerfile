FROM php:7.3-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY start.sh /start.sh
COPY src /var/www/html/


RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& a2enmod rewrite \
	&& apt-get update -y \
	&& apt-get install -y mariadb-server \
	&& docker-php-ext-install mysqli pdo_mysql

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
	&& sh -c 'mysqld_safe &' \
	&& sleep 3s \
	&& mysqladmin -uroot password 'root' \
	&& chmod +x /start.sh \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]