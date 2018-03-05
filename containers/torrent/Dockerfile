MAINTAINER raxemremy

FROM debian:stretch-slim
USER root

#install necessary packages
RUN apt-get updatoe && apt-get install -y \
git \
build-essential \
#apache, rtor, php + related
apache2 \
rtorrent \
php php-geoip \
php7.0-cli \
php7.0-json \
php7.0-curl \
php7.0-cgi \
php7.0-mbstring \
libapache2-mod-php \
libapache2-mod-scgi \
#install utils needed for addons
unrar \
unzip \
ffmpeg \
mediainfo \
curl \
sqlite3

WORKDIR /var/www/html

RUN git clone https://github.com/Novik/ruTorrent.git && apt-get purge git -y

RUN chown -R www-data:www-data ruTorrent/ && chmod -R 770 ruTorrent/

COPY ./data/.rtorrent.rc /root/.rtorrent.rc
COPY ./data/.rtorrent.session /root/.rtorrent.session




EXPOSE 80 443 49160 49161 5000
VOLUME /downloads
