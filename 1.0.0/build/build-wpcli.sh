#!/bin/sh

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."

c_ok "Finished."
# This is to be run from the base O/S using the files/usr/local/bin/wp-x.x.x script.

FROM php:7.0-alpine

MAINTAINER Gearbox Team <team@gearbox.works>

ARG WPCLI_VERSION=1.0.0
ENV HOME /root
ENV CLI_HOST gearbox.local

RUN curl -q -L https://github.com/wp-cli/wp-cli/releases/download/v$WPCLI_VERSION/wp-cli-$WPCLI_VERSION.phar -o wp-cli.phar && \
	docker-php-ext-install mysqli && \
	apk update && \
	apk add --no-cache sudo ncurses less bash && \
	mv wp-cli.phar /usr/local/bin/wp.bin && \
	chmod +x /usr/local/bin/wp* && \
	ln -s /usr/bin/php7 /usr/bin/php

COPY gearbox.json /etc/gearbox.json
WORKDIR /project/www

ENTRYPOINT ["wp", "--allow-root"]

