ENV DEBIAN_FRONTEND=noninteractive

FROM ubuntu:24.04
RUN apt update
RUN apt install apache2 -y
RUN date > /var/www/html/buildtime.txt
RUN apt install lynx -y
RUN lynx http://localhost:81/
CMD service apache2 && bash

EXPOSE 80

