#!/bin/bash
VERSION=1.2.2
cd ..
#git clone git://github.com/Yuav/logstash-packaging.git --depth=1
wget http://download.elasticsearch.org/logstash/logstash/logstash-${VERSION}-flatjar.jar -O logstash-packaging/usr/share/logstash/logstash.jar
fpm -n logstash -v $VERSION -a all -C logstash-packaging -m "<lesspublic@gmail.com>" --pre-install logstash-packaging/logstash.preinstall --description "Logstash Open Source Log Management" --url 'http://www.logstash.net/' -t deb --config-files etc/logstash/syslog.conf --config-files etc/default/logstash -s dir etc usr var
