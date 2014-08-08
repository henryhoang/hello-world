FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -q -y apache2

RUN ls -lh /usr/local



EXPOSE 80

CMD echo Hello World
CMD echo "This is a test." | wc




