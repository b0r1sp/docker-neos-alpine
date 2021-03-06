#!/usr/bin/env bash
set -e

if [ -z "${XDEBUG_CONFIG}" ]
then
	sed -i -r 's/^zend_extension/;zend_extension/' $PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini
else
	sed -i -r 's/^;zend_extension/zend_extension/' $PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini
	echo "Xdebug enabled with the follwing config: ${XDEBUG_CONFIG}"
fi