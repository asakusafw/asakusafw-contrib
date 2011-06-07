#!/bin/bash

# sshでパスフレーズなしでログインできるようにする
echo "
==================================================================================================
allow ssh login to localhost without passphase, please enter yes.
==================================================================================================
"
sleep 1

ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa 
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

ssh localhost -o StrictHostKeyChecking=no exit

