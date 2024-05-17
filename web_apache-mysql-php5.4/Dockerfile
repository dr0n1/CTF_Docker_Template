FROM php:5.4-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY start.sh /start.sh
COPY src /var/www/html/
COPY data/data.sql /tmp/


RUN echo 'deb [check-valid-until=no] http://mirrors.cloud.tencent.com/debian-archive/debian/ stretch main non-free contrib' > /etc/apt/sources.list \
	&& echo 'deb-src [check-valid-until=no] http://mirrors.cloud.tencent.com/debian-archive/debian/ stretch main non-free contrib' >> /etc/apt/sources.list \
	&& a2enmod rewrite \
	&& apt-get update -y \
	&& apt-get install --force-yes -y binutils mariadb-server mariadb-client \
	&& docker-php-ext-install mysqli pdo_mysql

RUN cp /usr/src/php/php.ini-production /usr/local/etc/php/php.ini \
	&& sh -c 'mysqld_safe &' \
	&& sleep 3s \
	&& mysqladmin -uroot password 'root' \
	&& chmod +x /start.sh \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]