#!/bin/bash

# instala o node.js, react-native, watchman e o create-react-native-app

sudo apt-get install curl
sudo apt-get update

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
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

sudo npm install -g create-react-native-app

