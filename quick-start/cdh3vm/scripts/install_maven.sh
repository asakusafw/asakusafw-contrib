# mavenのインストール
wget http://ftp.kddilabs.jp/infosystems/apache//maven/binaries/apache-maven-3.0.3-bin.tar.gz
tar xvzf apache-maven-3.0.3-bin.tar.gz
rm apache-maven-3.0.3-bin.tar.gz
mv apache-maven-3.0.3/ /usr/local/lib/
ln -s /usr/local/lib/apache-maven-3.0.3/bin/mvn /usr/local/bin/mvn
