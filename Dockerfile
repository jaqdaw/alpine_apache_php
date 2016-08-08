FROM alpine
MAINTAINER Chas Hopkins <hopkinschas@gmail.com>

RUN apk --update add curl bash apache2 apache2-ssl php5-apache2 php5-mysql mysql-client openssl && rm -rf /var/cache/apk/* && mkdir -p /run/apache2

ADD httpd.conf /etc/apache2/httpd.conf

COPY start.sh /start.sh

RUN adduser web -s /bin/bash -D

EXPOSE 80 443

CMD ["/bin/bash", "/start.sh"]
