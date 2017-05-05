#!/bin/sh -xe

docker build -t clarencep/lap7-laravel-tideways .

docker run --rm clarencep/lap7-laravel-tideways sh -xe -c '\
    cat /etc/centos-release;\
    httpd -v;\
    which httpd;\
    php -v;\
    php -m;' > versions.txt &2>1

docker run --rm clarencep/lap7-laravel-tideways php -i > phpinfo.txt


