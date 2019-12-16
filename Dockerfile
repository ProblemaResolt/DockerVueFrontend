FROM node:10.13-alpine

# Install Npm
RUN \
    mkdir -p /opt/app && \
    chmod -R 777 /opt/app && \
    apk update && \
    apk --no-cache --update add \
      nodejs nodejs-npm && \
    rm -rf /var/cache/apk/*
# Add local node module binaries to PATH
ENV PATH=./node_modules/.bin:$PATH \
    HOME=/opt/app

WORKDIR /opt/app