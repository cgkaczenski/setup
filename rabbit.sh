#!/bin/bash
# Setup for rabbitmq server/message bus on Ubuntu 14.04 EC2 instance

#install rabbitmq-server 3.2.1
#From Rabbitmq Essentials:
#first attempt to install fails and generates list of Erlang dependencies
wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.2.1/rabbitmq-server_3.2.1-1_all.deb
sudo dpkg -i rabbitmq-server_3.2.1-1_all.deb
sudo apt-get -f --force-yes --yes install

#install management plugin
sudo rabbitmq-plugins enable rabbitmq_managment
sudo service rabbitmq-server restart

