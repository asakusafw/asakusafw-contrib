#!/bin/bash

cat ./messages/start.txt

sudo ./scripts/install_mysql.sh
./scripts/setup_mysql.sh
sudo ./scripts/install_git.sh
sudo ./scripts/install_ruby.sh
sudo ./scripts/install_maven.sh
sudo ./scripts/configure_apparmor.sh
./scripts/configure_ssh.sh
./scripts/congifure_bashrc.sh
source ~/.asakusarc
./scripts/setup_asakusaframework.sh

echo "
==================================================================================================
configure asakusa framework pseudo
==================================================================================================
"
sleep 1
./bin/switch_to_pseudo.sh

cat ./messages/end.txt
