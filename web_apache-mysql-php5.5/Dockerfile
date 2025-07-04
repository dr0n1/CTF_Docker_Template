FROM php:5.5-apache

LABEL Organization="Rml" Author="dr0n1 <dr0n6666x@gmail.com>"

COPY config/start.sh /start.sh
COPY config/php.ini /usr/local/etc/php/php.ini
COPY data/data.sql /tmp/
COPY src /var/www/html/


RUN echo 'deb [check-valid-until=no] http://mirrors.cloud.tencent.com/debian-archive/debian/ stretch main non-free contrib' > /etc/apt/sources.list \
	&& echo 'deb-src [check-valid-until=no] http://mirrors.cloud.tencent.com/debian-archive/debian/ stretch main non-free contrib' >> /etc/apt/sources.list \
	&& a2enmod rewrite \
	&& apt-get update -y \
	&& apt-get install --force-yes -y libzip-dev libwebp-dev libgd-dev libpng-dev libjpeg-dev \
	&& apt-get install --force-yes -y binutils mariadb-server mariadb-client \
	&& docker-php-ext-configure gd --with-freetype-dir --with-jpeg-dir --with-webp-dir \
	&& docker-php-ext-install mysqli pdo_mysql zip gd exif gettext

RUN sh -c 'mysqld_safe &' \
	&& sleep 3s \
	&& mysqladmin -uroot password 'root' \
	&& chmod +x /start.sh \
	&& chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]