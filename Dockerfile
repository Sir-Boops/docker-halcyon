FROM sirboops/php:7.2.11

RUN cd /opt && \
	rm -rf www && \
	git clone https://notabug.org/halcyon-suite/halcyon.git www && \
	cd www/config && \
	cp config.ini.sample config.ini

COPY ./php-confs/* /opt/php/etc/

CMD /opt/httpd/bin/httpd -e info -DFOREGROUND
