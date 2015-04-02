# Latest Ubuntu LTS
FROM ubuntu:14.04

# Install nginx
RUN apt-get update && \
	apt-get -y upgrade

# Install confd
ADD https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64 /usr/bin/confd
RUN chmod 0500 /usr/bin/confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates

# Nginx and Confd config files
ONBUILD COPY *.conf /etc/nginx/
ONBUILD COPY *.toml /etc/confd/