FROM php:7.2.4-apache
LABEL maintainer="Julio Carreño <jcpware@gmail.com>"

# Install prerequisites
RUN apt-get update -y \
    && apt-get install -y curl \
    && apt-get install -y git zip bzip2 wget tar less \
    && apt-get install -y libjpeg-dev libpng-dev \
    #&& apt-get install -y php7.2-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN a2enmod rewrite

WORKDIR /var/www/html

EXPOSE 80

