# change your.host.dns to the internet DNS A record and CNAME entry that resolves
# to your smtp server's docker host. e.g. mail.example.com
docker run -d --name postfix -p 25:25 --restart always yorkshirekev/postfix your.host.dns
