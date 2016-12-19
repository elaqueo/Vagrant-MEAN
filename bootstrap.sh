#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

sudo apt-get update

#install nodjs
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update
sudo apt-get -y install nodejs

#install mongo db
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get update

#install base npm packages
sudo npm install -g n

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo "Provision VM finished"