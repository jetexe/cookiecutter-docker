# Python base image <https://hub.docker.com/_/python>
FROM python:3.9.6-alpine

# Cookiecutter version
ARG COOKIECUTTER_VERSION=1.7.3

# cookiecutter works with current working
WORKDIR /workdir

RUN set -x && \
    apk add --no-cache git && \
    echo 'appuser:x:10001:10001::/home/appuser:/sbin/nologin' > /etc/passwd && \
    echo 'appuser:x:10001:' > /etc/group && \
    mkdir /.cookiecutter_replay/ /.cookiecutters/ && \
    chmod 777 /.cookiecutter_replay /.cookiecutters && \
    pip install cookiecutter=="$COOKIECUTTER_VERSION"

# Try not to run the container from the root user
USER appuser:appuser

ENTRYPOINT ["cookiecutter"]
