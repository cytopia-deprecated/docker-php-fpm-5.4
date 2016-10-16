##
## PHP-FPM 5.4
##
FROM centos:7
MAINTAINER "cytopia" <cytopia@everythingcli.org>


##
## Labels
##
LABEL \
	name="cytopia's PHP-FPM 5.4 Image" \
	image="php-fpm-5.4" \
	vendor="cytopia" \
	license="MIT" \
	build-date="2016-10-17"


##
## Bootstrap Scipts
##
COPY ./scripts/docker-install.sh /
COPY ./scripts/docker-entrypoint.sh /


##
## Install
##
RUN /docker-install.sh


##
## Ports
##
EXPOSE 9000


##
## Volumes
##
VOLUME /var/log/php-fpm
VOLUME /etc/php-custom.d


##
## Entrypoint
##
ENTRYPOINT ["/docker-entrypoint.sh"]
