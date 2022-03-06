docker-postfix
==============

Builds a simple "SMTP Only" postfix image.

Emails can be sent from any private network address:

 - 127.0.0.1/32
 - 192.168.0.0/16
 - 172.16.0.0/12
 - 10.0.0.0/8
 
Start the image and include your (docker) hosts DNS entry. e.g.

`docker run -d --name postfix -p 25:25 --restart always yorkshirekev/postfix mail.example.com`

This images is available on docker hub and can be downloaded by running

`docker pull yorkshirekev/postfix`

https://registry.hub.docker.com/r/yorkshirekev/postfix/
