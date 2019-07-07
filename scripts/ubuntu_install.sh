#!/bin/bash
screen -q
sudo apt-get update
sudo apt-get install -y docker docker-compose
cd ~
git clone https://github.com/ehc-io/bookscatalog.git
cd bookscatalog/
docker-compose up
