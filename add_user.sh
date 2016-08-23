#!/bin/bash

password=$(perl -e 'printf("%s\n", crypt($ARGV[0], "password"))' "$2")
useradd -m -p $password -s /bin/bash $1
mkdir -p /home/$1/public_html
chown -R $1:$1 /home/$1
chage -d 0 $1
