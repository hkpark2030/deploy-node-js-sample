#!/bin/bash

# Clone deploy-node-js-sample repository and call the scripts 
#git clone https://github.com/hkpark2030/deploy-node-js-sample.git
#cd deploy-node-js-sample

gnome-terminal -x sh -c "bash deploy-node-js.sh"
sleep 5m
gnome-terminal -x sh -c "bash deploy-heroku.sh"
sleep 2m
gnome-terminal -x sh -c "bash deploy-firewall-rules.sh"
