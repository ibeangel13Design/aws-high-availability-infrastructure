#!/bin/bash
set -e

# chaning the hostname
#=====================
sudo hostnamectl set-hostname WebServer-`hostname -I`

# Updating the server
#=====================
sudo apt update -y
sudo apt upgrade -y

# Installing Nginx (webservice)
#==============================
sudo apt install -y nginx

# Starting / enabling the nginx service
#=====================================
sudo systemctl enable nginx
sudo systemctl start nginx

#clean up the default index in the nginx default path
#====================================================
sudo rm -rf /var/www/html/*

# Install efs client dependencies 
#================================
sudo apt -y install nfs-common stunnel4 git binutils


# To add the efs access point to the fstab
#==========================================
sudo tee -a /etc/fstab > /dev/null <<EOF
fs-04129105705c0b373.efs.us-east-2.amazonaws.com:/ /var/www/html nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport,_netdev 0 0
EOF

# mount the efs
#==================
sudo mount -a

# make nginx the owner of /var/www/html 
#========================================
sudo chown -R www-data:www-data /var/www/html

# DAtadog Connection
#======================
DD_API_KEY="<YOUR_DATADOG_API_KEY>"
