FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -q -y apache2

RUN ls -lh /lib

ADD github.com/henryhoang/hello-world/run.sh /usr/local/bin

EXPOSE 80

CMD echo "This is a test." | wc

CMD echo Hello World

CMD ["/bin/sh", "-c", "/usr/local/bin"]
