FROM --platform=linux/amd64 mysql:debian

RUN rm /etc/apt/sources.list.d/mysql.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29

RUN apt-get update -y
RUN apt-get install -y locales

RUN locale-gen ja_JP.UTF-8

ENV LANG        ja_JP.UTF-8
ENV LC_CTYPE    ja_JP.UTF-8

RUN mkdir -p /var/log/mysql
RUN touch /var/log/mysql/mysql-bin.log
RUN chown -R mysql:mysql /var/log/mysql
