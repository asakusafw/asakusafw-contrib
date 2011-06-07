# Asakuasのセットアップ
echo "
==================================================================================================
setup asakusa framework and clone asakusa examples from github
==================================================================================================
"
sleep 1

source ~/.asakusarc

mkdir ~/workspace
cd ~/workspace

git clone git://github.com/asakusafw/asakusafw-examples.git
cd ./asakusafw-examples/example-tutorial
mvn clean assembly:single antrun:run

