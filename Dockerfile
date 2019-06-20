FROM ubuntu:latest
LABEL maintainer="Filip Jonckers <filip@jonckers.org>"

RUN apt-get update && \
    apt-get install -y apt-mirror && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    cp /etc/apt/mirror.list /etc/apt/mirror.list.original

ADD mirror.list /etc/apt/mirror.list

VOLUME /var/spool/apt-mirror

CMD /usr/bin/apt-mirror 2>&1
