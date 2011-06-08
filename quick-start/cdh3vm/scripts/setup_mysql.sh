#!/bin/bash

# MySQLのユーザーの作成
echo "
==================================================================================================
setup mysql, create user asakusa and database asakusa. 
==================================================================================================
"
sleep 1
mysql -u root -proot << __EOF__
GRANT ALL PRIVILEGES ON *.* TO 'asakusa'@'localhost' IDENTIFIED BY 'asakusa' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'asakusa'@'%'IDENTIFIED BY 'asakusa' WITH GRANT OPTION;
DROP DATABASE IF EXISTS asakusa;
CREATE DATABASE asakusa DEFAULT CHARACTER SET utf8;
__EOF__

mysql -u root -proot << __EOF__
show databases;
__EOF__

echo ""

mysql mysql -u root -proot << __EOF__
select host,user from user;
__EOF__


