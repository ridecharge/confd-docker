# confd-docker
Base docker container for confd config

This container provides a starting point for other containers that need to use the confd application to handle configuration.

It has the following onbuilds
```
ONBUILD COPY *.tmpl /etc/confd/templates/
ONBUILD COPY *.toml /etc/confd/conf.d/
```
so any container building against this will have all `*.tmpl` and `*.toml` file automatically copied over.
