# Latest Ubuntu LTS
FROM ubuntu:14.04.2

RUN apt-get update && \
	apt-get -y upgrade

# Install confd
ADD https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64 /usr/bin/confd
RUN chmod 0500 /usr/bin/confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates

# confd config files
ONBUILD COPY *.tmpl /etc/confd/templates/
ONBUILD COPY *.toml /etc/confd/conf.d/

