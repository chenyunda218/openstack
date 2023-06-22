#!/bin/bash
CONTROLLER_IP
KEYSTONE_DBPASS = "KEYSTONE_DBPASS"
mysql <<EOF
CREATE DATABASE keystone;
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'${CONTROLLER_IP}' \
IDENTIFIED BY '${CONTROLLER_IP}';
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' \
IDENTIFIED BY '${KEYSTONE_DBPASS}';
EOF
apt install keystone -y