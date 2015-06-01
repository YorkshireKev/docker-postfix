FROM ubuntu:14.04
MAINTAINER Kevin Ellis

ENV LAST_MODIFIED "2014-10-26 K Ellis"

# Add to end of /etc/apt/sources.list
RUN apt-get update
RUN apt-get install postfix rsyslog -y
RUN apt-get upgrade bash -y

ADD conf/main.cf /
ADD conf/startservices.sh /
RUN chmod +x startservices.sh

ENTRYPOINT ["/startservices.sh"]
