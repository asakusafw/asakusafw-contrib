#!/bin/bash

# MySQLのインストール
echo "
==================================================================================================
install mysql
==================================================================================================
"
sleep 1

echo 'mysql-server-5.1 mysql-server/root_password password root' | sudo debconf-set-selections
echo 'mysql-server-5.1 mysql-server/root_password seen true' | sudo debconf-set-selections
echo 'mysql-server-5.1 mysql-server/root_password_again password root' | sudo debconf-set-selections
echo 'mysql-server-5.1 mysql-server/root_password_again seen true' | sudo debconf-set-selections
echo 'mysql-server-5.1 mysql-server/start_on_boot boolean true' | sudo debconf-set-selections
sudo apt-get -y install mysql-server
