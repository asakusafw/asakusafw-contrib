#!/bin/bash

# apparmorの制約解除
echo "
==================================================================================================
disable apparmor restrict
==================================================================================================
"
sleep 1

mv /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/
/etc/init.d/apparmor restart
