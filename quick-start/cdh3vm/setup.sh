cat ./messages/start.txt

sudo ./scripts/install_mysql.sh
sudo ./scripts/install_git.sh
sudo ./scripts/install_ruby.sh
sudo ./scripts/install_maven.sh
sudo ./scripts/configure_apparmor.sh
./scripts/configure_ssh.sh
./scripts/congifure_bashrc.sh
source ~/.bashrc
./scripts/setup_asakusaframework.sh
./bin/switch_to_pseudo.sh

cat ./messages/end.txt
