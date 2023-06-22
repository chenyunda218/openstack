#!/bin/bash
CONTROLLER_IP = "127.0.0.1"
apt install mariadb-server python3-pymysql -y
cat << EOF > /etc/mysql/mariadb.conf.d/99-openstack.cnf
[mysqld]
bind-address = ${CONTROLLER_IP}

default-storage-engine = innodb
innodb_file_per_table = on
max_connections = 4096
collation-server = utf8_general_ci
character-set-server = utf8
EOF
service mysql restart
