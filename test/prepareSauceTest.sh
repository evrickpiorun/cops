#!/bin/bash

PHP_VERSION=`php -v|grep --only-matching --perl-regexp "5\.\\d+\"`

if [[ $PHP_VERSION != "5.5" ]]
  then
    echo "Bad PHP version"
    exit
fi

echo "Good PHP version"

curl -s https://raw.github.com/jlipps/sausage-bun/master/givememysausage.php | php