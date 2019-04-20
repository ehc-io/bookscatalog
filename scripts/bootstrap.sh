#!/bin/bash
# Bootstraping 
tar -zxf /loopback-folder/scripts/loopback-dep.tar.gz -C /loopback-folder
mongoimport --host mongodb.local --port 27017 --username admin --password admin --authenticationDatabase admin -d bookstoreappdb -c full-book-catalog-model /loopback-folder/dataset/catalog.books.json
mongo admin --host mongodb.local:27017 -u admin -p admin < /loopback-folder/scripts/mongosetup.js

