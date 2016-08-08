# Chas' Alpine Apache PHP Build
FROM alpine
MAINTAINER Chas Hopkins <hopkinschas@gmail.com>
RUN apk add --update apache2 php5 php5-mysql bash && rm -rf /var/cache/apk/*
EXPOSE 80 
EXPOSE 443 
ENV APACHE_RUN_USER www-data 
ENV APACHE_RUN_GROUP www-data 
ENV APACHE_LOG_DIR /var/log/apache2
