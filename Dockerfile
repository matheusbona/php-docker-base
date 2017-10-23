FROM php:7.0-alpine
MAINTAINER mateus.bona@gmail.com
WORKDIR /
RUN apk update && apk add tzdata git openssh-client && cp /usr/share/zoneinfo/Brazil/East /etc/localtime && mkdir /root/.ssh && touch /root/.ssh/known_hosts && ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
COPY init.sh /init.sh
COPY id_rsa /root/.ssh/id_rsa

EXPOSE 7000

ENTRYPOINT /bin/sh /init.sh
 
