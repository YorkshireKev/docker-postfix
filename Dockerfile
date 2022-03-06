FROM ubuntu:20.04

ENV LAST_MODIFIED "2022-03-06 K Ellis"

RUN apt-get update
RUN apt-get install postfix rsyslog -y
RUN apt-get upgrade bash -y
RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf #dont load imklog module

ADD conf/main.cf /
ADD conf/startservices.sh /
RUN chmod +x startservices.sh

ENTRYPOINT ["/startservices.sh"]