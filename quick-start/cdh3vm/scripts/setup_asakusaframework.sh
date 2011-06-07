# Asakuasのセットアップ
source ~/.asakusarc

mkdir ~/workspace
cd ~/workspace

git clone git://github.com/asakusafw/asakusafw-examples.git
cd ./asakusafw-examples/example-tutorial
mvn clean assembly:single antrun:run

