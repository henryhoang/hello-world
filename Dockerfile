FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get update && apt-get install -q -y apache2

RUN ls -lh /bin
RUN ps auxf

#ENTRYPOINT ls -l
#ENTRYPOINT echo "This is a test." | wc
#ENTRYPOINT clear; echo; /bin/sh -c "echo Date and time is:"; date; echo; echo "Your name is: `whoami`\n"; echo "Your current directory is: \c"; pwd; ls -lh; ps aux; echo "current PATH: "; echo $PATH
ENTRYPOINT /bin/sh -c "while true; do echo hello world; date; sleep 1; done"
ENTRYPOINT /bin/sh -c echo Enter your name:; read name; echo Your name is $name
EXPOSE 8080


CMD echo "This is a test." | wc

CMD clear; echo; /bin/sh -c "echo Date and time is:"; date; echo; echo "Your name is: `whoami`\n"; echo "Your current directory is: \c"; pwd; ls -lh; ps aux; echo "current PATH: "; echo $PATH


