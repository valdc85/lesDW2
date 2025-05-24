FROM ubuntu:24.04
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install apache2 -y
RUN date > /var/www/html/buildtime.txt
COPY html/index.html /var/www/html/

CMD service apache2 && bash

EXPOSE 80

