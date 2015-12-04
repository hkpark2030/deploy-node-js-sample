#!/bin/bash

# 1. install Node.js
sudo apt-get -y update
sudo apt-get -y remove --purge node
sudo apt-get -y remove --purge nodejs
sudo apt-get -y install nodejs-legacy
sudo apt-get -y remove --purge npm
sudo apt-get -y install npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

# 2. install Heroku
sudo -i wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# 3. install node-js-sample
git clone https://github.com/heroku/node-js-sample.git
cd node-js-sample
npm install
npm start       # http://127.0.0.1:5000/
