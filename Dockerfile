FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -q -y apache2

RUN ls -lh /usr/local
RUN ps auxf



EXPOSE 80


CMD echo "This is a test." | wc

CMD echo /bin/sh -c "while true; do echo hello world; date; sleep 1; done"




