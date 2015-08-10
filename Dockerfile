from   ubuntu:trusty
env    DEBIAN_FRONTEND noninteractive

run rm /etc/apt/sources.list; \
	echo 'deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse' >> /etc/apt/sources.list; \
	echo 'deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse' >> /etc/apt/sources.list; \
	echo 'deb http://archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse' >> /etc/apt/sources.list; \
	echo 'deb http://archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse' >> /etc/apt/sources.list; \
	apt-get -y --force-yes update; \
	apt-get -y --force-yes upgrade; \
	apt-get -y --force-yes install software-properties-common curl git wget unzip nano build-essential autoconf libxml2-dev libssl-dev libbz2-dev libcurl3-dev libdb5.1-dev libjpeg-dev libpng-dev libXpm-dev libfreetype6-dev libt1-dev libgmp3-dev libc-client-dev libldap2-dev libmcrypt-dev libmhash-dev freetds-dev libz-dev libmysqlclient15-dev ncurses-dev libpcre3-dev libsqlite-dev libaspell-dev libreadline6-dev librecode-dev libsnmp-dev libtidy-dev libxslt-dev libt1-dev; \
	apt-get -y --force-yes install ruby-dev debhelper python3-dev python3-setuptools devscripts libxml2-dev; \
        apt-get autoclean;
run apt-get -y --force-yes install python-pip python-setuptools libpython-dev
run locale-gen en_US.UTF-8
