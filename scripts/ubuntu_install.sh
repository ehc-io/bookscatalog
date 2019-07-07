#!/bin/bash
screen -q
cd /home/f5student
sudo apt-get update
sudo apt-get install -y docker docker-compose
git clone https://github.com/ehc-io/bookscatalog.git
cd bookscatalog/
sudo docker-compose up
