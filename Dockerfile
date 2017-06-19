FROM php:7.1.6-apache


INTAINER robbievanderveen@gmail.com


RUN  pecl install mongodb \
	&& pecl install xdebug-beta \
	&& docker-php-ext-enable xdebug

RUN echo "extension=mongodb.so" > $PHP_INI_DIR/conf.d/mongodb.ini
