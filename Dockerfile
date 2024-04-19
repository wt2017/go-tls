#FROM ubuntu:14.04
FROM docker.io/library/fedora

MAINTAINER wyou

ADD localhost.crt /app/
ADD server.key /app/
ADD bootstrap.sh /
ADD server /app/

ENTRYPOINT ["/bootstrap.sh"]

