#!/bin/bash

# We added user account to visudo for no password input during run
#  $sudo visudo
#  patrick ALL=(ALL:ALL) NOPASSWD: ALL

# Download git.zip, build, and install git
  sudo apt-get update
  sudo apt-get install -y build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip
  sudo apt-get install -y asciidoc xmlto docbook2x
  wget https://github.com/git/git/archive/v2.6.3.zip -O git.zip
  unzip git.zip
  cd git-*
  make prefix=/usr/local all
  sudo make prefix=/usr/local install

# Creates a new ssh key, using the provided email as a label
  ssh-keygen -t rsa -b 4096 -C "hkpark2030@yahoo.ca"
  echo -e  'y\n'| ssh-keygen -q -t rsa -C "hkpark2030@yahoo.ca" -N "" -f ~/.ssh/id_rsa
  git config --global user.name "hkpark2030"
  git config --global user.email "hkpark2030@yahoo.ca"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

# Add, copy & paste, your public key into your Personal settings
# https://help.github.com/articles/generating-ssh-keys/
  clip < ~/.ssh/id_rsa.pub # paste it 
  ssh -T git@github.com     # test the connection

# Clone git repository after adding SSH key to github
  git clone https://github.com/git/git.git
