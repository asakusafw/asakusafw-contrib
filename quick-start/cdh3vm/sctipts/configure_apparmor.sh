# apparmorの制約解除
mv /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/
/etc/init.d/apparmor restart
