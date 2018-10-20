FROM debian:jessie

MAINTAINER "Braydee Johnson" <braydee@braydeejohnson.com>

RUN \
  apt-get update && \
  apt-get install -y \
  curl \
  wget \
  git \
  vim

RUN \
  apt-get install -y \
  apt-transport-https lsb-release ca-certificates && \
  wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
  echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list && \
  echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.org.list && \
  echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.org.list && \
  wget -O- http://www.dotdeb.org/dotdeb.gpg | apt-key add -

RUN \
  apt-get update && \
  apt-get install -y \
  php7.1 \
  php7.1-bcmath \
  php7.1-cgi \
  php7.1-cli \
  php7.1-common \
  php7.1-curl \
  php7.1-gd \
  php7.1-imagick \
  php7.1-imap \
  php7.1-json \
  php7.1-ldap \
  php7.1-mbstring \
  php7.1-mcrypt \
  php7.1-memcached \
  php7.1-mongodb \
  php7.1-msgpack \
  php7.1-mysql \
  php7.1-pgsql \
  php7.1-readline \
  php7.1-redis \
  php7.1-sqlite3 \
  php7.1-tidy \
  php7.1-xdebug \
  php7.1-xml \
  php7.1-xmlrpc \
  php7.1-xsl \
  php7.1-zip

RUN apt-get install -y \
    php-pear \
    php7.1-dev \
    libsasl2-dev \
    libcurl3-openssl-dev

RUN pecl install mongodb

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
  composer global require "laravel/installer" && \
  composer global require "laravel/envoy=~1.0"

ENV PATH "/root/.composer/vendor/bin:$PATH"

ENTRYPOINT ["php"]
CMD ["--help"]