#!/bin/bash

# 5. set the firewall rules
sudo ufw enable
sudo ufw default deny

# Ping from inside to outside
sudo iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT
sudo iptables -A INPUT -p icmp --icmp-type echo-reply -j ACCEPT
# Ping from outside to inside
sudo iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
sudo iptables -A OUTPUT -p icmp --icmp-type echo-reply -j ACCEPT
 
sudo ufw allow from any to any port 80,443 proto tcp

sudo ufw allow from 10.0.0.0/8 to any port 22,3389 proto tcp
sudo ufw allow from 192.168.0.0/16 to any port 22,3389 proto tcp
sudo ufw allow from 172.0.0.0/8 to any port 22,3389 proto tcp

sudo service ufw restart
sudo ufw status verbose
