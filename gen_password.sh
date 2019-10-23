#!/bin/bash
set -e
pass=`pwgen -s 16 1`
crypted=`mkpasswd --method=sha-512 "$pass"`

echo "---" > secrets.yml
echo "pi_user_password: \"$crypted\"" >> secrets.yml

echo "Generated secrets file with password '$pass'"

