# sshでパスフレーズなしでログインできるようにする
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa 
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
