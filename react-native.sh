#!/bin/bash

# instala o node.js, react-native, watchman e o create-react-native-app

cd ~
sudo apt-get install curl
sudo apt-get update

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g react-native-cli

# instala o watchman
sudo apt-get install libssl-dev autoconf automake libtool python-dev
sudo apt-get update
git clone https://github.com/facebook/watchman.git
cd watchman
git checkout v4.9.0
./autogen.sh
./configure
make
sudo make install

cd ~
sudo npm install -g create-react-native-app

# inicia o watchman
cd ~
echo 999999 | sudo tee -a /proc/sys/fs/inotify/max_user_watches  && echo 999999 | sudo tee -a  /proc/sys/fs/inotify/max_queued_events && echo 999999 | sudo tee  -a /proc/sys/fs/inotify/max_user_instances && watchman  shutdown-serv
