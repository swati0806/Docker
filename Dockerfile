FROM ubuntu:latest
MAINTAINER swati27namdev@gmail.com
RUN apt-get update && apt-get install -y git && apt-get install -y apache2
RUN rm -rvf /var/www/*
RUN git clone https://github.com/swati0806/cloudcafe /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
