FROM tutum/apache-php:latest
MAINTAINER jakub.gluszecki@gmail.com

RUN apt-get update && \
    apt-get -y install php5-curl git-core

RUN git clone https://github.com/LiveHelperChat/livehelperchat.git /tmp/lhc && \
 rm -rf /app && mv -T /tmp/lhc/lhc_web /app
