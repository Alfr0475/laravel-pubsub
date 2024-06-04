FROM --platform=linux/amd64 amazonlinux:2023


RUN dnf update -y
RUN dnf remove mariadb-*

RUN dnf install -y glibc-langpack-ja

RUN dnf install -y git
RUN dnf install -y glibc-langpack-ja
RUN dnf install -y systemd
RUN dnf install -y procps
RUN dnf install -y sudo
RUN dnf install -y tar
RUN dnf install -y gcc-c++
RUN dnf install -y zlib-devel
RUN dnf install -y nss
RUN dnf install -y atk
RUN dnf install -y at-spi2-atk
RUN dnf install -y cups-libs
RUN dnf install -y libdrm
RUN dnf install -y libXcomposite
RUN dnf install -y libXdamage
RUN dnf install -y libXrandr
RUN dnf install -y mesa-libgbm
RUN dnf install -y pango
RUN dnf install -y alsa-lib
RUN dnf install -y vim-enhanced
RUN dnf install -y telnet
RUN echo "ec2-user    ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers


RUN useradd -m -s /bin/bash -u 501 -g games ec2-user

# Redisのインストール
RUN dnf install -y redis6

# Nignxのインストール
RUN dnf install -y nginx
RUN mkdir -p /var/lib/nginx
RUN chown -R ec2-user.games /var/lib/nginx

# PHPのインストール
RUN dnf install -y php
RUN dnf install -y php-fpm
RUN dnf install -y php-xml
RUN dnf install -y php-mbstring
RUN dnf install -y php-mysqlnd
RUN dnf install -y php-gd

# ソケットの権限付与
RUN mkdir -p /run/php-fpm && chown ec2-user:games /run/php-fpm

# composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# nodeのインストール
RUN git clone https://github.com/creationix/nvm.git /home/ec2-user/.nvm
RUN chown -R ec2-user.games /home/ec2-user/.nvm

# automatic start
ENTRYPOINT /usr/sbin/php-fpm && /usr/sbin/nginx -g "daemon off;" && /usr/bin/redis6-server
