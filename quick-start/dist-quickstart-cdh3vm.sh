#! /bin/bash
find ./cdh3vm -name "*.sh" | xargs chmod u+x

tar cvzf quickstart-cdh3vm.tar.gz cdh3vm/
mv quickstart-cdh3vm.tar.gz ~/Desktop

