FROM tutum/apache-php:latest
RUN apt-get install php5-curl
RUN rm -fr /app && \
	git clone https://github.com/LiveHelperChat/livehelperchat.git /tmp/lhc && \
	mv /tmp/lhc/lhc_web /app && \
	chmod -R 777 /app/cache && \
	chmod -R 777 /app/settings && \
	chmod -R 777 /app/var
