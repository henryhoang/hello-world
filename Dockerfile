FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -q -y apache2

RUN ls -lh /bin
RUN ps auxf


EXPOSE 8080


CMD echo "This is a test." | wc
CMD /bin/sh -c "while true; do echo hello world; date; sleep 1; done"
CMD clear; echo; /bin/sh -c "echo Date and time is:"; date; echo; echo "Your name is: `whoami`\n"; echo "Your current directory is: \c"; pwd; ls -lh; ps aux; echo $PATH



