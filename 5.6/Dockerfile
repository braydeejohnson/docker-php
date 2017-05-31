FROM debian:jessie

MAINTAINER "Braydee Johnson" <braydee@braydeejohnson.com>

RUN \
  apt-get update && \
  apt-get install -y \
  curl \
  wget \
  git \
  vim

RUN apt-get update -y && \
	apt-get install -y \
	php5-cli \
    php5-curl \
    php5-gd \
    php5-geoip \
    php5-imagick \
    php5-imap \
    php5-json \
    php5-ldap \
    php5-mcrypt \
    php5-memcache \
    php5-memcached \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-xdebug \
    php5-xmlrpc \
    php5-xcache

RUN 	pecl install mongodb

RUN echo "extension=mongodb.so" > /etc/php/5.6/fpm/conf.d/20-mongodb.ini && \
    echo "extension=mongodb.so" > /etc/php/5.6/cli/conf.d/20-mongodb.ini && \
    echo "extension=mongodb.so" > /etc/php/5.6/mods-available/mongodb.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
  composer global require "laravel/installer" && \
  composer global require "laravel/envoy=~1.0"

ENV PATH "/root/.composer/vendor/bin:$PATH"

ENTRYPOINT ["php"]
CMD ["--help"]