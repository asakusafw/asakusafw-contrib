# MySQLのユーザーの作成
# Asakusaの環境変数の設定
echo "
==================================================================================================
setup mysql, create asakusa user
==================================================================================================
"
sleep 1
mysql -u root -p << __EOF__
GRANT ALL PRIVILEGES ON *.* TO 'asakusa'@'localhost' IDENTIFIED BY 'asakusa' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'asakusa'@'%'IDENTIFIED BY 'asakusa' WITH GRANT OPTION;
DROP DATABASE IF EXISTS asakusa;
CREATE DATABASE asakusa DEFAULT CHARACTER SET utf8;
__EOF__
