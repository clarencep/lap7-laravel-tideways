#!/bin/sh -xe

docker build -t clarencep/lap7-laravel-tideways .


docker run --rm clarencep/lap7-laravel-tideways sh -c '\
    echo ""; \
    echo Centos Version; \
    echo --------------; \
    cat /etc/centos-release;\
    echo ""; \
    echo Apache Version; \
    echo --------------; \
    httpd -v;\
    echo ""; \
    echo Whereis Httpd; \
    echo --------------; \
    whereis httpd; \
    echo ""; \
    echo PHP Version; \
    echo --------------; \
    php -v; \
    echo ""; \
    echo PHP Modules; \
    echo --------------; \
    php -m;' > versions.txt

docker run --rm clarencep/lap7-laravel-tideways php -i > phpinfo.txt


