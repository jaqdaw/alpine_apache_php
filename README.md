# alpine_apache_php
Docker Container - Based on Alpine:latest with Apache2 & PHP5.


To build using Dockerfile, make sure you have httpd.conf & start.sh in the
same directory, "chmod" start.sh as appropriate.



To test, run ...

docker run -d -p 80:80 -p 443:443 --name aptest jaqdaw/apache-php

Provided your host has no local web server running then both http & https
should return "It Works!" page from /var/www/localhost/htdocs within
the container.



To run your website from for example /home/you/website ...

docker run -d -p 80:80 -p 443:443 -v /home/you/website:/var/www/localhost/htdocs --name mywebsite jaqdaw/apache-php



If you want to run the container and explore using the bash shell ...

docker run -it --rm -p 80:80 -p 443:443 --name aptest2 jaqdaw/apache-php bash


https://hub.docker.com/r/jaqdaw/apache-php/
