FROM  docker.io/httpd:latest
MAINTAINER XI'AN
RUN useradd otrs    

ADD httpd.conf /usr/local/apache2/conf/	
RUN apt-get update && apt-get install -y \
            vim \
            libapache-dbi-perl \
            libapache2-mod-perl2 \
            libarchive-zip-perl \
            libcrypt-eksblowfish-perl \
            libcrypt-ssleay-perl \
            libtimedate-perl \
            libdbi-perl \
            libdbd-mysql-perl \
            libencode-hanextra-perl \
            libio-socket-ssl-perl \
            libjson-xs-perl \
            libscalar-list-utils-perl \
            libwww-perl \
            libmail-imapclient-perl \
            libio-socket-ssl-perl \
            libapache2-mod-perl2 \
            libnet-dns-perl  \
            libnet-ldap-perl \
            libtemplate-perl \
            libtemplate-perl \
            libtext-csv-xs-perl \
            libxml-libxml-perl \
            libxml-libxslt-perl \
            libxml-parser-perl \
            libyaml-libyaml-perl \
            libdbd-pg-perl \
			      libauthen-ntlm-perl

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
EXPOSE 80 3306
CMD ["httpd-foreground"]
