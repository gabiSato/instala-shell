#!/bin/bash

#instala o java oracle

sudo apt-get purge openjdk-\*
sudo apt autoremove

sudo mkdir -p /usr/local/Java
cd Shell
sudo cp -r jdk-10.0.2_linux-x64_bin.tar.gz /usr/local/Java
cd /usr/local/Java
sudo tar xvzf jdk-10.0.2_linux-x64_bin.tar.gz
sudo rm -r jdk-10.0.2_linux-x64_bin.tar.gz

# setando variavel de sistema pro java
sudo gedit /etc/profile

# no final do arquivo escrever:
# JAVA_HOME=/usr/local/java/jdk-10.0.2
# JRE_HOME=$JAVA_HOME/jre
# PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
# export JAVA_HOME
# export JRE_HOME
# export PATH

# salve o arquivo

cd ~
. /etc/profile

sudo shutdown -r
