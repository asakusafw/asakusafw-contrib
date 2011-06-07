#! /bin/bash

git clone git://github.com/asakusafw/asakusafw-contrib.git

cd quick-start
find ./cdh3vm -name "*.sh" | xargs chmod u+x

tar cvzf quickstart-cdh3vm.tar.gz cdh3vm/
mv quickstart-cdh3vm.tar.gz ~/Desktop

