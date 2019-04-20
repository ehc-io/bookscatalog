#!/bin/bash
# Bootstraping 
tar -zxf /loopback-folder/scripts/loopback-dep.tar.gz -C /loopback-folder
mongo admin --host mongodb.local:27017 -u admin -p admin < /loopback-folder/scripts/dropdatabase.js
mongoimport --host mongodb.local --port 27017 --username admin --password admin --authenticationDatabase admin -d bookstoreappdb -c full_book_catalog /loopback-folder/dataset/catalog.books.json
mongo admin --host mongodb.local:27017 -u admin -p admin < /loopback-folder/scripts/mongosetup.js

