FROM ubuntu:groovy-20210416
MAINTAINER serge (lefaruch@gmx.fr)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/htm
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
