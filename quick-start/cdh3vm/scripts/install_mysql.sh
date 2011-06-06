# MySQLのインストールとユーザーの作成
apt-get -y install mysql-server
mysql -u root -p < create_user.sql
