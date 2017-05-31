#!/bin/bash
# MongoDB Setup on Ubuntu 14.04 with PHP7
# Source:

#1. Import the public key used by the package management system:
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#2. Create a list file for MongoDB.
	echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#3. Reload local package database
	sudo apt-get update

#4. Install the MongoDB packages
	sudo apt-get install -y mongodb-org

#5. Install OpenSSL PHP Library
	sudo apt-get install -y autoconf g++ make openssl libssl-dev libcurl4-openssl-dev pkg-config libsasl2-dev libpcre3-dev

#6. Install MongoDB PHP Driver
	sudo pecl install mongodb

#7. Add mongodb extension to php.ini
  sudo su -
	echo "extension=mongodb.so" >> /etc/php/7.0/fpm/php.ini
	echo "extension=mongodb.so" >> /etc/php/7.0/cli/php.ini
  logout